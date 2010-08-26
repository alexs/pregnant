require 'test_helper'

class PsychologiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:psychologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create psychology" do
    assert_difference('Psychology.count') do
      post :create, :psychology => { }
    end

    assert_redirected_to psychology_path(assigns(:psychology))
  end

  test "should show psychology" do
    get :show, :id => psychologies(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => psychologies(:one).to_param
    assert_response :success
  end

  test "should update psychology" do
    put :update, :id => psychologies(:one).to_param, :psychology => { }
    assert_redirected_to psychology_path(assigns(:psychology))
  end

  test "should destroy psychology" do
    assert_difference('Psychology.count', -1) do
      delete :destroy, :id => psychologies(:one).to_param
    end

    assert_redirected_to psychologies_path
  end
end
