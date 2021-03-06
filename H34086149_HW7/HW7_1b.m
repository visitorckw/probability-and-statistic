x1 = dis(1);
x2 = dis(2);
x20 = dis(20);85
subplot(1,3,1);
histogram(x1,100,'Normalization','pdf') ;
title('n = 1');
xlabel('Random Variable x1');
ylabel('relative frequency');
hold on;
x1 = [0:0.01:1];
y1 = normpdf(x1,1/2,(1/12)^0.5);
plot(x1,y1);
hold off;
subplot(1,3,2);
histogram(x2,100,'Normalization','pdf') ;
title('n = 2');
xlabel('Random Variable x2');
ylabel('relative frequency');
hold on;
x2 = [0:0.01:2];
y2 = normpdf(x2,2/2,(2/12)^0.5);
plot(x2,y2);
hold off;
subplot(1,3,3);
histogram(x20,100,'Normalization','pdf') ;
title('n = 20');
xlabel('Random Variable x20');
ylabel('relative frequency');
hold on;
x20 = [0:0.01:12];
y20 = normpdf(x20,20/2,(20/12)^0.5);
plot(x20,y20);
hold off;
