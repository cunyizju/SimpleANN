module ANN
   integer:: aaa 
    contains
    function a_norm(a)
        dimension :: a(3), a_norm(3)
        v_min = minval(a)
        v_max = maxval(a)
        a_norm = -1.d0 + 2.d0 * (a - v_min) / (v_max - v_min)
    end function a_norm
    
    function a_act(a,n)
        dimension :: a(n), a_act(n)
        a_act = (1.d0 - exp(2.d0*a)) / (1.d0 + exp(2.d0*a))
    end function a_act
    
end module ANN