require "test_helper"

class LineaPedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linea_pedido = linea_pedidos(:one)
  end

  test "should get index" do
    get linea_pedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_linea_pedido_url
    assert_response :success
  end

  test "should create linea_pedido" do
    assert_difference("LineaPedido.count") do
      post linea_pedidos_url, params: { linea_pedido: { cantidad: @linea_pedido.cantidad, id_bebida: @linea_pedido.id_bebida, id_pedido: @linea_pedido.id_pedido } }
    end

    assert_redirected_to linea_pedido_url(LineaPedido.last)
  end

  test "should show linea_pedido" do
    get linea_pedido_url(@linea_pedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_linea_pedido_url(@linea_pedido)
    assert_response :success
  end

  test "should update linea_pedido" do
    patch linea_pedido_url(@linea_pedido), params: { linea_pedido: { cantidad: @linea_pedido.cantidad, id_bebida: @linea_pedido.id_bebida, id_pedido: @linea_pedido.id_pedido } }
    assert_redirected_to linea_pedido_url(@linea_pedido)
  end

  test "should destroy linea_pedido" do
    assert_difference("LineaPedido.count", -1) do
      delete linea_pedido_url(@linea_pedido)
    end

    assert_redirected_to linea_pedidos_url
  end
end
