PROGRAM problema2

USE precisiones
USE funciones
USE edos

IMPLICIT NONE

INTEGER         :: i
REAL(pr)        ::t,ti,tf,h,y01,y02,y03,y04,y05,y06,w_h

NAMELIST/inicialparameters/ti,tf,h,y01,y02,y03,y04,y05,y06 !SE LEEN LOS DATOS DE UN ARCHIVO .dat EN ESE ORDEN

OPEN(20,FILE='datos_iniciales.dat',STATUS='old')
READ(20,nml=inicialparameters)
CLOSE(20)

        WRITE(*,*) '**************************************************************************'
        WRITE(*,*) '************  el metodo de RUNGE-KUTTA 4  ********************'
        WRITE(*,*) '**************************************************************************'

        !OPEN(33,FILE='rk4_prob3_y01.dat',STATUS='replace')
        !WRITE(33,*)'#         t          y_h'

        !OPEN(33,FILE='rk4_prob3_y02.dat',STATUS='replace')
        !WRITE(33,*)'#         t          y_h'

        !OPEN(33,FILE='rk4_prob3_y03.dat',STATUS='replace')
        !WRITE(33,*)'#         t          y_h'

        !OPEN(33,FILE='rk4_prob3_y04.dat',STATUS='replace')
        !WRITE(33,*)'#         t          y_h'

        !OPEN(33,FILE='rk4_prob3_y05.dat',STATUS='replace')
        !WRITE(33,*)'#         t          y_h'

        OPEN(33,FILE='rk4_prob3_y06.dat',STATUS='replace')
        WRITE(33,*)'#         t          y_h'

        !Recordar cambiar los y0.. correspondientes donde corresponda 
        t=ti
            DO i=1,nint((tf-ti)/h) 
                CALL rk4(t,h,f,y06,w_h)  !aca poner el y0.. correspondiente
                t=t+h
                WRITE(33,'(4(E17.9))') t,w_h!,abs(w_h-y_exacta(t))
                y06=w_h  !aca poner el y0.. correspondiente
                IF(t>tf) EXIT 
            END DO


END PROGRAM
