require 'test_helper'

class ChefDecorateursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chef_decorateur = chef_decorateurs(:one)
  end

  test "should get index" do
    get chef_decorateurs_url
    assert_response :success
  end

  test "should get new" do
    get new_chef_decorateur_url
    assert_response :success
  end

  test "should create chef_decorateur" do
    assert_difference('ChefDecorateur.count') do
      post chef_decorateurs_url, params: { chef_decorateur: { ambition: @chef_decorateur.ambition, email: @chef_decorateur.email, info_carriere: @chef_decorateur.info_carriere, nom_et_prenom: @chef_decorateur.nom_et_prenom, specialite: @chef_decorateur.specialite } }
    end

    assert_redirected_to chef_decorateur_url(ChefDecorateur.last)
  end

  test "should show chef_decorateur" do
    get chef_decorateur_url(@chef_decorateur)
    assert_response :success
  end

  test "should get edit" do
    get edit_chef_decorateur_url(@chef_decorateur)
    assert_response :success
  end

  test "should update chef_decorateur" do
    patch chef_decorateur_url(@chef_decorateur), params: { chef_decorateur: { ambition: @chef_decorateur.ambition, email: @chef_decorateur.email, info_carriere: @chef_decorateur.info_carriere, nom_et_prenom: @chef_decorateur.nom_et_prenom, specialite: @chef_decorateur.specialite } }
    assert_redirected_to chef_decorateur_url(@chef_decorateur)
  end

  test "should destroy chef_decorateur" do
    assert_difference('ChefDecorateur.count', -1) do
      delete chef_decorateur_url(@chef_decorateur)
    end

    assert_redirected_to chef_decorateurs_url
  end
end
