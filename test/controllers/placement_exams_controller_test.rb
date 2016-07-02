require 'test_helper'

class PlacementExamsControllerTest < ActionController::TestCase
  setup do
    @placement_exam = placement_exams(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:placement_exams)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create placement_exam' do
    assert_difference('PlacementExam.count') do
      post :create, placement_exam: { company_id: @placement_exam.company_id, end_date: @placement_exam.end_date, question_type_id: @placement_exam.question_type_id, start_date: @placement_exam.start_date, timeperiod: @placement_exam.timeperiod }
    end

    assert_redirected_to placement_exam_path(assigns(:placement_exam))
  end

  test 'should show placement_exam' do
    get :show, id: @placement_exam
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @placement_exam
    assert_response :success
  end

  test 'should update placement_exam' do
    patch :update, id: @placement_exam, placement_exam: { company_id: @placement_exam.company_id, end_date: @placement_exam.end_date, question_type_id: @placement_exam.question_type_id, start_date: @placement_exam.start_date, timeperiod: @placement_exam.timeperiod }
    assert_redirected_to placement_exam_path(assigns(:placement_exam))
  end

  test 'should destroy placement_exam' do
    assert_difference('PlacementExam.count', -1) do
      delete :destroy, id: @placement_exam
    end

    assert_redirected_to placement_exams_path
  end
end
