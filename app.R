
library(dplyr)
library(shiny)
library(shinythemes)

dados = read.csv("slr12.csv", sep = ";")
modelo = lm(CusInic ~ FrqAnual, data = dados)

ui <- fluidPage(
  
  theme = shinytheme("cerulean"),  # Adiciona tema cerulean
  
  titlePanel("Previsão de Custo Inicial para Montar uma Franquia"),
  
  fluidRow(
    column(4,
           h2("Dados", style = "color: #2E86C1;"),
           # tabela com os dados
           tableOutput("Dados")
    ),
    column(8,
           # gráfico com os dados
           plotOutput("Graf")
    )
  ),
  fluidRow(
    column(6,
           h3("Valor Anual da Franquia:", style = "color: #28B463;"),
           # valor que quer prever
           numericInput("NovoValor", "Insira Novo Valor:", 1500, min = 1, max = 9999999),
           # botao executar
           actionButton("Processar", "Processar", class = "btn-primary")
    ),
    column(6,
           # output, resultado da previsão
           h1(textOutput("Resultado"), style = "color: #C0392B; font-weight: bold;")
    )
  )
)

server <- function(input, output) {
  
  # imprime gráfico e linha de ajuste
  output$Graf <- renderPlot({ 
    plot(CusInic ~ FrqAnual, data = dados, col = "#3498DB", pch = 16, 
         main = "Relação entre Frequência Anual e Custo Inicial",
         xlab = "Frequência Anual", ylab = "Custo Inicial")
    abline(modelo, col = "#E74C3C", lwd = 2)
  })
  
  # imprime dados
  output$Dados <- renderTable({
    head(dados, 10)
  })
  
  # evento do botão para executar o cálculo
  observeEvent(input$Processar, {
    valr <- input$NovoValor 
    prev <- predict(modelo, data.frame(FrqAnual = valr))
    prev <- paste0("Previsão de Custo Inicial R$: ", round(prev, 2))
    output$Resultado <- renderText({ prev })
  })
}

shinyApp(ui = ui, server = server)
