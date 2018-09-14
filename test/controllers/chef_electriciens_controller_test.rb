require 'test_helper'

class ChefElectriciensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chef_electricien = chef_electriciens(:one)
  end

  test "should get index" do
    get chef_electriciens_url
    assert_response :success
  end

  test "should get new" do
    get new_chef_electricien_url
    assert_response :success
  end

  test "should create chef_electricien" do
    assert_difference('ChefElectricien.count') do
      post chef_electriciens_url, params: { chef_electricien: { ambition: @chef_electricien.ambition, email: @chef_electricien.email, equipe: @chef_electricien.equipe, info_carriere: @chef_electricien.info_carriere, nom_et_prenom: @chef_electricien.nom_et_prenom, numero: @chef_electricien.numero } }
    end

    assert_redirected_to chef_electricien_url(ChefElectricien.last)
  end

  test "should show chef_electricien" do
    get chef_electricien_url(@chef_electricien)
    assert_response :success
  end

  test "should get edit" do
    get edit_chef_electricien_url(@chef_electricien)
    assert_response :success
  end

  test "should update chef_electricien" do
    patch chef_electricien_url(@chef_electricien), params: { chef_electricien: { ambition: @chef_electricien.ambition, email: @chef_electricien.email, equipe: @chef_electricien.equipe, info_carriere: @chef_electricien.info_carriere, nom_et_prenom: @chef_electricien.nom_et_prenom, numero: @chef_electricien.numero } }
    assert_redirected_to chef_electricien_url(@chef_electricien)
  end

  test "should destroy chef_electricien" do
    assert_difference('ChefElectricien.count', -1) do
      delete chef_electricien_url(@chef_electricien)
    end

    assert_redirected_to chef_electriciens_url
  end
end
