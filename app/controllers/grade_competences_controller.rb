class GradeCompetencesController < ApplicationController
  before_action :set_grade_competence, only: %i[ show edit update destroy ]

  # GET /grade_competences or /grade_competences.json
  def index
    @grade_competences = GradeCompetence.all
  end

  # GET /grade_competences/1 or /grade_competences/1.json
  def show
  end

  # GET /grade_competences/new
  def new
    @grade_competence = GradeCompetence.new
  end

  # GET /grade_competences/1/edit
  def edit
  end

  # POST /grade_competences or /grade_competences.json
  def create
    @grade_competence = GradeCompetence.new(grade_competence_params)

    respond_to do |format|
      if @grade_competence.save
        format.html { redirect_to grade_competence_url(@grade_competence), notice: "Grade competence was successfully created." }
        format.json { render :show, status: :created, location: @grade_competence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grade_competence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grade_competences/1 or /grade_competences/1.json
  def update
    respond_to do |format|
      if @grade_competence.update(grade_competence_params)
        format.html { redirect_to grade_competence_url(@grade_competence), notice: "Grade competence was successfully updated." }
        format.json { render :show, status: :ok, location: @grade_competence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grade_competence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grade_competences/1 or /grade_competences/1.json
  def destroy
    @grade_competence.destroy

    respond_to do |format|
      format.html { redirect_to grade_competences_url, notice: "Grade competence was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_competence
      @grade_competence = GradeCompetence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grade_competence_params
      params.require(:grade_competence).permit(:name, :level_id, :grade, :fundamental_competence_id)
    end
end
