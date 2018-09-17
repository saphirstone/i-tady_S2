class DirecteurDeProdsController < ApplicationController
  before_action :set_directeur_de_prod, only: [:show, :edit, :update, :destroy]

  # GET /directeur_de_prods
  def index
    @directeur_de_prods = DirecteurDeProd.all.order("created_at desc")
  end

  # GET /directeur_de_prods/1
  def show
  end

  # GET /directeur_de_prods/new
  def new
    @directeur_de_prod = current_user.directeur_de_prods.build
  end

  # GET /directeur_de_prods/1/edit
  def edit
  end

  # POST /directeur_de_prods
  def create
    @directeur_de_prod = current_user.directeur_de_prods.build(directeur_de_prod_params)

    if @directeur_de_prod.save
      redirect_to @directeur_de_prod, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /directeur_de_prods/1
  def update
    if @directeur_de_prod.update(directeur_de_prod_params)
      redirect_to @directeur_de_prod, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /directeur_de_prods/1
  def destroy
    @directeur_de_prod.destroy
    redirect_to directeur_de_prods_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_directeur_de_prod
      @directeur_de_prod = DirecteurDeProd.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def directeur_de_prod_params
      params.require(:directeur_de_prod).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition)
    end
end
