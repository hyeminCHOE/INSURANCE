library(shiny)

shinyUI(fluidPage(
  titlePanel("생명보험료 App"),
  sidebarLayout(
    sidebarPanel(
      radioButtons(inputId = "s",
                   label = "성별",
                   choices = list("남자" = "male", "여자" = "female")),
      numericInput("x", "나이", "40"),    
      sliderInput(inputId = "i",
                  label = "연이자율",
                  min = 0, max = 1, value = 0.01, step = 0.01),
      numericInput("b", "지급 보험금(원)", "100000000"),
      numericInput("n", "납입만기(n)", "5"),
      numericInput("m", "지급만기(m)", "5")),
    
    mainPanel(
      verbatimTextOutput('github')
    ))))
