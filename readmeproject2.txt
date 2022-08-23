Group Members:
Jaydeep Sachar - 301390378
Sahand Mirfassihi - 301351315

Functions:
1-plotSignal(app)

	Plot the input signal,( it can be a chosen file or a recording file), and in the next step it take the fft of the signal and plot the frequency.


2-lowPassFilterImpulse = LowPassSincFilter(app, normalizedCutoffFrequency, M, window)

	This function Gived impulse response for low pass sic filter, and can be choosen to work as high pass, low pass and stop pass filter.
	limitation: cut off freq should be betweeen [0,1]

3-AnalogFilterTypeDropDownValueChanged(app, event)

	Allow the user to choose between Low pass, High pass, Band pass and Band stop, Analog filter types.
	If the user changes it to band pass or band stop, new boxes will appear asking for the second frequency to be inputted. 

4-PlotAnalogFilterButtonPushed(app, event)

	it plots the Filter Magnitude plot and filter phase plot, based on the user inputs in filter types, filter design, analog cutoff frequency and analog order. 
	Analog order should be betwee 1 to infinite and if input is wrong, it will tell the user to chose a number between 1 to infinite.

5-AnalogFilterDesignValueChanged(app, event)

	Allow the user to choose between Butterworth, Bessel, chebyshev1 and chebyshev2, for analog filter design
	If either Chebyshev's are selected, the bandstop attentuation can be chosen.

6-AnalogOrDigitalValueChanged(app, event)

	This function allow the user to switch betwwe Digital or Analog signals, and make the formation also change so that you have access to window size and digital filter design.
	Changes the options for users for exclusively Digital or analog signals.
7-ApplyAnalogFilterButtonPushed(app, event)

	It simpley plot the Filtered input signal, and FFT of filtered input. before applying the changes, this function save the primerly signal for undo feature.
	Limitations: it take about 10 sec to apply analog filter to the signal.

8-ChooseFileButtonPushed(app, event)

	It simpley allow the user to chose the file from the houst computer.
	Limitation: file should be a .wav file. The proces. I takes arounf 5 sec to openthe file locations, and around 20 sec to upload the file to the app from the computer, depending on the size.

9-RecordAudioButtonPushed(app, event)

	It allow the user to recod a sound from the computer mic, it starts when thr bottm is pushed and stops after 5 seconds, then displayes the plots on input signal and input signal fft.
	Limittion: Time of the record can not be set by the user and it will not stop the recording by pushing the bottom again. It takes around 20sec to displaye the polts of the recorded voice.

10-PlayAudioButtonPushed(app, event)

	Simply plays the signal, recorded or uploaded.
	limitation: volume can't be changed from inside the app

11-topAudioButtonPushed(app, event)

	Simply stop the sound from playing.

12-DigitalFilterDesignDropDownValueChanged(app, event)

	Allow the useres to choose between Moving average and window-sinc for the digital filter design. This function is only visualbe after app was switched to Digital mode.

13-PlotDigitalFilterButtonPushed(app, event)

	It plots the Filter mangnitude plot and filter phase plot on the digital mode.
	Limitation: It take arounf 3 sec to plot

14-ApplyDigitalFilterButtonPushed(app, event)

	It simply applies the digital filter to the signal and produce the Filtered input signal and FFT of filtered input plots.
	Limitations: It takes arounf 30-40 sec to produce the plots, depending on the size of the file.Undo featur

15-DigitalFilterTypeDropDownValueChanged(app, event)

	If the digital filter design is set on Window-sinc,allows the user to choose between Low pass. High pass, Band pass, and Band stop for digital filter type in Digital mode and windowed-sinc digital filter design.

16-UndoButtonPushed(app, event)

	sets the input signal to the signal before the last filter is applied.
	Limitations: only can be used once in a row.

17-AnalogFilterDesignDropDownValueChanged(app, event)

	if the analog filter design is changed to a chebyshev the stopband attentuation is shown or removed.

18-ExportButtonPushed(app, event)

	Simply export the file with new signal,new string combining the name of the file and the New and .wav, so audiowrite knows the file type.
	Limitation: It only produce a .wav file.

19-createComponents(app)

	It create comments to communicate with the user during using the app, 

20-Project2Redesign_Updated
	To construct hte app and register it with the App designer

21 - FFTPlease(Input)

	Performs an FFT using the Cooley-Tukey algorithm, recursively dividing the array until there is just one value left in the array, and then returning this value for the odds and the evens to increase speed.
	Runs on average at O(NlogN) time. Takes about 10 seconds to complete 44000 samples.
	Limitation: It takes a lot of time to do long signals. So if a song is inputted, about 3 minutes long, sampled at 44100Hz, 10584000 samples, it will take 294 hours to complete.

Further Imrpovements: Add more filter types and designs
		      Make the menus more user friendly and attractive
		      Change the frequency response so it updates as different values are inputted into the frequency, or a different filter type is chosen
Provided is the test file we used. It is 1 second of white noise. We used white noise as it makes it much more evident if a filter is working or not
as all frequencies are present. We also shortened it to 1 second, as it is sampled at about 44100 Hz, meaning 1 second is 44100 samples.
The FFT function we created takes about 10 seconds to process this, recorded using the tic toc function in matlab. 

