class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :products

  enum role: {supplyer: 0, customer: 1, admin: 2}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
