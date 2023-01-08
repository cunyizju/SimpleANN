program main
    use ANN
    dimension v_input(3),wi(3,4), wd1(4,4), wo(4), b(9), &
    & o1(4),o2(4), v_input_norm(3)
    ! v_input = reshape((/1.d0,1.d0,1.d0/),(/3,1/))
    v_input(1) = 1.d0
    v_input(2) = 0.d0
    v_input(3) = 1.d0
    
    v_input_norm = a_norm(v_input)
    
    wi = reshape((/   1.d0,1.d0,1.d0,&
                    & 1.d0,1.d0,1.d0,&
                    & 1.d0,1.d0,1.d0,&
                    & 1.d0,1.d0,1.d0/),(/3,4/))
    wd1 =reshape((/1.d0,1.d0,1.d0,1.d0,&
                    & 1.d0,1.d0,1.d0,1.d0,&
                    & 1.d0,1.d0,1.d0,1.d0,&
                    & 1.d0,1.d0,1.d0,1.d0,&
                    & 1.d0,1.d0,1.d0,1.d0/),(/4,4/)) 
    wo = reshape((/1.d0,1.d0,1.d0,1.d0/),(/4/))
    
    b  = reshape((/1.d0,1.d0,1.d0,1.d0,1.d0,1.d0,1.d0,1.d0,1.d0/),(/9/))
    
    ! forward feedback
    o1=a_act(matmul(v_input_norm,wi) + b(1:4), 4)
    o2=a_act(matmul(o1,wd1)+b(5:8), 4)
    ! o =a_act(dot_product(o2,wo) +b(9), 1)

end program
    
