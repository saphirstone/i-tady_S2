require 'test_helper'

class ActeursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acteur = acteurs(:one)
  end

  test "should get index" do
    get acteurs_url
    assert_response :success
  end

  test "should get new" do
    get new_acteur_url
    assert_response :success
  end

  test "should create acteur" do
    assert_difference('Acteur.count') do
      post acteurs_url, params: { acteur: { ambition: @acteur.ambition, email: @acteur.email, info_carriere: @acteur.info_carriere, nom_et_prenom: @acteur.nom_et_prenom, numero: @acteur.numero } }
    end

    assert_redirected_to acteur_url(Acteur.last)
  end

  test "should show acteur" do
    get acteur_url(@acteur)
    assert_response :success
  end

  test "should get edit" do
    get edit_acteur_url(@acteur)
    assert_response :success
  end

  test "should update acteur" do
    patch acteur_url(@acteur), params: { acteur: { ambition: @acteur.ambition, email: @acteur.email, info_carriere: @acteur.info_carriere, nom_et_prenom: @acteur.nom_et_prenom, numero: @acteur.numero } }
    assert_redirected_to acteur_url(@acteur)
  end

  test "should destroy acteur" do
    assert_difference('Acteur.count', -1) do
      delete acteur_url(@acteur)
    end

    assert_redirected_to acteurs_url
  end
end
