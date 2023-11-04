require "test_helper"

class OfertaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ofertum = oferta(:one)
  end

  test "should get index" do
    get oferta_url
    assert_response :success
  end

  test "should get new" do
    get new_ofertum_url
    assert_response :success
  end

  test "should create ofertum" do
    assert_difference("Ofertum.count") do
      post oferta_url, params: { ofertum: { barter: @ofertum.barter, created_at: @ofertum.created_at, descricao: @ofertum.descricao, origem: @ofertum.origem, quantidade_estoque: @ofertum.quantidade_estoque, saca: @ofertum.saca, tipo: @ofertum.tipo, updated_at: @ofertum.updated_at, vendedor_id: @ofertum.vendedor_id } }
    end

    assert_redirected_to ofertum_url(Ofertum.last)
  end

  test "should show ofertum" do
    get ofertum_url(@ofertum)
    assert_response :success
  end

  test "should get edit" do
    get edit_ofertum_url(@ofertum)
    assert_response :success
  end

  test "should update ofertum" do
    patch ofertum_url(@ofertum), params: { ofertum: { barter: @ofertum.barter, created_at: @ofertum.created_at, descricao: @ofertum.descricao, origem: @ofertum.origem, quantidade_estoque: @ofertum.quantidade_estoque, saca: @ofertum.saca, tipo: @ofertum.tipo, updated_at: @ofertum.updated_at, vendedor_id: @ofertum.vendedor_id } }
    assert_redirected_to ofertum_url(@ofertum)
  end

  test "should destroy ofertum" do
    assert_difference("Ofertum.count", -1) do
      delete ofertum_url(@ofertum)
    end

    assert_redirected_to oferta_url
  end
end
