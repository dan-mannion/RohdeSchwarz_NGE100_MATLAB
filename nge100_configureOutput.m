function nge100_configureOutput(dev, channel, voltage, current)
nge100_switchToChannel(dev, channel);

cmd = sprintf("apply '%f, %f'", voltage, current);
fprintf(dev, cmd);
end