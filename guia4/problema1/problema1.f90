PROGRAM problema1

USE precisiones
USE funciones
USE derivadas

IMPLICIT NONE

INTEGER(pr)                 :: k
REAL(pr)                    :: h, fp_exacto, error_abs
REAL(pr),parameter          :: eps_maq = epsilon(1._pr)
!--------------------------------------------------------------h óptimo--------------------------------------------------------
!h óptimo para este caso es de la forma: [(3*|f(x_0)|*eps_maq)/|(f'''(x_0)|)]**(1/3)                                   !-------
                                                                                                                       !-------
OPEN(UNIT=10,FILE='h_optimo_P1.dat')                                                                            !-------
write(10,*)"h optimo para este caso es:",((3._pr*2._pr*exp(2._pr)*epsilon(1._pr))/(5._pr*exp(2._pr)))**(1._pr/3._pr)   !-------
CLOSE(10)                                                                                                              !-------
!------------------------------------------------------------------------------------------------------------------------------

OPEN(UNIT=11,FILE='datos_P1.dat',status='replace')

12 FORMAT(A1,12x,A1,25x,3(A15,23x))
13 FORMAT(3x,4(E17.9,20x))

    WRITE(11,12)'#','h','Deriv.Aprox','Deriv.Exacta','Error_abs'

fp_exacto=df(2._pr)

    DO k=1,30
        h=10._pr**(-k)

        error_abs=abs(fp_exacto-df_3p_m(2._pr,h,f))

        WRITE(11,13) h,df_3p_m(2._pr,h,f), fp_exacto, error_abs
        if(h<eps_maq) EXIT
    END DO

CLOSE(11)

END PROGRAM
