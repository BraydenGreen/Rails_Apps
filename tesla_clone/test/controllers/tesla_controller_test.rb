require 'test_helper'

class TeslaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tesla_index_url
    assert_response :success
  end

  test "should get show" do
    get tesla_show_url
    assert_response :success
  end

end
