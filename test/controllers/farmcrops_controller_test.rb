require 'test_helper'

class FarmcropsControllerTest < ActionController::TestCase
  setup do
    @farmcrop = farmcrops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farmcrops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create farmcrop" do
    assert_difference('Farmcrop.count') do
      post :create, farmcrop: { crop_id: @farmcrop.crop_id, farm_id: @farmcrop.farm_id, from_date: @farmcrop.from_date, to_date: @farmcrop.to_date }
    end

    assert_redirected_to farmcrop_path(assigns(:farmcrop))
  end

  test "should show farmcrop" do
    get :show, id: @farmcrop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @farmcrop
    assert_response :success
  end

  test "should update farmcrop" do
    patch :update, id: @farmcrop, farmcrop: { crop_id: @farmcrop.crop_id, farm_id: @farmcrop.farm_id, from_date: @farmcrop.from_date, to_date: @farmcrop.to_date }
    assert_redirected_to farmcrop_path(assigns(:farmcrop))
  end

  test "should destroy farmcrop" do
    assert_difference('Farmcrop.count', -1) do
      delete :destroy, id: @farmcrop
    end

    assert_redirected_to farmcrops_path
  end
end
