program problema2G4

USE precisiones
USE funciones
USE interpol_lagrange 


IMPLICIT NONE

integer                                    ::n,n1,nmax,i,j,g
real(pr)                                   ::a,b,d,x,P
real(pr),dimension(:),allocatable          ::xi,yi

open(unit=10,file="Ejercicio2.dat",status="replace")
open(unit=11,file="Ejercicio2_puntos.dat",status="replace")

g=2

Write(6,*) "Ingrese la cantidad de puntos a interpolar"
read(*,*) nmax

Write(6,*) "Ingrese los extremos del intervalo (a<b)"
read(*,*) a,b

n = g + 1

allocate (xi(1:n),yi(1:n))

xi = (/0._pr,0.6_pr,0.9_pr/)  

!Ahora inicializo los puntos xi que va a tomar la función

!h=(b-a) / real(n1,pr)

WRITE(11,23) "xi(i)","yi(i)"
WRITE(11,*) ' '

   do i=1,n
    yi(i)= f(xi(i)) 
   
    write(6,*) "        xi(i)                     yi(i)"
        write(6,*) xi(i),yi(i)
        write(11,24) xi(i),yi(i)
    end do
    
    !Ahora tengo que decirle que me divida el intervalo en la cantidad que me piden, NO EN LOS NODOS

write(10,21) "n","x","P"
write(10,*) ""
        
d = (xi(n) - xi(1)) / real(nmax-1,pr)

    do j = 0,nmax-1
        x = xi(1) + d*real(j,pr)

        call subroutine_lagrange(n,x,xi,yi,P)

        write(10,22) j,x,P
    end do
    
23 format(5X,A5,20X,A5)
24 format(E16.8,5X,E16.8)
21 format(1X,A1,18X,A1,23X,A1)
22 format(I3,3(8X,E16.8))

close(10)
close(11)

! PARA LAS GRAFICAS HACER P(x) con lineas, otro solo con puntos para xi(i),yi(i) y otro para el log(x+1)

deallocate(xi,yi)
   
end program problema2G4
   



