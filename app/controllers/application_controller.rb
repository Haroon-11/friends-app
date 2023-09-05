class ApplicationController < ActionController::Base


    
    include Pundit

    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

   

    def after_sign_in_path_for(user)
        user.admin? ? admin_dashboard_path : root_path 
    end

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}

            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
        end
end
