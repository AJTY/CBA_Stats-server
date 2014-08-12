require 'test_helper'

class LigaTymiesControllerTest < ActionController::TestCase
  setup do
    @liga_tymy = liga_tymies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liga_tymies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liga_tymy" do
    assert_difference('LigaTymy.count') do
      post :create, liga_tymy: {  }
    end

    assert_redirected_to liga_tymy_path(assigns(:liga_tymy))
  end

  test "should show liga_tymy" do
    get :show, id: @liga_tymy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @liga_tymy
    assert_response :success
  end

  test "should update liga_tymy" do
    patch :update, id: @liga_tymy, liga_tymy: {  }
    assert_redirected_to liga_tymy_path(assigns(:liga_tymy))
  end

  test "should destroy liga_tymy" do
    assert_difference('LigaTymy.count', -1) do
      delete :destroy, id: @liga_tymy
    end

    assert_redirected_to liga_tymies_path
  end
end
