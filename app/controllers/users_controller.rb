class UsersController < ApplicationController
 
 def new
	@user=User.new
 end	

 def user_params
    params.require(:user).permit(:name,:password,:password,:email)
 end

 def create
    @user=User.new(user_params)

 	if @user.save
		     flash[:notice]="You signed up sucessfully"
             redirect_to(:action => 'login')
 	else
 	        flash[:notice]="Form is invalid"
 		    render "new"
    end			 
 end

 def login
  
   
 end

 def authenticate
 	user = User.find_by_name(params[:username_or_email])  
    if user && user.password==params[:login_password]
    	#user.password==Digest::SHA1.hexdigest(params[:login_password])
    	#flash[:notice] = "Wow Welcome again, you logged in as #{user.name}"
		session[:user_id] = user.id
        redirect_to index_page_path(user)

        #:index_page 
    else
        flash[:notice] = "Invalid Username or Password"
		redirect_to(:action => 'login')
    end


end
end
