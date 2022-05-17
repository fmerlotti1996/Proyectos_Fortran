MODULE funciones

USE precisiones

IMPLICIT NONE

CONTAINS

FUNCTION f(x)

REAL(pr)                ::f
REAL(pr),INTENT(in)     ::x

f=x*exp(x)


END FUNCTION f

FUNCTION df(x)

REAL(pr)                :: df
REAL(pr),INTENT(in)     :: x

df=(x+1._pr)*exp(x)

END FUNCTION df

END MODULE funciones
