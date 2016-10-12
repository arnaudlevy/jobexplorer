class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :http_authenticate

  protected

  def http_authenticate
    return true unless Rails.env.production?
    authenticate_or_request_with_http_basic do |username, password|
      username == 'patricia' && password == ENV['PASSWORD']
    end
  end
end
