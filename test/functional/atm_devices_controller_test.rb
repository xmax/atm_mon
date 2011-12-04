require 'test_helper'

class AtmDevicesControllerTest < ActionController::TestCase
  setup do
    @atm_device = atm_devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atm_devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atm_device" do
    assert_difference('AtmDevice.count') do
      post :create, atm_device: @atm_device.attributes
    end

    assert_redirected_to atm_device_path(assigns(:atm_device))
  end

  test "should show atm_device" do
    get :show, id: @atm_device.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @atm_device.to_param
    assert_response :success
  end

  test "should update atm_device" do
    put :update, id: @atm_device.to_param, atm_device: @atm_device.attributes
    assert_redirected_to atm_device_path(assigns(:atm_device))
  end

  test "should destroy atm_device" do
    assert_difference('AtmDevice.count', -1) do
      delete :destroy, id: @atm_device.to_param
    end

    assert_redirected_to atm_devices_path
  end
end
