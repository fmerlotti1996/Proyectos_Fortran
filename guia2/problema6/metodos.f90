module metodos
    use precisiones
    use funcion_p6
    implicit none

    contains

    subroutine newton(p_inicial, tol_x, tol_y, max_ite)
        implicit none
        integer :: i,n,max_ite
        real(pr), intent(in) :: p_inicial ,tol_x ,tol_y
        real(pr) :: p, p0

        open (unit=11, file='Newton_p6.dat', status='replace')
        write(11,100)
                100 format ('#',4X,'N',T13,'pn',T37,'f(pn)',T54,'error relativo',T77,'error absoluto')
        
        n=0

        p0 = p_inicial

        do i=1,max_ite

            p = p0 - f(p0)/df(p0)

            write(11,110) n, p, f(p0), abs((p-p0)/(p)), abs(f(p0))
                    110 format (1X,I5,4(E20.13,3X))

            if (abs((p-p0)/(p))<tol_x .and. abs(f(p0))<tol_y) exit
            
            n  = n+1   
            
            p0 = p ! el valor de p se lo asigno a p0 y arranco el loop otra vez pero con p en vez de p0

        end do

        write(*,*) '' 
        write(*,*) 'Número de iteraciones realizadas:'
        write(*,120) n
                120 format (I5)
    
        write(*,*) ''        
        write(*,*) 'Aproximación final de pn:'
                write(*,130) p
                        130 format (E20.13)
        
        write(*,*) '' 
        write(*,*) 'Error relativo en x'
            write(*,140) abs((p-p0)/(p)) 
                    140 format (E20.13)      
    
        write(*,*) ''
        write(*,*) 'Valor de f(pn):'
                write(*,150) abs(f(p0))
                        150 format (E20.13)

    end subroutine


    subroutine secante(p1_inicial,p2_inicial,tol_x,tol_y,max_ite)
        implicit none

        integer :: i,n,max_ite
        real(pr), intent(in) :: p1_inicial,p2_inicial ,tol_x ,tol_y
        real(pr) :: p, p0, p1

        open (unit=11, file='Secante_p6.dat', status='replace')
        write(11,100)
        100 format ('#',4X,'N',T13,'pn',T37,'f(pn)',T54,'error relativo',T77,'error absoluto')
                
        n=0

        p0 = p1_inicial
        p1 = p2_inicial

        do i=1,max_ite

            p = p1 - ((f(p1)*(p1-p0))/(f(p1)-f(p0)))

            write(11,110) n, p, f(p1), abs((p-p1)/(p)), abs(f(p1))
                 110 format (1X,I5,4(E20.13,3X))

                if (abs((p-p1)/(p))<tol_x .and. abs(f(p1))<tol_y) exit
                    
                n  = n+1   

                p0 = p1 ! el valor de p1 se lo asigno a p0
                p1 = p  ! el valor de p se lo asigno a p1 

        end do

        write(*,*) '' 
        write(*,*) 'Número de iteraciones realizadas:'
        write(*,120) n
        120 format (I5)
            
        write(*,*) ''        
        write(*,*) 'Aproximación final de pn:'
        write(*,130) p
        130 format (E20.13)
            
        write(*,*) '' 
        write(*,*) 'Error relativo en x'
        write(*,140) abs((p-p1)/(p)) 
        140 format (E20.13)      
            
        write(*,*) ''
        write(*,*) 'Valor de f(pn):'
        write(*,150) abs(f(p1))
        150 format (E20.13)


    end subroutine    

    
    
    
    
    subroutine regula_falsi(a_ini,b_ini,tol,max_ite)
       implicit none


       integer :: i,n,max_ite

       real(pr), intent(in) :: a_ini,b_ini,tol
       real(pr) :: a, b, p

            open (unit=11, file='Regula_Falsi_p6.dat', status='replace')
            write(11,100)
            100 format ('#',4X,'N',T13,'pn',T37,'f(pn)',T59,'error relativo')
             
       n=0     
       a = a_ini 
       b = b_ini

        do i=1,max_ite

            p = a - (f(a)*(b-a))/(f(b)-f(a)) 
            
            write(11,110) n, p, f(p), abs((b-p)/p)
                    110 format (1X,I5,3(E20.13,3X))
            
            if (f(p)==0._pr .and. abs(b-a)<tol) exit
            
            n=n+1
            
            if (sign(1._pr,f(a))*sign(1._pr,f(b))<0) then
                
            b = p
            
            else
            
            a = p
            
            end if
            
        end do


        write(*,*) '' 
        write(*,*) 'Número de iteraciones realizadas:'
        write(*,120) n
        120 format (I5)
            
        write(*,*) ''        
        write(*,*) 'Aproximación final de pn:'
        write(*,130) p
        130 format (E20.13)
            
        write(*,*) '' 
        write(*,*) 'Error relativo'
        write(*,140) abs((b-p)/p)
        140 format (E20.13)      
            
        write(*,*) ''
        write(*,*) 'Valor de f(pn):'
        write(*,150) abs(f(p))
        150 format (E20.13)


    end subroutine    




    subroutine biseccion(a_ini,b_ini,tol)
    
    
        implicit none

    
        integer ::  i, Nmax, m=0
        real(pr), intent(in) :: a_ini,b_ini,tol
        real(pr) :: a, b , p , e_rel , e_abs, fa, fb, fp, N

        a = a_ini
        b = b_ini
         
    
        if (sign(1._pr,f(a))*sign(1._pr,f(b))<0._pr) then
        
            N=log((b-a)/tol)/log(2._pr)
            
            Nmax=ceiling(N)
        
            open (unit=11, file='Bisección_p6.dat', status='replace')
            write(11,100)
                    100 format ('#',4X,'N',T13,'pn',T37,'f(pn)',T54,'error absoluto',T77,'error relativo')

            e_rel=abs((b-a)/(b+a))
            e_abs=abs(b-a)/2._pr
        
            do i=1,Nmax
        
                fa=f(a)
                p = a + (b-a)/2._pr
                fp=f(p)
        
                if (f(p)==0 .and. e_abs<tol .and. e_rel<tol) exit
        
                m = m + 1
        
                if (sign(1._pr,f(a))*sign(1._pr,f(p))>0._pr) then
        
                    a = p
        
                else
        
                    b = p
        
                end if

                e_rel=abs((b-a)/(b+a))
                e_abs=abs(b-a)/2._pr
        
                write(11,110) m, p, fp, e_abs, e_rel
                            110 format (1X,I5,4(E19.12,3X))
        
            end do
        
            write(*,*) 'Aproximación final de pn:'
                write(*,120) p
                        120 format (E19.12)
                write(*,*) ''
                write(*,*) 'Valor de f(pn):'
                write(*,130) fp
                        130 format (E19.12)
                write(*,*) ''
                write(*,'(A34,I0)') 'Número de iteraciones realizadas:', m
        
        end if

    
    end subroutine    
        
        
end module metodos

