module rk4_sys

use ISO 
use precsn 
use funciones

contains 

subroutine rk4_multiple(t,h,w,w_h)

real(pr),intent(in)                    :: t,h
real(pr),dimension(1:3),intent(in)     :: w
real(pr),dimension(1:3),intent(out)    :: w_h 
real(pr),dimension(size(w))            :: k1,k2,k3,k4

k1=derivada_t( t, w )
k2=derivada_t( t + 0.5_pr*h, w + 0.5_pr*h*k1 )
k3=derivada_t( t + 0.5_pr*h, w + 0.5_pr*h*k2 )
k4=derivada_t( t + h, w + h*k3 )

w_h= w + h*(k1 + 2._pr*k2 + 2._pr*k3 + k4)/6._pr

end subroutine 

end module 
