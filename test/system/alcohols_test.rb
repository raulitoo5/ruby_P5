require "application_system_test_case"

class AlcoholsTest < ApplicationSystemTestCase
  setup do
    @alcohol = alcohols(:one)
  end

  test "visiting the index" do
    visit alcohols_url
    assert_selector "h1", text: "Alcohols"
  end

  test "should create alcohol" do
    visit alcohols_url
    click_on "New alcohol"

    fill_in "Grado", with: @alcohol.grado
    fill_in "Nombre", with: @alcohol.nombre
    click_on "Create Alcohol"

    assert_text "Alcohol was successfully created"
    click_on "Back"
  end

  test "should update Alcohol" do
    visit alcohol_url(@alcohol)
    click_on "Edit this alcohol", match: :first

    fill_in "Grado", with: @alcohol.grado
    fill_in "Nombre", with: @alcohol.nombre
    click_on "Update Alcohol"

    assert_text "Alcohol was successfully updated"
    click_on "Back"
  end

  test "should destroy Alcohol" do
    visit alcohol_url(@alcohol)
    click_on "Destroy this alcohol", match: :first

    assert_text "Alcohol was successfully destroyed"
  end
end
