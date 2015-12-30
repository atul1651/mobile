require 'test_helper'

class DsControllerTest < ActionController::TestCase
  setup do
    @d = ds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create d" do
    assert_difference('D.count') do
      post :create, d: { address: @d.address, name: @d.name }
    end

    assert_redirected_to d_path(assigns(:d))
  end

  test "should show d" do
    get :show, id: @d
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @d
    assert_response :success
  end

  test "should update d" do
    patch :update, id: @d, d: { address: @d.address, name: @d.name }
    assert_redirected_to d_path(assigns(:d))
  end

  test "should destroy d" do
    assert_difference('D.count', -1) do
      delete :destroy, id: @d
    end

    assert_redirected_to ds_path
  end
end
