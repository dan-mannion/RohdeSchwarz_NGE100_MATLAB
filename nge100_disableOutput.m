function nge100_disableOutput(dev, channel)
if ~ismatrix(channel)
    channel = [channel] 
end

for c = 1:length(channel)
    nge100_switchToChannel(dev, channel(c));
    fprintf(dev, 'output off');
end
end