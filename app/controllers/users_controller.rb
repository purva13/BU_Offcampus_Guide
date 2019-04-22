class UsersController < ApplicationController
    def new 
    end
    def index
        @users = User.all
    end
    def guest
        
    end
    
    def new_user
        redirect_to login_path
    end
end