require "test_helper"

class CategoryMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_master = category_masters(:one)
  end

  test "should get index" do
    get category_masters_url
    assert_response :success
  end

  test "should get new" do
    get new_category_master_url
    assert_response :success
  end

  test "should create category_master" do
    assert_difference('CategoryMaster.count') do
      post category_masters_url, params: { category_master: { active_status: @category_master.active_status, cat_desc: @category_master.cat_desc, comment: @category_master.comment, del_status: @category_master.del_status, integer: @category_master.integer, user_id: @category_master.user_id } }
    end

    assert_redirected_to category_master_url(CategoryMaster.last)
  end

  test "should show category_master" do
    get category_master_url(@category_master)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_master_url(@category_master)
    assert_response :success
  end

  test "should update category_master" do
    patch category_master_url(@category_master), params: { category_master: { active_status: @category_master.active_status, cat_desc: @category_master.cat_desc, comment: @category_master.comment, del_status: @category_master.del_status, integer: @category_master.integer, user_id: @category_master.user_id } }
    assert_redirected_to category_master_url(@category_master)
  end

  test "should destroy category_master" do
    assert_difference('CategoryMaster.count', -1) do
      delete category_master_url(@category_master)
    end

    assert_redirected_to category_masters_url
  end
end
