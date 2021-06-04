require "application_system_test_case"

class SourceMastersTest < ApplicationSystemTestCase
  setup do
    @source_master = source_masters(:one)
  end

  test "visiting the index" do
    visit source_masters_url
    assert_selector "h1", text: "Source Masters"
  end

  test "creating a Source master" do
    visit source_masters_url
    click_on "New Source Master"

    check "Active status" if @source_master.active_status
    fill_in "Comment", with: @source_master.comment
    check "Del status" if @source_master.del_status
    fill_in "Source desc", with: @source_master.source_desc
    fill_in "User", with: @source_master.user_id
    click_on "Create Source master"

    assert_text "Source master was successfully created"
    click_on "Back"
  end

  test "updating a Source master" do
    visit source_masters_url
    click_on "Edit", match: :first

    check "Active status" if @source_master.active_status
    fill_in "Comment", with: @source_master.comment
    check "Del status" if @source_master.del_status
    fill_in "Source desc", with: @source_master.source_desc
    fill_in "User", with: @source_master.user_id
    click_on "Update Source master"

    assert_text "Source master was successfully updated"
    click_on "Back"
  end

  test "destroying a Source master" do
    visit source_masters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Source master was successfully destroyed"
  end
end
