require 'test_helper'

class LigaTymyAresControllerTest < ActionController::TestCase
  setup do
    @liga_tymy_are = liga_tymy_ares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liga_tymy_ares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liga_tymy_are" do
    assert_difference('LigaTymyAre.count') do
      post :create, liga_tymy_are: {  }
    end

    assert_redirected_to liga_tymy_are_path(assigns(:liga_tymy_are))
  end

  test "should show liga_tymy_are" do
    get :show, id: @liga_tymy_are
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @liga_tymy_are
    assert_response :success
  end

  test "should update liga_tymy_are" do
    patch :update, id: @liga_tymy_are, liga_tymy_are: {  }
    assert_redirected_to liga_tymy_are_path(assigns(:liga_tymy_are))
  end

  test "should destroy liga_tymy_are" do
    assert_difference('LigaTymyAre.count', -1) do
      delete :destroy, id: @liga_tymy_are
    end

    assert_redirected_to liga_tymy_ares_path
  end
end
