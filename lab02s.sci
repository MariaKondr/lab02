k=25; // начальное расстояние от лодки до катера
fi=3*%pi/4;

// функция, описывающая движение катера
function dr=f(theta, r)
    dr=r/sqrt(25.01);
endfunction

//начальные условия в случае 2
r0=k/4.1;
theta0=-%pi;

theta=0:0.1:2*%pi;

r=ode(r0,theta0,theta,f);

//функция, описывающая движение лодки
function xt=f2(t)
    xt=tan(fi)*t;
endfunction

t=0:1:50;

polarplot(theta,r,style=color('green')); //построение траектории движения катера
plot2d(t,f2(t),style=color('red')); //построение траектории движения лодки
