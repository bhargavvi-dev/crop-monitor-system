require 'test_helper'

class HumiditiesControllerTest < ActionController::TestCase
  setup do
    @humidity = humidities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:humidities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create humidity" do
    assert_difference('Humidity.count') do
      post :create, humidity: { crop_id: @humidity.crop_id, farm_id: @humidity.farm_id, humi_read: @humidity.humi_read }
    end

    assert_redirected_to humidity_path(assigns(:humidity))
  end

  test "should show humidity" do
    get :show, id: @humidity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @humidity
    assert_response :success
  end

  test "should update humidity" do
    patch :update, id: @humidity, humidity: { crop_id: @humidity.crop_id, farm_id: @humidity.farm_id, humi_read: @humidity.humi_read }
    assert_redirected_to humidity_path(assigns(:humidity))
  end

  test "should destroy humidity" do
    assert_difference('Humidity.count', -1) do
      delete :destroy, id: @humidity
    end

    assert_redirected_to humidities_path
  end
end
