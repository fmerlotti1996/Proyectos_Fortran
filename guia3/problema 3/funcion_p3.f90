module funcion

    use ISO 
    use precsn
    
    implicit none
    
    contains
    
    function f(x)
    real(pr)                :: f
    real(pr),intent(in)     :: x
    
    f=cos(x)
    
    end function f
    
    
    
end module
    