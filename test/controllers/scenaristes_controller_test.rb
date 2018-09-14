require 'test_helper'

class ScenaristesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scenariste = scenaristes(:one)
  end

  test "should get index" do
    get scenaristes_url
    assert_response :success
  end

  test "should get new" do
    get new_scenariste_url
    assert_response :success
  end

  test "should create scenariste" do
    assert_difference('Scenariste.count') do
      post scenaristes_url, params: { scenariste: { ambition: @scenariste.ambition, email: @scenariste.email, info_carriere: @scenariste.info_carriere, nom_et_prenom: @scenariste.nom_et_prenom, numero: @scenariste.numero, specialite: @scenariste.specialite } }
    end

    assert_redirected_to scenariste_url(Scenariste.last)
  end

  test "should show scenariste" do
    get scenariste_url(@scenariste)
    assert_response :success
  end

  test "should get edit" do
    get edit_scenariste_url(@scenariste)
    assert_response :success
  end

  test "should update scenariste" do
    patch scenariste_url(@scenariste), params: { scenariste: { ambition: @scenariste.ambition, email: @scenariste.email, info_carriere: @scenariste.info_carriere, nom_et_prenom: @scenariste.nom_et_prenom, numero: @scenariste.numero, specialite: @scenariste.specialite } }
    assert_redirected_to scenariste_url(@scenariste)
  end

  test "should destroy scenariste" do
    assert_difference('Scenariste.count', -1) do
      delete scenariste_url(@scenariste)
    end

    assert_redirected_to scenaristes_url
  end
end
