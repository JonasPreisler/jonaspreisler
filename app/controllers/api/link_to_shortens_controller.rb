class Api::LinkToShortensController < ApplicationController
  before_action :set_link_to_shorten, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def index
    @link_to_shortens = LinkToShorten.all
  end

  def show
    render :show
  end

  def new
    @link_to_shorten = LinkToShorten.new
  end

  def edit
  end

  def create
    @link_to_shorten = LinkToShorten.new(link_to_shorten_params)

    respond_to do |format|
      if @link_to_shorten.save
        render json: {
         "messages": [
           {"text": "Your link: http://jones.webshop8.dk/shop/showbasket.html?BasketLink=1&AddMultiple=1&ProductID=|#{@link_to_shorten.product_id}&Amount=|1&VariantGroups=|#{'Farve' if @link_to_shorten.color?}#{'%3BStørrelser' if @link_to_shorten.size?}&Variants=|#{@link_to_shorten.color}#{'%3B' if @link_to_shorten.size?}#{@link_to_shorten.size}"}
          ]
        }
      else
        format.html { render :new }
        format.json { render json: @link_to_shorten.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @link_to_shorten.update(link_to_shorten_params)
        format.html { redirect_to @link_to_shorten, notice: 'Link to shorten was successfully updated.' }
        format.json { render :show, status: :ok, location: @link_to_shorten }
      else
        format.html { render :edit }
        format.json { render json: @link_to_shorten.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @link_to_shorten.destroy
    respond_to do |format|
      format.html { redirect_to link_to_shortens_url, notice: 'Link to shorten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_link_to_shorten
      @link_to_shorten = LinkToShorten.find(params[:id])
    end

    def link_to_shorten_params
      params.permit(:product_id, :color, :size, :amount)
    end
end