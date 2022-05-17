module funciones

    use ISO 
    use precisiones
    
    implicit none
    
    contains
    
    function f(x)
    real(pr)                :: f
    real(pr),intent(in)     :: x
    
    f=1._pr/(1._pr + 25._pr*x**2)
    
    end function f
    
    
    
end module
    