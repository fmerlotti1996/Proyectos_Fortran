program p5

use ISO 
use precsn
use funciones
use rk4_sys 

implicit none 

integer                               :: i , n 
real(pr)                              :: a=0._pr , b=200._pr 
real(pr)                              :: h , t 
real(pr)                              :: gamma=0.1_pr , beta=0.5_pr
real(pr), dimension(1:3)              :: y0 , w_h 

y0(1) = 990._pr          !S
y0(2) = 10._pr           !I
y0(3) = 0._pr            !R

h=0.1_pr 

n=nint((b-a)/h)

t=a 

100 format(4(E17.9))

open(33,file='sir.dat',status='replace')
        write(33,*)'#        t           S        I       R'
        write(33,100)t,y0(1),y0(2),y0(3)


do i=1,n 
    
    call rk4_multiple(t,h,y0,w_h)

    t  = a + i*h 

    write(33,100)t,w_h(1),w_h(2),w_h(3)

    y0 = w_h

end do

close(33)

end program