require "test_helper"

class CostUploadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cost_upload = cost_uploads(:one)
  end

  test "should get index" do
    get cost_uploads_url
    assert_response :success
  end

  test "should get new" do
    get new_cost_upload_url
    assert_response :success
  end

  test "should create cost_upload" do
    assert_difference('CostUpload.count') do
      post cost_uploads_url, params: { cost_upload: { active_status: @cost_upload.active_status, category: @cost_upload.category, credit1: @cost_upload.credit1, credit2: @cost_upload.credit2, debit1: @cost_upload.debit1, debit2: @cost_upload.debit2, del_status: @cost_upload.del_status, file_upload_id: @cost_upload.file_upload_id, name: @cost_upload.name, net_loss1: @cost_upload.net_loss1, net_loss2: @cost_upload.net_loss2, net_profit1: @cost_upload.net_profit1, net_profit2: @cost_upload.net_profit2, period_end1: @cost_upload.period_end1, period_end2: @cost_upload.period_end2, period_start1: @cost_upload.period_start1, period_start2: @cost_upload.period_start2, source: @cost_upload.source, subtotal_credit1: @cost_upload.subtotal_credit1, subtotal_credit2: @cost_upload.subtotal_credit2, subtotal_debit1: @cost_upload.subtotal_debit1, subtotal_debit2: @cost_upload.subtotal_debit2, user_id: @cost_upload.user_id } }
    end

    assert_redirected_to cost_upload_url(CostUpload.last)
  end

  test "should show cost_upload" do
    get cost_upload_url(@cost_upload)
    assert_response :success
  end

  test "should get edit" do
    get edit_cost_upload_url(@cost_upload)
    assert_response :success
  end

  test "should update cost_upload" do
    patch cost_upload_url(@cost_upload), params: { cost_upload: { active_status: @cost_upload.active_status, category: @cost_upload.category, credit1: @cost_upload.credit1, credit2: @cost_upload.credit2, debit1: @cost_upload.debit1, debit2: @cost_upload.debit2, del_status: @cost_upload.del_status, file_upload_id: @cost_upload.file_upload_id, name: @cost_upload.name, net_loss1: @cost_upload.net_loss1, net_loss2: @cost_upload.net_loss2, net_profit1: @cost_upload.net_profit1, net_profit2: @cost_upload.net_profit2, period_end1: @cost_upload.period_end1, period_end2: @cost_upload.period_end2, period_start1: @cost_upload.period_start1, period_start2: @cost_upload.period_start2, source: @cost_upload.source, subtotal_credit1: @cost_upload.subtotal_credit1, subtotal_credit2: @cost_upload.subtotal_credit2, subtotal_debit1: @cost_upload.subtotal_debit1, subtotal_debit2: @cost_upload.subtotal_debit2, user_id: @cost_upload.user_id } }
    assert_redirected_to cost_upload_url(@cost_upload)
  end

  test "should destroy cost_upload" do
    assert_difference('CostUpload.count', -1) do
      delete cost_upload_url(@cost_upload)
    end

    assert_redirected_to cost_uploads_url
  end
end
