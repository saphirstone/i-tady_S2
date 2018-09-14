require 'test_helper'

class ScriptesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scripte = scriptes(:one)
  end

  test "should get index" do
    get scriptes_url
    assert_response :success
  end

  test "should get new" do
    get new_scripte_url
    assert_response :success
  end

  test "should create scripte" do
    assert_difference('Scripte.count') do
      post scriptes_url, params: { scripte: { ambition: @scripte.ambition, email: @scripte.email, info_carriere: @scripte.info_carriere, nom_et_prenom: @scripte.nom_et_prenom, numero: @scripte.numero, specialite: @scripte.specialite } }
    end

    assert_redirected_to scripte_url(Scripte.last)
  end

  test "should show scripte" do
    get scripte_url(@scripte)
    assert_response :success
  end

  test "should get edit" do
    get edit_scripte_url(@scripte)
    assert_response :success
  end

  test "should update scripte" do
    patch scripte_url(@scripte), params: { scripte: { ambition: @scripte.ambition, email: @scripte.email, info_carriere: @scripte.info_carriere, nom_et_prenom: @scripte.nom_et_prenom, numero: @scripte.numero, specialite: @scripte.specialite } }
    assert_redirected_to scripte_url(@scripte)
  end

  test "should destroy scripte" do
    assert_difference('Scripte.count', -1) do
      delete scripte_url(@scripte)
    end

    assert_redirected_to scriptes_url
  end
end
