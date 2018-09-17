require 'test_helper'

class FlashDesignersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flash_designer = flash_designers(:one)
  end

  test "should get index" do
    get flash_designers_url
    assert_response :success
  end

  test "should get new" do
    get new_flash_designer_url
    assert_response :success
  end

  test "should create flash_designer" do
    assert_difference('FlashDesigner.count') do
      post flash_designers_url, params: { flash_designer: { ambition: @flash_designer.ambition, email: @flash_designer.email, info_carriere: @flash_designer.info_carriere, nom_et_prenom: @flash_designer.nom_et_prenom, numero: @flash_designer.numero } }
    end

    assert_redirected_to flash_designer_url(FlashDesigner.last)
  end

  test "should show flash_designer" do
    get flash_designer_url(@flash_designer)
    assert_response :success
  end

  test "should get edit" do
    get edit_flash_designer_url(@flash_designer)
    assert_response :success
  end

  test "should update flash_designer" do
    patch flash_designer_url(@flash_designer), params: { flash_designer: { ambition: @flash_designer.ambition, email: @flash_designer.email, info_carriere: @flash_designer.info_carriere, nom_et_prenom: @flash_designer.nom_et_prenom, numero: @flash_designer.numero } }
    assert_redirected_to flash_designer_url(@flash_designer)
  end

  test "should destroy flash_designer" do
    assert_difference('FlashDesigner.count', -1) do
      delete flash_designer_url(@flash_designer)
    end

    assert_redirected_to flash_designers_url
  end
end
