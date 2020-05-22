# frozen_string_literal: true

class ScreenshotController < ApplicationController
  def show
    if params[:url] && !params[:url].empty?
      @url = ActionController::Base.helpers.sanitize(params[:url] || '', tags: [])
      @image = Rails.cache.fetch(Digest::MD5.hexdigest("grover_url_png_#{@url}")) do
        Base64.encode64(Grover.new(@url).to_png)
      end
    end
  end
end
