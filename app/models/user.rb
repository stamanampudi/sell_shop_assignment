class User < ActiveRecord::Base

  has_many :orders

  #attr_accessible :username, :email, :password, :password_confirmation
   #attr_accessor :password
	validates :name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
	validates :email, :presence => true, :uniqueness => true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :password, :confirmation => true #password_confirmation attr
	validates_length_of :password, :in => 6..20, :on => :create

#def encrypt_password
#	if password.present?
#	require 'digest/sha1'
#	password = Digest::SHA1.hexdigest(password)
#	end
#end
#def clear_password
#	self.password = nil
#end

#before_save :encrypt_password
#after_save :clear_password
end

