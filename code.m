load('masseter-emg.mat')
emg = b17

[B, A] = butter(2, 3/500 ,'low') %3 hertz = 3/500

force = filter(B,A,abs(b17))
force = force - 0.006

figure
plot(time, emg, '-b') % blue line is emg
hold on
plot(time, force, '-r') % red line is estimated muscle tension

emg = emg / max(emg) % normalized emg
force = force / max(force) % normalized force

figure(1)
plot(time, emg, '-b') % blue line is emg
hold on
plot(time, force, '-r') % red line is estimate muscle tension