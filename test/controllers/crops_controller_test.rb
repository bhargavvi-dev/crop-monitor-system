require 'test_helper'

class CropsControllerTest < ActionController::TestCase
  setup do
    @crop = crops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crop" do
    assert_difference('Crop.count') do
      post :create, crop: { ideal_humi: @crop.ideal_humi, ideal_mois: @crop.ideal_mois, ideal_temp: @crop.ideal_temp, max_humi: @crop.max_humi, max_mois: @crop.max_mois, max_temp: @crop.max_temp, min_humi: @crop.min_humi, min_mois: @crop.min_mois, min_temp: @crop.min_temp, name: @crop.name }
    end

    assert_redirected_to crop_path(assigns(:crop))
  end

  test "should show crop" do
    get :show, id: @crop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crop
    assert_response :success
  end

  test "should update crop" do
    patch :update, id: @crop, crop: { ideal_humi: @crop.ideal_humi, ideal_mois: @crop.ideal_mois, ideal_temp: @crop.ideal_temp, max_humi: @crop.max_humi, max_mois: @crop.max_mois, max_temp: @crop.max_temp, min_humi: @crop.min_humi, min_mois: @crop.min_mois, min_temp: @crop.min_temp, name: @crop.name }
    assert_redirected_to crop_path(assigns(:crop))
  end

  test "should destroy crop" do
    assert_difference('Crop.count', -1) do
      delete :destroy, id: @crop
    end

    assert_redirected_to crops_path
  end
end
