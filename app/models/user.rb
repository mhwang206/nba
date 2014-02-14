require 'bcrypt'
class User
  include Mongoid::Document
  has_many :polls

  # Allow us to hold a plain-text password in memory
  attr_accessor :password

  field :username, type: String
  field :salt, type: String
  field :hashed_password, type: String
  field :poll, type: String

  validates :username, presence: true
  validates :password, presence: true
  validates_uniqueness_of :username

  def authenticated? pwd
  	self.hashed_password ==
  	  BCrypt::Engine.hash_secret(pwd, self.salt)
  	# Replace with BCrypt::Password.????
  end

  before_save :hash_stuff

private
  def hash_stuff
  	self.salt = BCrypt::Engine.generate_salt
  	self.hashed_password =
  	  BCrypt::Engine.hash_secret self.password, self.salt
  	self.password = nil
  end
end



