function C=Coriolis(M,v)%% Textbook Page 27
    v1=v(1:3);
    v2=v(4:6);
    M_11=M(1:3,1:3);
    M_12=M(1:3,4:6);
    M_21=M(4:6,1:3);
    M_22=M(4:6,4:6);
    C_11=zeros(3,3);
    C_12=-S(M_11*v1+M_12*v2);
    C_21=-S(M_11*v1+M_12*v2);
    C_22=-S(M_21*v1+M_22*v2);
    C=[C_11 C_12 ; C_21 C_22];