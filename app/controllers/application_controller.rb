class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  private

  def browser_language
    language_header = request.env['HTTP_ACCEPT_LANGUAGE']
    language_header.scan(/^[a-z]{2}/).first.to_sym if language_header
  end

  def supported_browser_language
    browser_language if I18n.available_locales.include?(browser_language)
  end

  def set_locale
    I18n.locale = params[:locale] || supported_browser_language || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
