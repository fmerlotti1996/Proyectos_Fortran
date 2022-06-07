module funciones 

use ISO 
use precsn 

contains 

function derivada_t(t,y)

real(pr),dimension(1:3)            :: derivada_t 
real(pr),intent(in)                :: t
real(pr),dimension(1:3),intent(in) :: y
real(pr),parameter                 :: gamma=0.1_pr , beta=0.5_pr , pob=1000._pr

derivada_t(1)= -(beta/pob)*y(1)*y(2)
derivada_t(2)= (beta/pob)*y(1)*y(2) - gamma*y(2)
derivada_t(3)= gamma*y(2)

end function 

end module
