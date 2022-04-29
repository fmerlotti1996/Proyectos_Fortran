module funciones

use precsn

contains

function x(t)

implicit none

real(kind = pr), intent (in)   :: t

real(kind = pr)                :: x

x = x0 + v0x*t

end function 

function y(t)

implicit none

real(kind = pr), intent (in)   :: t

real(kind = pr)                :: y

y = y0 + v0y*t-0.5_pr*g*t**2

end function
