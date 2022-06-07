module rk4_sys_1

    use ISO 
    use precsn 
    use funciones 
    
    contains 
    
    subroutine rk4_multiple_1(t,h,w,w_h)
    
    real(pr),intent(in)                    :: t,h
    real(pr),dimension(1:2),intent(in)     :: w
    real(pr),dimension(1:2),intent(out)    :: w_h 
    real(pr),dimension(size(w))            :: k1,k2,k3,k4
    
    k1=h*derivada_t( t, w )
    k2=h*derivada_t( t + 0.5_pr*h, w + 0.5_pr*k1 )
    k3=h*derivada_t( t + 0.5_pr*h, w + 0.5_pr*k2 )
    k4=h*derivada_t( t + h, w + k3 )
    
    w_h= w + (k1 + 2._pr*k2 + 2._pr*k3 + k4)/6._pr
    
    end subroutine 
    
    end module 
    