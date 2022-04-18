require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get inedex" do
    get home_inedex_url
    assert_response :success
  end

end
