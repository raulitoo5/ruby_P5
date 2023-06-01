require "application_system_test_case"

class RefrescosTest < ApplicationSystemTestCase
  setup do
    @refresco = refrescos(:one)
  end

  test "visiting the index" do
    visit refrescos_url
    assert_selector "h1", text: "Refrescos"
  end

  test "should create refresco" do
    visit refrescos_url
    click_on "New refresco"

    fill_in "Nombre", with: @refresco.nombre
    click_on "Create Refresco"

    assert_text "Refresco was successfully created"
    click_on "Back"
  end

  test "should update Refresco" do
    visit refresco_url(@refresco)
    click_on "Edit this refresco", match: :first

    fill_in "Nombre", with: @refresco.nombre
    click_on "Update Refresco"

    assert_text "Refresco was successfully updated"
    click_on "Back"
  end

  test "should destroy Refresco" do
    visit refresco_url(@refresco)
    click_on "Destroy this refresco", match: :first

    assert_text "Refresco was successfully destroyed"
  end
end
