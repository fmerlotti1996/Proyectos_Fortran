PROGRAM problema2

USE precisiones
USE funciones
USE edos

IMPLICIT NONE

INTEGER         :: metodo,i
REAL(pr)        ::t,ti,tf,h,h1,h2,y0,w_h

NAMELIST/inicialparameters/ti,tf,h,y0,h1,h2  !SE LEEN LOS DATOS DE UN ARCHIVO .dat EN ESE ORDEN

OPEN(20,FILE='datos_iniciales.dat',STATUS='old')
READ(20,nml=inicialparameters)
CLOSE(20)

    WRITE(*,*) 'usted tiene tres(3) metodos para resolver el problema'
    WRITE(*,*) '-------------------'
    WRITE(*,*)'1.Euler'
    WRITE(*,*)'2.Runge-Kutta, 2do Orden'
    WRITE(*,*)'3.Runge-Kutta, 4do Orden'
    WRITE(*,*) '-------------------'
    WRITE(*,*)'Escribir la opcion elegida'
    READ(*,*) metodo

SELECT CASE(metodo)
    CASE(1)
        WRITE(*,*) '**************************************************************************'
        WRITE(*,*) '************** usted eligió el metodo de EULER  **************************'
        WRITE(*,*) '**************************************************************************'

        OPEN(11,FILE='euler_exit_h2.dat',STATUS='replace')
        WRITE(11,*)'#         t          y_h            y_exact      E(ABS)'

        !OPEN(11,FILE='euler_exit_h1.dat',STATUS='replace')
        !WRITE(11,*)'#         t          y_h            y_exact      E(ABS)'

        !OPEN(11,FILE='euler_exit_h.dat',STATUS='replace')
        !WRITE(11,*)'#         t          y_h            y_exact      E(ABS)'

        !WRITE(11,'(4(E17.9))') ti,y0,y_exacta(ti),abs(y0-y_exacta(ti))
        
        WRITE(11,'(4(E17.9))') ti,y0,y_exacta(ti),abs(y0-y_exacta(ti))
        t=ti
            DO i=1,nint((tf-ti)/h2)
                
                CALL euler(t,h2,f,y0,w_h)
                t=ti+i*h2
                WRITE(11,'(4(E17.9))') t,w_h,y_exacta(t),abs(w_h-y_exacta(t))
                y0 = w_h
                
                IF (t>tf) EXIT
            ENDDO

    CASE(2)
        WRITE(*,*) '**************************************************************************'
        WRITE(*,*) '************ usted eligió el metodo de RUNGE-KUTTA,2  ********************'
        WRITE(*,*) '**************************************************************************'

        OPEN(22,FILE='rk2_exit_h2.dat',STATUS='replace')
        WRITE(22,*)'#         t          y_h            y_exact      E(ABS)'

        !OPEN(22,FILE='rk2_exit_h1.dat',STATUS='replace')
        !WRITE(22,*)'#         t          y_h            y_exact      E(ABS)'

        !OPEN(22,FILE='rk2_exit_h.dat',STATUS='replace')
        !WRITE(22,*)'#         t          y_h            y_exact      E(ABS)'

        WRITE(22,'(4(E17.9))') ti,y0,y_exacta(ti),abs(y0-y_exacta(ti))
        t=ti
            DO i=1,nint((tf-ti)/h2)
                
                CALL rk2(t,h2,f,y0,w_h)
                t=ti+i*h2
                WRITE(22,'(4(E17.9))') t,w_h,y_exacta(t),abs(w_h-y_exacta(t))
                y0=w_h
                IF(t>tf) EXIT
            END DO

    CASE(3)
        WRITE(*,*) '**************************************************************************'
        WRITE(*,*) '************ usted eligió el metodo de RUNGE-KUTTA,4  ********************'
        WRITE(*,*) '**************************************************************************'

        OPEN(33,FILE='rk4_exit_h2.dat',STATUS='replace')
        WRITE(33,*)'#         t          y_h            y_exact      E(ABS)'

        !OPEN(33,FILE='rk4_exit_h1.dat',STATUS='replace')
        !WRITE(33,*)'#         t          y_h            y_exact      E(ABS)'

        !OPEN(33,FILE='rk4_exit_h.dat',STATUS='replace')
        !WRITE(33,*)'#         t          y_h            y_exact      E(ABS)'

        WRITE(33,'(4(E17.9))') ti,y0,y_exacta(ti),abs(y0-y_exacta(ti))
        t=ti
            DO  i=1,nint((tf-ti)/h2)
                
                CALL rk4(t,h2,f,y0,w_h) 
                t=ti+i*h2
               WRITE(33,'(4(E17.9))') t,w_h,y_exacta(t),abs(w_h-y_exacta(t))
               y0=w_h
               IF(t>tf) EXIT 
            END DO
END SELECT

END PROGRAM
