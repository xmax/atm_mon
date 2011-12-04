require 'test_helper'

class AtmsControllerTest < ActionController::TestCase
  setup do
    @atm = atms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atm" do
    assert_difference('Atm.count') do
      post :create, atm: @atm.attributes
    end

    assert_redirected_to atm_path(assigns(:atm))
  end

  test "should show atm" do
    get :show, id: @atm.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @atm.to_param
    assert_response :success
  end

  test "should update atm" do
    put :update, id: @atm.to_param, atm: @atm.attributes
    assert_redirected_to atm_path(assigns(:atm))
  end

  test "should destroy atm" do
    assert_difference('Atm.count', -1) do
      delete :destroy, id: @atm.to_param
    end

    assert_redirected_to atms_path
  end
end
