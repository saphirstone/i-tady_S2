class IngeSonsController < ApplicationController
  before_action :set_inge_son, only: [:show, :edit, :update, :destroy]

  # GET /inge_sons
  def index
    @inge_sons = IngeSon.all.order("created_at desc")
  end

  # GET /inge_sons/1
  def show
  end

  # GET /inge_sons/new
  def new
    @inge_son = current_user.inge_sons.build
  end

  # GET /inge_sons/1/edit
  def edit
  end

  # POST /inge_sons
  def create
    @inge_son = current_user.inge_sons.build(inge_son_params)

    if @inge_son.save
      redirect_to @inge_son, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /inge_sons/1
  def update
    if @inge_son.update(inge_son_params)
      redirect_to @inge_son, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /inge_sons/1
  def destroy
    @inge_son.destroy
    redirect_to inge_sons_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inge_son
      @inge_son = IngeSon.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inge_son_params
      params.require(:inge_son).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition)
    end
end
