PROGRAM problema4

USE precisiones

IMPLICIT NONE

REAL(pr),DIMENSION(1:250)         :: t,x,df_3p,df_5p
INTEGER                           :: i,k

OPEN(21,FILE='pos.dat',STATUS='old')
READ(21,*) (t(i),x(i),i=1,250)
CLOSE(21)

!------------------ Derivada en 3pts ------------------------------

OPEN(22,FILE='datos_P04_df3p.dat',STATUS='replace')

WRITE(22,*)"              t                  df_3p"

DO k=2,249
    df_3p(k)=(x(k+1)-x(k-1))/(2._pr*(t(2)-t(1)))   ! tomamos t(2)-t(1) por que estan equiespaciados los puntos entonces la diistancia es siempre la misma
   WRITE(22,*)t(k),df_3p(k)
END DO

CLOSE(22)

!----------------- Derivada en 5ptos -------------------------------

OPEN(23,file='datos_P04_df5p.dat',status='replace')

WRITE(23,*)"       t                       df_5p"

DO k=3,248
        df_5p(k)=(x(k-2)-8._pr*x(k-1)+8._pr*x(k+1)-x(k+2))*(1._pr/(12._pr*(t(2)-t(1))))
   WRITE(23,*) t(k),df_5p(k)
END DO

CLOSE(23)

END PROGRAM
