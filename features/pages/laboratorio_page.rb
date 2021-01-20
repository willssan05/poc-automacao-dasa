# frozen_string_literal: true

class LaboratorioPage < SitePrism::Page
  set_url ''

  include RSpec::Matchers

  element :nossas_marcas,              :xpath, '//a[text()="Nossas Marcas"]'
  element :regiao_sao_paulo,           :xpath, '//h2[text()="São Paulo"]'

  # laboratorios São Paulo

  element :lab_alta,                   :xpath, '//*[@id="block-28"]/div[2]/div[1]/div/a/img'
  element :lab_delboni_auriemo,        :xpath, '//img[@alt="Delboni Auriemo"]'
  element :lab_sim,                    :xpath, '//img[@alt="Labsim"]'
  element :lab_cytolab,                :xpath, '//img[@alt="Cytolab"]'
  element :lab_vital_brasil,           :xpath, '//img[@alt="Laboratório Médico Vital Brasil"]'
  element :lab_salomao_zoppi,          :xpath,  '//img[@alt="Salomão Zoppi Diagnósticos"]'
  element :lab_oswaldo_cruz,           :xpath,  '//img[@alt="Laboratório Oswaldo Cruz"]'
  element :lab_lavosier,               :xpath,  '//img[@alt="Lavoisier Laboratório e Imagem"]'
  element :lab_deliberato,             :xpath,  '//img[@alt="Deliberato Análises Clínicas"]'
  element :lab_previlab,               :xpath,  '//img[@alt="Previlab"]'
  element :lab_valeclin,               :xpath,  '//img[@alt="ValeClin"]'
  element :padrao_ribeirao,            :xpath,  '//img[@alt="Padrão Ribeirão"]'
  element :valida_pagina_dasa,         :xpath,  '//h2[text()="Delboni Auriemo"]'
  element :link_pagina,                :xpath,  '//a[@href="http://www.delboniauriemo.com.br"]'

  def clicar_link_nossas_marcas
    nossas_marcas.click
  end

  def validar_regiao_sao_paulo
    regiao_sao_paulo.visible?
  end

  def listar_laboratorios
    puts "Relação de laboratórios em São Paulo"
    lab_alta.visible?
    puts 'Laboratório - Alta Diagnósticos'
    lab_delboni_auriemo.visible?
    puts 'Laboratório - Delboni Auriemo'
    lab_sim.visible?
    puts 'Laboratório - Labsim'
    lab_cytolab.visible?
    puts 'Laboratório - Cytolab'
    lab_vital_brasil.visible?
    puts 'Laboratório - Médico Vital Brasil'
    lab_salomao_zoppi.visible?
    puts 'Laboratório - Salomão Zoppi Diagnósticos'
    lab_oswaldo_cruz.visible?
    puts 'Laboratório - Oswaldo Cruz'
    lab_lavosier.visible?
    puts 'Laboratório - Lavoisier Laboratório e Imagem'
    lab_deliberato.visible?
    puts 'Laboratório - Deliberato Análises Clínicas'
    lab_previlab.visible?
    puts 'Laboratório - Previlab'
    lab_valeclin.visible?
    puts 'Laboratório - ValeClin'
    padrao_ribeirao.visible?
    puts 'Laboratório - Padrão Ribeirão'
  end

  def selecionar_lab_delboni
    lab_delboni_auriemo.click
  end

  def validar_pagina_dasa
    valida_pagina_dasa.visible?
  end

  def clicar_link_nome_pagina
    link_pagina.click
  end

  def validar_pagina_delboni
    pagina_delboni = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(pagina_delboni)
    expect(page).to have_current_path('https://delboniauriemo.com.br/')
  end
end
