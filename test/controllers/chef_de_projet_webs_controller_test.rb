require 'test_helper'

class ChefDeProjetWebsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chef_de_projet_web = chef_de_projet_webs(:one)
  end

  test "should get index" do
    get chef_de_projet_webs_url
    assert_response :success
  end

  test "should get new" do
    get new_chef_de_projet_web_url
    assert_response :success
  end

  test "should create chef_de_projet_web" do
    assert_difference('ChefDeProjetWeb.count') do
      post chef_de_projet_webs_url, params: { chef_de_projet_web: { ambition: @chef_de_projet_web.ambition, email: @chef_de_projet_web.email, info_carriere: @chef_de_projet_web.info_carriere, nom_et_prenom: @chef_de_projet_web.nom_et_prenom, numero: @chef_de_projet_web.numero } }
    end

    assert_redirected_to chef_de_projet_web_url(ChefDeProjetWeb.last)
  end

  test "should show chef_de_projet_web" do
    get chef_de_projet_web_url(@chef_de_projet_web)
    assert_response :success
  end

  test "should get edit" do
    get edit_chef_de_projet_web_url(@chef_de_projet_web)
    assert_response :success
  end

  test "should update chef_de_projet_web" do
    patch chef_de_projet_web_url(@chef_de_projet_web), params: { chef_de_projet_web: { ambition: @chef_de_projet_web.ambition, email: @chef_de_projet_web.email, info_carriere: @chef_de_projet_web.info_carriere, nom_et_prenom: @chef_de_projet_web.nom_et_prenom, numero: @chef_de_projet_web.numero } }
    assert_redirected_to chef_de_projet_web_url(@chef_de_projet_web)
  end

  test "should destroy chef_de_projet_web" do
    assert_difference('ChefDeProjetWeb.count', -1) do
      delete chef_de_projet_web_url(@chef_de_projet_web)
    end

    assert_redirected_to chef_de_projet_webs_url
  end
end
