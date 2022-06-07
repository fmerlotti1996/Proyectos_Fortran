module funcion_p5

    use ISO 
    use precsn_dp
    !use precsn_sp
    !use precsn_large
    
    implicit none
    
    contains
    
    function fa(x)
    
    real(pr)                 :: fa
    real(pr),intent(in)      :: x
    
    fa=exp(-x)
    
    end function

    
end module
    