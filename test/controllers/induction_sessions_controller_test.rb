require 'test_helper'

class InductionSessionsControllerTest < ActionController::TestCase
  setup do
    @induction_session = induction_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:induction_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create induction_session" do
    assert_difference('InductionSession.count') do
      post :create, induction_session: { date: @induction_session.date, user: @induction_session.user }
    end

    assert_redirected_to induction_session_path(assigns(:induction_session))
  end

  test "should show induction_session" do
    get :show, id: @induction_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @induction_session
    assert_response :success
  end

  test "should update induction_session" do
    patch :update, id: @induction_session, induction_session: { date: @induction_session.date, user: @induction_session.user }
    assert_redirected_to induction_session_path(assigns(:induction_session))
  end

  test "should destroy induction_session" do
    assert_difference('InductionSession.count', -1) do
      delete :destroy, id: @induction_session
    end

    assert_redirected_to induction_sessions_path
  end
end
