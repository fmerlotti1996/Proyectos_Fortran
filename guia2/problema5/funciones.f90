MODULE funciones
use precisiones

CONTAINS

function f(x)

real(pr),intent(in)    :: x

real(pr)               :: f

f = x**3 - 2._pr*x - 5._pr

end function f

function fd(x)

real(pr),intent(in)    :: x

real(pr)               :: fd

fd = 3._pr*x**2 - 2._pr

end function fd

end module funciones
