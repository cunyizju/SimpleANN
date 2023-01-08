module ANNdata
    dimension wi(3,4), wd1(4,4), wo(4,1), b(9,1)
    wi = reshape((/1.d0,1.d0,1.d0,&
                 & 1.d0,1.d0,1.d0,&
                 & 1.d0,1.d0,1.d0,&
                 & 1.d0,1.d0,1.d0/),(/3,4/))
    wd1 =reshape((/1.d0,1.d0,1.d0,1.d0,&
                 & 1.d0,1.d0,1.d0,1.d0,&
                 & 1.d0,1.d0,1.d0,1.d0,&
                 & 1.d0,1.d0,1.d0,1.d0,&
                 & 1.d0,1.d0,1.d0,1.d0/),(/4,4/)) 
    wo = reshape((/1.d0,1.d0,1.d0,1.d0/),(/4,1/))
    
    b  = reshape((/1.d0,1.d0,1.d0,1.d0,1.d0,1.d0,1.d0,1.d0,1.d0/),(/9,1/))
end module ANNdata