require 'test_helper'

class PitchersControllerTest < ActionController::TestCase
  test "should get exl2014" do
    get :exl2014
    assert_response :success
  end

  test "should get exl2013" do
    get :exl2013
    assert_response :success
  end

end
