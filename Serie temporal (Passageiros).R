#Pacote de dados utilizado 
AirPassengers

#Media 
mean(AirPassengers)

#Media de um determinado período 
mean(window(AirPassengers, start=c(1960, 1), end=c(1960, 12)))

#instalando o pacote forecast para construir a serie temporal
install.packages('forecast')     

#utilizando pacote na aplicação 
library('forecast')

#realizando media movel que leva em consideração valor anterior 
mediamovel = ma(AirPassengers, order=12)
mediamovel

#Prevendo através da media movel 
prev = forecast(mediamovel, h=12)
plot(prev)

#utilizando função auto arima que leva em consideração todos os dados 
arima = auto.arima(AirPassengers)

#Previsão realizad sobre dois anos a frente 
previsao = forecast(arima, h=24)
previsao

#Mostrando a serie temporal como suas previsão para os dois anos
plot(previsao)

#Decompondo a serie para analizar tendencia, sazonalidade e aleatoriedade
decompose(AirPassengers)
plot(decompose(AirPassengers))
