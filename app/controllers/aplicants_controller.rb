class AplicantsController < ApplicationController
  before_action :set_aplicant, only: %i[ show edit update destroy ]

  # GET /aplicants or /aplicants.json
  def index
    @aplicants = Aplicant.all
  end

  # GET /aplicants/1 or /aplicants/1.json
  def show
  end

  # GET /aplicants/new
  def new
    @aplicant = Aplicant.new
  end

  # GET /aplicants/1/edit
  def edit
  end

  # POST /aplicants or /aplicants.json
  def create
    @aplicant = Aplicant.new(aplicant_params)

    respond_to do |format|
      if @aplicant.save
        format.html { redirect_to aplicant_url(@aplicant), notice: "Aplicant was successfully created." }
        format.json { render :show, status: :created, location: @aplicant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aplicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aplicants/1 or /aplicants/1.json
  def update
    respond_to do |format|
      if @aplicant.update(aplicant_params)
        format.html { redirect_to aplicant_url(@aplicant), notice: "Aplicant was successfully updated." }
        format.json { render :show, status: :ok, location: @aplicant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aplicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aplicants/1 or /aplicants/1.json
  def destroy
    @aplicant.destroy

    respond_to do |format|
      format.html { redirect_to aplicants_url, notice: "Aplicant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aplicant
      @aplicant = Aplicant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aplicant_params
      params.require(:aplicant).permit(:name, :vacancy_id)
    end
end
