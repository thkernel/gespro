require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "visiting the index" do
    visit companies_url
    assert_selector "h1", text: "Companies"
  end

  test "creating a Company" do
    visit companies_url
    click_on "New Company"

    fill_in "About", with: @company.about
    fill_in "Activity area", with: @company.activity_area
    fill_in "Address", with: @company.address
    fill_in "City", with: @company.city
    fill_in "Country", with: @company.country
    fill_in "Email", with: @company.email
    fill_in "Name", with: @company.name
    fill_in "Phone", with: @company.phone
    fill_in "Po box", with: @company.po_box
    fill_in "Slogan", with: @company.slogan
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "updating a Company" do
    visit companies_url
    click_on "Edit", match: :first

    fill_in "About", with: @company.about
    fill_in "Activity area", with: @company.activity_area
    fill_in "Address", with: @company.address
    fill_in "City", with: @company.city
    fill_in "Country", with: @company.country
    fill_in "Email", with: @company.email
    fill_in "Name", with: @company.name
    fill_in "Phone", with: @company.phone
    fill_in "Po box", with: @company.po_box
    fill_in "Slogan", with: @company.slogan
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "destroying a Company" do
    visit companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company was successfully destroyed"
  end
end
