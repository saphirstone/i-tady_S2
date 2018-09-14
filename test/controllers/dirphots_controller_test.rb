require 'test_helper'

class DirphotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dirphot = dirphots(:one)
  end

  test "should get index" do
    get dirphots_url
    assert_response :success
  end

  test "should get new" do
    get new_dirphot_url
    assert_response :success
  end

  test "should create dirphot" do
    assert_difference('Dirphot.count') do
      post dirphots_url, params: { dirphot: { ambition: @dirphot.ambition, email: @dirphot.email, equipement: @dirphot.equipement, info_carriere: @dirphot.info_carriere, nom_et_prenom: @dirphot.nom_et_prenom, numero: @dirphot.numero, specialite: @dirphot.specialite } }
    end

    assert_redirected_to dirphot_url(Dirphot.last)
  end

  test "should show dirphot" do
    get dirphot_url(@dirphot)
    assert_response :success
  end

  test "should get edit" do
    get edit_dirphot_url(@dirphot)
    assert_response :success
  end

  test "should update dirphot" do
    patch dirphot_url(@dirphot), params: { dirphot: { ambition: @dirphot.ambition, email: @dirphot.email, equipement: @dirphot.equipement, info_carriere: @dirphot.info_carriere, nom_et_prenom: @dirphot.nom_et_prenom, numero: @dirphot.numero, specialite: @dirphot.specialite } }
    assert_redirected_to dirphot_url(@dirphot)
  end

  test "should destroy dirphot" do
    assert_difference('Dirphot.count', -1) do
      delete dirphot_url(@dirphot)
    end

    assert_redirected_to dirphots_url
  end
end
