class DirphotsController < ApplicationController
  before_action :set_dirphot, only: [:show, :edit, :update, :destroy]

  # GET /dirphots
  def index
    @dirphots = Dirphot.all.order("created_at desc")
  end

  # GET /dirphots/1
  def show
  end

  # GET /dirphots/new
  def new
    @dirphot = current_user.dirphots.build
  end

  # GET /dirphots/1/edit
  def edit
  end

  # POST /dirphots
  def create
    @dirphot = current_user.dirphots.build(dirphot_params)

    if @dirphot.save
      redirect_to @dirphot, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /dirphots/1
  def update
    if @dirphot.update(dirphot_params)
      redirect_to @dirphot, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /dirphots/1
  def destroy
    @dirphot.destroy
    redirect_to dirphots_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dirphot
      @dirphot = Dirphot.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dirphot_params
      params.require(:dirphot).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition, :equipement, :specialite)
    end
end
