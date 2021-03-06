class User < ActiveRecord::Base

	#Accessor for password
	attr_accessor :password

	#Methods to be executed before saving 
	validates :password, :presence => true,
	:confirmation => true
	before_save :encrypt_password
	validates_presence_of :email
	validates_uniqueness_of :email

	def self.authenticate(email, password)
		user = find_by_email(email)
		if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
			user
		else
			nil
		end
	end

private
	def encrypt_password
		if password.present?
			self.password_salt = BCrypt::Engine.generate_salt
			self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
		end
	end
end