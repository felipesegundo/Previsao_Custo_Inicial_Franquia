# Previsao_Custo_Inicial_Franquia
## Aplicação disponível em: https://89zvv1-felipe-alexandre.shinyapps.io/Previsao_Investimento_Inicial/

### Descrição da Aplicação
Esta aplicação Shiny, desenvolvida no contexto do Bootcamp Cientista de Dados com o professor Fernando Amaral, tem como objetivo prever o custo inicial necessário para montar uma franquia com base na frequência anual de clientes. Utilizando um modelo de regressão linear simples, a aplicação permite que os usuários insiram um valor de frequência anual e obtenham uma previsão do custo inicial correspondente.

### Funcionalidades
Visualização de Dados:

A aplicação exibe uma tabela com os primeiros 10 registros do conjunto de dados carregado (slr12.csv), permitindo uma visão rápida dos dados utilizados no modelo.
Gráfico de Dispersão:

Um gráfico de dispersão é gerado para mostrar a relação entre a frequência anual (FrqAnual) e o custo inicial (CusInic). Uma linha de ajuste, resultante do modelo de regressão linear, é sobreposta para ilustrar a tendência dos dados.
Previsão de Custo Inicial:

Os usuários podem inserir um novo valor de frequência anual através de um campo numérico. Ao clicar no botão "Processar", a aplicação calcula e exibe a previsão do custo inicial com base no valor inserido.
Estilo e Aparência
Para melhorar a experiência do usuário, a aplicação utiliza o tema "cerulean" da biblioteca shinythemes, proporcionando uma aparência moderna e profissional. Além disso, cores e estilos CSS foram adicionados para destacar elementos importantes:

### Título e Seções:

O título "Previsão de Custo Inicial para Montar uma Franquia" está centralizado no topo.
Os títulos "Dados" e "Valor Anual da Franquia:" são coloridos em azul e verde, respectivamente, para fácil identificação.
Botão de Ação:

O botão "Processar" é estilizado com a classe btn-primary, destacando-o com uma cor azul.
Gráfico:

Os pontos no gráfico são apresentados em azul, enquanto a linha de regressão é vermelha, facilitando a visualização das tendências.
Resultado da Previsão:

O resultado da previsão é exibido em vermelho e em negrito, tornando-o claramente visível para o usuário.
Utilização
A aplicação é intuitiva e fácil de usar:

O usuário insere um valor de frequência anual.
Clica no botão "Processar".
Visualiza a previsão do custo inicial exibida em destaque.
Esta aplicação é uma ferramenta útil para empreendedores que desejam estimar os custos iniciais de montar uma franquia com base em dados históricos e tendências identificadas pelo modelo de regressão linear.






