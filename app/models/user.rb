class User < ActiveRecord::Base
#devise :cas_authenticatable
 #include Devise::Models::DatabaseAuthenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :database_authenticatable

end
