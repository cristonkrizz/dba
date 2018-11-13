class JobPostActivitiesController < ApplicationController
  before_action :set_job_post_activity, only: [:show, :edit, :update, :destroy]

  # GET /job_post_activities
  # GET /job_post_activities.json
  def index
    @job_post_activities = JobPostActivity.all
  end

  # GET /job_post_activities/1
  # GET /job_post_activities/1.json
  def show
  end

  # GET /job_post_activities/new
  def new
    @job_post_activity = JobPostActivity.new
  end

  # GET /job_post_activities/1/edit
  def edit
  end

  # POST /job_post_activities
  # POST /job_post_activities.json
  def create
    @job_post_activity = JobPostActivity.new(job_post_activity_params)

    respond_to do |format|
      if @job_post_activity.save
        format.html { redirect_to @job_post_activity, notice: 'Job post activity was successfully created.' }
        format.json { render :show, status: :created, location: @job_post_activity }
      else
        format.html { render :new }
        format.json { render json: @job_post_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_post_activities/1
  # PATCH/PUT /job_post_activities/1.json
  def update
    respond_to do |format|
      if @job_post_activity.update(job_post_activity_params)
        format.html { redirect_to @job_post_activity, notice: 'Job post activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_post_activity }
      else
        format.html { render :edit }
        format.json { render json: @job_post_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_post_activities/1
  # DELETE /job_post_activities/1.json
  def destroy
    @job_post_activity.destroy
    respond_to do |format|
      format.html { redirect_to job_post_activities_url, notice: 'Job post activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_post_activity
      @job_post_activity = JobPostActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_post_activity_params
      params.require(:job_post_activity).permit(:user_account_id, :job_post_id, :apply_date)
    end
end
