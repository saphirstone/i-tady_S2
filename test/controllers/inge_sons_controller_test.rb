require 'test_helper'

class IngeSonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inge_son = inge_sons(:one)
  end

  test "should get index" do
    get inge_sons_url
    assert_response :success
  end

  test "should get new" do
    get new_inge_son_url
    assert_response :success
  end

  test "should create inge_son" do
    assert_difference('IngeSon.count') do
      post inge_sons_url, params: { inge_son: { ambition: @inge_son.ambition, email: @inge_son.email, info_carriere: @inge_son.info_carriere, nom_et_prenom: @inge_son.nom_et_prenom, numero: @inge_son.numero } }
    end

    assert_redirected_to inge_son_url(IngeSon.last)
  end

  test "should show inge_son" do
    get inge_son_url(@inge_son)
    assert_response :success
  end

  test "should get edit" do
    get edit_inge_son_url(@inge_son)
    assert_response :success
  end

  test "should update inge_son" do
    patch inge_son_url(@inge_son), params: { inge_son: { ambition: @inge_son.ambition, email: @inge_son.email, info_carriere: @inge_son.info_carriere, nom_et_prenom: @inge_son.nom_et_prenom, numero: @inge_son.numero } }
    assert_redirected_to inge_son_url(@inge_son)
  end

  test "should destroy inge_son" do
    assert_difference('IngeSon.count', -1) do
      delete inge_son_url(@inge_son)
    end

    assert_redirected_to inge_sons_url
  end
end
