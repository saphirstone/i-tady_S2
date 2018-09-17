require 'test_helper'

class WebDesignersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_designer = web_designers(:one)
  end

  test "should get index" do
    get web_designers_url
    assert_response :success
  end

  test "should get new" do
    get new_web_designer_url
    assert_response :success
  end

  test "should create web_designer" do
    assert_difference('WebDesigner.count') do
      post web_designers_url, params: { web_designer: { ambition: @web_designer.ambition, email: @web_designer.email, info_carriere: @web_designer.info_carriere, nom_et_prenom: @web_designer.nom_et_prenom, numero: @web_designer.numero } }
    end

    assert_redirected_to web_designer_url(WebDesigner.last)
  end

  test "should show web_designer" do
    get web_designer_url(@web_designer)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_designer_url(@web_designer)
    assert_response :success
  end

  test "should update web_designer" do
    patch web_designer_url(@web_designer), params: { web_designer: { ambition: @web_designer.ambition, email: @web_designer.email, info_carriere: @web_designer.info_carriere, nom_et_prenom: @web_designer.nom_et_prenom, numero: @web_designer.numero } }
    assert_redirected_to web_designer_url(@web_designer)
  end

  test "should destroy web_designer" do
    assert_difference('WebDesigner.count', -1) do
      delete web_designer_url(@web_designer)
    end

    assert_redirected_to web_designers_url
  end
end
