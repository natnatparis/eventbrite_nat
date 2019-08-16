class ApplicationController < ActionController::Base
    before_action :configure_devise_parameters, if: :devise_controller?
end
