require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get pizza" do
    get :pizza
    assert_response :success
  end

  test "should get appetizers" do
    get :appetizers
    assert_response :success
  end

  test "should get calzones" do
    get :calzones
    assert_response :success
  end

  test "should get subs" do
    get :subs
    assert_response :success
  end

end
