%AC MAXIMUM DEGREE
    W_AC_MD = zeros(size(A,1),size(A,1));
    EPSI = 0.4*1/max(sum(A,1)); 
    for i=1:1:size(A,1)
        for j = 1:1:size(A,1)
            if A(i,j)==1 
               W_AC_MD(i,j) = EPSI;
            end
        end
        W_AC_MD(i,i)=1-sum(W_AC_MD(i,:));
    end
    W = W_AC_MD;