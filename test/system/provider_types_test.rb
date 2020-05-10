require "application_system_test_case"

class ProviderTypesTest < ApplicationSystemTestCase
  setup do
    @provider_type = provider_types(:one)
  end

  test "visiting the index" do
    visit provider_types_url
    assert_selector "h1", text: "Provider Types"
  end

  test "creating a Provider type" do
    visit provider_types_url
    click_on "New Provider Type"

    fill_in "Description", with: @provider_type.description
    fill_in "Name", with: @provider_type.name
    fill_in "Status", with: @provider_type.status
    fill_in "User", with: @provider_type.user_id
    click_on "Create Provider type"

    assert_text "Provider type was successfully created"
    click_on "Back"
  end

  test "updating a Provider type" do
    visit provider_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @provider_type.description
    fill_in "Name", with: @provider_type.name
    fill_in "Status", with: @provider_type.status
    fill_in "User", with: @provider_type.user_id
    click_on "Update Provider type"

    assert_text "Provider type was successfully updated"
    click_on "Back"
  end

  test "destroying a Provider type" do
    visit provider_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Provider type was successfully destroyed"
  end
end
