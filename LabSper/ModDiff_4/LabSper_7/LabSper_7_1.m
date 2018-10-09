f = @(x,y) [cos(x^2); sin(x^2)];

y0=[0, 0];
opz= odeset("MaxStep", 1e-2);
[x,y] = ode45(f,[0, 100],y0, opz);
plot(y(:,1),y(:,2))
%codice per capire le coordinate dei punti asintotici
%hold on
%plot(y(:,1),0.625*ones(length(y(:,1)),1))
%plot(0.625*ones(length(y(:,2)),1),y(:,2))
print('-djpeg','7_1_a.jpeg')
clf

[x,y] = ode45(f,[-100, 0],y0, opz);
plot(y(:,1),y(:,2))
print('-djpeg','7_1_b.jpeg')

%NOTE: notiamo che le equazioni sono invarianti per
%cambio di segno di x.
%Le due curve sono simmetriche rispetto al punto 
%medio del segmento che congiunge i due estremi 
%della curva. In particolare graficamente si osserva
%che i due estremi sono circa (0,0) e (0.625, 0.625)