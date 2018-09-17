require 'test_helper'

class WebMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_master = web_masters(:one)
  end

  test "should get index" do
    get web_masters_url
    assert_response :success
  end

  test "should get new" do
    get new_web_master_url
    assert_response :success
  end

  test "should create web_master" do
    assert_difference('WebMaster.count') do
      post web_masters_url, params: { web_master: { ambition: @web_master.ambition, email: @web_master.email, info_carriere: @web_master.info_carriere, nom_et_prenom: @web_master.nom_et_prenom, numero: @web_master.numero } }
    end

    assert_redirected_to web_master_url(WebMaster.last)
  end

  test "should show web_master" do
    get web_master_url(@web_master)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_master_url(@web_master)
    assert_response :success
  end

  test "should update web_master" do
    patch web_master_url(@web_master), params: { web_master: { ambition: @web_master.ambition, email: @web_master.email, info_carriere: @web_master.info_carriere, nom_et_prenom: @web_master.nom_et_prenom, numero: @web_master.numero } }
    assert_redirected_to web_master_url(@web_master)
  end

  test "should destroy web_master" do
    assert_difference('WebMaster.count', -1) do
      delete web_master_url(@web_master)
    end

    assert_redirected_to web_masters_url
  end
end
