x <- rep(100, 10)
y <- c( 484.983682919,
        470.175636619,
        425.055840557,
        464.652960824,
        735.665491384,
        457.413769959,
        472.528636536,
        451.390966804,
        394.413930446,
        401.123607836)
plot(x,y, pch=1, xlim=c(70, 100), ylim=c(300, 750), 
     xlab="Quantidade de serviços implantados com sucesso", 
     ylab="Tempo de execução (s)")

x2 <- c( 100,
         90,
         100,
         90,
         70,
         100,
         90,
         90,
         90,
         90)
y2 <- c( 367.489404026,
         364.279486174, 
         401.786434567, 
         347.087032259, 
         493.919290318, 
         396.46942382, 
         375.319155939, 
         518.019711666, 
         464.420764015, 
         347.792915063)
points(x2, y2, pch=0)

legend( x="topleft", 
        legend=c("Invoker e reserva de nós ativados",
                 "Invoker e reserva de nós desativados"),
        lwd=1, lty=c(NA, NA), 
        pch=c(1,0) )
