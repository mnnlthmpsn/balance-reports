require "application_system_test_case"

class CategoryMastersTest < ApplicationSystemTestCase
  setup do
    @category_master = category_masters(:one)
  end

  test "visiting the index" do
    visit category_masters_url
    assert_selector "h1", text: "Category Masters"
  end

  test "creating a Category master" do
    visit category_masters_url
    click_on "New Category Master"

    check "Active status" if @category_master.active_status
    fill_in "Cat desc", with: @category_master.cat_desc
    fill_in "Comment", with: @category_master.comment
    check "Del status" if @category_master.del_status
    fill_in "Integer", with: @category_master.integer
    fill_in "User", with: @category_master.user_id
    click_on "Create Category master"

    assert_text "Category master was successfully created"
    click_on "Back"
  end

  test "updating a Category master" do
    visit category_masters_url
    click_on "Edit", match: :first

    check "Active status" if @category_master.active_status
    fill_in "Cat desc", with: @category_master.cat_desc
    fill_in "Comment", with: @category_master.comment
    check "Del status" if @category_master.del_status
    fill_in "Integer", with: @category_master.integer
    fill_in "User", with: @category_master.user_id
    click_on "Update Category master"

    assert_text "Category master was successfully updated"
    click_on "Back"
  end

  test "destroying a Category master" do
    visit category_masters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category master was successfully destroyed"
  end
end
