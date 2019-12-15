class MensTeamsController < ApplicationController
  before_action :set_mens_team, only: [:show, :edit, :update, :destroy]

  # GET /mens_teams
  # GET /mens_teams.json
  def index
    @mens_teams = MensTeam.all
  end

  # GET /mens_teams/1
  # GET /mens_teams/1.json
  def show
  end

  # GET /mens_teams/new
  def new
    @mens_team = MensTeam.new
  end

  # GET /mens_teams/1/edit
  def edit
  end

  # POST /mens_teams
  # POST /mens_teams.json
  def create
    @mens_team = MensTeam.new(mens_team_params)

    respond_to do |format|
      if @mens_team.save
        format.html { redirect_to @mens_team, notice: 'Mens team was successfully created.' }
        format.json { render :show, status: :created, location: @mens_team }
      else
        format.html { render :new }
        format.json { render json: @mens_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mens_teams/1
  # PATCH/PUT /mens_teams/1.json
  def update
    respond_to do |format|
      if @mens_team.update(mens_team_params)
        format.html { redirect_to @mens_team, notice: 'Mens team was successfully updated.' }
        format.json { render :show, status: :ok, location: @mens_team }
      else
        format.html { render :edit }
        format.json { render json: @mens_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mens_teams/1
  # DELETE /mens_teams/1.json
  def destroy
    @mens_team.destroy
    respond_to do |format|
      format.html { redirect_to mens_teams_url, notice: 'Mens team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mens_team
      @mens_team = MensTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mens_team_params
      params.require(:mens_team).permit(:level, :no_of_players, :division)
    end
end
