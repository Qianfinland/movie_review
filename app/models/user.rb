class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :movies
  has_many :reviews, dependent: :destroy
  #here the  dependent: :destroy ensures that when a user is deleted, the associated reviews 
  #be deleted as well
end
