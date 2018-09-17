require 'test_helper'

class VfxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vfx = vfxes(:one)
  end

  test "should get index" do
    get vfxes_url
    assert_response :success
  end

  test "should get new" do
    get new_vfx_url
    assert_response :success
  end

  test "should create vfx" do
    assert_difference('Vfx.count') do
      post vfxes_url, params: { vfx: { ambition: @vfx.ambition, email: @vfx.email, info_carriere: @vfx.info_carriere, nom_et_prenom: @vfx.nom_et_prenom, numero: @vfx.numero } }
    end

    assert_redirected_to vfx_url(Vfx.last)
  end

  test "should show vfx" do
    get vfx_url(@vfx)
    assert_response :success
  end

  test "should get edit" do
    get edit_vfx_url(@vfx)
    assert_response :success
  end

  test "should update vfx" do
    patch vfx_url(@vfx), params: { vfx: { ambition: @vfx.ambition, email: @vfx.email, info_carriere: @vfx.info_carriere, nom_et_prenom: @vfx.nom_et_prenom, numero: @vfx.numero } }
    assert_redirected_to vfx_url(@vfx)
  end

  test "should destroy vfx" do
    assert_difference('Vfx.count', -1) do
      delete vfx_url(@vfx)
    end

    assert_redirected_to vfxes_url
  end
end
