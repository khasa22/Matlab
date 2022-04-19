fprintf('Gain of adopting Mec cached packet delivery scheme \n');
    Packetsize=[64 2048 4096 8192];
    %for variance we required multiple points so we assume min, max and average
    dm=[10 150 80; 30 150 90; 30 150 90;30 150 90];
    dn=[10 140 75; 30 140 85 ;30 140 85;30 140 85];
    dc=[100 270 160;180 260 200;180 260 200;180 260 200];
    %number of users
    N=[1 1 2 6];
    %number of request from each user
    T=[64 128 128 128];
    Rrrt=0;
    Rvar=0;
    %calculating mean value of arrays
    Mdm=mean(dm,2);
    Mdn=mean(dn,2);
    Mdc=mean(dc,2);
    b=3.9;
    bb=19.4;
    %B=15.55;
    B=mean(15.55);
    %calculating Reducation on average RTT 
    for i=1:length(Packetsize)
        rrt=bb+Mdc(i)-((Mdm(i)+((Mdn(i)/(N(i)*T(i))))));
       
    %percentage form drived by dividing the reduction with 
    %value of % original schem(dc)
        rrt=(rrt/Mdc(i))*100;
        Rrrt(i)=rrt;
    end
       fprintf("reduction on avearge RTT=%.2f\n",Rrrt);     
%calculating variance
Vdm=var(dm,0,2);
Vdn=var(dn,0,2);
Vdc=var(dc,0,2);

% fprintf("Varience of RTT =%.2f\n"',Vdn);
% %calculating RTT varience
 for i=1:length(Packetsize)
     rvar=b+Vdc(i)-(Vdm(i)+(Vdn(i)+(1-(1/(N(i)*T(i))))*(Mdn(i)^2))/(N(i)*T(i)));
     rvar=(rvar/Vdc(i))*100;
     Rvar(i)=rvar;
 end
 fprintf("Varience of RTT=%.2f\n",Rvar);