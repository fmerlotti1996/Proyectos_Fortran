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

FUNCTION fd(x)

IMPLICIT NONE

REAL(pr)                ::fd
REAL(pr),INTENT(in)     ::x

fd=2._pr*x


ENDFUNCTION fd

! FUNCTION f(x) !item (a)
! 
! IMPLICIT NONE
! INTEGER, PARAMETER      ::pr=KIND(1.d0)
! REAL(pr)                ::f
! REAL(pr),INTENT(in)     ::x
! 
! f=2._pr*x-tan(x)
! 
! 
! ENDFUNCTION f

END MODULE funciones
