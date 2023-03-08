clc, clear, close all

totalTimes = [25, 40, 45, 75, 89];
cabinets = [1, 2, 3, 6, 8];
slowTimes = [10, 18, 21, 46, 57];
fastTimes = [2.5, 4.5, 5, 11, 15];

plot(cabinets, totalTimes, '-*')
xlabel("Cabinets")
ylabel("Charge Time (s)")
hold on
plot(cabinets, slowTimes, '-*')
plot(cabinets, fastTimes, '-*')
legend("totalTimes", "slowCharge", "fastCharge")