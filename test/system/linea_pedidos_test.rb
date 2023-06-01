require "application_system_test_case"

class LineaPedidosTest < ApplicationSystemTestCase
  setup do
    @linea_pedido = linea_pedidos(:one)
  end

  test "visiting the index" do
    visit linea_pedidos_url
    assert_selector "h1", text: "Linea pedidos"
  end

  test "should create linea pedido" do
    visit linea_pedidos_url
    click_on "New linea pedido"

    fill_in "Cantidad", with: @linea_pedido.cantidad
    fill_in "Id bebida", with: @linea_pedido.id_bebida
    fill_in "Id pedido", with: @linea_pedido.id_pedido
    click_on "Create Linea pedido"

    assert_text "Linea pedido was successfully created"
    click_on "Back"
  end

  test "should update Linea pedido" do
    visit linea_pedido_url(@linea_pedido)
    click_on "Edit this linea pedido", match: :first

    fill_in "Cantidad", with: @linea_pedido.cantidad
    fill_in "Id bebida", with: @linea_pedido.id_bebida
    fill_in "Id pedido", with: @linea_pedido.id_pedido
    click_on "Update Linea pedido"

    assert_text "Linea pedido was successfully updated"
    click_on "Back"
  end

  test "should destroy Linea pedido" do
    visit linea_pedido_url(@linea_pedido)
    click_on "Destroy this linea pedido", match: :first

    assert_text "Linea pedido was successfully destroyed"
  end
end
