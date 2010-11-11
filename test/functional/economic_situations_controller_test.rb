require 'test_helper'

class EconomicSituationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economic_situations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economic_situation" do
    assert_difference('EconomicSituation.count') do
      post :create, :economic_situation => { }
    end

    assert_redirected_to economic_situation_path(assigns(:economic_situation))
  end

  test "should show economic_situation" do
    get :show, :id => economic_situations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => economic_situations(:one).to_param
    assert_response :success
  end

  test "should update economic_situation" do
    put :update, :id => economic_situations(:one).to_param, :economic_situation => { }
    assert_redirected_to economic_situation_path(assigns(:economic_situation))
  end

  test "should destroy economic_situation" do
    assert_difference('EconomicSituation.count', -1) do
      delete :destroy, :id => economic_situations(:one).to_param
    end

    assert_redirected_to economic_situations_path
  end
end
