require 'test_helper'

class TemporariesControllerTest < ActionController::TestCase
  setup do
    @temporary = temporaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temporaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temporary" do
    assert_difference('Temporary.count') do
      post :create, temporary: {  }
    end

    assert_redirected_to temporary_path(assigns(:temporary))
  end

  test "should show temporary" do
    get :show, id: @temporary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temporary
    assert_response :success
  end

  test "should update temporary" do
    patch :update, id: @temporary, temporary: {  }
    assert_redirected_to temporary_path(assigns(:temporary))
  end

  test "should destroy temporary" do
    assert_difference('Temporary.count', -1) do
      delete :destroy, id: @temporary
    end

    assert_redirected_to temporaries_path
  end
end
