require 'test_helper'

class SocioeconomicOcupationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socioeconomic_ocupations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socioeconomic_ocupation" do
    assert_difference('SocioeconomicOcupation.count') do
      post :create, :socioeconomic_ocupation => { }
    end

    assert_redirected_to socioeconomic_ocupation_path(assigns(:socioeconomic_ocupation))
  end

  test "should show socioeconomic_ocupation" do
    get :show, :id => socioeconomic_ocupations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => socioeconomic_ocupations(:one).to_param
    assert_response :success
  end

  test "should update socioeconomic_ocupation" do
    put :update, :id => socioeconomic_ocupations(:one).to_param, :socioeconomic_ocupation => { }
    assert_redirected_to socioeconomic_ocupation_path(assigns(:socioeconomic_ocupation))
  end

  test "should destroy socioeconomic_ocupation" do
    assert_difference('SocioeconomicOcupation.count', -1) do
      delete :destroy, :id => socioeconomic_ocupations(:one).to_param
    end

    assert_redirected_to socioeconomic_ocupations_path
  end
end
