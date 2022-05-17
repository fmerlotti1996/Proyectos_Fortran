program p6

use ISO
use precisiones
use funciones
use interpol_lagrange

implicit none

real(pr)                             :: x0!,error
integer                              :: n ,i , j ,Nmax, g 
real(pr), dimension (:), allocatable ::  vecx , vecy
real(pr)                             :: p , delta , b, a 
real(pr),parameter                   :: pi = 4._pr*atan(1._pr)

write(*,*) 'Ingrese el grado n del polinomio interpolante'
read(*,*) g

n = g + 1

allocate (vecx(1:n))
allocate (vecy(1:n))

write(*,*) 'Ingrese los extremos del intervalo [a,b]'
read(*,*) a,b 

open(15, file='funcion_pares.dat', status='replace')

write(15,12)'#', 'xi', 'f(xi)'
12 format(A1,10X,A3,25x,A6,25x,A6)
18 format(3X,3(E20.9,10X))

!---------------------------------------------------------equiespaciamiento--------------------------------
!equiespaciamiento
!do i=1,n
    
    !vecx(i)=-1._pr+(real(i-1,pr))*(2._pr/real(n-1,pr))
    !vecy(i)=f(vecx(i))
    !write(15,18) vecx(i),vecy(i)

!end do
!------------------------------------------------------------------------------------------------------------

!--------------------------------------------------------------------espaciamiento2-------------------------------------
!do i=1,n
    
    !vecx(i)=-1._pr+(real(i-1,pr))*(2._pr/real(n-1,pr))
    !vecy(i)=f(vecx(i))
    !write(15,18) vecx(i),vecy(i)

!end do
!--------------------------------------------------------------------------------------------------------

!------------------------------------------------------------------Chebyshev---------------------------

do i =1,n 
    vecx(i)=-cos(pi*(real(i-1,pr))/real(n-1,pr))
    vecy(i)=f(vecx(i))
    write(15,18) vecx(i),vecy(i)

end do
!-------------------------------------------------------------------------------------------------------

write(*,*)'Ingrese el equiespaciamiento del intervalo'
read(*,*) Nmax 

open(40, file='lagrange.dat', status='replace')

write(40,12) '#', 'x0', 'p(x0)', 'E_abs'

x0=0._pr 

delta=(vecx(n)-vecx(1))/real(Nmax-1,pr)   !equiespaciamiento de los puntos donde se evalua el polinomio

            do  j=0,Nmax-1

                x0=vecx(1)+real(j,pr)*delta

                    call lagrange(n,vecx,vecy,x0,p)

                    write(40,18) x0,p, abs(f(x0)-p)

            end do

            !error = maxval(f(x0)-p)

close(15)
close(40)

end program 