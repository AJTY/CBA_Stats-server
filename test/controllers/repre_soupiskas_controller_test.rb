require 'test_helper'

class RepreSoupiskasControllerTest < ActionController::TestCase
  setup do
    @repre_soupiska = repre_soupiskas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repre_soupiskas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repre_soupiska" do
    assert_difference('RepreSoupiska.count') do
      post :create, repre_soupiska: {  }
    end

    assert_redirected_to repre_soupiska_path(assigns(:repre_soupiska))
  end

  test "should show repre_soupiska" do
    get :show, id: @repre_soupiska
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repre_soupiska
    assert_response :success
  end

  test "should update repre_soupiska" do
    patch :update, id: @repre_soupiska, repre_soupiska: {  }
    assert_redirected_to repre_soupiska_path(assigns(:repre_soupiska))
  end

  test "should destroy repre_soupiska" do
    assert_difference('RepreSoupiska.count', -1) do
      delete :destroy, id: @repre_soupiska
    end

    assert_redirected_to repre_soupiskas_path
  end
end
