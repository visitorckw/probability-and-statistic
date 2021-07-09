function arr = dis(n)
    arr = zeros(1,10^6);
    for i = 1 : n
        for j = 1 : 10^6
            arr(j) = arr(j) + rand();
        end
    end
end