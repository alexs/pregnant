require 'test_helper'

class VariableFetalsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:variable_fetals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create variable_fetal" do
    assert_difference('VariableFetal.count') do
      post :create, :variable_fetal => { }
    end

    assert_redirected_to variable_fetal_path(assigns(:variable_fetal))
  end

  test "should show variable_fetal" do
    get :show, :id => variable_fetals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => variable_fetals(:one).to_param
    assert_response :success
  end

  test "should update variable_fetal" do
    put :update, :id => variable_fetals(:one).to_param, :variable_fetal => { }
    assert_redirected_to variable_fetal_path(assigns(:variable_fetal))
  end

  test "should destroy variable_fetal" do
    assert_difference('VariableFetal.count', -1) do
      delete :destroy, :id => variable_fetals(:one).to_param
    end

    assert_redirected_to variable_fetals_path
  end
end
