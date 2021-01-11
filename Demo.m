dev = nge100Connect(); %Connect to power supply

%Configure an output 
%paramters:
%   - matlab device connection
%   - channel number [1-3]
%   - voltage in units (V)
%   - current limi in units (A)
nge100_configureOutput(dev, 1, 7.5, 240e-3);
nge100_configureOutput(dev, 2, 1, 10e-3);
nge100_configureOutput(dev, 3, 0, 0e-3);

%Enable single output
nge100_enableOutput(dev, 1);

%Enable multiple outputs using a matrix
nge100_enableOutput(dev, [1 2 3]);

%Disable outputs
nge100_disableOutput(dev, [1 2 3]);

nge100Disconnect(dev); %Disconnect from device