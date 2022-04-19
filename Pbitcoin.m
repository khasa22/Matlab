fprintf('P < 0.001 \n');
for q = 0.1:0.05:0.45
 for i = 0:1:400  
   % PS = prob(q,i);
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
    if PS < 0.001
       fprintf("q = %.2f  z = %u\n", q, i);
       break;
    end
 end
end