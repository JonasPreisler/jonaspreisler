class Api::MisschilisController < ApplicationController
  before_action :set_misschili, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  def index
    @misschili = Misschili.last
  end
  def new
  end

  def show
    render :show
  end

  def create
    @misschili = Misschili.new(misschili_params)

    respond_to do |format|
      if @misschili.save
        format.html { redirect_to @misschili, notice: 'misschili to shorten was successfully created.' }
        format.json { render :show, status: :created, location: @misschili }
      else
        format.html { render :new }
        format.json { render json: @misschili.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def misschili
      @misschili = Misschili.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def misschili_params
      params.permit(:product_id)
    end
end