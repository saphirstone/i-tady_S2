class PhotographesController < ApplicationController
  before_action :set_photographe, only: [:show, :edit, :update, :destroy]

  # GET /photographes
  def index
    @photographes = Photographe.all.order("created_at desc")
  end

  # GET /photographes/1
  def show
  end

  # GET /photographes/new
  def new
    @photographe = current_user.photographes.build
  end

  # GET /photographes/1/edit
  def edit
  end

  # POST /photographes
  def create
    @photographe = current_user.photographes.build(photographe_params)

    if @photographe.save
      redirect_to @photographe, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /photographes/1
  def update
    if @photographe.update(photographe_params)
      redirect_to @photographe, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /photographes/1
  def destroy
    @photographe.destroy
    redirect_to photographes_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photographe
      @photographe = Photographe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def photographe_params
      params.require(:photographe).permit(:nom_et_prenom, :numero, :email, :equipe, :info_carriere, :ambition)
    end
end
