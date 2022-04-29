MODULE funciones
USE precisiones

IMPLICIT NONE

CONTAINS

FUNCTION f(x) 

IMPLICIT NONE

REAL(pr)                ::f
REAL(pr),INTENT(in)     ::x

f=x**2-3._pr

ENDFUNCTION f

END MODULE funciones
