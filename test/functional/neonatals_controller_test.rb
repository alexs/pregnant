require 'test_helper'

class NeonatalsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:neonatals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create neonatal" do
    assert_difference('Neonatal.count') do
      post :create, :neonatal => { }
    end

    assert_redirected_to neonatal_path(assigns(:neonatal))
  end

  test "should show neonatal" do
    get :show, :id => neonatals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => neonatals(:one).to_param
    assert_response :success
  end

  test "should update neonatal" do
    put :update, :id => neonatals(:one).to_param, :neonatal => { }
    assert_redirected_to neonatal_path(assigns(:neonatal))
  end

  test "should destroy neonatal" do
    assert_difference('Neonatal.count', -1) do
      delete :destroy, :id => neonatals(:one).to_param
    end

    assert_redirected_to neonatals_path
  end
end
