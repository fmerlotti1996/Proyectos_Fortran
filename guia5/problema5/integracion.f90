module integracion

use ISO 
use precsn_dp
!use precsn_sp
!use precsn_large
use funcion_p5

contains

!------------Punto Medio------------!

subroutine punto_medio(n,a,b,I_PuntoMedio,f)

implicit none 

real(pr),intent(in)         :: a,b
real(pr),intent(out)        :: I_PuntoMedio
integer,intent(in)          :: n
real(pr)                    :: h,suma_pm,f
integer                     :: i
real(pr), dimension(0:n+1)    :: x

h=(b-a)/real(n+2,pr)
suma_pm=0._pr 

do i=0,n

    x(i)=a+(i+1)*h

end do

do i=0,n/2

    suma_pm = suma_pm + f(x(2*i))

end do 

I_PuntoMedio = suma_pm*2._pr*h 


end subroutine punto_medio




!------------Trapecio------------!


subroutine trapecio(n,a,b,I_Trapecio,f)

    implicit none 
    
    real(pr),intent(in)         :: a,b
    real(pr),intent(out)        :: I_Trapecio
    integer,intent(in)          :: n
    real(pr)                    :: h,suma_t,f
    integer                     :: i
    real(pr), dimension(0:n)    :: x
    
    h=(b-a)/real(n,pr)
    suma_t=0._pr 
    
    do i=0,n
    
        x(i)=a+i*h
    
    end do
    
    do i=1,n-1            !No agarro los puntos del extremo
    
        suma_t = suma_t + f(x(i))
    
    end do 
    
    I_Trapecio = h*((f(a)+f(b))*0.5_pr + suma_t)
    
    
    end subroutine trapecio








!------------Simpson------------!

    subroutine simpson(n,a,b,I_Simpson,f)

        implicit none 
        
        real(pr),intent(in)         :: a,b
        real(pr),intent(out)        :: I_Simpson
        integer,intent(in)          :: n
        real(pr)                    :: h,suma_par,suma_impar,f
        integer                     :: i,j,k
        real(pr), dimension(0:n)    :: x
        




        if ( mod(n,2).ne.0) then

           write(*,*) 'Error en Simpson, el nº de nodos,n, debe ser par' 

       
           return

        end if





        h=(b-a)/real(n,pr)
        suma_par=0._pr 
        suma_impar=0._pr
        
        do i=0,n
        
            x(i)=a+i*h
        
        end do
        

        !Suma de los terminos pares

        do j=1,(n/2)-1       
        
            suma_par = suma_par + f(x(2*j))
        
        end do 

        !Suma de los terminos impares

        do k=1,(n/2)

            suma_impar = suma_impar + f(x(2*k-1))
        
        end do



        I_Simpson = (h/3._pr)*(f(a) + f(b) + 4._pr*suma_impar + 2._pr*suma_par)


        
        
        end subroutine simpson
    







end module






