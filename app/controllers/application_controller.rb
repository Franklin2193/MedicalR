class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit::Authorization
  #rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized



  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?




  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end



end
