require "test_helper"

class GeneratedReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generated_report = generated_reports(:one)
  end

  test "should get index" do
    get generated_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_generated_report_url
    assert_response :success
  end

  test "should create generated_report" do
    assert_difference('GeneratedReport.count') do
      post generated_reports_url, params: { generated_report: { active_status: @generated_report.active_status, cost_upload_id: @generated_report.cost_upload_id, del_status: @generated_report.del_status, report_file_name: @generated_report.report_file_name, report_file_path: @generated_report.report_file_path, user_id: @generated_report.user_id } }
    end

    assert_redirected_to generated_report_url(GeneratedReport.last)
  end

  test "should show generated_report" do
    get generated_report_url(@generated_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_generated_report_url(@generated_report)
    assert_response :success
  end

  test "should update generated_report" do
    patch generated_report_url(@generated_report), params: { generated_report: { active_status: @generated_report.active_status, cost_upload_id: @generated_report.cost_upload_id, del_status: @generated_report.del_status, report_file_name: @generated_report.report_file_name, report_file_path: @generated_report.report_file_path, user_id: @generated_report.user_id } }
    assert_redirected_to generated_report_url(@generated_report)
  end

  test "should destroy generated_report" do
    assert_difference('GeneratedReport.count', -1) do
      delete generated_report_url(@generated_report)
    end

    assert_redirected_to generated_reports_url
  end
end
