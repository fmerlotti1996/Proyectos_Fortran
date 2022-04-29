program p16
    implicit none

    
    integer(8) :: i
    integer, parameter :: pr=kind(1.d0)
    real(pr), parameter :: pi = 4._pr*atan(1._pr)

    real (pr) :: pn0, pn1


    pn0 = 3.
    pn1 = 2*(sqrt(3.))


    write(*,*) '   lados       pn0       pn1        pi       (pn1-pn0)       (pn1-pi)   '



    write(*,'(I9,3(2x,F19.16),2x,2(1x,E13.6))') 6, pn0, pn1 , pi , (pn1-pn0) , (pn1-pi)

    do i=1,20

        pn1 = (2*pn0*pn1)/(pn0 + pn1)

        pn0 = sqrt(pn1*pn0)

      


      write(*,'(I9,3(2x,F19.16),2x,2(1x,E13.6))') (6*2**i), pn0, pn1 , pi , (pn1-pn0) , (pn1-pi)
    end do

    write(*,*) 'El perimetro inscripto pn es : ' , pn0

    
    write(*,*) 'El perimetro circunscripto Pn es: ', pn1

end program
