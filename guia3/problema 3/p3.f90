program p3
    
use ISO
use precsn
use funcion
use interpol_lagrange 

implicit none

real(pr)                             :: x0
integer                              :: n , i , k , j ,Nmax 
real(pr), dimension (:), allocatable ::  vecx , vecy
real(pr)                             :: p , delta , b, a , d

write(*,*) 'Ingrese el grado n del polinomio interpolante'
read(*,*) n 

allocate (vecx(0:n))
allocate (vecy(0:n))

write(*,*) 'Ingrese los extremos del intervalo [a,b]'
read(*,*) a,b 


open(15, file='funcion_pares.dat', status='replace')



write(15,12)'#', 'xi', 'f(xi)'
12 format(A1,10X,A3,25x,A6,25x,A6)
18 format(3X,3(E20.9,10X))

d = (b-a)/real(n,pr)   !equiespaciamiento de los nodos

do i=0,n
    
    vecx(i)=a+real(i,pr)*d
    vecy(i)=f(vecx(i))
    write(15,18) vecx(i),vecy(i)

end do

write(*,*)'Ingrese el equiespaciamiento del intervalo'
read(*,*) Nmax 


open(40, file='lagrange.dat', status='replace')


write(40,12) '#', 'x0', 'p(x0)', 'E_abs'


x0=0._pr 


delta=(vecx(n)-vecx(0))/real(Nmax,pr)   !equiespaciamiento de los puntos donde se evalua el polinomio

            do  j=0,Nmax

                x0=vecx(0)+real(j,pr)*delta

                    call lagrange(N,vecx,vecy,x0,p)

                    write(40,18) x0,p, abs(f(x0)-p)

            end do


close(15)
close(40)


end program p3