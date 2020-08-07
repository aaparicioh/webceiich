class MedioVideosController < ApplicationController
  before_action :set_medio_video, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:create,:new,:update,:edit,:destroy]
  # GET /medio_videos
  # GET /medio_videos.json
  def index
    @medio_videos = MedioVideo.all
  end

  # GET /medio_videos/1
  # GET /medio_videos/1.json
  def show
  end

  # GET /medio_videos/new
  def new
    @medio_video = MedioVideo.new
  end

  # GET /medio_videos/1/edit
  def edit
  end

  # POST /medio_videos
  # POST /medio_videos.json
  def create
    @medio_video = MedioVideo.new(medio_video_params)

    respond_to do |format|
      if @medio_video.save
        format.html { redirect_to @medio_video, notice: 'Medio video was successfully created.' }
        format.json { render :show, status: :created, location: @medio_video }
      else
        format.html { render :new }
        format.json { render json: @medio_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medio_videos/1
  # PATCH/PUT /medio_videos/1.json
  def update
    respond_to do |format|
      if @medio_video.update(medio_video_params)
        format.html { redirect_to @medio_video, notice: 'Medio video was successfully updated.' }
        format.json { render :show, status: :ok, location: @medio_video }
      else
        format.html { render :edit }
        format.json { render json: @medio_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medio_videos/1
  # DELETE /medio_videos/1.json
  def destroy
    @medio_video.destroy
    respond_to do |format|
      format.html { redirect_to medio_videos_url, notice: 'Medio video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medio_video
      @medio_video = MedioVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medio_video_params
      params.require(:medio_video).permit(:url, :fecha)
    end
end
