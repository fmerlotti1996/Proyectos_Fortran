MODULE funciones

USE precisiones

IMPLICIT NONE

CONTAINS

FUNCTION f(x)
REAL(pr)                    ::f
REAL(pr),INTENT(in)         ::x

f=x**2-3._pr

END FUNCTION f

FUNCTION fd(x)
REAL(pr)                  ::fd
REAL(pr),INTENT(in)       ::x

fd=2*x -3._pr

END FUNCTION fd

!FUNCTION f(x)
!REAL(pr)                    ::f
!REAL(pr),INTENT(in)         ::x

!f=tan(x)-2._pr*x

!END FUNCTION f

!FUNCTION fd(x)
!REAL(pr)                  ::fd
!REAL(pr),INTENT(in)       ::x

!fd=1._pr/((cos(x))**2) -2._pr

!END FUNCTION fd

END MODULE funciones
