require 'test_helper'

class SomatometriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:somatometries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create somatometry" do
    assert_difference('Somatometry.count') do
      post :create, :somatometry => { }
    end

    assert_redirected_to somatometry_path(assigns(:somatometry))
  end

  test "should show somatometry" do
    get :show, :id => somatometries(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => somatometries(:one).to_param
    assert_response :success
  end

  test "should update somatometry" do
    put :update, :id => somatometries(:one).to_param, :somatometry => { }
    assert_redirected_to somatometry_path(assigns(:somatometry))
  end

  test "should destroy somatometry" do
    assert_difference('Somatometry.count', -1) do
      delete :destroy, :id => somatometries(:one).to_param
    end

    assert_redirected_to somatometries_path
  end
end
