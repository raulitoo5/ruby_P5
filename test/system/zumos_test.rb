require "application_system_test_case"

class ZumosTest < ApplicationSystemTestCase
  setup do
    @zumo = zumos(:one)
  end

  test "visiting the index" do
    visit zumos_url
    assert_selector "h1", text: "Zumos"
  end

  test "should create zumo" do
    visit zumos_url
    click_on "New zumo"

    fill_in "Nombre", with: @zumo.nombre
    click_on "Create Zumo"

    assert_text "Zumo was successfully created"
    click_on "Back"
  end

  test "should update Zumo" do
    visit zumo_url(@zumo)
    click_on "Edit this zumo", match: :first

    fill_in "Nombre", with: @zumo.nombre
    click_on "Update Zumo"

    assert_text "Zumo was successfully updated"
    click_on "Back"
  end

  test "should destroy Zumo" do
    visit zumo_url(@zumo)
    click_on "Destroy this zumo", match: :first

    assert_text "Zumo was successfully destroyed"
  end
end
