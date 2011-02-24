class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :remember_me, :full_name

  devise :database_authenticatable, :recoverable, :registerable,
         :rememberable, :trackable, :token_authenticatable, :validatable

  has_many :posts

  validates_format_of :full_name, :with => /^([\w\d]+ [\w\d]+)+$/

  def first_name
    self.full_name.split.first
  end

  def last_name
    self.full_name.split.last
  end

protected
  def password_required?
    !persisted? || password.present? || password_confirmation.present?
  end
end