require "application_system_test_case"

class MaterialsTest < ApplicationSystemTestCase
  setup do
    @material = materials(:one)
  end

  test "visiting the index" do
    visit materials_url
    assert_selector "h1", text: "Materials"
  end

  test "creating a Material" do
    visit materials_url
    click_on "New Material"

    fill_in "Material type", with: @material.material_type_id
    fill_in "Matriculation number", with: @material.matriculation_number
    fill_in "Name", with: @material.name
    fill_in "Serial number", with: @material.serial_number
    fill_in "Status", with: @material.status
    fill_in "User", with: @material.user_id
    click_on "Create Material"

    assert_text "Material was successfully created"
    click_on "Back"
  end

  test "updating a Material" do
    visit materials_url
    click_on "Edit", match: :first

    fill_in "Material type", with: @material.material_type_id
    fill_in "Matriculation number", with: @material.matriculation_number
    fill_in "Name", with: @material.name
    fill_in "Serial number", with: @material.serial_number
    fill_in "Status", with: @material.status
    fill_in "User", with: @material.user_id
    click_on "Update Material"

    assert_text "Material was successfully updated"
    click_on "Back"
  end

  test "destroying a Material" do
    visit materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Material was successfully destroyed"
  end
end
