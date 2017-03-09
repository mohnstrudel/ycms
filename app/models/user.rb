class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validate :superadmin_not_allowed
  validates :password, length: { minimum: 8 }, on: :create
  validates :password, presence: true, on: :create

  private

  # def superadmin_not_allowed
  #   if (superadmin == true)
  #     errors.add(:superadmin, "Setting of superadmin not allowed!")
  #   end
  # end
end
