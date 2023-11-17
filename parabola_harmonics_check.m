t = linspace(-3, 3, 100000);

y = t.^2;

f = @(n) (-1)^n * cos(n * t) ./ n.^2;

% Initialize y1 as zeros
y1 = zeros(size(t));

% Loop to accumulate values
for n = 1:50
    y1 = y1 + f(n);
end

plot(t, y, t, pi^2/3 + 4.*y1);

set(gca, 'XAxisLocation', 'origin');
set(gca, 'YAxisLocation', 'origin');

legend('t^2', 'Sum of harmonics');


