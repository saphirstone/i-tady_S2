require 'test_helper'

class DevMobilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dev_mobile = dev_mobiles(:one)
  end

  test "should get index" do
    get dev_mobiles_url
    assert_response :success
  end

  test "should get new" do
    get new_dev_mobile_url
    assert_response :success
  end

  test "should create dev_mobile" do
    assert_difference('DevMobile.count') do
      post dev_mobiles_url, params: { dev_mobile: { ambition: @dev_mobile.ambition, email: @dev_mobile.email, info_carriere: @dev_mobile.info_carriere, langage: @dev_mobile.langage, nom_et_prenom: @dev_mobile.nom_et_prenom, numero: @dev_mobile.numero } }
    end

    assert_redirected_to dev_mobile_url(DevMobile.last)
  end

  test "should show dev_mobile" do
    get dev_mobile_url(@dev_mobile)
    assert_response :success
  end

  test "should get edit" do
    get edit_dev_mobile_url(@dev_mobile)
    assert_response :success
  end

  test "should update dev_mobile" do
    patch dev_mobile_url(@dev_mobile), params: { dev_mobile: { ambition: @dev_mobile.ambition, email: @dev_mobile.email, info_carriere: @dev_mobile.info_carriere, langage: @dev_mobile.langage, nom_et_prenom: @dev_mobile.nom_et_prenom, numero: @dev_mobile.numero } }
    assert_redirected_to dev_mobile_url(@dev_mobile)
  end

  test "should destroy dev_mobile" do
    assert_difference('DevMobile.count', -1) do
      delete dev_mobile_url(@dev_mobile)
    end

    assert_redirected_to dev_mobiles_url
  end
end
