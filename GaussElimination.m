M = input('Enter your matrix\n');
[m,n] = size(M);
A = [M, eye([m, n])];
for k = 1:m
    A(k,k:end) = A(k,k:end)/A(k,k);
    A([1:k-1,k+1:end],k:end) = ...
                    A([1:k-1,k+1:end],k:end) - A([1:k-1,k+1:end],k)*A(k,k:end);
end
out = A(:,n+1:end);
out