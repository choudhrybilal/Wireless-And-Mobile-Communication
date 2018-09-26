ht=50;
hr=15;
f=900e6;
c=3e8;
w=c/f;
GR=[1, 0.316, 0.1, 0.01];
Gl=1;
R=-1;
i=1;
figure(1);
d=[1:1:1000000];
l=(d.^2+(ht-hr)^2).^0.5;
r=(d.^2+(ht+hr)^2).^0.5;
p=2*pi/w*(r-1);
dc=4*ht*hr/w;
dn=[dc:1:999995];
for i=1:1:4,
    Gr=GR(i);
    Vec=Gl./1+R*Gr./r.*exp(p*sqrt(-1));
    Pr=(w/4/pi)^2*(abs(Vec)).^2;
    subplot(2,2,i);
    plot(10*log10(d),10*log10(Pr)-10*log10(Pr(1)));
    hold on;
    plot(10*log10(dn), -20*log10(dn));
    plot(10*log10(dn), -40*log10(dn));
end
hold off
