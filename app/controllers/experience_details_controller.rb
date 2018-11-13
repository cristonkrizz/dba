class ExperienceDetailsController < ApplicationController
  before_action :set_experience_detail, only: [:show, :edit, :update, :destroy]

  # GET /experience_details
  # GET /experience_details.json
  def index
    @experience_details = ExperienceDetail.all
  end

  # GET /experience_details/1
  # GET /experience_details/1.json
  def show
  end

  # GET /experience_details/new
  def new
    @experience_detail = ExperienceDetail.new
  end

  # GET /experience_details/1/edit
  def edit
  end

  # POST /experience_details
  # POST /experience_details.json
  def create
    @experience_detail = ExperienceDetail.new(experience_detail_params)

    respond_to do |format|
      if @experience_detail.save
        format.html { redirect_to @experience_detail, notice: 'Experience detail was successfully created.' }
        format.json { render :show, status: :created, location: @experience_detail }
      else
        format.html { render :new }
        format.json { render json: @experience_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experience_details/1
  # PATCH/PUT /experience_details/1.json
  def update
    respond_to do |format|
      if @experience_detail.update(experience_detail_params)
        format.html { redirect_to @experience_detail, notice: 'Experience detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @experience_detail }
      else
        format.html { render :edit }
        format.json { render json: @experience_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experience_details/1
  # DELETE /experience_details/1.json
  def destroy
    @experience_detail.destroy
    respond_to do |format|
      format.html { redirect_to experience_details_url, notice: 'Experience detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience_detail
      @experience_detail = ExperienceDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experience_detail_params
      params.require(:experience_detail).permit(:user_account_id, :is_current_job, :start_date, :end_date, :job_title, :company_name, :job_location_city, :job_location_state, :job_location_country, :description)
    end
end
