class DevMobilesController < ApplicationController
  before_action :set_dev_mobile, only: [:show, :edit, :update, :destroy]

  # GET /dev_mobiles
  def index
    @dev_mobiles = DevMobile.all.order("created_at desc")
  end

  # GET /dev_mobiles/1
  def show
  end

  # GET /dev_mobiles/new
  def new
    @dev_mobile = current_user.dev_mobiles.build
  end

  # GET /dev_mobiles/1/edit
  def edit
  end

  # POST /dev_mobiles
  def create
    @dev_mobile = current_user.dev_mobiles.build(dev_mobile_params)

    if @dev_mobile.save
      redirect_to @dev_mobile, notice: 'Dev mobile was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dev_mobiles/1
  def update
    if @dev_mobile.update(dev_mobile_params)
      redirect_to @dev_mobile, notice: 'Dev mobile was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dev_mobiles/1
  def destroy
    @dev_mobile.destroy
    redirect_to dev_mobiles_url, notice: 'Dev mobile was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dev_mobile
      @dev_mobile = DevMobile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dev_mobile_params
      params.require(:dev_mobile).permit(:nom_et_prenom, :numero, :email, :langage, :info_carriere, :ambition)
    end
end
