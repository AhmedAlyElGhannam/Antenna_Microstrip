% Aperture Antenna Radiation Pattern

% Define aperture antenna parameters
frequency = 2.4e9;      % Frequency in Hertz
apertureLength = 0.5;   % Length of the aperture
apertureWidth = 0.02;   % Width of the aperture

% Speed of light (m/s)
c = 3e8;

% Calculate wavelength
lambda = c / frequency;

% Azimuth and elevation angles
theta = linspace(-pi/2, pi/2, 180);  % Azimuth angles
phi = linspace(0, pi/2, 90);         % Elevation angles

% Calculate radiation pattern
[Theta, Phi] = meshgrid(theta, phi);

% Assuming a simple aperture field distribution (e.g., uniform)
apertureField = ones(size(Theta));

% Calculate the radiation pattern
radiationPattern = abs(sin((pi * apertureWidth * sin(Phi)) / lambda) .* sinc((apertureLength * sin(Theta)) / lambda));

% Convert spherical coordinates to Cartesian coordinates
x = radiationPattern .* sin(Phi) .* cos(Theta);
y = radiationPattern .* sin(Phi) .* sin(Theta);
z = radiationPattern .* cos(Phi);

% Plot the 3D radiation pattern
figure;
surf(x, y, z, 'EdgeColor', 'none');
title('Aperture Antenna Radiation Pattern');
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
axis equal;