require 'test_helper'

class PatientsControllerTest < ActionController::TestCase

  setup do
  	@patient = patients(:one)
  end

  test "should get index" do
  	get :index
  	assert_response :success
  	assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a new patient" do
  	assert_difference('Patient.count', 1) do
  		post :create, patient: {lname: @patient.lname, fname: @patient.fname}
  	end
  end

  test "should show edit" do
  	get :edit, id: @patient
  	assert_response :success
  end

  test "should update patient" do
  	patch :update, id: @patient, patient: {lname: @patient.lname, fname: @patient.fname}
  	assert_redirected_to patient_path(@patient)
  end

  test "should delete a patient" do
  	assert_difference('Patient.count', -1) do
  		delete :destroy, id: @patient
  	end
  end
end
