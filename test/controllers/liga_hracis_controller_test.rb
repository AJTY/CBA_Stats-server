require 'test_helper'

class LigaHracisControllerTest < ActionController::TestCase
  setup do
    @liga_hraci = liga_hracis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liga_hracis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liga_hraci" do
    assert_difference('LigaHraci.count') do
      post :create, liga_hraci: {  }
    end

    assert_redirected_to liga_hraci_path(assigns(:liga_hraci))
  end

  test "should show liga_hraci" do
    get :show, id: @liga_hraci
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @liga_hraci
    assert_response :success
  end

  test "should update liga_hraci" do
    patch :update, id: @liga_hraci, liga_hraci: {  }
    assert_redirected_to liga_hraci_path(assigns(:liga_hraci))
  end

  test "should destroy liga_hraci" do
    assert_difference('LigaHraci.count', -1) do
      delete :destroy, id: @liga_hraci
    end

    assert_redirected_to liga_hracis_path
  end
end
