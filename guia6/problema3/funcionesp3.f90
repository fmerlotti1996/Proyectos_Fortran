MODULE funciones

USE precisiones

IMPLICIT NONE

CONTAINS


!f=dy/dt
FUNCTION f(t,y)

REAL(pr)                ::f
REAL(pr),INTENT (in)    ::t,y
!REAL(pr)                ::pi=acos(-1._pr)


f=sin(y)

END FUNCTION f

!FUNCTION y_exacta(t)

!REAL(pr)                ::y_exacta
!REAL(pr),INTENT (in)    ::t
!REAL(pr)                ::pi=acos(-1._pr)

!y_exacta =(1._pr+2._pr*pi/(1._pr+4._pr*pi**2))*exp(-t)+ &
        !(sin(2._pr*pi*t)-2._pr*pi*cos(2._pr*pi*t))/(5._pr*pi**2)
!y_exacta = ((1._pr + 2._pr*pi + 4._pr*pi*pi)*exp(t) - sin(2._pr*pi*t) - 2._pr*pi*cos(2._pr*pi*t))/(1._pr + 4._pr*pi*pi)

!END FUNCTION y_exacta

END MODULE funciones
