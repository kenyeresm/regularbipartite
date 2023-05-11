%upload INI states
load('C:\Users\Martin\Desktop\CODES\INI.mat')
%set precision of P - change
P = 0.01;
%upload GRAPHS FROM CODES/GRAPHS
%%%% each file consits of 100 uniquie topologies that are stored in
%%%% BR_30_d_2/BR_30_d_3/BR_30_d_4... (2,3,4 represents d) - they consist of a 30x30x100 
%%%% field, where (30,30,1) is the first topology, the second one is (30,30,2), etc.
load('C:\Users\Martin\Desktop\CODES\graphs\BR_30_d_2.mat')
A = BR_30_d_2(:,:,1)%change 1 to 2,3,4,...
%%%% 
%%%%
%CREATE WEIGHT MATRIX
run('C:\Users\Martin\Desktop\CODES\algo\BC.m') %choose file from folder ALGO to select the algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k = 0; %label of iteration
x = INI(1:size(A,1)); %vector of inner states

while abs(max(x(:,k+1))-min(x(:,k+1)))>=P %algoritm with stopping criterion
      x(:,k+2) = W*x(:,k+1);
      k = k + 1;
end

k%convergence rate in corresponding graph