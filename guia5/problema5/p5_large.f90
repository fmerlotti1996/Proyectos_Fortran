program p5_large


    use ISO 
    use precsn_large
    use funcion_p5
    use integracion
    
    implicit none
    
    real(pr)          :: a0=0._pr , b0=1._pr
    real(pr)          :: I_exacta_1, I_Trapecio1 , I_Simpson1 , I_PuntoMedio1
    real(pr)          :: Error_Trapecio1,Error_Simpson1,Error_PuntoMedio1
    real(pr)          :: h
    integer           :: k,n,puntos
    
    
    12 format(A20,15X,A11,18X,A11,18X,A11)
    18 format(3X,I4,25X,3(E20.9,10X))
    
    
    
    
    I_exacta_1=1._pr-exp(-1._pr)
    
    
    open(100, file='integrales_punto_medio_pr_large.dat', status='replace')
    write(100,12)'Numero de Puntos','Punto Medio','Error relativo','h'
    
    
    
    do k=0,9
    
      
        puntos=10._pr*(2._pr**k) + 1._pr


        n=puntos - 1._pr
    
        h=(b0-a0)/n
    
        call punto_medio(n,a0,b0,I_PuntoMedio1,fa)
         
        Error_PuntoMedio1=abs(I_exacta_1-I_PuntoMedio1)/abs(I_exacta_1)
    
        write(100,18)n,I_PuntoMedio1,Error_PuntoMedio1,h
    
    
    end do
    
    close(100)
    
    
    open(101,file='integrales_trapecio_pr_large.dat',status='replace')
    write(101,12)'Numero de Puntos','Trapecio','Error relativo','h'
    
    do k=0,9
    

        puntos=10._pr*(2._pr**k) + 1._pr

        n=puntos - 1._pr

        h=(b0-a0)/n
    
        call trapecio(n,a0,b0,I_Trapecio1,fa)
         
        Error_Trapecio1=abs(I_exacta_1-I_Trapecio1)/abs(I_exacta_1)
    
        write(101,18)n,I_Trapecio1,Error_Trapecio1,h
    
    
    end do
    
    close(101)
    
    
    open(102,file='integrales_simpson_pr_large.dat',status='replace')
    write(102,12)'Numero de Puntos','Simpson','Error relativo','h'
    
    
    
    do k=0,9
    
        puntos=10._pr*(2._pr**k) + 1._pr

        n=puntos - 1._pr

    
        h=(b0-a0)/n
    
        call simpson(n,a0,b0,I_Simpson1,fa)
         
        Error_Simpson1=abs(I_exacta_1-I_Simpson1)/abs(I_exacta_1)
    
        write(102,18)n,I_Simpson1,Error_Simpson1,h
    
    
    end do
    
    close(102)
    
    


end program
