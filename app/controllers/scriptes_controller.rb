class ScriptesController < ApplicationController
  before_action :set_scripte, only: [:show, :edit, :update, :destroy]

  # GET /scriptes
  def index
    @scriptes = Scripte.all.order("created_at desc")
  end

  # GET /scriptes/1
  def show
  end

  # GET /scriptes/new
  def new
    @scripte = current_user.scriptes.build
  end

  # GET /scriptes/1/edit
  def edit
  end

  # POST /scriptes
  def create
    @scripte = current_user.scriptes.build(scripte_params)

    if @scripte.save
      redirect_to @scripte, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /scriptes/1
  def update
    if @scripte.update(scripte_params)
      redirect_to @scripte, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /scriptes/1
  def destroy
    @scripte.destroy
    redirect_to scriptes_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scripte
      @scripte = Scripte.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scripte_params
      params.require(:scripte).permit(:nom_et_prenom, :numero, :email, :info_carriere, :specialite, :ambition)
    end
end
