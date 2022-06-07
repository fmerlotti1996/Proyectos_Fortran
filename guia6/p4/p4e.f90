program p4e

use ISO 
use precsn 
use funciones_4e
use rk4_sys

implicit none 

integer                   :: i , n 
real(pr)                  :: a=0._pr , b=10._pr
real(pr)                  :: h , t
real(pr)                  :: g=10._pr , l=1._pr 
real(pr), dimension(1:2)  :: y0 , w_h

y0(2)=0._pr     !u
y0(1)=1._pr    !Tita

h=0.1_pr 

n=nint((b-a)/h)

t=a

100 format(6(E17.9))




open(33,file='rk4_sys_exit_4e_tita2.dat',status='replace')
        write(33,*)'#        t           theta             dtheta/dt=u       y_exact        Error Absoluto'
        write(33,100)t,y0(2),y0(1),abs(y0(1)-y_exacta(a))




        do i=1,n 
    
            call rk4_multiple(t,h,y0,w_h)
        
            t  = a + i*h 
        
            write(33,100)t,w_h(2),w_h(1),y_exacta(t),abs(w_h(1)-y_exacta(t))
        
            y0 = w_h
        
        end do

    


    end program 

