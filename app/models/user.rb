class User < ActiveRecord::Base
	rolify
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable, :confirmable

  attr_accessor :current_user

  has_many :commitments
  has_many :events, :through => :commitments

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :confirmed_at
  
end
