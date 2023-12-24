clc
clear all
close all

%% All Mircrostrip Antennae
patchMicrostrip_trial = patchMicrostrip
patchMicrostripCircular_trial = patchMicrostripCircular
patchMicrostripElliptical_trial = patchMicrostripElliptical
patchMicrostripEnotch_trial = patchMicrostripEnotch
patchMicrostripHnotch_trial = patchMicrostripHnotch
patchMicrostripInsetfed_trial = patchMicrostripInsetfed
patchMicrostripTriangular_trial = patchMicrostripTriangular

%% Plotting 3D Patterns
f = 1e9;
figure
pattern(patchMicrostrip_trial, f)
figure
pattern(patchMicrostripCircular_trial, f)
figure
pattern(patchMicrostripElliptical_trial, f)
figure
pattern(patchMicrostripEnotch_trial, f)
figure
pattern(patchMicrostripHnotch_trial, f)
figure
pattern(patchMicrostripInsetfed_trial, f)
figure
pattern(patchMicrostripTriangular_trial, f)