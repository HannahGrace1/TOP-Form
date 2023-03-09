class User < ActiveRecord::Base
  # validates_length_of :username, 
  #   :minimum => 5, :maximum => 50, 
  #   presence: true,
  #   uniqueness: true
  #   resources :users, only: [:new, :create]
  # has_secure_password

  validates :email, presence: true
end
# u1=User.create({username:"hannah", email:"hannah@gmail", password:"password"})
# u2=User.create({username:"kim", email:"kim@gmail", password:"passwordforkim"})