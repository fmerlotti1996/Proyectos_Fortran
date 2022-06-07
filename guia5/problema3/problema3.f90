PROGRAM problema3

    USE precisiones
    USE funcionesp3
    USE integracion

    IMPLICIT NONE

    REAL(pr),parameter    :: a0=0._pr, b0=1._pr
    REAL(pr)              :: integral_it1, integral_is1, integral_ipm1
    REAL(pr)              :: integral_it2, integral_is2, integral_ipm2
    REAL(pr)              :: h1, h2, integ_exacta, qs, qt, qpm
    REAL(pr)              :: error_t1,error_s1,error_pm1,error_t2,error_s2,error_pm2
    INTEGER               :: n1,n2

    !"El intervalo de integracion es (a0,b0)"

    integ_exacta = -(f(1._pr)-f(0._pr))

    !----------------------------h1=0.05--------------------------------

    h1 = 0.05_pr
    n1 = int((b0-a0)/h1)

    CALL punto_medio (n1,a0,b0,integral_ipm1)
    CALL trapecio (n1,a0,b0,integral_it1)
    CALL simpson  (n1,a0,b0,integral_is1)

    WRITE(*,*)'----------------------h1=0.05-----------------------------'
    WRITE(*,*)'It_punto_medio=',integral_ipm1
    WRITE(*,*)'It_trapecio=',integral_it1
    WRITE(*,*)'It_simpson=',integral_is1

   !------------------------- h2=0.025 ------------------------------
    h2=0.025_pr
    n2=int((b0-a0)/h2)

    CALL punto_medio (n2,a0,b0,integral_ipm2)
    CALL trapecio (n2,a0,b0,integral_it2)
    CALL simpson  (n2,a0,b0,integral_is2)

    WRITE(*,*)'----------------------h2=0.025-----------------------------'
    WRITE(*,*)'It_punto_medio=',integral_ipm2
    WRITE(*,*)'It_trapecio=',integral_it2
    WRITE(*,*)'It_simpson=',integral_is2



    error_pm1=integ_exacta-integral_ipm1
    error_pm2=integ_exacta-integral_ipm2
    error_t1=integ_exacta-integral_it1
    error_t2=integ_exacta-integral_it2
    error_s1=integ_exacta-integral_is1
    error_s2=integ_exacta-integral_is2


    qpm=error_pm1/error_pm2
    qt=error_t1/error_t2
    qs=error_s1/error_s2


    WRITE(*,*)'----------------Valor exacto de la integral--------------'
    WRITE(*,*)'I=',integ_exacta

    WRITE(*,*)'--------------Cociente de precision-----------------------'
    WRITE(*,*)'Qpm=',qpm
    WRITE(*,*)'Qs=',qs
    WRITE(*,*)'Qt=',qt


END PROGRAM problema3 


