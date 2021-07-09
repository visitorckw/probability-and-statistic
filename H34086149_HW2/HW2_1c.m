data = zeros(1,10);
for ctr = 1:10
    b1 = 0;
    b2 = 0;
    b3 = 0;
    temp1 = simulate(0.02,30000);
    temp2 = simulate(0.03,45000);
    temp3 = simulate(0.02,25000);
    for i = 1:30000
        if temp1(i) == 1
            b1 = b1 + 1;
        end
    end
    for i = 1:45000
        if temp2(i) == 1
            b2 = b2 + 1;
        end
    end
    for i = 1:25000
        if temp3(i) == 1
            b3 = b3 + 1;
        end
    end
    data(ctr) = b3/(b1+b2+b3)
end
save('HW2_1c.mat', 'data');