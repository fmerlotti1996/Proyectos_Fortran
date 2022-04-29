MODULE funciones
USE precisiones
USE constantes

IMPLICIT NONE

CONTAINS

FUNCTION f(x) 

IMPLICIT NONE

REAL(pr)                ::f
REAL(pr),INTENT(in)     ::x
!REAL(pr),PARAMETER      :: g=9.81_pr , numero_pi=3.141592654_pr , h0=10._pr, m=0.1_pr, k=0.149_pr

f=h0-(m*(g/k))*x+((g*m*m)/(k**2._pr))*(1._pr-exp(-(k/m)*x))

ENDFUNCTION f

FUNCTION fd(x) 

IMPLICIT NONE

REAL(pr)                ::fd
REAL(pr),INTENT(in)     ::x
!REAL(pr),PARAMETER      :: g=9.81_pr , numero_pi=3.141592654_pr , h0=10._pr, m=0.1_pr, k=0.149_pr

fd=(g*m/k)*(exp(-(k/m)*x)-1_pr)

ENDFUNCTION fd

END MODULE funciones
