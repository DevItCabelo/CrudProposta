class Proposta < ApplicationRecord
  belongs_to :cidade
  validates_presence_of :nome, :descricao, :valor, :cidade
  validates :valor, numericality: true

  def valor_formatado
    valor ? "R$%.2f" % valor : valor
  end

  def valor_formatado_edit
    valor ? "%.2f" % valor : valor
  end

  def inicio_formatado
    I18n.l inicio
  end

  def fim_formatado
    I18n.l fim
  end
end
