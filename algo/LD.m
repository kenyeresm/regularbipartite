%%%% MH EPSI 0
%%%%
%Metropolis weight model
    W_m = zeros(size(A,1),size(A,1));
    EPSI = 0;
    STUPEN = sum(A,1);
    for i=1:1:size(A,1)
        for j = 1:1:size(A,1)
            if A(i,j)==1 
               W_m(i,j) = 1/(EPSI+max([STUPEN(i) STUPEN(j)]));
            end
        end
        W_m(i,i)=1-sum(W_m(i,:));
    end
    W = W_m;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%