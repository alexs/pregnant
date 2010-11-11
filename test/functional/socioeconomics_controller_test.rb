require 'test_helper'

class SocioeconomicsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socioeconomics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socioeconomic" do
    assert_difference('Socioeconomic.count') do
      post :create, :socioeconomic => { }
    end

    assert_redirected_to socioeconomic_path(assigns(:socioeconomic))
  end

  test "should show socioeconomic" do
    get :show, :id => socioeconomics(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => socioeconomics(:one).to_param
    assert_response :success
  end

  test "should update socioeconomic" do
    put :update, :id => socioeconomics(:one).to_param, :socioeconomic => { }
    assert_redirected_to socioeconomic_path(assigns(:socioeconomic))
  end

  test "should destroy socioeconomic" do
    assert_difference('Socioeconomic.count', -1) do
      delete :destroy, :id => socioeconomics(:one).to_param
    end

    assert_redirected_to socioeconomics_path
  end
end
