module Samurai
  class User < ApplicationRecord
    self.table_name = "samurai_users"

    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

    scope :ordered, ->{order created_at: :desc}
  end
end
