function nge100_disconnect(dev)
fclose(dev);
delete(dev);
end