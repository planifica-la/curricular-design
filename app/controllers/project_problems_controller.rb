class ProjectProblemsController < ApplicationController
  before_action :set_project_problem, only: %i[ show edit update destroy ]

  # GET /project_problems or /project_problems.json
  def index
    if (params[:level])
      level = Level.find_by(name: params[:level])
      @project_problems = ProjectProblem.all.filter { |problem| problem.level_id == level.id }
    else
      @project_problems = ProjectProblem.all
    end
  end

  # GET /project_problems/1 or /project_problems/1.json
  def show
  end

  # GET /project_problems/new
  def new
    @project_problem = ProjectProblem.new
  end

  # GET /project_problems/1/edit
  def edit
  end

  # POST /project_problems or /project_problems.json
  def create
    @project_problem = ProjectProblem.new(project_problem_params)

    respond_to do |format|
      if @project_problem.save
        format.html { redirect_to project_problem_url(@project_problem), notice: "Project problem was successfully created." }
        format.json { render :show, status: :created, location: @project_problem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_problems/1 or /project_problems/1.json
  def update
    respond_to do |format|
      if @project_problem.update(project_problem_params)
        format.html { redirect_to project_problem_url(@project_problem), notice: "Project problem was successfully updated." }
        format.json { render :show, status: :ok, location: @project_problem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_problems/1 or /project_problems/1.json
  def destroy
    @project_problem.destroy

    respond_to do |format|
      format.html { redirect_to project_problems_url, notice: "Project problem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_problem
      @project_problem = ProjectProblem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_problem_params
      params.require(:project_problem).permit(:problem, :level_id)
    end
end
