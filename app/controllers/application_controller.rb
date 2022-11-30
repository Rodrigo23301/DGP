class ApplicationController < ActionController::Base
    #before_action :authenticate_admin!
    def after_sign_up_path_for(student)
        '/home/index'
    end 

   
end


