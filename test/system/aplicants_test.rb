require "application_system_test_case"

class AplicantsTest < ApplicationSystemTestCase
  setup do
    @aplicant = aplicants(:one)
  end

  test "visiting the index" do
    visit aplicants_url
    assert_selector "h1", text: "Aplicants"
  end

  test "should create aplicant" do
    visit aplicants_url
    click_on "New aplicant"

    fill_in "Name", with: @aplicant.name
    fill_in "Vacancy", with: @aplicant.vacancy_id
    click_on "Create Aplicant"

    assert_text "Aplicant was successfully created"
    click_on "Back"
  end

  test "should update Aplicant" do
    visit aplicant_url(@aplicant)
    click_on "Edit this aplicant", match: :first

    fill_in "Name", with: @aplicant.name
    fill_in "Vacancy", with: @aplicant.vacancy_id
    click_on "Update Aplicant"

    assert_text "Aplicant was successfully updated"
    click_on "Back"
  end

  test "should destroy Aplicant" do
    visit aplicant_url(@aplicant)
    click_on "Destroy this aplicant", match: :first

    assert_text "Aplicant was successfully destroyed"
  end
end
