clc, clear, close all
data = tdmsread("TelemetryData_2023_03_07_14_30.tdms", "ChannelGroupName", "MainPowerSupply", ...
    "ChannelNames", ["psp://192.168.209.11/PXIComm_NSV/Power Supply DC Voltage", ...
    "psp://192.168.209.11/PXIComm_NSV/Power Supply Current", ...
    "psp://192.168.209.11/PXIComm_NSV/Power Supply Current TimeStamp"]);

voltage = data{1}.("psp://192.168.209.11/PXIComm_NSV/Power Supply DC Voltage");
current = data{1}.("psp://192.168.209.11/PXIComm_NSV/Power Supply Current");
timestamp = datetime(data{1}.("psp://192.168.209.11/PXIComm_NSV/Power Supply Current TimeStamp"),'ConvertFrom','posixtime');

figure(1)
plot(timestamp, voltage)
title("Voltage")

figure(5)
plot(timestamp, current)
title("Current")
