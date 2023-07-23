class ApplicationController < ActionController::Base
  before_action :set_socials

  private

  def set_socials
    @socials = Social.all
  end
end
