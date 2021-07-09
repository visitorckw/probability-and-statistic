data = [72.2 31.9 26.5 29.1 27.3 8.6 22.3 26.5 ...
    20.4 12.8 25.1 19.2 24.1 58.2 68.1 89.2 ...
    55.1 9.4 14.5 13.9 20.7 17.9 8.5 55.4 ...
    38.1 54.2 21.5 26.2 59.1 43.3];
x = mean(data);
y = median(data);
z = trimmean(data,20);
disp(["mean = " x])
disp(["median = " y])
disp(["trimmed mean = " z])
histogram(data,'Normalization','probability')
xlabel("percentage of the families")
ylabel("relative frequency")
disp("comment: trimmed mean 介於 median 跟 mean 之間")
disp("由圖形可以看出資料偏右 所以我們常用 trimmed mean 來取得較可靠的資料")