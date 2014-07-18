class OrdersController < ApplicationController

def create
   session[:product_id]=params[:id]
   @address=Order.where(:user_id =>session[:user_id])
   p "jjjjjjjjjj-----------o"
   p @address
   p "-----------------------"
   @order=Order.new
end	

def order_info
    @product=Product.find(session[:product_id])
    @order=Order.find(params[:id])
end 

def insert

	order = params[:order]
  p "-----------------------------"
	p session[:user_id]
	p session[:product_id]
  p @address
  p "-----------------------------"

	 @order= Order.new(:user_id => session[:user_id],:p_id=>session[:product_id],:ph_no=>order[:ph_no],:adress=>order[:adress])
   
    if (@order.save)
       redirect_to cart_page_path(@order.id)
    else
 		  flash[:notice]="Invalid Form"
 	   	redirect_to order_page_path(session[:product_id])
     end
end
end
