class CompanyImagesController < ApplicationController
  before_action :set_company_image, only: [:show, :edit, :update, :destroy]

  # GET /company_images
  # GET /company_images.json
  def index
    @company_images = CompanyImage.all
  end

  # GET /company_images/1
  # GET /company_images/1.json
  def show
  end

  # GET /company_images/new
  def new
    @company_image = CompanyImage.new
  end

  # GET /company_images/1/edit
  def edit
  end

  # POST /company_images
  # POST /company_images.json
  def create
    @company_image = CompanyImage.new(company_image_params)

    respond_to do |format|
      if @company_image.save
        format.html { redirect_to @company_image, notice: 'Company image was successfully created.' }
        format.json { render :show, status: :created, location: @company_image }
      else
        format.html { render :new }
        format.json { render json: @company_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_images/1
  # PATCH/PUT /company_images/1.json
  def update
    respond_to do |format|
      if @company_image.update(company_image_params)
        format.html { redirect_to @company_image, notice: 'Company image was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_image }
      else
        format.html { render :edit }
        format.json { render json: @company_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_images/1
  # DELETE /company_images/1.json
  def destroy
    @company_image.destroy
    respond_to do |format|
      format.html { redirect_to company_images_url, notice: 'Company image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_image
      @company_image = CompanyImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_image_params
      params.require(:company_image).permit(:company_id, :company_image)
    end
end
