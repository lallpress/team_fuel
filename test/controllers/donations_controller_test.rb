require 'test_helper'

class DonationsControllerTest < ActionController::TestCase
  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get modify" do
    get :modify
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end
end
