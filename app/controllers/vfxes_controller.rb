class VfxesController < ApplicationController
  before_action :set_vfx, only: [:show, :edit, :update, :destroy]

  # GET /vfxes
  def index
    @vfxes = Vfx.all.order("created_at desc")
  end

  # GET /vfxes/1
  def show
  end

  # GET /vfxes/new
  def new
    @vfx = current_user.vfxes.build
  end

  # GET /vfxes/1/edit
  def edit
  end

  # POST /vfxes
  def create
    @vfx = current_user.vfxes.build(vfx_params)

    if @vfx.save
      redirect_to @vfx, notice: 'Votre postulation est faite!'
    else
      render :new
    end
  end

  # PATCH/PUT /vfxes/1
  def update
    if @vfx.update(vfx_params)
      redirect_to @vfx, notice: 'Votre postulation a bien été modifié!'
    else
      render :edit
    end
  end

  # DELETE /vfxes/1
  def destroy
    @vfx.destroy
    redirect_to vfxes_url, notice: 'Votre postulation a bien été retiré!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vfx
      @vfx = Vfx.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vfx_params
      params.require(:vfx).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition)
    end
end
