module funciones 

use ISO 
use precsn 

contains 

function derivada_t(t,y)

real(pr),dimension(1:2)            :: derivada_t 
real(pr),intent(in)                :: t
real(pr),dimension(1:2),intent(in) :: y
real(pr),parameter                 :: g=10._pr , l=1._pr

derivada_t(1)= y(2)
derivada_t(2)= -(g/l) * sin(y(1))

end function 

end module
