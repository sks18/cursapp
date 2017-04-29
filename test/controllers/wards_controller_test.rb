require 'test_helper'

class WardsControllerTest < ActionController::TestCase
  setup do
    @ward = wards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ward" do
    assert_difference('Ward.count') do
      post :create, ward: { capacity: @ward.capacity, floor: @ward.floor, nomer: @ward.nomer, otdel: @ward.otdel }
    end

    assert_redirected_to ward_path(assigns(:ward))
  end

  test "should show ward" do
    get :show, id: @ward
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ward
    assert_response :success
  end

  test "should update ward" do
    patch :update, id: @ward, ward: { capacity: @ward.capacity, floor: @ward.floor, nomer: @ward.nomer, otdel: @ward.otdel }
    assert_redirected_to ward_path(assigns(:ward))
  end

  test "should destroy ward" do
    assert_difference('Ward.count', -1) do
      delete :destroy, id: @ward
    end

    assert_redirected_to wards_path
  end
end
