require "application_system_test_case"

class BebidasTest < ApplicationSystemTestCase
  setup do
    @bebida = bebidas(:one)
  end

  test "visiting the index" do
    visit bebidas_url
    assert_selector "h1", text: "Bebidas"
  end

  test "should create bebida" do
    visit bebidas_url
    click_on "New bebida"

    fill_in "Alcohol", with: @bebida.alcohol_id
    fill_in "Nombre", with: @bebida.nombre
    fill_in "Precio", with: @bebida.precio
    fill_in "Refresco", with: @bebida.refresco_id
    fill_in "Tipo", with: @bebida.tipo
    fill_in "Zumo", with: @bebida.zumo_id
    click_on "Create Bebida"

    assert_text "Bebida was successfully created"
    click_on "Back"
  end

  test "should update Bebida" do
    visit bebida_url(@bebida)
    click_on "Edit this bebida", match: :first

    fill_in "Alcohol", with: @bebida.alcohol_id
    fill_in "Nombre", with: @bebida.nombre
    fill_in "Precio", with: @bebida.precio
    fill_in "Refresco", with: @bebida.refresco_id
    fill_in "Tipo", with: @bebida.tipo
    fill_in "Zumo", with: @bebida.zumo_id
    click_on "Update Bebida"

    assert_text "Bebida was successfully updated"
    click_on "Back"
  end

  test "should destroy Bebida" do
    visit bebida_url(@bebida)
    click_on "Destroy this bebida", match: :first

    assert_text "Bebida was successfully destroyed"
  end
end
