require 'test_helper'

class FarmsensorsControllerTest < ActionController::TestCase
  setup do
    @farmsensor = farmsensors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farmsensors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create farmsensor" do
    assert_difference('Farmsensor.count') do
      post :create, farmsensor: { farm_id: @farmsensor.farm_id, sensor_id: @farmsensor.sensor_id }
    end

    assert_redirected_to farmsensor_path(assigns(:farmsensor))
  end

  test "should show farmsensor" do
    get :show, id: @farmsensor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @farmsensor
    assert_response :success
  end

  test "should update farmsensor" do
    patch :update, id: @farmsensor, farmsensor: { farm_id: @farmsensor.farm_id, sensor_id: @farmsensor.sensor_id }
    assert_redirected_to farmsensor_path(assigns(:farmsensor))
  end

  test "should destroy farmsensor" do
    assert_difference('Farmsensor.count', -1) do
      delete :destroy, id: @farmsensor
    end

    assert_redirected_to farmsensors_path
  end
end
