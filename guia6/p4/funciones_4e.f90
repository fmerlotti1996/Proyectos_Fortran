module funciones_4e

    use ISO 
    use precsn 
    
    contains 
    
    function derivada_t(t,y)
    
    real(pr),dimension(1:2)            :: derivada_t 
    real(pr),intent(in)                :: t
    real(pr),dimension(1:2),intent(in) :: y
    real(pr),parameter                 :: g=10._pr , l=1._pr
    
    derivada_t(1)= y(2)
    derivada_t(2)= -(g/l) * y(1)
    
    end function 
    
    function y_exacta(t) 
    
        real(pr)              :: y_exacta
        real(pr),intent (in)  :: t
        
        
        y_exacta = (0.01_pr)*cos(sqrt(10._pr)*t)
        
        
    end function 
    
    end module
    