require 'test_helper'

class IntegrateurWebsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @integrateur_web = integrateur_webs(:one)
  end

  test "should get index" do
    get integrateur_webs_url
    assert_response :success
  end

  test "should get new" do
    get new_integrateur_web_url
    assert_response :success
  end

  test "should create integrateur_web" do
    assert_difference('IntegrateurWeb.count') do
      post integrateur_webs_url, params: { integrateur_web: { ambition: @integrateur_web.ambition, email: @integrateur_web.email, info_carriere: @integrateur_web.info_carriere, nom_et_prenom: @integrateur_web.nom_et_prenom, numero: @integrateur_web.numero } }
    end

    assert_redirected_to integrateur_web_url(IntegrateurWeb.last)
  end

  test "should show integrateur_web" do
    get integrateur_web_url(@integrateur_web)
    assert_response :success
  end

  test "should get edit" do
    get edit_integrateur_web_url(@integrateur_web)
    assert_response :success
  end

  test "should update integrateur_web" do
    patch integrateur_web_url(@integrateur_web), params: { integrateur_web: { ambition: @integrateur_web.ambition, email: @integrateur_web.email, info_carriere: @integrateur_web.info_carriere, nom_et_prenom: @integrateur_web.nom_et_prenom, numero: @integrateur_web.numero } }
    assert_redirected_to integrateur_web_url(@integrateur_web)
  end

  test "should destroy integrateur_web" do
    assert_difference('IntegrateurWeb.count', -1) do
      delete integrateur_web_url(@integrateur_web)
    end

    assert_redirected_to integrateur_webs_url
  end
end
