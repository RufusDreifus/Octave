%Approximation of parabola with trigonometric series. 
%Animation of approximation with different quantity of harmonics.
%Written in Octave.

t = linspace(-3, 3, 1000);
y = t.^2;
n = 30; % number of harmonics

% Create a figure and figure name
figure ('name', 'Parabola Approximation');

for n = 1:n 
    y1 = zeros(size(t));
    
    % Vectorized summation
    for k = 1:n
        y1 = y1 + (-1)^k * cos(k * t) ./ k.^2;
    end
    
    % Adjust the offset and coefficient
    y1 = pi^2/3 + 4 * y1;

    % Plotting functions
    plot(t, y, t, y1,'LineWidth', 2);
    
    % Set axis locations
    set(gca, 'XAxisLocation', 'origin');
    set(gca, 'YAxisLocation', 'origin');

    % Set ticks
    yticks(0:0.5:9);
    xticks(-3:0.5:3);

    % Add legend
    legend('t^2', 'Sum of harmonics');

    % Title for each frame
    title(['Approximation with ', num2str(n), ' harmonics']);

    %Add Limits
    xlim([-3 3])
    ylim([-1 9])
    
    % Pause to control animation speed
    pause(0.1);

    % Clear the current axis for the next frame
    cla;
end

% Plot the final result after the loop

y1 = zeros(size(t));
for k = 1:n
    y1 = y1 + (-1)^k * cos(k * t) ./ k.^2;
end
y1 = pi^2/3 + 4 * y1;

plot(t, y, t, y1, 'LineWidth', 2);

title(['Approximation with ', num2str(n), ' harmonics']);
set(gca, 'XAxisLocation', 'origin');
set(gca, 'YAxisLocation', 'origin');
 
 % Set ticks
yticks(0:0.5:9);
xticks(-3:0.5:3);

 %Add Limits
xlim([-3 3])
ylim([-1 9])

 % Add legend
 legend('t^2', 'Sum of harmonics');