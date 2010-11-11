require 'test_helper'

class OcupationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ocupations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ocupation" do
    assert_difference('Ocupation.count') do
      post :create, :ocupation => { }
    end

    assert_redirected_to ocupation_path(assigns(:ocupation))
  end

  test "should show ocupation" do
    get :show, :id => ocupations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ocupations(:one).to_param
    assert_response :success
  end

  test "should update ocupation" do
    put :update, :id => ocupations(:one).to_param, :ocupation => { }
    assert_redirected_to ocupation_path(assigns(:ocupation))
  end

  test "should destroy ocupation" do
    assert_difference('Ocupation.count', -1) do
      delete :destroy, :id => ocupations(:one).to_param
    end

    assert_redirected_to ocupations_path
  end
end
