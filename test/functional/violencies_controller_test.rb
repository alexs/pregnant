require 'test_helper'

class ViolenciesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:violencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create violency" do
    assert_difference('Violency.count') do
      post :create, :violency => { }
    end

    assert_redirected_to violency_path(assigns(:violency))
  end

  test "should show violency" do
    get :show, :id => violencies(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => violencies(:one).to_param
    assert_response :success
  end

  test "should update violency" do
    put :update, :id => violencies(:one).to_param, :violency => { }
    assert_redirected_to violency_path(assigns(:violency))
  end

  test "should destroy violency" do
    assert_difference('Violency.count', -1) do
      delete :destroy, :id => violencies(:one).to_param
    end

    assert_redirected_to violencies_path
  end
end
