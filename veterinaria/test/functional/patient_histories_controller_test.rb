require 'test_helper'

class PatientHistoriesControllerTest < ActionController::TestCase
  setup do
    @patient_history = patient_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_history" do
    assert_difference('PatientHistory.count') do
      post :create, patient_history: @patient_history.attributes
    end

    assert_redirected_to patient_history_path(assigns(:patient_history))
  end

  test "should show patient_history" do
    get :show, id: @patient_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_history
    assert_response :success
  end

  test "should update patient_history" do
    put :update, id: @patient_history, patient_history: @patient_history.attributes
    assert_redirected_to patient_history_path(assigns(:patient_history))
  end

  test "should destroy patient_history" do
    assert_difference('PatientHistory.count', -1) do
      delete :destroy, id: @patient_history
    end

    assert_redirected_to patient_histories_path
  end
end
