require 'test_helper'

class ProducteursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producteur = producteurs(:one)
  end

  test "should get index" do
    get producteurs_url
    assert_response :success
  end

  test "should get new" do
    get new_producteur_url
    assert_response :success
  end

  test "should create producteur" do
    assert_difference('Producteur.count') do
      post producteurs_url, params: { producteur: { ambition: @producteur.ambition, email: @producteur.email, info_carriere: @producteur.info_carriere, nom_et_prenom: @producteur.nom_et_prenom } }
    end

    assert_redirected_to producteur_url(Producteur.last)
  end

  test "should show producteur" do
    get producteur_url(@producteur)
    assert_response :success
  end

  test "should get edit" do
    get edit_producteur_url(@producteur)
    assert_response :success
  end

  test "should update producteur" do
    patch producteur_url(@producteur), params: { producteur: { ambition: @producteur.ambition, email: @producteur.email, info_carriere: @producteur.info_carriere, nom_et_prenom: @producteur.nom_et_prenom } }
    assert_redirected_to producteur_url(@producteur)
  end

  test "should destroy producteur" do
    assert_difference('Producteur.count', -1) do
      delete producteur_url(@producteur)
    end

    assert_redirected_to producteurs_url
  end
end
