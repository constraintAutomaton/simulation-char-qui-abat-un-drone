%% init
Re_ref =0;
%% trajectoire en 3d
figure
plot3(resultat_pos_cible_x.data,resultat_pos_cible_y.data,resultat_pos_cible_z.data)
hold on
plot3(resultat_pos_missile_x.data,resultat_pos_missile_y.data,resultat_pos_missile_z.data)

title('Trajectoire du missile et de la cible')
xlabel('position x (m)') 
ylabel(' position y (m)') 
zlabel('position z( m)')
legend({'cible','missile'},'Location','NorthEastOutside')
%% trajectoire en 2d
figure 
plot(resultat_pos_cible_x)
hold on
plot(resultat_pos_missile_x)
title('Trajectoire du missile et de la cible en X en fonction du temps')
ylabel('position x (m)') 
xlabel('temps (s)')
legend({'cible','missile'},'Location','NorthEastOutside')

figure 
plot(resultat_pos_cible_y)
hold on
plot(resultat_pos_missile_y)
title('Trajectoire du missile et de la cible en y en fonction du temps')
ylabel('position y (m)') 
xlabel('temps (s)')
legend({'cible','missile'},'Location','NorthEastOutside')

figure 
plot(resultat_pos_cible_z)
hold on
plot(resultat_pos_missile_z)
title('Trajectoire du missile et de la cible en z en fonction du temps')
ylabel('position z (m)') 
xlabel('temps (s)')
legend({'cible','missile'},'Location','NorthEastOutside')
%% Re
figure
plot(Re)
title('Reynolds en fonction du temps')
ylabel('Re') 
xlabel('temps (s)')
%% temps
temps_impact = resultat_pos_cible_z.time(index_temps);
fprintf("le temps d'impacte est de %f seconde\n la position du char doit être de %f m en x et %f m en y \n la vitesse du char doit être de %f m/s en x et %f m/s en y\n l'accélération du char en x est de %f m/s^2 et en y de %f m/s^2\n l'angle initial du canon horizontal est de %f rad et de %f rad vertical\n",temps_impact,x(1),x(2),x(5),x(6),x(7),x(8),x(3),x(4));
