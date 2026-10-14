[S, Fs] = audioread("");
Fs_old = Fs;
Fs_nahayi = [40000 20000 10000 5000 2000 1000];
K_values = Fs_old ./ Fs_nahayi;%division per element

%F1
Fs_40k = Fs_nahayi(1);
S_40k = S(1:round(K_values(1)):end);
S_40k = S_40k / max(abs(S_40k));%normalization
audiowrite('downsampled_40k.wav', S_40k, Fs_40k);

%F2
Fs_20k = Fs_nahayi(2);
S_20k = S(1:round(K_values(2)):end);
S_20k = S_20k / max(abs(S_20k));
audiowrite('downsampled_20k.wav', S_20k, Fs_20k);

%F3
Fs_10k = Fs_nahayi(3);
S_10k = S(1:round(K_values(3)):end);
S_10k = S_10k / max(abs(S_10k));
audiowrite('downsampled_10k.wav', S_10k, Fs_10k);

%F4
Fs_5k = Fs_nahayi(4);
S_5k = S(1:round(K_values(4)):end);
S_5k = S_5k / max(abs(S_5k));
audiowrite('downsampled_5k.wav', S_5k, Fs_5k);

%F5
Fs_2k = Fs_nahayi(5);
S_2k = S(1:round(K_values(5)):end);
S_2k = S_2k / max(abs(S_2k));
audiowrite('downsampled_2k.wav', S_2k, Fs_2k);

%F6
Fs_1k = Fs_nahayi(6);
S_1k = S(1:round(K_values(6)):end);
S_1k = S_1k / max(abs(S_1k));
audiowrite('downsampled_1k.wav', S_1k, Fs_1k);