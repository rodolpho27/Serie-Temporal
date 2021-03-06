#Pacote de dados utilizado 
AirPassengers

#Media 
mean(AirPassengers)

#Media de um determinado per�odo 
mean(window(AirPassengers, start=c(1960, 1), end=c(1960, 12)))

#instalando o pacote forecast para construir a serie temporal
install.packages('forecast')     

#utilizando pacote na aplica��o 
library('forecast')

#realizando media movel que leva em considera��o valor anterior 
mediamovel = ma(AirPassengers, order=12)
mediamovel

#Prevendo atrav�s da media movel 
prev = forecast(mediamovel, h=12)
plot(prev)

#utilizando fun��o auto arima que leva em considera��o todos os dados 
arima = auto.arima(AirPassengers)

#Previs�o realizad sobre dois anos a frente 
previsao = forecast(arima, h=24)
previsao

#Mostrando a serie temporal como suas previs�o para os dois anos
plot(previsao)

#Decompondo a serie para analizar tendencia, sazonalidade e aleatoriedade
decompose(AirPassengers)
plot(decompose(AirPassengers))
