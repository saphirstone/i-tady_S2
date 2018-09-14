require 'test_helper'

class ChefOperateursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chef_operateur = chef_operateurs(:one)
  end

  test "should get index" do
    get chef_operateurs_url
    assert_response :success
  end

  test "should get new" do
    get new_chef_operateur_url
    assert_response :success
  end

  test "should create chef_operateur" do
    assert_difference('ChefOperateur.count') do
      post chef_operateurs_url, params: { chef_operateur: { ambition: @chef_operateur.ambition, email: @chef_operateur.email, info_carriere: @chef_operateur.info_carriere, nom_et_prenom: @chef_operateur.nom_et_prenom } }
    end

    assert_redirected_to chef_operateur_url(ChefOperateur.last)
  end

  test "should show chef_operateur" do
    get chef_operateur_url(@chef_operateur)
    assert_response :success
  end

  test "should get edit" do
    get edit_chef_operateur_url(@chef_operateur)
    assert_response :success
  end

  test "should update chef_operateur" do
    patch chef_operateur_url(@chef_operateur), params: { chef_operateur: { ambition: @chef_operateur.ambition, email: @chef_operateur.email, info_carriere: @chef_operateur.info_carriere, nom_et_prenom: @chef_operateur.nom_et_prenom } }
    assert_redirected_to chef_operateur_url(@chef_operateur)
  end

  test "should destroy chef_operateur" do
    assert_difference('ChefOperateur.count', -1) do
      delete chef_operateur_url(@chef_operateur)
    end

    assert_redirected_to chef_operateurs_url
  end
end
