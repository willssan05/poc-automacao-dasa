# frozen_string_literal: true

Dado('que acesse o site Dasa') do
  laboratorio.load
end

E('clique no link Nossas Marcas') do
  laboratorio.clicar_link_nossas_marcas
end

Quando('procuro os laboratórios de São Paulo') do
  laboratorio.validar_regiao_sao_paulo
end

Entao('devo listar todos os laboratórios no console') do
  laboratorio.listar_laboratorios
end

Quando('seleciono o laboratório Delboni Auriemo') do
  laboratorio.selecionar_lab_delboni
end

Quando('na pagina informativa do Delboni valido que estou na área do laboratório') do
  laboratorio.validar_pagina_dasa
end

Quando('clico no link com o nome da marca') do
  laboratorio.clicar_link_nome_pagina
end

Entao('devo validar que fui direcionado corretamente para o site do Delboni Auriemo') do
  laboratorio.validar_pagina_delboni
end
