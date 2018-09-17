class MonteurVideosController < ApplicationController
  before_action :set_monteur_video, only: [:show, :edit, :update, :destroy]

  # GET /monteur_videos
  def index
    @monteur_videos = MonteurVideo.all.order("created_at desc")
  end

  # GET /monteur_videos/1
  def show
  end

  # GET /monteur_videos/new
  def new
    @monteur_video = current_user.monteur_videos.build
  end

  # GET /monteur_videos/1/edit
  def edit
  end

  # POST /monteur_videos
  def create
    @monteur_video = current_user.monteur_videos.build(monteur_video_params)

    if @monteur_video.save
      redirect_to @monteur_video, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /monteur_videos/1
  def update
    if @monteur_video.update(monteur_video_params)
      redirect_to @monteur_video, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /monteur_videos/1
  def destroy
    @monteur_video.destroy
    redirect_to monteur_videos_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monteur_video
      @monteur_video = MonteurVideo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def monteur_video_params
      params.require(:monteur_video).permit(:nom_et_prenom, :numero, :email, :equipement, :info_carriere, :ambition)
    end
end
