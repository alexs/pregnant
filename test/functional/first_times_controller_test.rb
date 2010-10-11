require 'test_helper'

class FirstTimesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:first_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first_time" do
    assert_difference('FirstTime.count') do
      post :create, :first_time => { }
    end

    assert_redirected_to first_time_path(assigns(:first_time))
  end

  test "should show first_time" do
    get :show, :id => first_times(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => first_times(:one).to_param
    assert_response :success
  end

  test "should update first_time" do
    put :update, :id => first_times(:one).to_param, :first_time => { }
    assert_redirected_to first_time_path(assigns(:first_time))
  end

  test "should destroy first_time" do
    assert_difference('FirstTime.count', -1) do
      delete :destroy, :id => first_times(:one).to_param
    end

    assert_redirected_to first_times_path
  end
end
