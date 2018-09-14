require 'test_helper'

class ShowControllerTest < ActionDispatch::IntegrationTest
  test "should get listecat" do
    get show_listecat_url
    assert_response :success
  end

end
