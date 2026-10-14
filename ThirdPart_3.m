[S, Fs] = audioread("");
frameSizes = 1000:1000:10000;
for i = 1:length(frameSizes)
    N = frameSizes(i);
    
    %Separate signal into non-overlapping frames
    numFrames = floor(length(S) / N);
    frames = reshape(S(1:N*numFrames), N, numFrames);
    
    %Drop every other frame (2nd, 4th, ...)
    keptFrames = frames(:, 1:2:end);
    frameDroppedSignal = reshape(keptFrames, [], 1);
    outputFileName = sprintf("Audio_For_N=%d.wav", N);
    audiowrite(outputFileName, frameDroppedSignal, Fs);
end