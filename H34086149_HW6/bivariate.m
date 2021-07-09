function f = bivariate(Ux,Sx,Uy,Sy,p)
    f = zeros(100,1000);
    for x = 1 : 100
        for y = 1000 : 2000
            z = (x - Ux)^2 / Sx^2 + (y - Uy)^2 / Sy^2 - 2*p*(x-Ux)*(y-Uy)/(Sx*Sy);
            f(x,y-999) = 1 / (2*pi*Sx*Sy*sqrt(1-p^2)) * exp(-z/(2*(1-p^2)));
        end
    end
end