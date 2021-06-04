require "application_system_test_case"

class CostUploadsTest < ApplicationSystemTestCase
  setup do
    @cost_upload = cost_uploads(:one)
  end

  test "visiting the index" do
    visit cost_uploads_url
    assert_selector "h1", text: "Cost Uploads"
  end

  test "creating a Cost upload" do
    visit cost_uploads_url
    click_on "New Cost Upload"

    check "Active status" if @cost_upload.active_status
    fill_in "Category", with: @cost_upload.category
    fill_in "Credit1", with: @cost_upload.credit1
    fill_in "Credit2", with: @cost_upload.credit2
    fill_in "Debit1", with: @cost_upload.debit1
    fill_in "Debit2", with: @cost_upload.debit2
    check "Del status" if @cost_upload.del_status
    fill_in "File upload", with: @cost_upload.file_upload_id
    fill_in "Name", with: @cost_upload.name
    fill_in "Net loss1", with: @cost_upload.net_loss1
    fill_in "Net loss2", with: @cost_upload.net_loss2
    fill_in "Net profit1", with: @cost_upload.net_profit1
    fill_in "Net profit2", with: @cost_upload.net_profit2
    fill_in "Period end1", with: @cost_upload.period_end1
    fill_in "Period end2", with: @cost_upload.period_end2
    fill_in "Period start1", with: @cost_upload.period_start1
    fill_in "Period start2", with: @cost_upload.period_start2
    fill_in "Source", with: @cost_upload.source
    fill_in "Subtotal credit1", with: @cost_upload.subtotal_credit1
    fill_in "Subtotal credit2", with: @cost_upload.subtotal_credit2
    fill_in "Subtotal debit1", with: @cost_upload.subtotal_debit1
    fill_in "Subtotal debit2", with: @cost_upload.subtotal_debit2
    fill_in "User", with: @cost_upload.user_id
    click_on "Create Cost upload"

    assert_text "Cost upload was successfully created"
    click_on "Back"
  end

  test "updating a Cost upload" do
    visit cost_uploads_url
    click_on "Edit", match: :first

    check "Active status" if @cost_upload.active_status
    fill_in "Category", with: @cost_upload.category
    fill_in "Credit1", with: @cost_upload.credit1
    fill_in "Credit2", with: @cost_upload.credit2
    fill_in "Debit1", with: @cost_upload.debit1
    fill_in "Debit2", with: @cost_upload.debit2
    check "Del status" if @cost_upload.del_status
    fill_in "File upload", with: @cost_upload.file_upload_id
    fill_in "Name", with: @cost_upload.name
    fill_in "Net loss1", with: @cost_upload.net_loss1
    fill_in "Net loss2", with: @cost_upload.net_loss2
    fill_in "Net profit1", with: @cost_upload.net_profit1
    fill_in "Net profit2", with: @cost_upload.net_profit2
    fill_in "Period end1", with: @cost_upload.period_end1
    fill_in "Period end2", with: @cost_upload.period_end2
    fill_in "Period start1", with: @cost_upload.period_start1
    fill_in "Period start2", with: @cost_upload.period_start2
    fill_in "Source", with: @cost_upload.source
    fill_in "Subtotal credit1", with: @cost_upload.subtotal_credit1
    fill_in "Subtotal credit2", with: @cost_upload.subtotal_credit2
    fill_in "Subtotal debit1", with: @cost_upload.subtotal_debit1
    fill_in "Subtotal debit2", with: @cost_upload.subtotal_debit2
    fill_in "User", with: @cost_upload.user_id
    click_on "Update Cost upload"

    assert_text "Cost upload was successfully updated"
    click_on "Back"
  end

  test "destroying a Cost upload" do
    visit cost_uploads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cost upload was successfully destroyed"
  end
end
