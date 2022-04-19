x=10:10:70;
y1=[85.7 91.0 96.2 101.5 106.7 112.0 117.3];
y2=[135.1 139.6 144.2 148.8 153.4 157.9 162.5];
plot(x,y1,'-rx ',x,y2,'-b*','LineWidth',1);
l1=legend('vMotion','Kill/Restart');
set(l1,'FontSize',6,'Fontname', 'Arial');
set(gca,'XLim',[20 100],'YLim',[20 180],'linewidth',1,'fontsize',6,'fontname','Arial');
xlabel('f','FontName','Arial','FontSize',18);
ylabel("Runtime",'FontName','Arial','FontSize',18);

%-------------------jython benchmark--------
% x=[10 20 30 40 60 80 ];
% y1=[108.5 120.9 133.3 145.7 170.4 195.2];
% y2=[66.5 71.2 75.8 80.4 89.7 98.9];
% plot(x,y1,'-rx ',x,y2,'-b*','LineWidth',1);
% l1=legend('vMotion','Kill/Restart');
% set(l1,'FontSize',6,'Fontname', 'Arial');
% set(gca,'XLim',[20 100],'YLim',[20 180],'linewidth',1,'fontsize',6,'fontname','Arial');
% xlabel('f','FontName','Arial','FontSize',18);
% ylabel("Runtime",'FontName','Arial','FontSize',18);

%----------------------tradesoap Benchmark--------------
% x=[10 20 40 60 80 90];
% y1=[84.3 90.6 103.2 115.8 128.4 134.7];
% y2=[72.3 76.9 86.2 95.4 104.7 109.3];
% plot(x,y1,'-rx ',x,y2,'-b*','LineWidth',1);
% l1=legend('vMotion','Kill/Restart');
% set(l1,'FontSize',6,'Fontname', 'Arial');
% set(gca,'XLim',[20 100],'YLim',[20 180],'linewidth',1,'fontsize',6,'fontname','Arial');
% xlabel('f','FontName','Arial','FontSize',18);
% ylabel("Runtime",'FontName','Arial','FontSize',18);
%----------------------Stateless workload--------------
% x=10:10:120;
% y1=[84.3 86.7 88.9 91.1 93.2 95.4 97.6 99.7 101.9 104.1 106.2 108.4];
% y2=[127.3 129.5 131.6 133.8 136.0 138.1 140.3 142.5 144.6 146.8 149.0 155.1];
% y3=[120.8 126.4 127.1 127.8 128.5 129.2 129.9 130.6 131.3 131.9 132.6 133.3];
% plot(x,y1,'-rx ',x,y2,'-b*',x,y3,'g-','LineWidth',1);
% l1=legend('vMotion(1gbps)','Kill/Restart','vMotion(500mbps)');
% set(l1,'FontSize',6,'Fontname', 'Arial');
% set(gca,'XLim',[20 130],'YLim',[20 180],'linewidth',1,'fontsize',6,'fontname','Arial');
% xlabel('f','FontName','Arial','FontSize',18);
% ylabel("Runtime",'FontName','Arial','FontSize',18);