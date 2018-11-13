class SeekerProfilesController < ApplicationController
  before_action :set_seeker_profile, only: [:show, :edit, :update, :destroy]

  # GET /seeker_profiles
  # GET /seeker_profiles.json
  def index
    @seeker_profiles = SeekerProfile.all
  end

  # GET /seeker_profiles/1
  # GET /seeker_profiles/1.json
  def show
  end

  # GET /seeker_profiles/new
  def new
    @seeker_profile = SeekerProfile.new
  end

  # GET /seeker_profiles/1/edit
  def edit
  end

  # POST /seeker_profiles
  # POST /seeker_profiles.json
  def create
    @seeker_profile = SeekerProfile.new(seeker_profile_params)

    respond_to do |format|
      if @seeker_profile.save
        format.html { redirect_to @seeker_profile, notice: 'Seeker profile was successfully created.' }
        format.json { render :show, status: :created, location: @seeker_profile }
      else
        format.html { render :new }
        format.json { render json: @seeker_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seeker_profiles/1
  # PATCH/PUT /seeker_profiles/1.json
  def update
    respond_to do |format|
      if @seeker_profile.update(seeker_profile_params)
        format.html { redirect_to @seeker_profile, notice: 'Seeker profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @seeker_profile }
      else
        format.html { render :edit }
        format.json { render json: @seeker_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seeker_profiles/1
  # DELETE /seeker_profiles/1.json
  def destroy
    @seeker_profile.destroy
    respond_to do |format|
      format.html { redirect_to seeker_profiles_url, notice: 'Seeker profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seeker_profile
      @seeker_profile = SeekerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seeker_profile_params
      params.require(:seeker_profile).permit(:first_name, :last_name, :current_salary, :is_annually_monthly, :currency)
    end
end
