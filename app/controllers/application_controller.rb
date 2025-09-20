class ApplicationController < ActionController::Base
  include Authentication
  helper_method :current_user if method_defined?(:current_user)
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  private

  def after_authentication_url
    dashboard_path
  end
end
