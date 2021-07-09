x = 1 : 100;
y = 1000 : 2000;
dis1 = bivariate(25, 30, 1250, 300, 0);
dis2 = bivariate(75, 30, 1750, 300, 0);
dis3 = bivariate(25, 20, 1250, 200, 0);
dis4 = bivariate(75, 30, 1750, 300, 0);
data = zeros(100,1000);
m = -1.0;
for i = 1 : 100
    for j = 1 :1000
        m = max(m,dis1(i,j));
        m = max(m,dis2(i,j));
    end
end
for i = 1 : 100
    for j = 1 : 1000
        if abs(dis1(i,j)-dis2(i,j)) < 0.005 * m
            data(i,j) = 1;
        end
    end
end
subplot(2,3,1);
imagesc(x,y,dis1);
title('Case 1: Distribution 1');
xlabel('X');
ylabel('Y');
axis xy;
subplot(2,3,2);
imagesc(x,y,dis2);
title('Case 1: Distribution 2');
xlabel('X');
ylabel('Y');
axis xy;
subplot(2,3,3);
imagesc(x,y,data);
title('Case 1: Decision boundaries');
xlabel('X');
ylabel('Y');
axis xy;

data = zeros(100,1000);
m = -1.0;
for i = 1 : 100
    for j = 1 :1000
        m = max(m,dis3(i,j));
        m = max(m,dis4(i,j));
    end
end
for i = 1 : 100
    for j = 1 : 1000
        if abs(dis3(i,j)-dis4(i,j)) < 0.005 * m
            data(i,j) = 1;
        end
    end
end
subplot(2,3,4);
imagesc(x,y,dis3);
title('Case 2: Distribution 1');
xlabel('X');
ylabel('Y');
axis xy;
subplot(2,3,5);
imagesc(x,y,dis4);
title('Case 2: Distribution 2');
xlabel('X');
ylabel('Y');
axis xy;
subplot(2,3,6);
imagesc(x,y,data);
title('Case 2: Decision boundaries');
xlabel('X');
ylabel('Y');
axis xy;
