MODULE derivadas

USE precisiones

IMPLICIT NONE

CONTAINS

FUNCTION df_5p(x0,h,ff)

REAL(pr)                      :: df_5p
REAL(pr),INTENT (in)          :: x0,h
REAL(pr)                      :: ff

df_5p=(ff(x0-2._pr*h)-8._pr*ff(x0-h)+8._pr*ff(x0+h)-ff(x0+2._pr*h))*(1._pr/(12._pr*h))

END FUNCTION df_5p



END MODULE derivadas