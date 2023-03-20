class FundamentalCompetencesController < ApplicationController
  before_action :set_fundamental_competence, only: %i[ show edit update destroy ]

  # GET /fundamental_competences or /fundamental_competences.json
  def index
    @fundamental_competences = FundamentalCompetence.all
  end

  # GET /fundamental_competences/1 or /fundamental_competences/1.json
  def show
  end

  # GET /fundamental_competences/new
  def new
    @fundamental_competence = FundamentalCompetence.new
  end

  # GET /fundamental_competences/1/edit
  def edit
  end

  # POST /fundamental_competences or /fundamental_competences.json
  def create
    @fundamental_competence = FundamentalCompetence.new(fundamental_competence_params)

    respond_to do |format|
      if @fundamental_competence.save
        format.html { redirect_to fundamental_competence_url(@fundamental_competence), notice: "Fundamental competence was successfully created." }
        format.json { render :show, status: :created, location: @fundamental_competence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fundamental_competence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fundamental_competences/1 or /fundamental_competences/1.json
  def update
    respond_to do |format|
      if @fundamental_competence.update(fundamental_competence_params)
        format.html { redirect_to fundamental_competence_url(@fundamental_competence), notice: "Fundamental competence was successfully updated." }
        format.json { render :show, status: :ok, location: @fundamental_competence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fundamental_competence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundamental_competences/1 or /fundamental_competences/1.json
  def destroy
    @fundamental_competence.destroy

    respond_to do |format|
      format.html { redirect_to fundamental_competences_url, notice: "Fundamental competence was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fundamental_competence
      @fundamental_competence = FundamentalCompetence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fundamental_competence_params
      params.require(:fundamental_competence).permit(:name)
    end
end
