require 'test_helper'

class TomatoesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get box_office" do
    get :box_office
    assert_response :success
  end

  test "should get in_theaters" do
    get :in_theaters
    assert_response :success
  end

  test "should get opening" do
    get :opening
    assert_response :success
  end

  test "should get upcoming" do
    get :upcoming
    assert_response :success
  end

end
