module funcion_p6
    use precisiones
    implicit none

    contains
    function f(x)
                
        real(pr), intent(in):: x
        real(pr):: f
        
        f= x - cos(x)
        
        end function
        
        function df(x)
        
        real(pr), intent(in):: x
        real(pr):: df
        
        df= 1._pr + sin(x) 
        
        end function

end module
