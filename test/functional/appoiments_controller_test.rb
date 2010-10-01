require 'test_helper'

class AppoimentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appoiments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appoiment" do
    assert_difference('Appoiment.count') do
      post :create, :appoiment => { }
    end

    assert_redirected_to appoiment_path(assigns(:appoiment))
  end

  test "should show appoiment" do
    get :show, :id => appoiments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => appoiments(:one).to_param
    assert_response :success
  end

  test "should update appoiment" do
    put :update, :id => appoiments(:one).to_param, :appoiment => { }
    assert_redirected_to appoiment_path(assigns(:appoiment))
  end

  test "should destroy appoiment" do
    assert_difference('Appoiment.count', -1) do
      delete :destroy, :id => appoiments(:one).to_param
    end

    assert_redirected_to appoiments_path
  end
end
