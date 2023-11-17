%Approximation of parabola with trigonometric series. Written in Octave.

t = linspace(-3, 3, 100000);

y = t.^2;
f = @(n) (-1)^n * cos(n * t) ./ n.^2;

% Initialize y1 as zeros
y1 = zeros(size(t));

% Loop to accumulate values
for n = 1:150 %number of harmonics
    y1 = y1 + f(n);
end

%plotting functions

plot(t, y, t, pi^2/3 + 4.*y1); %add offset and coefficient to series

set(gca, 'XAxisLocation', 'origin');
set(gca, 'YAxisLocation', 'origin');

yticks(0:0.5:9)
xticks(-3:0.5:3)

legend('t^2', 'Sum of harmonics');


