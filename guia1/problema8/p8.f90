program p8

implicit none 

real(4)  :: A,B,C,x1,x2,delta,y1,y2

write(*,*) "PROGRAMA PARA RESOLVER ECUACIONES POOLINOMICAS DE SEGUNDO GRADO A*X**2+B*X+C"

write(*,*) "Ingrese el valor de A"
read(*,*)A

write(*,*) "Ingrese el valor de B"
read(*,*)B

write(*,*) "Ingrese el valor de C"
read(*,*)C

    delta = B**2 - 4.*A*C

if ( delta > 0. ) then

    write(*,*) "Tendremos dos raices reales"

    x1 = (-B + sqrt(delta))/2.*A
    
    x2 = (-B - sqrt(delta))/2.*A
    
    write(*,*) "la raiz x1 sera :" ,x1
    
    write(*,*) "la raiz x2 sera :" ,x2
    
    else if ( delta < 0. ) then 
    
    write(*,*) "Tendremos dos raices imaginarias"

    y1 = sqrt(-delta)/2.*A

    write(*,*) "La raiz x1 sera -",-B/ (2.d0*A),"+i",y1
    
    write(*,*) "La raiz x2 sera -",-B/ (2.d0*A),"-i",y1
    
    else if ( delta == 0. ) then 
    
    write(*,*) "Tendremos dos raices reales iguales"
    
    y2 = -B/2.*A
    
    write(*,*) "Las raices serán x1,x2 = +-",y2

end if
    
end program p8






