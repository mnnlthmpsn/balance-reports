require "test_helper"

class SourceMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @source_master = source_masters(:one)
  end

  test "should get index" do
    get source_masters_url
    assert_response :success
  end

  test "should get new" do
    get new_source_master_url
    assert_response :success
  end

  test "should create source_master" do
    assert_difference('SourceMaster.count') do
      post source_masters_url, params: { source_master: { active_status: @source_master.active_status, comment: @source_master.comment, del_status: @source_master.del_status, source_desc: @source_master.source_desc, user_id: @source_master.user_id } }
    end

    assert_redirected_to source_master_url(SourceMaster.last)
  end

  test "should show source_master" do
    get source_master_url(@source_master)
    assert_response :success
  end

  test "should get edit" do
    get edit_source_master_url(@source_master)
    assert_response :success
  end

  test "should update source_master" do
    patch source_master_url(@source_master), params: { source_master: { active_status: @source_master.active_status, comment: @source_master.comment, del_status: @source_master.del_status, source_desc: @source_master.source_desc, user_id: @source_master.user_id } }
    assert_redirected_to source_master_url(@source_master)
  end

  test "should destroy source_master" do
    assert_difference('SourceMaster.count', -1) do
      delete source_master_url(@source_master)
    end

    assert_redirected_to source_masters_url
  end
end
