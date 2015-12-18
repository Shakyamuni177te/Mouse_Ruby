class NarrativesController < ApplicationController
  before_action :set_narrative, only: [:show, :edit, :update, :destroy]

  # GET /narratives
  # GET /narratives.json
  def index
    @narratives = Narrative.all
  end

  # GET /narratives/1
  # GET /narratives/1.json
  def show
  end

  # GET /narratives/new
  def new
    @narrative = Narrative.new
  end

  # GET /narratives/1/edit
  def edit
  end

  # POST /narratives
  # POST /narratives.json
  def create
    @narrative = Narrative.new(narrative_params)

    respond_to do |format|
      if @narrative.save
        format.html { redirect_to @narrative, notice: 'Narrative was successfully created.' }
        format.json { render :show, status: :created, location: @narrative }
      else
        format.html { render :new }
        format.json { render json: @narrative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /narratives/1
  # PATCH/PUT /narratives/1.json
  def update
    respond_to do |format|
      if @narrative.update(narrative_params)
        format.html { redirect_to @narrative, notice: 'Narrative was successfully updated.' }
        format.json { render :show, status: :ok, location: @narrative }
      else
        format.html { render :edit }
        format.json { render json: @narrative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /narratives/1
  # DELETE /narratives/1.json
  def destroy
    @narrative.destroy
    respond_to do |format|
      format.html { redirect_to narratives_url, notice: 'Narrative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_narrative
      @narrative = Narrative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def narrative_params
      params.require(:narrative).permit(:name, :char_name, :story_section)
    end
end
