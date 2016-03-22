require 'pry'

class ParticipationsController < ApplicationController
  before_action :set_participation, only: [:show, :edit, :update, :destroy]
  before_action :set_project

  # GET /participations
  # GET /participations.json
  def index
    @participations = @project.participations
  end

  # GET /participations/1
  # GET /participations/1.json
  def show
  end

  # GET /participations/new
  def new
    @participation = Participation.new({project_id: @project.id})
    @participant = @participation.build_participant
    @person = @participation.build_person
  end

  # GET /participations/1/edit
  def edit
  end

  # POST /participations
  # POST /participations.json
  def create
    @participation = Participation.new(participation_params)
    @participation.project_id = @project.id

    respond_to do |format|
      if @participation.save

        format.html { redirect_to project_participations_path, notice: 'Participation was successfully created.' }
        format.json { render :show, status: :created, location: @participation }
      else
        format.html { render :new }
        format.json { render json: @participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participations/1
  # PATCH/PUT /participations/1.json
  def update
    respond_to do |format|
      if @participation.update(participation_params)
        format.html { redirect_to project_participation_path(@project,@participation), notice: 'Participation was successfully updated.' }
        format.json { render :show, status: :ok, location: @participation }
      else
        format.html { render :edit }
        format.json { render json: @participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participations/1
  # DELETE /participations/1.json
  def destroy
    @participation.destroy
    respond_to do |format|
      format.html { redirect_to project_participations_url, notice: 'Participation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participation
      @participation = Participation.find(params[:id])
    end

    def set_project
      if params[:project_id]
        @project = Project.find(params[:project_id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participation_params
      params.require(:participation).permit(:administrative_title, :email, participant_attributes:[:title,:administrative_title,:email],person_attributes: [:firstName,:lastName])
    end
end
