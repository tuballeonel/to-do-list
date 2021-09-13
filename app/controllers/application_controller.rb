class ApplicationController < ActionController::Base
	layout Proc.new { |controller| controller.devise_controller? ? 'layouts/login' : 'layouts/application' }
	before_action :authenticate_user!
end
