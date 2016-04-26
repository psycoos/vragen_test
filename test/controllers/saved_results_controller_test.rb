require 'test_helper'

class SavedResultsControllerTest < ActionController::TestCase
  setup do
    @saved_result = saved_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saved_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saved_result" do
    assert_difference('SavedResult.count') do
      post :create, saved_result: {  }
    end

    assert_redirected_to saved_result_path(assigns(:saved_result))
  end

  test "should show saved_result" do
    get :show, id: @saved_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saved_result
    assert_response :success
  end

  test "should update saved_result" do
    patch :update, id: @saved_result, saved_result: {  }
    assert_redirected_to saved_result_path(assigns(:saved_result))
  end

  test "should destroy saved_result" do
    assert_difference('SavedResult.count', -1) do
      delete :destroy, id: @saved_result
    end

    assert_redirected_to saved_results_path
  end
end
