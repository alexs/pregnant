require 'test_helper'

class UltraSoundsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ultra_sounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ultra_sound" do
    assert_difference('UltraSound.count') do
      post :create, :ultra_sound => { }
    end

    assert_redirected_to ultra_sound_path(assigns(:ultra_sound))
  end

  test "should show ultra_sound" do
    get :show, :id => ultra_sounds(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ultra_sounds(:one).to_param
    assert_response :success
  end

  test "should update ultra_sound" do
    put :update, :id => ultra_sounds(:one).to_param, :ultra_sound => { }
    assert_redirected_to ultra_sound_path(assigns(:ultra_sound))
  end

  test "should destroy ultra_sound" do
    assert_difference('UltraSound.count', -1) do
      delete :destroy, :id => ultra_sounds(:one).to_param
    end

    assert_redirected_to ultra_sounds_path
  end
end
