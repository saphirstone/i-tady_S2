class ScenaristesController < ApplicationController
  before_action :set_scenariste, only: [:show, :edit, :update, :destroy]

  # GET /scenaristes
  def index
    @scenaristes = Scenariste.all.order("created_at desc")
  end

  # GET /scenaristes/1
  def show
  end

  # GET /scenaristes/new
  def new
    @scenariste = current_user.scenaristes.build
  end

  # GET /scenaristes/1/edit
  def edit
  end

  # POST /scenaristes
  def create
    @scenariste = current_user.scenaristes.build(scenariste_params)

    if @scenariste.save
      redirect_to @scenariste, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /scenaristes/1
  def update
    if @scenariste.update(scenariste_params)
      redirect_to @scenariste, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /scenaristes/1
  def destroy
    @scenariste.destroy
    redirect_to scenaristes_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scenariste
      @scenariste = Scenariste.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scenariste_params
      params.require(:scenariste).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition, :specialite)
    end
end
