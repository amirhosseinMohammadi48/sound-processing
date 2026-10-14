[S, Fs] = audioread("untitled3.m");
Fs_old = Fs;
size(S)
S = S(:,1);
S = S/max(abs(S));
sound(S, Fs);
S = S / max(abs(S));
audiowrite('output.mp4', S, Fs);
%the input and output voice are the same. It could be different while
%trasnforming it into mono while it was streo.
