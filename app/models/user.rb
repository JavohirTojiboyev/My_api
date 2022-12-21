class User < ApplicationRecord
      has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/, message: I18n.t("errors.models.user.format_email") }
  validates :password, presence: true

  before_save :downcase_email!
  has_many :sessions, dependent: :destroy
  has_many :user_verifications, dependent: :destroy

  private

  def downcase_email!
    email&.downcase!
  end
end
