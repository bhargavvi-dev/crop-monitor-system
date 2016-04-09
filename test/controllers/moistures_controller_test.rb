require 'test_helper'

class MoisturesControllerTest < ActionController::TestCase
  setup do
    @moisture = moistures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moistures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moisture" do
    assert_difference('Moisture.count') do
      post :create, moisture: { crop_id: @moisture.crop_id, farm_id: @moisture.farm_id, mois_read: @moisture.mois_read }
    end

    assert_redirected_to moisture_path(assigns(:moisture))
  end

  test "should show moisture" do
    get :show, id: @moisture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moisture
    assert_response :success
  end

  test "should update moisture" do
    patch :update, id: @moisture, moisture: { crop_id: @moisture.crop_id, farm_id: @moisture.farm_id, mois_read: @moisture.mois_read }
    assert_redirected_to moisture_path(assigns(:moisture))
  end

  test "should destroy moisture" do
    assert_difference('Moisture.count', -1) do
      delete :destroy, id: @moisture
    end

    assert_redirected_to moistures_path
  end
end
