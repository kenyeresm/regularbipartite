%Best Constant weight model
    W_b = zeros(size(A,1),size(A,1));
    STUPEN = sum(A,1);
    L = -A;
    for i=1:size(A,1)
        L(i,i) = sum(A(i,:));
    end 
    EIGEN_NUMBER = eig(L);
    %
    ALFA = 2/(EIGEN_NUMBER(2)+EIGEN_NUMBER(end));
    for i=1:1:size(A,1)
        for j = 1:1:size(A,1)
            if A(i,j)==1 
               W_b(i,j) = ALFA; 
            end
        end
        W_b(i,i)=1-STUPEN(i)*ALFA;
    end
    W = W_b;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%