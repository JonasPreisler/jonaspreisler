class MisschilisController < ApplicationController
  before_action :set_misschili, only: [:show, :edit, :update, :destroy]

  # GET /misschilis
  # GET /misschilis.json
  def index
    @misschilis = Misschili.all
  end

  # GET /misschilis/1
  # GET /misschilis/1.json
  def show
  end

  # GET /misschilis/new
  def new
    @misschili = Misschili.new
  end

  # GET /misschilis/1/edit
  def edit
  end

  # POST /misschilis
  # POST /misschilis.json
  def create
    @misschili = Misschili.new(misschili_params)

    respond_to do |format|
      if @misschili.save
        format.html { redirect_to @misschili, notice: 'Misschili was successfully created.' }
        format.json { render :show, status: :created, location: @misschili }
      else
        format.html { render :new }
        format.json { render json: @misschili.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /misschilis/1
  # PATCH/PUT /misschilis/1.json
  def update
    respond_to do |format|
      if @misschili.update(misschili_params)
        format.html { redirect_to @misschili, notice: 'Misschili was successfully updated.' }
        format.json { render :show, status: :ok, location: @misschili }
      else
        format.html { render :edit }
        format.json { render json: @misschili.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /misschilis/1
  # DELETE /misschilis/1.json
  def destroy
    @misschili.destroy
    respond_to do |format|
      format.html { redirect_to misschilis_url, notice: 'Misschili was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_misschili
      @misschili = Misschili.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def misschili_params
      params.require(:misschili).permit(:product_id)
    end
end
