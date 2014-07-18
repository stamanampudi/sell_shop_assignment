class Order < ActiveRecord::Base
   
	belongs_to :user, :class_name => "User", :foreign_key => :user_id
    belongs_to :product, :class_name => "Product", :foreign_key => :p_id
	validates :adress,:presence =>true
	validates :ph_no,:presence =>true, :length => { :in => 10...11 }
end
