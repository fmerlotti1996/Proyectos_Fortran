program p4 

use ISO 
use precsn
use funciones
use rk4_sys

implicit none

integer                   :: i , n 
real(pr)                  :: a=0._pr , b=10._pr
real(pr)                  :: h , t
real(pr)                  :: g=10._pr , l=1._pr 
real(pr)                  :: E00 , En0
real(pr), dimension(1:2)  :: y0 , w_h

y0(2)=0._pr
y0(1)=0.5_pr

h=0.01_pr

n=nint((b-a)/h)

t=a

E00=0.5_pr*l**2 * y0(2)**2 - g * l * (cos(y0(1))-1._pr)

100 format(6(E17.9))


open(33,file='rk4_sys_exit_a_h1.dat',status='replace')
!open(33,file='rk4_sys_exit_a.dat',status='replace')
        write(33,*)'#        t           theta             dtheta/dt=u       Energía        E_energía'
        write(33,100)t,y0(2),y0(1),E00,abs(E00-E00)



do i=1,n 
    
    call rk4_multiple(t,h,y0,w_h)

    En0=0.5_pr*l**2 * w_h(2)**2 - g * l * (cos(w_h(1))-1._pr)

    t  = a + i*h 

    write(33,100)t,w_h(2),w_h(1),En0,abs(En0-E00)

    
    y0 = w_h

end do

close(33)




end program



















