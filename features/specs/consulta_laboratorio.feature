#language: pt

Funcionalidade: Consulta de laboratório
Eu como um paciente, gostaria de utilizar o site do Dasa
para consultar laboratórios para a realização de exames.

@listar_laboratorios
Cenario: Listar todos os laboratórios de São Paulo
Dado que acesse o site Dasa
E clique no link Nossas Marcas
Quando procuro os laboratórios de São Paulo
Entao devo listar todos os laboratórios no console

@consultar_delboni_auriemo
Cenario: Consultar o laboratório Delboni Auriemo
Dado que acesse o site Dasa
E clique no link Nossas Marcas
Quando seleciono o laboratório Delboni Auriemo
E na pagina informativa do Delboni valido que estou na área do laboratório
E clico no link com o nome da marca
Entao devo validar que fui direcionado corretamente para o site do Delboni Auriemo