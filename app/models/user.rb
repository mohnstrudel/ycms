class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validate :admin_not_allowed

  private

  def admin_not_allowed
    if (admin == true)
      errors.add(:admin, "Setting of admin not allowed!")
    end
  end
end
