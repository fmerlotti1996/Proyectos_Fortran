MODULE edos

USE precisiones


IMPLICIT NONE

 CONTAINS
!func=dy/dt
SUBROUTINE euler(t,h,func,w,w_h)

REAL(pr),INTENT(in)      :: t,h,w
REAL(pr),INTENT(out)     :: w_h
REAL(pr)                 :: func

 
w_h=w+h*func(t,w)

END SUBROUTINE

SUBROUTINE rk2(t,h,func,w,w_h)

REAL(pr),INTENT(in)      :: t,h,w
REAL(pr),INTENT(out)     :: w_h
REAL(pr)                 :: k1,func

k1=h*func(t,w)

w_h=w + h*func(t+ 0.5_pr*h ,w +0.5_pr*k1)

END SUBROUTINE

SUBROUTINE rk4(t,h,func,w,w_h)

REAL(pr),INTENT(in)      :: t,h,w
REAL(pr),INTENT(out)     :: w_h
REAL(pr)                 :: k1,k2,k3,k4,func

k1=h*func(t,w)
k2=h*func(t+h/2._pr,w+k1/2._pr)
k3=h*func(t+h/2._pr,w+k2/2._pr)
k4=h*func(t+h,w+k3)

w_h=w+(k1+k2*2._pr+k3*2._pr+k4)/6._pr

END SUBROUTINE

END MODULE edos
