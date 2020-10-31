%%
%Coded by Santa
%all rights reserved © 2020
%GitHub.com
function dx = lorenz(t,x,Beta)
dx=[
    Beta(1)*(x(2)-x(1));
    x(1)*(Beta(2)-x(3))-x(2);
    x(1)*x(2)-Beta(3)*x(3);
];
