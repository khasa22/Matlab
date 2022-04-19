q = 0.1;
fprintf('q = %.1f\n', q);
for i = 0:1:10
p = 1.0 - q;
z=i;
lambda = z * (q/p);
PS = 1.0;
s = 0;
for k = 0:z
    px = poisspdf(k,lambda);
    s = s + px * (1 - (q/p)^(z - k));
    PS = 1-s;
end
 fprintf("z = %u\t P = %.7f\n", i, PS);
end


