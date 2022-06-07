module funcionesp4

    use ISO 
    use precisiones
    
    
    implicit none
    
    contains
    
    function fa(x)
    
    real(pr)                 :: fa
    real(pr),intent(in)      :: x
    
    fa=2._pr/(x-4._pr)
    
    end function

    


    function fb(x)
    
        real(pr)                 :: fb
        real(pr),intent(in)      :: x
        
        fb=(x**2)*log(x)
        
    end function


    
end module
    