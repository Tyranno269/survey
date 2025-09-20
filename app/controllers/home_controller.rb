class HomeController < ApplicationController
  allow_unauthenticated_access only: [:index]
  before_action :require_authentication, only: [:dashboard]

  def index; end
  def dashboard; end
end
