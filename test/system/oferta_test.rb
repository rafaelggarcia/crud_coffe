require "application_system_test_case"

class OfertaTest < ApplicationSystemTestCase
  setup do
    @ofertum = oferta(:one)
  end

  test "visiting the index" do
    visit oferta_url
    assert_selector "h1", text: "Oferta"
  end

  test "should create ofertum" do
    visit oferta_url
    click_on "New ofertum"

    check "Barter" if @ofertum.barter
    fill_in "Created at", with: @ofertum.created_at
    fill_in "Descricao", with: @ofertum.descricao
    fill_in "Origem", with: @ofertum.origem
    fill_in "Quantidade estoque", with: @ofertum.quantidade_estoque
    fill_in "Saca", with: @ofertum.saca
    fill_in "Tipo", with: @ofertum.tipo
    fill_in "Updated at", with: @ofertum.updated_at
    fill_in "Vendedor", with: @ofertum.vendedor_id
    click_on "Create Ofertum"

    assert_text "Ofertum was successfully created"
    click_on "Back"
  end

  test "should update Ofertum" do
    visit ofertum_url(@ofertum)
    click_on "Edit this ofertum", match: :first

    check "Barter" if @ofertum.barter
    fill_in "Created at", with: @ofertum.created_at
    fill_in "Descricao", with: @ofertum.descricao
    fill_in "Origem", with: @ofertum.origem
    fill_in "Quantidade estoque", with: @ofertum.quantidade_estoque
    fill_in "Saca", with: @ofertum.saca
    fill_in "Tipo", with: @ofertum.tipo
    fill_in "Updated at", with: @ofertum.updated_at
    fill_in "Vendedor", with: @ofertum.vendedor_id
    click_on "Update Ofertum"

    assert_text "Ofertum was successfully updated"
    click_on "Back"
  end

  test "should destroy Ofertum" do
    visit ofertum_url(@ofertum)
    click_on "Destroy this ofertum", match: :first

    assert_text "Ofertum was successfully destroyed"
  end
end
