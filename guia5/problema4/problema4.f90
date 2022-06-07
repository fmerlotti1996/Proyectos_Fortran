program p4a

    use ISO 
    use precisiones
    !use funcionesp4
    use integracion
    
    implicit none
    
    !real(pr)          :: a0=0._pr , b0=0.5_pr
    real(pr)          :: a0=1._pr , b0=1.5_pr
    !real(pr)          :: I_Trapecio1 , I_Simpson1 , I_PuntoMedio1
    !real(pr)          :: Error_Trapecio1,Error_Simpson1,Error_PuntoMedio1
    real(pr)          :: I_Trapecio2 , I_Simpson2 , I_PuntoMedio2
    real(pr)          :: Error_Trapecio2,Error_Simpson2,Error_PuntoMedio2
    real(pr)          :: h
    !real(pr)          :: I_exacta_1
    real(pr)          :: I_exacta_2
    integer           :: n,pmax
    
    
    12 format(A20,15X,A11,18X,A11,18X,A11)
    18 format(3X,I4,25X,3(E20.9,10X))
    
    
    pmax=100
    
    !I_exacta_1=2._pr*(log(7._pr/2._pr)-log(4._pr))
    I_exacta_2= 0.192259
    
    !open(100, file='integrales_punto_medio_fa.dat', status='replace')
    !write(100,12)'Numero de Puntos','Punto Medio','Error','h'
    
    open(100, file='integrales_punto_medio_fb.dat', status='replace')
    write(100,12)'Numero de Puntos','Punto Medio','Error','h'
    
    do n=2,pmax,2
    
        
    
        h=(b0-a0)/n
    
        call punto_medio(n,a0,b0,I_PuntoMedio2,fb)
         
        Error_PuntoMedio2=abs(I_exacta_2-I_PuntoMedio2)
    
        write(100,18)n,I_PuntoMedio2,Error_PuntoMedio2,h
    
    
    end do
    
    close(100)
    
    
    !open(101,file='integrales_trapecio_fa.dat',status='replace')
    !write(101,12)'Numero de Puntos','Punto Medio','Error','h'

    open(101,file='integrales_trapecio_fb.dat',status='replace')
    write(101,12)'Numero de Puntos','Punto Medio','Error','h'
    
    do n=2,pmax,2
    
        
    
        h=(b0-a0)/n
    
        call trapecio(n,a0,b0,I_Trapecio2,fb)
         
        Error_Trapecio2=abs(I_exacta_2-I_Trapecio2)
    
        write(101,18)n,I_Trapecio2,Error_Trapecio2,h
    
    
    end do
    
    close(101)
    
    
    !open(102,file='integrales_simpson_fa.dat',status='replace')
    !write(102,12)'Numero de Puntos','Simpson','Error','h'
    
    open(102,file='integrales_simpson_fb.dat',status='replace')
    write(102,12)'Numero de Puntos','Simpson','Error','h'
    
    do n=2,pmax,2
    
        
    
        h=(b0-a0)/n
    
        call simpson(n,a0,b0,I_Simpson2,fb)
         
        Error_Simpson2=abs(I_exacta_2-I_Simpson2)
    
        write(102,18)n,I_Simpson2,Error_Simpson2,h
    
    
    end do
    
    close(102)
    
end program