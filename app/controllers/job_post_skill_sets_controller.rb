class JobPostSkillSetsController < ApplicationController
  before_action :set_job_post_skill_set, only: [:show, :edit, :update, :destroy]

  # GET /job_post_skill_sets
  # GET /job_post_skill_sets.json
  def index
    @job_post_skill_sets = JobPostSkillSet.all
  end

  # GET /job_post_skill_sets/1
  # GET /job_post_skill_sets/1.json
  def show
  end

  # GET /job_post_skill_sets/new
  def new
    @job_post_skill_set = JobPostSkillSet.new
  end

  # GET /job_post_skill_sets/1/edit
  def edit
  end

  # POST /job_post_skill_sets
  # POST /job_post_skill_sets.json
  def create
    @job_post_skill_set = JobPostSkillSet.new(job_post_skill_set_params)

    respond_to do |format|
      if @job_post_skill_set.save
        format.html { redirect_to @job_post_skill_set, notice: 'Job post skill set was successfully created.' }
        format.json { render :show, status: :created, location: @job_post_skill_set }
      else
        format.html { render :new }
        format.json { render json: @job_post_skill_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_post_skill_sets/1
  # PATCH/PUT /job_post_skill_sets/1.json
  def update
    respond_to do |format|
      if @job_post_skill_set.update(job_post_skill_set_params)
        format.html { redirect_to @job_post_skill_set, notice: 'Job post skill set was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_post_skill_set }
      else
        format.html { render :edit }
        format.json { render json: @job_post_skill_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_post_skill_sets/1
  # DELETE /job_post_skill_sets/1.json
  def destroy
    @job_post_skill_set.destroy
    respond_to do |format|
      format.html { redirect_to job_post_skill_sets_url, notice: 'Job post skill set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_post_skill_set
      @job_post_skill_set = JobPostSkillSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_post_skill_set_params
      params.require(:job_post_skill_set).permit(:skill_set_id, :job_post_id, :skill_level)
    end
end
