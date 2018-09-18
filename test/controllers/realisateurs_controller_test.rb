require 'test_helper'

class RealisateursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @realisateur = realisateurs(:one)
  end

  test "should get index" do
    get realisateurs_url
    assert_response :success
  end

  test "should get new" do
    get new_realisateur_url
    assert_response :success
  end

  test "should create realisateur" do
    assert_difference('Realisateur.count') do
      post realisateurs_url, params: { realisateur: { ambition: @realisateur.ambition, email: @realisateur.email, equipe: @realisateur.equipe, info_carriere: @realisateur.info_carriere, nom_et_prenom: @realisateur.nom_et_prenom, numero: @realisateur.numero } }
    end

    assert_redirected_to realisateur_url(Realisateur.last)
  end

  test "should show realisateur" do
    get realisateur_url(@realisateur)
    assert_response :success
  end

  test "should get edit" do
    get edit_realisateur_url(@realisateur)
    assert_response :success
  end

  test "should update realisateur" do
    patch realisateur_url(@realisateur), params: { realisateur: { ambition: @realisateur.ambition, email: @realisateur.email, equipe: @realisateur.equipe, info_carriere: @realisateur.info_carriere, nom_et_prenom: @realisateur.nom_et_prenom, numero: @realisateur.numero } }
    assert_redirected_to realisateur_url(@realisateur)
  end

  test "should destroy realisateur" do
    assert_difference('Realisateur.count', -1) do
      delete realisateur_url(@realisateur)
    end

    assert_redirected_to realisateurs_url
  end
end
