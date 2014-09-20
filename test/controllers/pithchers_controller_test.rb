require 'test_helper'

class PithchersControllerTest < ActionController::TestCase
  setup do
    @pithcher = pithchers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pithchers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pithcher" do
    assert_difference('Pithcher.count') do
      post :create, pithcher: { exl2011: @pithcher.exl2011, exl2012: @pithcher.exl2012, exl2013: @pithcher.exl2013, exl2014: @pithcher.exl2014 }
    end

    assert_redirected_to pithcher_path(assigns(:pithcher))
  end

  test "should show pithcher" do
    get :show, id: @pithcher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pithcher
    assert_response :success
  end

  test "should update pithcher" do
    patch :update, id: @pithcher, pithcher: { exl2011: @pithcher.exl2011, exl2012: @pithcher.exl2012, exl2013: @pithcher.exl2013, exl2014: @pithcher.exl2014 }
    assert_redirected_to pithcher_path(assigns(:pithcher))
  end

  test "should destroy pithcher" do
    assert_difference('Pithcher.count', -1) do
      delete :destroy, id: @pithcher
    end

    assert_redirected_to pithchers_path
  end
end
