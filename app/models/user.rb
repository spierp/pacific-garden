class User < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader 
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  
  has_many :tests      
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@hdcco.com/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
         
end
