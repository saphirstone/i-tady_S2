require 'test_helper'

class AssistantRealisateursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assistant_realisateur = assistant_realisateurs(:one)
  end

  test "should get index" do
    get assistant_realisateurs_url
    assert_response :success
  end

  test "should get new" do
    get new_assistant_realisateur_url
    assert_response :success
  end

  test "should create assistant_realisateur" do
    assert_difference('AssistantRealisateur.count') do
      post assistant_realisateurs_url, params: { assistant_realisateur: { ambition: @assistant_realisateur.ambition, email: @assistant_realisateur.email, info_carriere: @assistant_realisateur.info_carriere, nom_et_prenom: @assistant_realisateur.nom_et_prenom, poste: @assistant_realisateur.poste } }
    end

    assert_redirected_to assistant_realisateur_url(AssistantRealisateur.last)
  end

  test "should show assistant_realisateur" do
    get assistant_realisateur_url(@assistant_realisateur)
    assert_response :success
  end

  test "should get edit" do
    get edit_assistant_realisateur_url(@assistant_realisateur)
    assert_response :success
  end

  test "should update assistant_realisateur" do
    patch assistant_realisateur_url(@assistant_realisateur), params: { assistant_realisateur: { ambition: @assistant_realisateur.ambition, email: @assistant_realisateur.email, info_carriere: @assistant_realisateur.info_carriere, nom_et_prenom: @assistant_realisateur.nom_et_prenom, poste: @assistant_realisateur.poste } }
    assert_redirected_to assistant_realisateur_url(@assistant_realisateur)
  end

  test "should destroy assistant_realisateur" do
    assert_difference('AssistantRealisateur.count', -1) do
      delete assistant_realisateur_url(@assistant_realisateur)
    end

    assert_redirected_to assistant_realisateurs_url
  end
end
