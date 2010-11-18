require 'test_helper'

class RiskFactorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:risk_factors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create risk_factor" do
    assert_difference('RiskFactor.count') do
      post :create, :risk_factor => { }
    end

    assert_redirected_to risk_factor_path(assigns(:risk_factor))
  end

  test "should show risk_factor" do
    get :show, :id => risk_factors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => risk_factors(:one).to_param
    assert_response :success
  end

  test "should update risk_factor" do
    put :update, :id => risk_factors(:one).to_param, :risk_factor => { }
    assert_redirected_to risk_factor_path(assigns(:risk_factor))
  end

  test "should destroy risk_factor" do
    assert_difference('RiskFactor.count', -1) do
      delete :destroy, :id => risk_factors(:one).to_param
    end

    assert_redirected_to risk_factors_path
  end
end
