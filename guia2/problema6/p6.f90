program p6 
    use precisiones
    use metodos
    use funcion_p6

implicit none

integer :: m, n, max_ite = 10000
real(pr), parameter:: pi=4*atan(1._pr)
real(pr) :: p0 = 0._pr, p1 = pi*0.5_pr, tol_x = 1e-5 , tol_y = 1e-5 , a=0._pr , b=pi/2._pr , tol = 1e-5


write(*,*)'Ingrese el metodo que desea utilizar:'
write(*,*)'1. Secante'
write(*,*)'2. Regula Falsi'
write(*,*)'3. Bisección'
write(*,*)'4. Newton'
read(*,*) m

if (m == 1) then
            
    call newton(p0, tol_x, tol_y, max_ite)

else if (m == 2) then
    
    call regula_falsi(a,b,tol, max_ite)


else if (m == 3) then
    
    call biseccion(a,b,tol)

else if ( m == 4) then 
            
    call secante(p0, p1, tol_x,tol_y, max_ite)

end if

end program p6
