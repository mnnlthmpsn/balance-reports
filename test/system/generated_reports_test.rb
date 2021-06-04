require "application_system_test_case"

class GeneratedReportsTest < ApplicationSystemTestCase
  setup do
    @generated_report = generated_reports(:one)
  end

  test "visiting the index" do
    visit generated_reports_url
    assert_selector "h1", text: "Generated Reports"
  end

  test "creating a Generated report" do
    visit generated_reports_url
    click_on "New Generated Report"

    check "Active status" if @generated_report.active_status
    fill_in "Cost upload", with: @generated_report.cost_upload_id
    check "Del status" if @generated_report.del_status
    fill_in "Report file name", with: @generated_report.report_file_name
    fill_in "Report file path", with: @generated_report.report_file_path
    fill_in "User", with: @generated_report.user_id
    click_on "Create Generated report"

    assert_text "Generated report was successfully created"
    click_on "Back"
  end

  test "updating a Generated report" do
    visit generated_reports_url
    click_on "Edit", match: :first

    check "Active status" if @generated_report.active_status
    fill_in "Cost upload", with: @generated_report.cost_upload_id
    check "Del status" if @generated_report.del_status
    fill_in "Report file name", with: @generated_report.report_file_name
    fill_in "Report file path", with: @generated_report.report_file_path
    fill_in "User", with: @generated_report.user_id
    click_on "Update Generated report"

    assert_text "Generated report was successfully updated"
    click_on "Back"
  end

  test "destroying a Generated report" do
    visit generated_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Generated report was successfully destroyed"
  end
end
