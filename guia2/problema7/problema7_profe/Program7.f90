program p7

 use ISO
 use precsn ! definicion de la precision global wp
 use constantes ! usamos este módulo para definir y dar valor a constantes
 use funciones
 use newt_raph

  implicit none

 real( kind = wp )    ::  x , error

 integer                   :: Nmax , ni
 character(80)         :: archivo

 ! Definición de la lista que se leerá posteriormente .
 namelist /parametrosinic/ x0 , epsilx , epsily , M

 ! Lectura de los datos .
 open  (unit = 11, file = "./paramsinic.in" )
 read  (unit = 11, nml = parametrosinic )
 close (unit = 11)

! ------------------- -------------------- --------------
! caso b1 )

 !x0 = 1._wp
 !epsilx = 1.e-9_wp
 !epsily = 1.e-9_wp

 Nmax = 50

 write(*,*) ' b1 ) ------------- '

 write(*,*) " Datos Iniciales : "
 write(*,*) " x0 : " , x0
 write(*,*) "M : " , M

 write(*,*) " epsilx : ", epsilx, " epsilx : ", epsily
 write(* ,*) " F ( x ) : " , fb1(x0)
 write(*,*) " df/dx : ", dfb1dx(x0)
 write(*,*)

 archivo = 'datos/p7-funcion-b1.dat '

 open (21, file = archivo )

 call newton(fb1, dfb1dx , x0 , epsilx , epsily , Nmax , 21 , x , error , ni )


 close (21)

 write(*,*) " x = " ,x , "error = " , error
 write(*,*) ' ni = ' ,ni , "fb1(x) = " , fb1(x)


 ! ------------------- ------------------------------------------------------------
 ! caso b2 )

  open  (unit = 11, file = "./paramsinic.in" )
  read  (unit = 11, nml = parametrosinic )
  close (unit = 11)
!  x0 = 1._wp
!  M = 3.0_wp
!  epsilx = 1.e-9_wp
!  epsily = 1.e-9_wp

  Nmax = 50


  !write(*,*) ' b2 ) ------------------------ '


  !write(*,*) " Datos Iniciales : "
  !write(*,*) "x0 : " , x0
  !write(*,*) "M : " , M

  !write(*,*) " F(x) : " , fb2(x0)
  !write(*,*) " df/dx : " , dfb2dx(x0)


  !archivo = 'datos/p7-funcion-b2.dat'
  !open (22 , file = archivo )


  !call newton ( fb2 , dfb2dx , x0 , epsilx , epsily , Nmax , 22 , x , error , ni )


  !close (22)
  !write(*,*)  " x = " ,x , "error = " , error
  !write(*,*)  ' ni = ' ,ni , "fb2(x) = " , fb2(x)


end program p7
