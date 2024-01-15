class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
  validates :email, uniqueness: true
  validates :username, uniqueness: true

  has_many :blogpost
  has_many :comments

  def email_required?
    false
  end

  def email_changed?
    false
  end

end
