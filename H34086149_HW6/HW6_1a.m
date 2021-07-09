x = 1:100
y = 1000:2000
subplot(2,2,1);
imagesc(x,y,bivariate(50, 20, 1500, 200, 0));
title('Distribution 1');
xlabel('X');
ylabel('Y');
axis xy;
subplot(2,2,2);
imagesc(x,y,bivariate(50, 20, 1500, 200, 0.3));
title('Distribution 2');
xlabel('X');
ylabel('Y');
axis xy;
subplot(2,2,3);
imagesc(x,y,bivariate(50, 20, 1500, 200, 0.8));
title('Distribution 3');
xlabel('X');
ylabel('Y');
axis xy;
subplot(2,2,4);
imagesc(x,y,bivariate(50, 20, 1500, 200, -0.8));
title('Distribution 4');
xlabel('X');
ylabel('Y');
axis xy;