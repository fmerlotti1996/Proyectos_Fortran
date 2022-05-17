MODULE funciones
USE precisiones
IMPLICIT NONE

CONTAINS

 FUNCTION f(x)
 REAL(pr)                :: f
 REAL(pr),INTENT(in)     :: x

 !f=log(1._pr + x)
 f=sqrt(1._pr + x)
END FUNCTION f

END MODULE
