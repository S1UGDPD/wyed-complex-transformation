% WYE to  DELTA


clear
clc

disp(' ---------------- Z3 -----------------')
disp(' \ \.                             ./ /')
disp('  \   \.                       ./   /')
disp('   \     Za                 Zb     /')
disp('    \       \.           ./       /')
disp('     \        \.      ./         /')
disp('      \          \  /           /')
disp('       Z2         |           Z1')
disp('        \         |          /')
disp('         \        Zc        /')
disp('           \      |       /')
disp('             \    |     /')
disp('               \  |   /')
disp('                 \| /')

% input data
    % Za
    Ra = input('Ra = ');
    Xa = input('Xa = ');
    Za = input('Za = ');
    THETAa = input('THETAa = ');
    % Zb
    Rb = input('Rb = ');
    Xb = input('Xb = ');
    Zb = input('Zb = ');
    THETAb = input('THETAb = ');
    % Zc
    Rc = input('Rc = ');
    Xc = input('Xc = ');
    Zc = input('Zc = ');
    THETAc = input('THETAc = ');

disp(' ')
disp(' ')

% inisialisasi
    % Za
    if Za == 0 & THETAa == 0
        Za = sqrt((Ra)^2 + (Xa)^2);
        THETAa = radtodeg(atan(Xa/Ra));

        fprintf('Za = [(Ra)^2 + (Xa)^2]\n')
        fprintf('Za = [(%.2f)^2 + (%.2f)^2]\n', Ra, Xa)
        fprintf('Za = %.2f\n', Za)
        fprintf('THETAa = arc.tan(Xa / Ra)\n')
        fprintf('THETAa = arc.tan(%.2f / %.2f)\n', Xa, Ra)
        fprintf('THETAa = %.2f\n', THETAa)
        fprintf('\n')        
    elseif Ra == 0 & Xa == 0
        Ra = Za*cos(degtorad(THETAa));
        Xa = Za*sin(degtorad(THETAa));

        fprintf('Ra = Za*cos(THETAa)\n')
        fprintf('Ra = %.2f*cos(%.2f)\n', Za, THETAa)
        fprintf('Ra = %.2f', Ra)
        fprintf('Xa = Za*sin(THETAa)\n')
        fprintf('Xa = %.2f*sin(%.2f)\n', Za, THETAa)           
        fprintf('Xa = %.2f', Xa)
        fprintf('\n')
    end
    % Zb
    if Zb == 0 & THETAb == 0
        Zb = sqrt((Rb)^2 + (Xb)^2);
        THETAb = radtodeg(atan(Xb/Rb));

        fprintf('Zb = [(Rb)^2 + (Xb)^2]\n')
        fprintf('Zb = [(%.2f)^2 + (%.2f)^2]\n', Rb, Xb)
        fprintf('Zb = %.2f\n', Zb)
        fprintf('THETAb = arc.tan(Xb / Rb)\n')
        fprintf('THETAb = arc.tan(%.2f / %.2f)\n', Xb, Rb)
        fprintf('THETAb = %.2f\n', THETAb)
        fprintf('\n')            
    elseif Rb == 0 & Xb == 0
        Rb = Zb*cos(degtorad(THETAb));
        Xb = Zb*sin(degtorad(THETAb));

        fprintf('Rb = Za*cos(THETAb)\n')
        fprintf('Rb = %.2f*cos(%.2f)\n', Zb, THETAb)
        fprintf('Rb = %.2f', Rb)
        fprintf('\n')
        fprintf('Xb = Za*sin(THETAb)\n')
        fprintf('Xb = %.2f*sin(%.2f)\n', Zb, THETAb)
        fprintf('Xb = %.2f', Xb)
        fprintf('\n')
    end        
    % Zc
    if Zc == 0 & THETAc == 0
        Zc = sqrt((Rc)^2 + (Xc)^2);
        THETAc = radtodeg(atan(Xc/Rc));

        fprintf('Zc = [(Rc)^2 + (Xc)^2]\n')
        fprintf('Zc = [(%.2f)^2 + (%.2f)^2]\n', Rc, Xc)
        fprintf('Zc = %.2f\n', Zc)
        fprintf('\n')       
        fprintf('THETAc = arc.tan(Xc / Rc)\n')
        fprintf('THETAc = arc.tan(%.2f / %.2f)\n', Xc, Rc)
        fprintf('THETAc = %.2f\n', THETAc)
        fprintf('\n')
    elseif Rc == 0 & Xc == 0
        fprintf('Rc = Za*cos(THETAc)\n')
        fprintf('Rc = %.2f*cos(%.2f)\n', Zc, THETAc)
        fprintf('Rc = %.2f', Rc)
        fprintf('\n')
        fprintf('Xc = Za*sin(THETAc)\n')
        fprintf('Xc = %.2f*sin(%.2f)\n', Zc, THETAc)
        fprintf('Xc = %.2f', Xc)
        fprintf('\n')

        Rc = Zc*cos(degtorad(THETAc));
        Xc = Zc*sin(degtorad(THETAc));
    end

% eksekusi
    % Z1
    fprintf('Mencari Z1 :\n\n')
    fprintf('      (Za*Zb) + (Zb*Zc) + (Zc*Za)\n')
    fprintf('Z1 = -----------------------------\n')
    fprintf('                  Za\n')
    fprintf('\n')
    fprintf('      (%.2f <%.2f * %.2f <%.2f) + (%.2f <%.2f * %.2f <%.2f) + (%.2f <%.2f * %.2f <%.2f)\n', Za, THETAa, Zb, THETAb, Zb, THETAb, Zc, THETAc, Zc, THETAc, Za, THETAa)
    fprintf('Z1 = -----------------------------------------------------------------------------------------\n')
    fprintf('                                             %.2f <%.2f\n', Za, THETAa)
    fprintf('\n')
    fprintf('      (%.2f <%.2f) + (%.2f <%.2f) + (%.2f <%.2f)\n', Za*Zb, THETAa+THETAb, Zb*Zc, THETAb+THETAc, Zc*Za, THETAc+THETAa)
    fprintf('Z1 = ----------------------------------------------------\n')
    fprintf('                          %.2f <%.2f\n', Za, THETAa)
    fprintf('\n')
    a = Za*Zb*cos(degtorad(THETAa+THETAb));
    b = Za*Zb*sin(degtorad(THETAa+THETAb));
    c = Zb*Zc*cos(degtorad(THETAb+THETAc));
    d = Zb*Zc*sin(degtorad(THETAb+THETAc));
    e = Zc*Za*cos(degtorad(THETAc+THETAa));
    f = Zc*Za*sin(degtorad(THETAc+THETAa));
    fprintf('      (%.2f + j%.2f) + (%.2f + j%.2f) + (%.2f + j%.2f)\n', a, b, c, d, e, f)
    fprintf('Z1 = ------------------------------------------------------------\n')
    fprintf('                              %.2f <%.2f\n', Za, THETAa)
    fprintf('\n')
    fprintf('      %.2f + j%.2f\n', a+c+e, b+d+f)
    fprintf('Z1 = -----------------\n')
    fprintf('        %.2f <%.2f\n', Za, THETAa)
    fprintf('\n')
    g = sqrt((a+c+e)^2 + (b+d+f)^2);
    h = radtodeg(atan((b+d+f)/(a+c+e)));
    fprintf('      %.2f <%.2f\n', g, h)
    fprintf('Z1 = ---------------\n')
    fprintf('       %.2f <%.2f\n', Za, THETAa)
    fprintf('\n')
    
    Z1 = g/Za;
    THETA1 = h-THETAa;
    fprintf('Z1 = %.2f <%.2f\n', Z1, THETA1)
    fprintf('Z1 = %.2f + j%.2f\n', Z1*cos(degtorad(THETA1)), (Z1*sin(degtorad(THETA1))))
    
    fprintf('\n============================================================\n\n')
    
    % Z2
    fprintf('Mencari Z2 :\n\n')
    fprintf('      (Za*Zb) + (Zb*Zc) + (Zc*Za)\n')
    fprintf('Z2 = -----------------------------\n')
    fprintf('                  Zb\n')
    fprintf('\n')
    fprintf('      (%.2f <%.2f * %.2f <%.2f) + (%.2f <%.2f * %.2f <%.2f) + (%.2f <%.2f * %.2f <%.2f)\n', Za, THETAa, Zb, THETAb, Zb, THETAb, Zc, THETAc, Zc, THETAc, Za, THETAa)
    fprintf('Z2 = -----------------------------------------------------------------------------------------\n')
    fprintf('                                             %.2f <%.2f\n', Zb, THETAb)
    fprintf('\n')
    fprintf('      (%.2f <%.2f) + (%.2f <%.2f) + (%.2f <%.2f)\n', Za*Zb, THETAa+THETAb, Zb*Zc, THETAb+THETAc, Zc*Za, THETAc+THETAa)
    fprintf('Z2 = ----------------------------------------------------\n')
    fprintf('                          %.2f <%.2f\n', Zb, THETAb)
    fprintf('\n')
    a = Za*Zb*cos(degtorad(THETAa+THETAb));
    b = Za*Zb*sin(degtorad(THETAa+THETAb));
    c = Zb*Zc*cos(degtorad(THETAb+THETAc));
    d = Zb*Zc*sin(degtorad(THETAb+THETAc));
    e = Zc*Za*cos(degtorad(THETAc+THETAa));
    f = Zc*Za*sin(degtorad(THETAc+THETAa));
    fprintf('      (%.2f + j%.2f) + (%.2f + j%.2f) + (%.2f + j%.2f)\n', a, b, c, d, e, f)
    fprintf('Z2 = ------------------------------------------------------------\n')
    fprintf('                              %.2f <%.2f\n', Zb, THETAb)
    fprintf('\n')
    fprintf('      %.2f + j%.2f\n', a+c+e, b+d+f)
    fprintf('Z2 = -----------------\n')
    fprintf('        %.2f <%.2f\n', Zb, THETAb)
    fprintf('\n')
    g = sqrt((a+c+e)^2 + (b+d+f)^2);
    h = radtodeg(atan((b+d+f)/(a+c+e)));
    fprintf('      %.2f <%.2f\n', g, h)
    fprintf('Z2 = ---------------\n')
    fprintf('       %.2f <%.2f\n', Zb, THETAb)
    fprintf('\n')
    
    Z2 = g/Zb;
    THETA2 = h-THETAb;
    fprintf('Z2 = %.2f <%.2f\n', Z2, THETA2)
    fprintf('Z2 = %.2f + j%.2f\n', Z2*cos(degtorad(THETA2)), (Z2*sin(degtorad(THETA2))))

    fprintf('\n============================================================\n\n')
    
    % Z3
    fprintf('Mencari Z3 :\n\n')
    fprintf('      (Za*Zb) + (Zb*Zc) + (Zc*Za)\n')
    fprintf('Z3 = -----------------------------\n')
    fprintf('                  Zc\n')
    fprintf('\n')
    fprintf('      (%.2f <%.2f * %.2f <%.2f) + (%.2f <%.2f * %.2f <%.2f) + (%.2f <%.2f * %.2f <%.2f)\n', Za, THETAa, Zb, THETAb, Zb, THETAb, Zc, THETAc, Zc, THETAc, Za, THETAa)
    fprintf('Z3 = -----------------------------------------------------------------------------------------\n')
    fprintf('                                             %.2f <%.2f\n', Zc, THETAc)
    fprintf('\n')
    fprintf('      (%.2f <%.2f) + (%.2f <%.2f) + (%.2f <%.2f)\n', Za*Zb, THETAa+THETAb, Zb*Zc, THETAb+THETAc, Zc*Za, THETAc+THETAa)
    fprintf('Z3 = ----------------------------------------------------\n')
    fprintf('                          %.2f <%.2f\n', Zc, THETAc)
    fprintf('\n')
    a = Za*Zb*cos(degtorad(THETAa+THETAb));
    b = Za*Zb*sin(degtorad(THETAa+THETAb));
    c = Zb*Zc*cos(degtorad(THETAb+THETAc));
    d = Zb*Zc*sin(degtorad(THETAb+THETAc));
    e = Zc*Za*cos(degtorad(THETAc+THETAa));
    f = Zc*Za*sin(degtorad(THETAc+THETAa));
    fprintf('      (%.2f + j%.2f) + (%.2f + j%.2f) + (%.2f + j%.2f)\n', a, b, c, d, e, f)
    fprintf('Z3 = ------------------------------------------------------------\n')
    fprintf('                              %.2f <%.2f\n', Zc, THETAc)
    fprintf('\n')
    fprintf('      %.2f + j%.2f\n', a+c+e, b+d+f)
    fprintf('Z3 = -----------------\n')
    fprintf('        %.2f <%.2f\n', Zc, THETAc)
    fprintf('\n')
    g = sqrt((a+c+e)^2 + (b+d+f)^2);
    h = radtodeg(atan((b+d+f)/(a+c+e)));
    fprintf('      %.2f <%.2f\n', g, h)
    fprintf('Z3 = ---------------\n')
    fprintf('       %.2f <%.2f\n', Zc, THETAc)
    fprintf('\n')
    
    Z3 = g/Zc;
    THETA3 = h-THETAc;
    fprintf('Z3 = %.2f <%.2f\n', Z3, THETA3)
    fprintf('Z3 = %.2f + j%.2f\n', Z3*cos(degtorad(THETA3)), (Z3*sin(degtorad(THETA3))))

    
fprintf('\n\n')
fprintf(' ----------- %.2f <%.2f--------------\n', Z3, THETA3)
fprintf(' \\ \\.                             ./ /\n')
fprintf('  \\   \\.                       ./   /\n')
fprintf('   \\  %.2f <%.2f      %.2f <%.2f  /\n', Za, THETAa, Zb, THETAb)
fprintf('    \\       \\.           ./       /\n')
fprintf('     \\        \\.      ./         /\n')
fprintf('      \\          \\  /           /\n')
fprintf('  %.2f <%.2f     |     %.2f <%.2f\n', Z2, THETA2, Z1, THETA1)
fprintf('        \\         |          /\n')
fprintf('         \\    %.2f <%.2f   /\n', Zc, THETAc)
fprintf('           \\      |       /\n')
fprintf('             \\    |     /\n')
fprintf('               \\  |   /\n')
fprintf('                 \\| /\n')
