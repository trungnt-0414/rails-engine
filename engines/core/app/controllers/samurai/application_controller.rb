module Samurai
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    rescue_from CanCan::AccessDenied do |exception|
      render template: "static/403", status: 403, layout: false
    end

    private

    def current_ability
      @current_ability ||= Samurai::Ability.new(current_user)
    end
  end
end
