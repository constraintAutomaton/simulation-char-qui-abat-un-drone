y0 = [5 5 2 1 5 7 8 10 9];
options =  optimset('MaxIter',700,'Display','iter','PlotFcns',@optimplotfval,'TolX',0.3,'TolFun',0.3);
x = fminsearch(@(y) simulation_missile(y(1),y(2),y(3),y(4),y(5),y(6),y(7),y(8)),y0,options);
visualisation