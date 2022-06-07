MODULE integracion

    USE precisiones
    USE funcionesp4
    
    IMPLICIT NONE
    
    CONTAINS
    
    
    !---------------------------------------------  PUNTO MEDIO --------------------------------------------
    
    subroutine punto_medio(n,a,b,I_PuntoMedio,f)

        implicit none 
        
        real(pr),intent(in)         :: a,b
        real(pr),intent(out)        :: I_PuntoMedio
        integer,intent(in)          :: n
        real(pr)                    :: h,suma_pm,f
        integer                     :: i
        real(pr), dimension(0:n+1)    :: x
        
        h=(b-a)/real(n+2,pr)
        suma_pm=0._pr 
        
        do i=0,n
        
            x(i)=a+(i+1)*h
        
        end do
        
        do i=0,n/2
        
            suma_pm = suma_pm + f(x(2*i))
        
        end do 
        
        I_PuntoMedio = suma_pm*2._pr*h 
        
        
        end subroutine punto_medio
    
    
    !---------------------------------------- TRAPECIO ------------------------------
    
        subroutine trapecio(n,a,b,I_Trapecio,f)

            implicit none 
            
            real(pr),intent(in)         :: a,b
            real(pr),intent(out)        :: I_Trapecio
            integer,intent(in)          :: n
            real(pr)                    :: h,suma_t,f
            integer                     :: i
            real(pr), dimension(0:n)    :: x
            
            h=(b-a)/real(n,pr)
            suma_t=0._pr 
            
            do i=0,n
            
                x(i)=a+i*h
            
            end do
            
            do i=1,n-1            !No agarro los puntos del extremo
            
                suma_t = suma_t + f(x(i))
            
            end do 
            
            I_Trapecio = h*((f(a)+f(b))*0.5_pr + suma_t)
            
            
            end subroutine trapecio
    
    !--------------------------------------------  SIMPSON ----------------------------------------
    
    SUBROUTINE simpson (n,a,b,is,f)

    IMPLICIT NONE
    REAL(pr),INTENT(in)         ::a,b
    REAL(pr),INTENT(out)        ::is
    INTEGER,INTENT(in)          ::n
    REAL(pr)                    ::h,suma_par,suma_impar,f
    INTEGER                     ::j,k,i
    real(pr), dimension(0:n)    :: x

    h=(b-a)/real(n,pr)
    
            IF (mod(n,2)/=0._pr) THEN
                WRITE(*,*) 'Error en Simpson, el nº de nodos,n, debe ser par'
                STOP
            ENDIF
    
    DO i=0,n
        
    x(i)=a+i*h
            
    END DO

    !suma de terminos pares

    suma_par=0._pr
    
            DO j=1,(n/2)-1
                
                suma_par=suma_par + f(x(2*j))
            ENDDO
    
    !suma de terminos impares

    suma_impar=0._pr
    
            DO k=1,n/2
                
                suma_impar=suma_impar + f(x(2*k-1))
            ENDDO
            
    is=(h/3._pr)*(f(a) + f(b) + 4._pr*suma_impar + 2._pr*suma_par)
    
    
    
    END SUBROUTINE simpson
    
    END MODULE integracion
    