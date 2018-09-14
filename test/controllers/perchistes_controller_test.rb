require 'test_helper'

class PerchistesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perchiste = perchistes(:one)
  end

  test "should get index" do
    get perchistes_url
    assert_response :success
  end

  test "should get new" do
    get new_perchiste_url
    assert_response :success
  end

  test "should create perchiste" do
    assert_difference('Perchiste.count') do
      post perchistes_url, params: { perchiste: { ambition: @perchiste.ambition, email: @perchiste.email, equipement: @perchiste.equipement, info_carriere: @perchiste.info_carriere, nom_et_prenom: @perchiste.nom_et_prenom, numero: @perchiste.numero } }
    end

    assert_redirected_to perchiste_url(Perchiste.last)
  end

  test "should show perchiste" do
    get perchiste_url(@perchiste)
    assert_response :success
  end

  test "should get edit" do
    get edit_perchiste_url(@perchiste)
    assert_response :success
  end

  test "should update perchiste" do
    patch perchiste_url(@perchiste), params: { perchiste: { ambition: @perchiste.ambition, email: @perchiste.email, equipement: @perchiste.equipement, info_carriere: @perchiste.info_carriere, nom_et_prenom: @perchiste.nom_et_prenom, numero: @perchiste.numero } }
    assert_redirected_to perchiste_url(@perchiste)
  end

  test "should destroy perchiste" do
    assert_difference('Perchiste.count', -1) do
      delete perchiste_url(@perchiste)
    end

    assert_redirected_to perchistes_url
  end
end
