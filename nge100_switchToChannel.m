function nge100_switchToChannel(dev, channel)
    fprintf(dev, "instrument %d", channel);
end