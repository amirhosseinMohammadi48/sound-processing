[S, Fs] = audioread("");
S = S(:,1);
S = S/max(abs(S));
sound(S, Fs);
pause(length(S)/Fs);
Fs_double = 2 * Fs;
sound(S, Fs_double);