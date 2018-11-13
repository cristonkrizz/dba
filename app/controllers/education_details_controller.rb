class EducationDetailsController < ApplicationController
  before_action :set_education_detail, only: [:show, :edit, :update, :destroy]

  # GET /education_details
  # GET /education_details.json
  def index
    @education_details = EducationDetail.all
  end

  # GET /education_details/1
  # GET /education_details/1.json
  def show
  end

  # GET /education_details/new
  def new
    @education_detail = EducationDetail.new
  end

  # GET /education_details/1/edit
  def edit
  end

  # POST /education_details
  # POST /education_details.json
  def create
    @education_detail = EducationDetail.new(education_detail_params)

    respond_to do |format|
      if @education_detail.save
        format.html { redirect_to @education_detail, notice: 'Education detail was successfully created.' }
        format.json { render :show, status: :created, location: @education_detail }
      else
        format.html { render :new }
        format.json { render json: @education_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /education_details/1
  # PATCH/PUT /education_details/1.json
  def update
    respond_to do |format|
      if @education_detail.update(education_detail_params)
        format.html { redirect_to @education_detail, notice: 'Education detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @education_detail }
      else
        format.html { render :edit }
        format.json { render json: @education_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /education_details/1
  # DELETE /education_details/1.json
  def destroy
    @education_detail.destroy
    respond_to do |format|
      format.html { redirect_to education_details_url, notice: 'Education detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_detail
      @education_detail = EducationDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def education_detail_params
      params.require(:education_detail).permit(:user_account_id, :certificate_degree_name, :major, :Institute_university_name, :starting_date, :completion_date, :percentage, :cgpa)
    end
end
