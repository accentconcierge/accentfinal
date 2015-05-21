require 'test_helper'

class ServiceHistoriesControllerTest < ActionController::TestCase
  setup do
    @service_history = service_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_history" do
    assert_difference('ServiceHistory.count') do
      post :create, service_history: { charge: @service_history.charge, feedback: @service_history.feedback, service: @service_history.service, user: @service_history.user }
    end

    assert_redirected_to service_history_path(assigns(:service_history))
  end

  test "should show service_history" do
    get :show, id: @service_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_history
    assert_response :success
  end

  test "should update service_history" do
    patch :update, id: @service_history, service_history: { charge: @service_history.charge, feedback: @service_history.feedback, service: @service_history.service, user: @service_history.user }
    assert_redirected_to service_history_path(assigns(:service_history))
  end

  test "should destroy service_history" do
    assert_difference('ServiceHistory.count', -1) do
      delete :destroy, id: @service_history
    end

    assert_redirected_to service_histories_path
  end
end
