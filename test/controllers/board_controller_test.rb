require 'test_helper'

class BoardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get board_index_url
    assert_response :success
  end

  test "should get board" do
    get board_board_url
    assert_response :success
  end

  test "should get new" do
    get board_new_url
    assert_response :success
  end

end
