
par(mfcol=c(1,2)) 

barplot(c(10), names.arg=c("100%"),  
        xlab="Quantidade de serviços \nimplantados com sucesso", 
        ylab="Quantidade de execuções",
        main="Invoker e reserva de nós \nativados")

# Resultados: 100, 90, 100, 90, 70, 100, 90, 90, 90, 90
y2 = c(1, 6, 3)
x2 = c("70%", "90%", "100%")
barplot(y2, names.arg=x2, xlab="Quantidade de serviços \nimplantados com sucesso", 
        ylab="Quantidade de execuções",
        main="Invoker e reserva de nós \ndesativados")

