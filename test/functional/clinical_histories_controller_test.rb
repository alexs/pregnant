require 'test_helper'

class ClinicalHistoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinical_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinical_history" do
    assert_difference('ClinicalHistory.count') do
      post :create, :clinical_history => { }
    end

    assert_redirected_to clinical_history_path(assigns(:clinical_history))
  end

  test "should show clinical_history" do
    get :show, :id => clinical_histories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => clinical_histories(:one).to_param
    assert_response :success
  end

  test "should update clinical_history" do
    put :update, :id => clinical_histories(:one).to_param, :clinical_history => { }
    assert_redirected_to clinical_history_path(assigns(:clinical_history))
  end

  test "should destroy clinical_history" do
    assert_difference('ClinicalHistory.count', -1) do
      delete :destroy, :id => clinical_histories(:one).to_param
    end

    assert_redirected_to clinical_histories_path
  end
end
