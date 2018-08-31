module Api
  class UrlsController < ApplicationController
    def index
      @url = Url.last
    end
    def new
    end

    def show
      render :show
    end

    def create
      if !params[:url].blank?
        client = Bitly.client
        @url = client.shorten(params[:url])
      end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def url
      @url = Url.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def url_params
      params.permit(:url)
    end
end