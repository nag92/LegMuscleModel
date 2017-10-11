function muscle = makeMuscle(d, k,fatigue, dampening )
% d, pulse_width, [D_sat, D_thr]
% k, curve fitting, [k_sat, k_thr]
% t_fatigue, fatigue parameters, [ fit_min, T_fat, T_rec]
% dampening, dampinger_parameters,[K_hip, K_knee,k_ankle]
    
muscle = struct('d', d,...
                'k', k,...
                'fatigue', fatigue,...
                'dampening', dampening);
    
    
%     muscle = struct(field(1), d,...
%                     field(2), k,...
%                     field(3), t_fatigue,...
%                     field(4), dampening);
%     


end