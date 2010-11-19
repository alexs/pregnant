require 'test_helper'

class RiesParsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ries_pars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ries_par" do
    assert_difference('RiesPar.count') do
      post :create, :ries_par => { }
    end

    assert_redirected_to ries_par_path(assigns(:ries_par))
  end

  test "should show ries_par" do
    get :show, :id => ries_pars(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ries_pars(:one).to_param
    assert_response :success
  end

  test "should update ries_par" do
    put :update, :id => ries_pars(:one).to_param, :ries_par => { }
    assert_redirected_to ries_par_path(assigns(:ries_par))
  end

  test "should destroy ries_par" do
    assert_difference('RiesPar.count', -1) do
      delete :destroy, :id => ries_pars(:one).to_param
    end

    assert_redirected_to ries_pars_path
  end
end
