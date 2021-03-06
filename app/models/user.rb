class User < ApplicationRecord

  include PgSearch
  multisearchable against: [:name, :username, :email]

  validates :name, presence: true
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  has_many :likes_given, :class_name => 'Like'
  has_many :tweets
  has_many :connections
  has_many :followees, through: :connections

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  def card_content
    %W{
      @#{self.username}
      #{self.name}
      #{self.email}
    }
  end
  
  # instead of deleting, indicate the user requested a delete & timestamp it  
  def soft_delete  
    update_attribute(:deleted_at, Time.current)  
  end  
  
  # ensure user account is active  
  def active_for_authentication?  
    super && !deleted_at  
  end  
  
  # provide a custom message for a deleted account   
  def inactive_message   
    !deleted_at ? super : :deleted_account  
  end  

  def after_database_authentication
    if self.deleted_at?
      self.reactivate_user
    end
  end

  def reactivate_user  
    update_attribute(:deleted_at, nil)
  end 

end
