class LinkToShortensController < ApplicationController
  before_action :set_link_to_shorten, only: [:show, :edit, :update, :destroy]

  # GET /link_to_shortens
  # GET /link_to_shortens.json
  def index
    @link_to_shortens = LinkToShorten.all
  end

  # GET /link_to_shortens/1
  # GET /link_to_shortens/1.json
  def show
  end

  # GET /link_to_shortens/new
  def new
    @link_to_shorten = LinkToShorten.new
  end

  # GET /link_to_shortens/1/edit
  def edit
  end

  # POST /link_to_shortens
  # POST /link_to_shortens.json
  def create
    @link_to_shorten = LinkToShorten.new(link_to_shorten_params)

    respond_to do |format|
      if @link_to_shorten.save
        format.html { redirect_to @link_to_shorten, notice: 'Link to shorten was successfully created.' }
        format.json { render :show, status: :created, location: @link_to_shorten }
      else
        format.html { render :new }
        format.json { render json: @link_to_shorten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /link_to_shortens/1
  # PATCH/PUT /link_to_shortens/1.json
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

  # DELETE /link_to_shortens/1
  # DELETE /link_to_shortens/1.json
  def destroy
    @link_to_shorten.destroy
    respond_to do |format|
      format.html { redirect_to link_to_shortens_url, notice: 'Link to shorten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link_to_shorten
      @link_to_shorten = LinkToShorten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_to_shorten_params
      params.require(:link_to_shorten).permit(:product_id, :color, :size, :amount)
    end
end
