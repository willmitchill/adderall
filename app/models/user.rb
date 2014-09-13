class User < ActiveRecord::Base
  has_many :courses
  has_many :notes
  has_many :upvotes
  has_many :flashcards, dependent: :destroy
  has_many :cardsets, dependent: :destroy
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password, length: {minimum: 6, maximum: 15}
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true, length: {minimum: 6, maximum: 15}, uniqueness: true
  # attr_accessor :password, :password_confirmation
  before_create { generate_token(:auth_token) }

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    # save!
    UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end
