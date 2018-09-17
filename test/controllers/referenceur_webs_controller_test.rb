require 'test_helper'

class ReferenceurWebsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @referenceur_web = referenceur_webs(:one)
  end

  test "should get index" do
    get referenceur_webs_url
    assert_response :success
  end

  test "should get new" do
    get new_referenceur_web_url
    assert_response :success
  end

  test "should create referenceur_web" do
    assert_difference('ReferenceurWeb.count') do
      post referenceur_webs_url, params: { referenceur_web: { ambition: @referenceur_web.ambition, email: @referenceur_web.email, info_carriere: @referenceur_web.info_carriere, nom_et_prenom: @referenceur_web.nom_et_prenom, numero: @referenceur_web.numero } }
    end

    assert_redirected_to referenceur_web_url(ReferenceurWeb.last)
  end

  test "should show referenceur_web" do
    get referenceur_web_url(@referenceur_web)
    assert_response :success
  end

  test "should get edit" do
    get edit_referenceur_web_url(@referenceur_web)
    assert_response :success
  end

  test "should update referenceur_web" do
    patch referenceur_web_url(@referenceur_web), params: { referenceur_web: { ambition: @referenceur_web.ambition, email: @referenceur_web.email, info_carriere: @referenceur_web.info_carriere, nom_et_prenom: @referenceur_web.nom_et_prenom, numero: @referenceur_web.numero } }
    assert_redirected_to referenceur_web_url(@referenceur_web)
  end

  test "should destroy referenceur_web" do
    assert_difference('ReferenceurWeb.count', -1) do
      delete referenceur_web_url(@referenceur_web)
    end

    assert_redirected_to referenceur_webs_url
  end
end
