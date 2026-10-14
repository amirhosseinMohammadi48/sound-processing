[S, Fs] = audioread("");
S = S(:,1);
ratio = 1/2;
downsampled_S = S(1:1/ratio:end);
downsampled_S = downsampled_S/max(abs(S));
sound(downsampled_S, Fs);