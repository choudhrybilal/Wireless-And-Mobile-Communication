

N = [3, 9, 13, 19, 27];
a = 2;
for i= 1:length(N)
    %CI(i) = 10*log10(((sqrt(3*N(i)))^a)/6);   
    CI(i) = (2*5*log10(3)) - (10*log10(6)) + (2*5*log10(N(i)))
end
plot(N, CI);
hold on
a = 3;
for i= 1:length(N)
    CI(i) = (a*5*log10(3)) - (10*log10(6)) + (a*5*log10(N(i)))
end
plot(N, CI, '-r*');
hold on
a = 4;
for i= 1:length(N)
       CI(i) = (a*5*log10(3)) - (10*log10(6)) + (a*5*log10(N(i)))
end
plot(N, CI, '-0');
hold on
a = 5;
for i= 1:length(N)
        CI(i) = (a*5*log10(3)) - (10*log10(6)) + (a*5*log10(N(i)))
end
plot(N, CI, '-x');
hold on




