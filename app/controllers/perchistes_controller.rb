class PerchistesController < ApplicationController
  before_action :set_perchiste, only: [:show, :edit, :update, :destroy]

  # GET /perchistes
  def index
    @perchistes = Perchiste.all.order("created_at desc")
  end

  # GET /perchistes/1
  def show
  end

  # GET /perchistes/new
  def new
    @perchiste = current_user.perchistes.build
  end

  # GET /perchistes/1/edit
  def edit
  end

  # POST /perchistes
  def create
    @perchiste = current_user.perchistes.build(perchiste_params)

    if @perchiste.save
      redirect_to @perchiste, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /perchistes/1
  def update
    if @perchiste.update(perchiste_params)
      redirect_to @perchiste, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /perchistes/1
  def destroy
    @perchiste.destroy
    redirect_to perchistes_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perchiste
      @perchiste = Perchiste.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def perchiste_params
      params.require(:perchiste).permit(:nom_et_prenom, :numero, :email, :equipement, :info_carriere, :ambition)
    end
end
