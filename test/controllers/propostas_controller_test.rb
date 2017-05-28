require 'test_helper'

class PropostasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proposta = propostas(:one)
  end

  test "should get index" do
    get propostas_url
    assert_response :success
  end

  test "should get new" do
    get new_proposta_url
    assert_response :success
  end

  test "should create proposta" do
    assert_difference('Proposta.count') do
      post propostas_url, params: { proposta: { cidade_id: @proposta.cidade_id, descricao: @proposta.descricao, fim: @proposta.fim, inicio: @proposta.inicio, nome: @proposta.nome, valor: @proposta.valor } }
    end

    assert_redirected_to proposta_url(Proposta.last)
  end

  test "should show proposta" do
    get proposta_url(@proposta)
    assert_response :success
  end

  test "should get edit" do
    get edit_proposta_url(@proposta)
    assert_response :success
  end

  test "should update proposta" do
    patch proposta_url(@proposta), params: { proposta: { cidade_id: @proposta.cidade_id, descricao: @proposta.descricao, fim: @proposta.fim, inicio: @proposta.inicio, nome: @proposta.nome, valor: @proposta.valor } }
    assert_redirected_to proposta_url(@proposta)
  end

  test "should destroy proposta" do
    assert_difference('Proposta.count', -1) do
      delete proposta_url(@proposta)
    end

    assert_redirected_to propostas_url
  end
end
