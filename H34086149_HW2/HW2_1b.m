data = zeros(1,1000);
for i = 1:1000
    temp = simulate(0.02, 10000);
    for j = 1:10000
        if temp(j) == 1
            data(i) = data(i) + 1;
        end
    end
end
histogram(data,'Normalization','probability')
xlabel("defective number")
ylabel("relative frequency")
save('HW2_1b.mat','data');