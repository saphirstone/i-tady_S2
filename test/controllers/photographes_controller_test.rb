require 'test_helper'

class PhotographesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photographe = photographes(:one)
  end

  test "should get index" do
    get photographes_url
    assert_response :success
  end

  test "should get new" do
    get new_photographe_url
    assert_response :success
  end

  test "should create photographe" do
    assert_difference('Photographe.count') do
      post photographes_url, params: { photographe: { ambition: @photographe.ambition, email: @photographe.email, equipe: @photographe.equipe, info_carriere: @photographe.info_carriere, nom_et_prenom: @photographe.nom_et_prenom, numero: @photographe.numero } }
    end

    assert_redirected_to photographe_url(Photographe.last)
  end

  test "should show photographe" do
    get photographe_url(@photographe)
    assert_response :success
  end

  test "should get edit" do
    get edit_photographe_url(@photographe)
    assert_response :success
  end

  test "should update photographe" do
    patch photographe_url(@photographe), params: { photographe: { ambition: @photographe.ambition, email: @photographe.email, equipe: @photographe.equipe, info_carriere: @photographe.info_carriere, nom_et_prenom: @photographe.nom_et_prenom, numero: @photographe.numero } }
    assert_redirected_to photographe_url(@photographe)
  end

  test "should destroy photographe" do
    assert_difference('Photographe.count', -1) do
      delete photographe_url(@photographe)
    end

    assert_redirected_to photographes_url
  end
end
