class Api::UrlsController < ApplicationController
  before_action :set_link_to_shorten, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
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
      respond_to do |format|
        format.html { redirect_to @url, notice: 'url to shorten was successfully created.' }
        format.json { render :show, status: :created, location: @url }
        format.html { render :new }
        format.json { render json: @url.errors, status: :unprocessable_entity }
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