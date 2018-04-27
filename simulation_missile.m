function [ delta_missile_cible_min] = simulation_missile( pos_char_x, pos_char_y,theta_cannon,phi_cannon, vx_char, vy_char,ax_char,ay_char)
%permet d'ajuster les paramètres d'entrée de la simulation.
variable;

assignin('base', 'pos_ini_char_x', pos_char_x);
assignin('base', 'pos_ini_char_y', pos_char_y);

assignin('base', 'v_ini_char_x', vx_char);
assignin('base', 'v_ini_char_y', vy_char);

assignin('base', 'a_char_x', ax_char);
assignin('base', 'a_char_y', ay_char);

assignin('base', 'theta_ini_canon', theta_cannon);
assignin('base', 'phi_ini_canon', phi_cannon);

simOut = sim('simulation_finale.slx','ReturnWorkspaceOutputs','on');
assignin('base', 'simOut', simOut);

assignin('base', 'resultat_pos_cible_x',simOut.get('pos_cible_x'));
assignin('base', 'resultat_pos_cible_y', simOut.get('pos_cible_y'));
assignin('base', 'resultat_pos_cible_z', simOut.get('pos_cible_z'));

assignin('base', 'resultat_pos_missile_x', simOut.get('pos_missile_x'));
assignin('base', 'resultat_pos_missile_y', simOut.get('pos_missile_y'));
assignin('base', 'resultat_pos_missile_z', simOut.get('pos_missile_z'));

distance_x = simOut.get('pos_cible_x').data - simOut.get('pos_missile_x').data;
distance_y =simOut.get('pos_cible_y').data - simOut.get('pos_missile_y').data;
distance_z = simOut.get('pos_cible_z').data - simOut.get('pos_missile_z').data;
assignin('base', 'distance_x', distance_x);
assignin('base', 'distance_y', distance_y);
assignin('base', 'distance_z', distance_z);

[delta_missile_cible_min,t] = min(sqrt(distance_x.^2+distance_y.^2+distance_z.^2));
assignin('base', 'index_temps', t);
assignin('base', 'Re', simOut.get('Re'));


end

