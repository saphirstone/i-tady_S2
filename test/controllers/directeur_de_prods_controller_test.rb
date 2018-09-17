require 'test_helper'

class DirecteurDeProdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @directeur_de_prod = directeur_de_prods(:one)
  end

  test "should get index" do
    get directeur_de_prods_url
    assert_response :success
  end

  test "should get new" do
    get new_directeur_de_prod_url
    assert_response :success
  end

  test "should create directeur_de_prod" do
    assert_difference('DirecteurDeProd.count') do
      post directeur_de_prods_url, params: { directeur_de_prod: { ambition: @directeur_de_prod.ambition, email: @directeur_de_prod.email, info_carriere: @directeur_de_prod.info_carriere, nom_et_prenom: @directeur_de_prod.nom_et_prenom, numero: @directeur_de_prod.numero } }
    end

    assert_redirected_to directeur_de_prod_url(DirecteurDeProd.last)
  end

  test "should show directeur_de_prod" do
    get directeur_de_prod_url(@directeur_de_prod)
    assert_response :success
  end

  test "should get edit" do
    get edit_directeur_de_prod_url(@directeur_de_prod)
    assert_response :success
  end

  test "should update directeur_de_prod" do
    patch directeur_de_prod_url(@directeur_de_prod), params: { directeur_de_prod: { ambition: @directeur_de_prod.ambition, email: @directeur_de_prod.email, info_carriere: @directeur_de_prod.info_carriere, nom_et_prenom: @directeur_de_prod.nom_et_prenom, numero: @directeur_de_prod.numero } }
    assert_redirected_to directeur_de_prod_url(@directeur_de_prod)
  end

  test "should destroy directeur_de_prod" do
    assert_difference('DirecteurDeProd.count', -1) do
      delete directeur_de_prod_url(@directeur_de_prod)
    end

    assert_redirected_to directeur_de_prods_url
  end
end
