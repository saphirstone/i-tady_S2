class FlashDesignersController < ApplicationController
  before_action :set_flash_designer, only: [:show, :edit, :update, :destroy]

  # GET /flash_designers
  def index
    @flash_designers = FlashDesigner.all.order("created_at desc")
  end

  # GET /flash_designers/1
  def show
  end

  # GET /flash_designers/new
  def new
    @flash_designer = current_user.flash_designers.build
  end

  # GET /flash_designers/1/edit
  def edit
  end

  # POST /flash_designers
  def create
    @flash_designer = current_user.flash_designers.build(flash_designer_params)

    if @flash_designer.save
      redirect_to @flash_designer, notice: 'Flash designer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /flash_designers/1
  def update
    if @flash_designer.update(flash_designer_params)
      redirect_to @flash_designer, notice: 'Flash designer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /flash_designers/1
  def destroy
    @flash_designer.destroy
    redirect_to flash_designers_url, notice: 'Flash designer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flash_designer
      @flash_designer = FlashDesigner.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flash_designer_params
      params.require(:flash_designer).permit(:nom_et_prenom, :numero, :email, :info_carriere, :ambition)
    end
end
