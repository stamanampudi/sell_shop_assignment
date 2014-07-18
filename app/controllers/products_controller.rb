class ProductsController < ApplicationController

def index
@products=Product.all
end

def profile
	@user=User.find(session[:user_id])
	@products=Product.find(Order.where(:user_id =>session[:user_id]).uniq.pluck(:p_id))
end	

def logout
  session[:user_id]=nil
  session[:product_id]=nil
  redirect_to login_page_path
end
end
