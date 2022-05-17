MODULE derivadas

USE precisiones

IMPLICIT NONE

CONTAINS

!---------------------------------------- CENTRADA DE 3PTOS MEDIO -----------------------------------------------------
FUNCTION df_3p_m(x0,h,f)

REAL(pr)                      :: df_3p_m
REAL(pr),INTENT (in)          :: x0,h
REAL(pr)                      :: f

df_3p_m=(f(x0+h)-f(x0-h))/(2._pr*h)

END FUNCTION


!------------------------------------------------------------------------------------------------------------------------

!------------------------------------------------------ CENTRADA EN 3 PUNTOS EXTREMOS -----------------------------------
!FUNCTION df_3p_e(x0,h,ff)

!REAL(pr)                      :: df_3p_e
!REAL(pr),INTENT (in)          :: x0,h
!REAL(pr)                      :: ff

    !df_3p_e= (-3._pr*ff(x0)+4._pr*ff(x0+h)-ff(x0+2._pr*h))/2._pr*h

!END FUNCTION

END MODULE derivadas