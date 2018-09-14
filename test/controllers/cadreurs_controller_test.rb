require 'test_helper'

class CadreursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadreur = cadreurs(:one)
  end

  test "should get index" do
    get cadreurs_url
    assert_response :success
  end

  test "should get new" do
    get new_cadreur_url
    assert_response :success
  end

  test "should create cadreur" do
    assert_difference('Cadreur.count') do
      post cadreurs_url, params: { cadreur: { ambition: @cadreur.ambition, email: @cadreur.email, info_carriere: @cadreur.info_carriere, nom_et_prenom: @cadreur.nom_et_prenom, numero: @cadreur.numero } }
    end

    assert_redirected_to cadreur_url(Cadreur.last)
  end

  test "should show cadreur" do
    get cadreur_url(@cadreur)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadreur_url(@cadreur)
    assert_response :success
  end

  test "should update cadreur" do
    patch cadreur_url(@cadreur), params: { cadreur: { ambition: @cadreur.ambition, email: @cadreur.email, info_carriere: @cadreur.info_carriere, nom_et_prenom: @cadreur.nom_et_prenom, numero: @cadreur.numero } }
    assert_redirected_to cadreur_url(@cadreur)
  end

  test "should destroy cadreur" do
    assert_difference('Cadreur.count', -1) do
      delete cadreur_url(@cadreur)
    end

    assert_redirected_to cadreurs_url
  end
end
