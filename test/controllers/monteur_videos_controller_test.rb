require 'test_helper'

class MonteurVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monteur_video = monteur_videos(:one)
  end

  test "should get index" do
    get monteur_videos_url
    assert_response :success
  end

  test "should get new" do
    get new_monteur_video_url
    assert_response :success
  end

  test "should create monteur_video" do
    assert_difference('MonteurVideo.count') do
      post monteur_videos_url, params: { monteur_video: { ambition: @monteur_video.ambition, email: @monteur_video.email, equipement: @monteur_video.equipement, info_carriere: @monteur_video.info_carriere, nom_et_prenom: @monteur_video.nom_et_prenom, numero: @monteur_video.numero } }
    end

    assert_redirected_to monteur_video_url(MonteurVideo.last)
  end

  test "should show monteur_video" do
    get monteur_video_url(@monteur_video)
    assert_response :success
  end

  test "should get edit" do
    get edit_monteur_video_url(@monteur_video)
    assert_response :success
  end

  test "should update monteur_video" do
    patch monteur_video_url(@monteur_video), params: { monteur_video: { ambition: @monteur_video.ambition, email: @monteur_video.email, equipement: @monteur_video.equipement, info_carriere: @monteur_video.info_carriere, nom_et_prenom: @monteur_video.nom_et_prenom, numero: @monteur_video.numero } }
    assert_redirected_to monteur_video_url(@monteur_video)
  end

  test "should destroy monteur_video" do
    assert_difference('MonteurVideo.count', -1) do
      delete monteur_video_url(@monteur_video)
    end

    assert_redirected_to monteur_videos_url
  end
end
