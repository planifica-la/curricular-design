class ConceptTopicsController < ApplicationController
  before_action :set_concept_topic, only: %i[ show edit update destroy ]

  # GET /concept_topics or /concept_topics.json
  def index
    @concept_topics = ConceptTopic.all
  end

  # GET /concept_topics/1 or /concept_topics/1.json
  def show
  end

  # GET /concept_topics/new
  def new
    @concept_topic = ConceptTopic.new
  end

  # GET /concept_topics/1/edit
  def edit
  end

  # POST /concept_topics or /concept_topics.json
  def create
    @concept_topic = ConceptTopic.new(concept_topic_params)

    respond_to do |format|
      if @concept_topic.save
        format.html { redirect_to concept_topic_url(@concept_topic), notice: "Concept topic was successfully created." }
        format.json { render :show, status: :created, location: @concept_topic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @concept_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concept_topics/1 or /concept_topics/1.json
  def update
    respond_to do |format|
      if @concept_topic.update(concept_topic_params)
        format.html { redirect_to concept_topic_url(@concept_topic), notice: "Concept topic was successfully updated." }
        format.json { render :show, status: :ok, location: @concept_topic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @concept_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concept_topics/1 or /concept_topics/1.json
  def destroy
    @concept_topic.destroy

    respond_to do |format|
      format.html { redirect_to concept_topics_url, notice: "Concept topic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concept_topic
      @concept_topic = ConceptTopic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def concept_topic_params
      params.require(:concept_topic).permit(:level_id, :grade_id, :subject_id, :topic)
    end
end
