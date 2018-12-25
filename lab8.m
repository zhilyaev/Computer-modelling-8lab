clear; 
clc;
n = 100;
r = 3.9;
b = 0.1;
lambda = 0.15;
x = []; 
x_st = [];
t = [];
xk = [];
for i = 1 : 1 : n
    t(i) = i;
    xk(i) = 0.3 * sin(i); 
end

x(1) = 0.4;
x(2) = r * x(1) * (1 - x(1)) - b * 0;
x_st(1) = x(1); 
%
for i = 3 : 1 : n  
    x(i) = r * x(i - 1) * (1 - x(i - 1)) - b * x(i - 2);
end
for i = 3 : 1 : n
    x_st(i) = xk(i) - r * x(i - 1) * (1 - x(i - 1)) - b * x(i - 2);  
    x_st(i) = x_st(i) + 1;
end
% figure;
% hold on
% plot(t, xk, 'b');
% plot(t, x, 'r');
% plot(t, x_st, 'g');
% title("r=" + r + " b="+b);
% xlabel('i') 
% ylabel('x') 
% hold off

curve_xk = animatedline('Color', 'b');
curve_x = animatedline('Color', 'r');
curve_x_st = animatedline('Color', 'g');
for i=1:n
    addpoints(curve_xk, i, xk(i))
    addpoints(curve_x, i, x(i))
    addpoints(curve_x_st, i, x_st(i))
    pause(0.001)
    drawnow
end

xprev = [];
xcurr = [];
xprev_st = [];
xcurr_st = [];
xprev_ct = [];
xcurr_ct = [];
for i = 2 : 1 : n  
    xprev(i) = x(i - 1);
    xcurr(i) = x(i);
    xprev_st(i) = x_st(i - 1);
    xcurr_st(i) = x_st(i);
    xprev_ct(i) = xk(i - 1);
    xcurr_ct(i) = xk(i);
end

figure;
hold on
plot(xprev_ct, xcurr_ct, 'b');
plot(xprev, xcurr, 'r');
plot(xprev_st, xcurr_st, 'g');
title("r=" + r + " b="+b);
xlabel('X-1') 
ylabel('X') 
hold off
