function [t_next,y_next] = Adaptive_Eulers_Method(f,t,y,~)
    global h_glob
    global eps_glob
    
    [~,y_eul] = Eulers_Method(f,t,y,h_glob);
    [~,y_imp] = Eulers_Improved_Method(f,t,y,h_glob);
    d1 = y_imp - y_eul;                  %%finding local error
    %%adaptive method if error is outside acceptable range
    while d1 > eps_glob
        h_glob = round(sqrt(eps_glob/d1)*h_glob,2); %%new h calculation
        y_eul = Eulers_Method(f,t,y,h_glob);
        y_imp = Eulers_Improved_Method(f,t,y,h_glob);
        d1 = abs(y_eul - y_imp);
    end
    y_next = y_imp;
    t_next = t + h_glob;
end