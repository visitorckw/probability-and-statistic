function output = simulate(rate, num)
output = zeros(1,num);
for i = 1 : num
    if rand() < rate
        output(i) = 1;
    end
end
        
