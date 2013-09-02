require 'test_helper'

class Admin::BoilersControllerTest < ActionController::TestCase
  setup do
    @admin_boiler = admin_boilers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_boilers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_boiler" do
    assert_difference('Admin::Boiler.count') do
      post :create, admin_boiler: { description: @admin_boiler.description, title: @admin_boiler.title }
    end

    assert_redirected_to admin_boiler_path(assigns(:admin_boiler))
  end

  test "should show admin_boiler" do
    get :show, id: @admin_boiler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_boiler
    assert_response :success
  end

  test "should update admin_boiler" do
    put :update, id: @admin_boiler, admin_boiler: { description: @admin_boiler.description, title: @admin_boiler.title }
    assert_redirected_to admin_boiler_path(assigns(:admin_boiler))
  end

  test "should destroy admin_boiler" do
    assert_difference('Admin::Boiler.count', -1) do
      delete :destroy, id: @admin_boiler
    end

    assert_redirected_to admin_boilers_path
  end
end
