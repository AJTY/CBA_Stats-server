require 'test_helper'

class HittersControllerTest < ActionController::TestCase
  setup do
    @hitter = hitters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hitters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hitter" do
    assert_difference('Hitter.count') do
      post :create, hitter: {  }
    end

    assert_redirected_to hitter_path(assigns(:hitter))
  end

  test "should show hitter" do
    get :show, id: @hitter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hitter
    assert_response :success
  end

  test "should update hitter" do
    patch :update, id: @hitter, hitter: {  }
    assert_redirected_to hitter_path(assigns(:hitter))
  end

  test "should destroy hitter" do
    assert_difference('Hitter.count', -1) do
      delete :destroy, id: @hitter
    end

    assert_redirected_to hitters_path
  end
end
