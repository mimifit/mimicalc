require 'test_helper'

class CalcControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get compute" do
    get :compute
    assert_response :success
  end

end
