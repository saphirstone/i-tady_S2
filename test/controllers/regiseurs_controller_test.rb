require 'test_helper'

class RegiseursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regiseur = regiseurs(:one)
  end

  test "should get index" do
    get regiseurs_url
    assert_response :success
  end

  test "should get new" do
    get new_regiseur_url
    assert_response :success
  end

  test "should create regiseur" do
    assert_difference('Regiseur.count') do
      post regiseurs_url, params: { regiseur: { ambition: @regiseur.ambition, email: @regiseur.email, info_carriere: @regiseur.info_carriere, nom_et_prenom: @regiseur.nom_et_prenom, poste: @regiseur.poste, projet: @regiseur.projet } }
    end

    assert_redirected_to regiseur_url(Regiseur.last)
  end

  test "should show regiseur" do
    get regiseur_url(@regiseur)
    assert_response :success
  end

  test "should get edit" do
    get edit_regiseur_url(@regiseur)
    assert_response :success
  end

  test "should update regiseur" do
    patch regiseur_url(@regiseur), params: { regiseur: { ambition: @regiseur.ambition, email: @regiseur.email, info_carriere: @regiseur.info_carriere, nom_et_prenom: @regiseur.nom_et_prenom, poste: @regiseur.poste, projet: @regiseur.projet } }
    assert_redirected_to regiseur_url(@regiseur)
  end

  test "should destroy regiseur" do
    assert_difference('Regiseur.count', -1) do
      delete regiseur_url(@regiseur)
    end

    assert_redirected_to regiseurs_url
  end
end
