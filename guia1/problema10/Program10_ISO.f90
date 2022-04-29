 program P10

 use ISO 
 use precsn ! usamos este módulo para definir la precisión deseada 'wp '
 use constantes ! usamos este módulo para definir y dar valor a constantes
 use funciones ! usamos este módulo para definir las funciones

 implicit none

 real(pr) :: t, delta_t , t_fin 
 integer :: N, j

 ! Lectura de parametros -------------------------------------------------
 ! Los datos iniciales son leídos de un archivo.
 ! Esto tiene la ventaja de que si uno quiere cambiar los datos iniciales ,
 ! no hace falta compilar el problema nuevamente. Además, si se hace
 ! por teclado, uno puede cometer errores involuntarios.

 ! Definición de la lista que se leerá posteriormente .
 namelist /parametrosinic2/ x0 , y0 , ang , v0  
                    

 ! Lectura de los datos .
 open  (unit = 11, file = "./datosent/paramsinic.in" )
 read  (unit = 11, nml = parametrosinic2 )
 close (unit = 11)

 ! Zona de testeo de las precisiones disponibles :
 write(*,*) ' Precisiones disponibles :'
 write(*,*) ' s_precision = ', rs             
 write(*,*) ' d_precision = ', rd            
 write(*,*) ' q_precision = ', rl
 write(*,*) ' wp = ', pr

 ! Monitoreo de los datos iniciales y valor de constantes
 write(*,*) ''
 write(*,*) 'Valores iniciales y constantes :'
 write(*,*) ' x0 = ', x0
 write(*,*) ' y0 = ', y0
 write(*,*) 'ang = ', ang
 write(*,*) ' v0 = ', v0
 write(*,*) ' g = ', g
 write(*,*) ' pi = ', pi ! Este es el valor dado por la máquina con
 ! la precisi ón elegida
 write (*,*) ' pi = '," 3.1415926535897932384626433832795028841971 "

 ! -------------------------------------------------------------------
 !Comienzo del cómputo principal
 
 v0x = v0 * cos(ang*pi/180._pr)
 v0y = v0 * sin(ang*pi/180._pr)

 N = 600
 t_fin = 2._pr* v0y/g
 delta_t = t_fin /(N -1)

 write(*,*) ''
 write(*,*) ' ------------------------------------- '
 write(*,*) ''

 write (*,*) 'Tests de las funciones :'
 write (*,*) ' x(0.) = ', x(0._pr )
 write (*,*) ' y(0.) = ', y(0._pr )
 write (*,*) 'vx(0.) = ', vx(0._pr )
 write (*,*) 'vy(0.) = ', vy(0._pr )
 write (*,*) ''
 write (*,*) ' x(1.) = ', x(1._pr)
 write (*,*) ' y(1.) = ', y(1._pr)
 write (*,*) 'vx(1.) = ', vx(1._pr)
 write (*,*) 'vy(1.) = ', vy(1._pr)
 write (*,*) ''

 write (*,*)  't_fin = ', t_fin
 write (*,*) ' x(t_fin) = ', x(t_fin)
 write (*,*) ' y(t_fin) = ', y(t_fin)
 write (*,*) 'vx(t_fin) = ', vx(t_fin)
 write (*,*) 'vy(t_fin) = ', vy(t_fin)
 write (*,*) ''

 ! Se abre un archivo para guardar datos de salida. Notar el subdirectorio .
 open (unit = 110 , file = "./datos/p10.dat")
 write (110 , '(a ,10x,a ,20x,a ,20x,a ,20x,a ,20x,a)') "#","t","x","y","vx","vy"

 t= 0._pr
 do j=1,N
 write (110,505) j, t, x(t), y(t), vx(t), vy(t)
 t = t + delta_t
 end do

close (unit = 110)

 505 format (1X,I4,1X,5(1X,ES20.13) ) ! Estamos usando más precisión que la
 ! requerida por si se desea testear el
 ! problema con más precisión.

 end program P10
