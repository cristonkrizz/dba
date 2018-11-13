class SeekerSkillSetsController < ApplicationController
  before_action :set_seeker_skill_set, only: [:show, :edit, :update, :destroy]

  # GET /seeker_skill_sets
  # GET /seeker_skill_sets.json
  def index
    @seeker_skill_sets = SeekerSkillSet.all
  end

  # GET /seeker_skill_sets/1
  # GET /seeker_skill_sets/1.json
  def show
  end

  # GET /seeker_skill_sets/new
  def new
    @seeker_skill_set = SeekerSkillSet.new
  end

  # GET /seeker_skill_sets/1/edit
  def edit
  end

  # POST /seeker_skill_sets
  # POST /seeker_skill_sets.json
  def create
    @seeker_skill_set = SeekerSkillSet.new(seeker_skill_set_params)

    respond_to do |format|
      if @seeker_skill_set.save
        format.html { redirect_to @seeker_skill_set, notice: 'Seeker skill set was successfully created.' }
        format.json { render :show, status: :created, location: @seeker_skill_set }
      else
        format.html { render :new }
        format.json { render json: @seeker_skill_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seeker_skill_sets/1
  # PATCH/PUT /seeker_skill_sets/1.json
  def update
    respond_to do |format|
      if @seeker_skill_set.update(seeker_skill_set_params)
        format.html { redirect_to @seeker_skill_set, notice: 'Seeker skill set was successfully updated.' }
        format.json { render :show, status: :ok, location: @seeker_skill_set }
      else
        format.html { render :edit }
        format.json { render json: @seeker_skill_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seeker_skill_sets/1
  # DELETE /seeker_skill_sets/1.json
  def destroy
    @seeker_skill_set.destroy
    respond_to do |format|
      format.html { redirect_to seeker_skill_sets_url, notice: 'Seeker skill set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seeker_skill_set
      @seeker_skill_set = SeekerSkillSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seeker_skill_set_params
      params.require(:seeker_skill_set).permit(:user_account_id, :skill_set_id, :skill_level)
    end
end
