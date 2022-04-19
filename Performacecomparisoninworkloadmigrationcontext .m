fprintf('analysis comparison of kill/restart and live migration in statefull container \n');
%w=amount of work(cycles)
w=6;
w1=6;
ws=3;
ws1=7;
wj=5.5;
wj1=5.5;
wt=5.2;
wt1=5.6;
%a=random variable depends on app,data-set
%a=rand;
a=0.1576;
a1=0.05;
%b=average startup cost
b=136;
b1=68;
bs=120;
bs1=102;
bj=85;
bj1=64;
bt=95;
bt1=68;
%f=migration point
f=[10 20 30 40 50 60 70];
fs=[10 20 30 40 50 60 70 80 90 100 110 120];
fj=[10 20 30 40 60 80 ];
ft=[10 20 40 60 80 90];
%u/'=rate at which H/H'(host) can process work
u=1.8;
u1=14;
us=1.6;
us1=14;
uj=0.7;
uj1=13.8;
ut=1.3;
ut1=14;
%T/T1=time it takes to run workload at host H/H'
T=0;
T1=0;
%T=((a*wj1)+bj1)/uj1;
T1=((a*w1)+b1)/u1;
Tj=((a*wj1)+bj1)/uj1;
Tt=((a*wt1)+bt1)/ut1;
%yf=additional delay;
yf=50;
y1=10;
%d=the amount of work needed for warming up
d=0.0625;
%------------stream Benchmark--------
fprintf('analysis comparison of kill/restart and live migration in stream Benchmark \n');
%Rc=total time to run container c
for i=1:length(f);
Rc=(((a*f(i)*w)+b)/u)+T1;
fprintf ('Rc = %.1f\n ',Rc);
end
%Rv=vm containing c live migrated to H' instead,then the total time to finish work
for j=1:length(f);
Rv=((((a*f(j)*w)+b)/u))+((((a*(1-f(j))*w1))+b1)/u1)+yf;
fprintf ('Rv = %.1f\n ',Rv);
end
%------------jython Benchmark--------
fprintf('analysis comparison of kill/restart and live migration in jython Benchmark \n');
%Rc=total time to run container c
for i=1:length(fj);
Rc=(((a*fj(i)*wj1)+bj1)/uj)+Tj;
(((a*ft(i)*wt)+bt)/ut)+Tt;
fprintf ('Rc = %.1f\n ',Rc);
end
%Rv=vm containing c live migrated to H' instead,then the total time to finish work
for j=1:length(fj);
Rv=((((a*fj(j)*w)+bj)/u))+((((a*(1-fj(j))*wj1))+bj1)/uj1)+y1;
%((((a*fj(j)*wj)+bj)/uj))+((((a*(1-fj(j))*wj1))+bj1)/uj1)+yf;


fprintf ('Rv = %.1f\n ',Rv);
end
%------------tradesoap Benchmark--------
fprintf('analysis comparison of kill/restart and live migration in tradesoap Benchmark \n');
%Rc=total time to run container c
for i=1:length(ft);
Rc=(((a*ft(i)*wt)+bt)/ut)+Tt;
fprintf ('Rc = %.1f\n ',Rc);
end
 %Rv=vm containing c live migrated to H' instead,then the total time to finish work
for j=1:length(ft);
Rv=((((a*ft(j)*w)+bt)/u))+((((a*(1-ft(j))*wt1))+bt1)/ut1)+y1;
fprintf ('Rv = %.1f\n ',Rv);
end

%----------------------containerless analysis----------------

fprintf('analysis comparison of kill/restart and live migration in stateless container \n');
%Rc=total time to run container c
for k=1:length(fs);
Rcs=((((a*fs(k)*ws)+bs+d)/us))+((((a*(1-fs(k))*ws1))+bs1+d)/us1);
fprintf ('Rcs = %.1f\n ',Rcs);
end
%Rv=vm containing c live migrated to H' instead,then the total time to finish work
for z=1:length(fs);
Rvs=((((a*fs(z)*ws)+bs+d)/us))+((a*(1-fs(z))*ws1)/us1)+yf;
fprintf ('Rvs  %.1f\n ',Rvs);
end
for m=1:length(fs);
Rvs1=((((a1*fs(m)*ws)+bs+d)/us))+((a1*(1-fs(m))*ws1)/us1)+yf;
fprintf ('Rvs1 = %.1f\n ',Rvs1);
end


