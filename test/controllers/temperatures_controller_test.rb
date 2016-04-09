require 'test_helper'

class TemperaturesControllerTest < ActionController::TestCase
  setup do
    @temperature = temperatures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temperatures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temperature" do
    assert_difference('Temperature.count') do
      post :create, temperature: { crop_id: @temperature.crop_id, farm_id: @temperature.farm_id, temp_read: @temperature.temp_read }
    end

    assert_redirected_to temperature_path(assigns(:temperature))
  end

  test "should show temperature" do
    get :show, id: @temperature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temperature
    assert_response :success
  end

  test "should update temperature" do
    patch :update, id: @temperature, temperature: { crop_id: @temperature.crop_id, farm_id: @temperature.farm_id, temp_read: @temperature.temp_read }
    assert_redirected_to temperature_path(assigns(:temperature))
  end

  test "should destroy temperature" do
    assert_difference('Temperature.count', -1) do
      delete :destroy, id: @temperature
    end

    assert_redirected_to temperatures_path
  end
end
