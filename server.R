
library(shiny)
source("helpers.R")

#data 불러오기
data<-read.csv("part2_완전생명표.csv")

# 변수 설정
lx_f<-data[,4]  #여자.생존자수
lx_m<-data[,8]  #남자.생존자수
mydata<-data.frame(cbind(lx_f, lx_m))


shinyServer(function(input, output) {
  output$github <- renderText({
    if (input$s=="male") {newdata=mydata[,2]}
    else {newdata=mydata[,1]}
    paste('월납 보험료는',round(insurance(input$x,input$i, input$n,input$m,input$b,newdata),0), '원 입니다.')
  })
})
