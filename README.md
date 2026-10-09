Audio Signal Processing & Time-Scale Modification

A MATLAB-based project focusing on digital audio processing, Nyquist rate sampling evaluation, and playback speed alteration using various digital signal processing (DSP) techniques.

Developed as part of the Signals and Systems coursework.

---

Features & Topics Covered

1. MATLAB Audio I/O & Preprocessing
* Importing, normalizing, and exporting audio files (`audioread`, `sound`, `audiowrite`).
* Converting stereo signals to mono for processing efficiency.

2. Down-Sampling & Nyquist Boundary Analysis
* Implementing sampling rate reduction without built-in loops.
* Analyzing quality degradation and spectral aliasing in frequency domain as sampling frequency falls below the Nyquist threshold.

3. Playback Speed Manipulation Methods
* Frequency Scaling: Modifying during playback (pitch-shifting effect).
* Frame Dropping: Dividing audio into non-overlapping frames and discarding alternate frames.
* Overlap-and-Add (OLA) Method:
  * Applying windowing functions to avoid edge discontinuities.
  * Overlapping and shifting processed frames to achieve high-quality time-scale modification (speed change without pitch alteration).

---

Requirements & Instructions

1. Place your input audio file (`.wav` or `.mp3`) in the project directory.
2. Run the main MATLAB scripts section by section to reproduce down-sampling, frame-dropping, and OLA speed modifications.
