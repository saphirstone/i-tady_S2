class ProducteursController < ApplicationController
  before_action :set_producteur, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  # GET /producteurs
  def index
    @producteurs = Producteur.all.order("created_at desc")
  end

  # GET /producteurs/1
  def show
  end

  # GET /producteurs/new
  def new
    @producteur = current_user.producteurs.build
  end

  # GET /producteurs/1/edit
  def edit
  end

  # POST /producteurs
  def create
    @producteur = current_user.producteurs.build(producteur_params)

    if @producteur.save
      redirect_to @producteur, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /producteurs/1
  def update
    if @producteur.update(producteur_params)
      redirect_to @producteur, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /producteurs/1
  def destroy
    @producteur.destroy
    redirect_to producteurs_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producteur
      @producteur = Producteur.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def producteur_params
      params.require(:producteur).permit(:nom_et_prenom, :email, :info_carriere, :ambition)
    end
end
