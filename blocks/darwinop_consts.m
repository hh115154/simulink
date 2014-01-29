function consts = darwinop_consts

consts.mx28_fields = {
    field(0,2,'Model Number','Model number','AR'), ...
    field(0,1,'Model Number (L)','Lowest byte of model number','AR'), ...
    field(1,1,'Model Number (H)','Highest byte of model number','AR'), ...
    field(2,1,'Version of Firmware','Information on the version of firmware','AR'), ...
    field(3,1,'ID','ID of MX28 on Dynamixel Bus','ARW'), ...
    field(4,1,'Baud Rate','Baud Rate of Dynamixel','ARW'), ...
    field(5,1,'Return Delay Time','Return Delay Time','ARW'), ...
    field(6,2,'CW Angle Limit','Clockwise Angle Limit','RW'), ...
    field(6,1,'CW Angle Limit (L)','Lowest byte of clockwise Angle Limit','ARW'), ...
    field(7,1,'CW Angle Limit (H)','Highest byte of clockwise Angle Limit','ARW'), ...
    field(8,2,'CCW Angle Limit','Counterclockwise Angle Limit','RW'), ...
    field(8,1,'CCW Angle Limit (L)','Lowest byte of counterclockwise Angle Limit','ARW'), ...
    field(9,1,'CCW Angle Limit (H)','Highest byte of counterclockwise Angle Limit','ARW'), ...
    field(11,1,'Highest Temperature','Highest Limit Temperature','ARW'), ...
    field(12,1,'Lowest Voltage','Lowest Limit Voltage','ARW'), ...
    field(13,1,'Highest Voltage','Highest Limit Voltage','ARW'), ...
    field(14,2,'Max Torque','Max. Torque','ARW'), ...
    field(14,1,'Max Torque (L)','Lowest byte of Max. Torque','ARW'), ...
    field(15,1,'Max Torque (H)','Highest byte of Max. Torque','ARW'), ...
    field(16,1,'Status Return Level','Status Return Level','ARW'), ...
    field(17,1,'Alarm LED','LED for Alarm','ARW'), ...
    field(18,1,'Alarm Shutdown','Shutdown for Alarm','ARW'), ...
    field(24,1,'Torque Enable','Torque On/Off','RW'), ...
    field(25,1,'LED','LED On/Off','RW'), ...
    field(26,1,'D Gain','Derivative Gain','RW'), ...
    field(27,1,'I Gain','Integral Gain','RW'), ...
    field(28,1,'P Gain','Proportional Gain','RW'), ...
    field(30,2,'Goal Position','Goal Position','RW'), ...
    field(30,1,'Goal Position (L)','Lowest byte of Goal Position','ARW'), ...
    field(31,1,'Goal Position (H)','Highest byte of Goal Position','ARW'), ...
    field(32,2,'Moving Speed','Moving Speed','RW'), ...
    field(32,1,'Moving Speed (L)','Lowest byte of Moving Speed','ARW'), ...
    field(33,1,'Moving Speed (H)','Highest byte of Moving Speed','ARW'), ...
    field(34,2,'Torque Limit','Torque Limit','RW'), ...
    field(34,1,'Torque Limit (L)','Lowest byte of Torque Limit','ARW'), ...
    field(35,1,'Torque Limit (H)','Highest byte of Torque Limit','ARW'), ...
    field(36,2,'Position','Current Position','R'), ...
    field(36,1,'Position (L)','Lowest byte of Current Position','AR'), ...
    field(37,1,'Position (H)','Highest byte of Current Position','AR'), ...
    field(38,2,'Speed','Current Speed','R'), ...
    field(38,1,'Speed (L)','Lowest byte of Current Speed','AR'), ...
    field(39,1,'Speed (H)','Highest byte of Current Speed','AR'), ...
    field(40,2,'Load','Current Load','R'), ...
    field(40,1,'Load (L)','Lowest byte of Current Load','AR'), ...
    field(41,1,'Load (H)','Highest byte of Current Load','AR'), ...
    field(42,1,'Voltage','Current Voltage','AR'), ...
    field(43,1,'Temperature','Current Temperature','AR'), ...
    field(44,1,'Registered','Means if Current Instruction is registered','AR'), ...
    field(46,1,'Moving','Means if there is any movement','AR'), ...
    field(47,1,'Lock','Locking EEPROM','ARW'), ...
    field(48,2,'Punch','Punch','ARW'), ...
    field(48,1,'Punch (L)','Lowest byte of Punch','ARW'), ...
    field(49,1,'Punch (H)','Highest byte of Punch','ARW')
  };

consts.cm730_fields = {
    field(0,2,'Model Number','Model number','AR'), ...
    field(0,1,'Model Number (L)','Lowest byte of Model Number','AR'), ...
    field(1,1,'Model Number (H)','Highest byte of Model Number','AR'), ...
    field(2,1,'Version of Firmware','Information on the version of firmware','AR'), ...
    field(3,1,'ID','ID of CM730 on Dynamixel Bus','ARW'), ...
    field(4,1,'Baud Rate','Dynamixel baud rate','ARW'), ...
    field(5,1,'Return Delay Time','Return Delay Time','ARW'), ...
    field(16,1,'Status Return Level','Status Return Level','ARW'), ...
    field(24,1,'Dynamixel Power','Dynamixel On/Off','ARW'), ...
    field(25,1,'LED Pannel','LED Pannel On/Off','RW'), ...
    field(26,2,'LED Head','LED Head','RW'), ...
    field(26,1,'LED Head (L)','Lowest byte of LED Head','ARW'), ...
    field(27,1,'LED Head (H)','Highest byte of LED Head','ARW'), ...
    field(28,2,'LED Eye','LED Eye','RW'), ...
    field(28,1,'LED Eye (L)','Lowest byte of LED Eye','ARW'), ...
    field(29,1,'LED Eye (H)','Highest byte of LED Eye','ARW'), ...
    field(30,1,'Button','Button status','R'), ...
    field(38,2,'Gyro Z','Gyroscope Z-axis','R'), ...
    field(38,1,'Gyro Z (L)','Lowest byte of Gyroscope Z-axis','AR'), ...
    field(39,1,'Gyro Z (H)','Highest byte of Gyroscope Z-axis','AR'), ...
    field(40,2,'Gyro Y','Gyroscope Y-axis','R'), ...
    field(40,1,'Gyro Y (L)','Lowest byte of Gyroscope Y-axis','AR'), ...
    field(41,1,'Gyro Y (H)','Highest byte of Gyroscope Y-axis','AR'), ...
    field(42,2,'Gyro X','Gyroscope X-axis','R'), ...
    field(42,1,'Gyro X (L)','Lowest byte of Gyroscope X-axis','AR'), ...
    field(43,1,'Gyro X (H)','Highest byte of Gyroscope X-axis','AR'), ...
    field(44,2,'ACC X','Accelerometer X-axis','R'), ...
    field(44,1,'ACC X (L)','Lowest byte of Accelerometer X-axis','AR'), ...
    field(45,1,'ACC X (H)','Highest byte of Accelerometer X-axis','AR'), ...
    field(46,2,'ACC Y','Accelerometer Y-axis','R'), ...
    field(46,1,'ACC Y (L)','Lowest byte of Accelerometer Y-axis','AR'), ...
    field(47,1,'ACC Y (H)','Highest byte Accelerometer Y-axis','AR'), ...
    field(48,2,'ACC Z','Accelerometer Z-axis','R'), ...
    field(48,1,'ACC Z (L)','Lowest byte of Accelerometer Z-axis','AR'), ...
    field(49,1,'ACC Z (H)','Highest byte of Accelerometer Z-axis','AR'), ...
    field(50,1,'Present Voltage','Current Voltage','AR'), ...
    field(51,2,'MIC Left','Microphone Left','R'), ...
    field(51,1,'MIC Left (L)','Lowest byte of Microphone Left','AR'), ...
    field(52,1,'MIC Left (H)','Highest byte of Microphone Left','AR'), ...
    field(53,2,'ADC 2','ADC channel 2','AR'), ...
    field(53,1,'ADC 2 (L)','Lowest byte of ADC channel 2','AR'), ...
    field(54,1,'ADC 2 (H)','Highest byte of ADC channel 2','AR'), ...
    field(55,2,'ADC 3','ADC channel 3','AR'), ...
    field(55,1,'ADC 3 (L)','Lowest byte of ADC channel 3','AR'), ...
    field(56,1,'ADC 3 (H)','Highest byte of ADC channel 3','AR'), ...
    field(57,2,'ADC 4','ADC channel 4','AR'), ...
    field(57,1,'ADC 4 (L)','Lowest byte of ADC channel 4','AR'), ...
    field(58,1,'ADC 4 (H)','Highest byte of ADC channel 4','AR'), ...
    field(59,2,'ADC 5','ADC channel 5','AR'), ...
    field(59,1,'ADC 5 (L)','Lowest byte of ADC channel 5','AR'), ...
    field(60,1,'ADC 5 (H)','Highest byte of ADC channel 5','AR'), ...
    field(61,2,'ADC 6','ADC channel 6','AR'), ...
    field(61,1,'ADC 6 (L)','Lowest byte of ADC channel 6','AR'), ...
    field(62,1,'ADC 6 (H)','Highest byte of ADC channel 6','AR'), ...
    field(63,2,'ADC 7','ADC channel 7','AR'), ...
    field(63,1,'ADC 7 (L)','Lowest byte of ADC channel 7','AR'), ...
    field(64,1,'ADC 7 (H)','Highest byte of ADC channel 7','AR'), ...
    field(65,2,'ADC 8','ADC channel 8','AR'), ...
    field(65,1,'ADC 8 (L)','Lowest byte of ADC channel 8','AR'), ...
    field(66,1,'ADC 8 (H)','Highest byte of ADC channel 8','AR'), ...
    field(67,2,'MIC Right','Microphone Right','R'), ...
    field(67,1,'MIC Right (L)','Lowest byte of Microphone Right','AR'), ...
    field(68,1,'MIC Right (H)','Highest byte of Microphone Right','AR'), ...
    field(69,2,'ADC 10','ADC channel 10','AR'), ...
    field(69,1,'ADC 10 (L)','Lowest byte of ADC channel 10','AR'), ...
    field(70,1,'ADC 10 (H)','Highest byte of ADC channel 10','AR'), ...
    field(71,2,'ADC 11','ADC channel 11','AR'), ...
    field(71,1,'ADC 11 (L)','Lowest byte of ADC channel 11','AR'), ...
    field(72,1,'ADC 11 (H)','Highest byte of ADC channel 11','AR'), ...
    field(73,2,'ADC 12','ADC channel 12','AR'), ...
    field(73,1,'ADC 12 (L)','Lowest byte of ADC channel 12','AR'), ...
    field(74,1,'ADC 12 (H)','Highest byte of ADC channel 12','AR'), ...
    field(75,2,'ADC 13','ADC channel 13','AR'), ...
    field(75,1,'ADC 13 (L)','Lowest byte of ADC channel 13','AR'), ...
    field(76,1,'ADC 13 (H)','Highest byte of ADC channel 13','AR'), ...
    field(77,2,'ADC 14','ADC channel 14','AR'), ...
    field(77,1,'ADC 14 (L)','Lowest byte of ADC channel 14','AR'), ...
    field(78,1,'ADC 14 (H)','Highest byte of ADC channel 14','AR'), ...
    field(79,2,'ADC 15','ADC channel 15','AR'), ...
    field(79,1,'ADC 15 (L)','Lowest byte of ADC channel 15','AR'), ...
    field(80,1,'ADC 15 (H)','Highest byte of ADC channel 15','AR')
  };

consts.fsr_fields = {
    field(0,2,'Model Number','Model number','AR'), ...
    field(0,1,'Model Number (L)','Lowest byte of Model Number','AR'), ...
    field(1,1,'Model Number (H)','Highest byte of Model Number','AR'), ...
    field(2,1,'Version of Firmware','Information on the version of firmware','AR'), ...
    field(3,1,'ID','ID of FSR on Dynamixel Bus','ARW'), ...
    field(4,1,'Baud Rate','Dynamixel baud rate','ARW'), ...
    field(5,1,'Return Delay Time','Return Delay Time','ARW'), ...
    field(16,1,'Status Return Level','Status Return Level','ARW'), ...
    field(19,1,'Operating mode','Operating mode','RW'), ...
    field(25,1,'LED','LED On/Off','RW'), ...
    field(26,2,'FSR1','Force Sensitive Resistor 1','R'), ...
    field(26,1,'FSR1 (L)','Lowest byte of Force Sensitive Resistor 1','AR'), ...
    field(27,1,'FSR1 (H)','Lowest byte of Force Sensitive Resistor 1','AR'), ...
    field(28,2,'FSR2','Force Sensitive Resistor 2','R'), ...
    field(28,1,'FSR2 (L)','Lowest byte of Force Sensitive Resistor 2','AR'), ...
    field(29,1,'FSR2 (H)','Lowest byte of Force Sensitive Resistor 2','AR'), ...
    field(30,2,'FSR3','Force Sensitive Resistor 3','R'), ...
    field(30,1,'FSR3 (L)','Lowest byte of Force Sensitive Resistor 3','AR'), ...
    field(31,1,'FSR3 (H)','Lowest byte of Force Sensitive Resistor 3','AR'), ...
    field(32,2,'FSR4','Force Sensitive Resistor 4','R'), ...
    field(32,1,'FSR4 (L)','Lowest byte of Force Sensitive Resistor 4','AR'), ...
    field(33,1,'FSR4 (H)','Lowest byte of Force Sensitive Resistor 4','AR'), ...
    field(34,1,'FSRX','Force Sensitive Resistor X-axis','R'), ...
    field(35,1,'FSRY','Force Sensitive Resistor Y-axis','R'), ...
    field(42,1,'Voltage','Current Voltage','AR'), ...
    field(44,1,'Registered','Means if Current Instruction is registered','AR'), ...
    field(47,1,'Lock','Locking EEPROM','ARW'), ...
  };

consts.vision_fields = {
    field(1,1,'Enable','Enable vision processing','RW'), ...
    field(2,1,'Ball enable','Enable the ball finding','RW'), ...
    field(3,1,'Red enable','Enable the red finding','RW'), ...
    field(4,1,'Yellow enable','Enable the yellow finding','RW'), ...
    field(5,1,'Blue enable','Enable the blue finding','RW'), ...
    field(9,1,'Stream','Enable HTTP Server Streamer','RW'), ...
    field(10,2,'Width','Webcam width in pixels','R'), ...
    field(12,2,'Height','Webcam height in pixels','R'), ...
    field(20,2,'Ball Hue Center','Ball Hue Center','ARW'), ...
    field(22,2,'Ball Hue Tolerance','Ball Hue Tolerance','ARW'), ...
    field(24,1,'Ball Min. Sat.','Ball Minimum Saturation Threshold','ARW'), ...
    field(25,1,'Ball Max. Sat.','Ball Maximum Saturation Threshold','ARW'), ...
    field(26,1,'Ball Min. Val.','Ball Minimum Value Threshold','ARW'), ...
    field(27,1,'Ball Max. Val.','Ball Maximum Value Threshold','ARW'), ...
    field(28,1,'Ball Min. Cov.','Ball Minimum Coverage Threshold','ARW'), ...
    field(29,1,'Ball Max. Cov.','Ball Maximum Coverage Threshold','ARW'), ...
    field(30,2,'Ball X','Ball X position','R'), ...
    field(32,2,'Ball Y','Ball Y position','R'), ...
    field(40,2,'Red Hue','Red Hue Center','ARW'), ...
    field(42,2,'Red Hue Tolerance','Red Hue Tolerance','ARW'), ...
    field(44,1,'Red Min. Sat.','Red Minimum Saturation Threshold','ARW'), ...
    field(45,1,'Red Max. Sat.','Red Maximum Saturation Threshold','ARW'), ...
    field(46,1,'Red Min. Val.','Red Minimum Value Threshold','ARW'), ...
    field(47,1,'Red Max. Val.','Red Maximum Value Threshold','ARW'), ...
    field(48,1,'Red Min. Cov.','Red Minimum Coverage Threshold','ARW'), ...
    field(49,1,'Red Max. Cov.','Red Maximum Coverage Threshold','ARW'), ...
    field(50,2,'Red X','Red X position','R'), ...
    field(52,2,'Red Y','Red Y position','R'), ...
    field(60,2,'Yellow Hue','Yellow Hue Center','ARW'), ...
    field(62,2,'Yellow Hue Tolerance','Yellow Hue Tolerance','ARW'), ...
    field(64,1,'Yellow Min. Sat.','Yellow Minimum Saturation Threshold','ARW'), ...
    field(65,1,'Yellow Max. Sat.','Yellow Maximum Saturation Threshold','ARW'), ...
    field(66,1,'Yellow Min. Val.','Yellow Minimum Value Threshold','ARW'), ...
    field(67,1,'Yellow Max. Val.','Yellow Maximum Value Threshold','ARW'), ...
    field(68,1,'Yellow Min. Cov.','Yellow Minimum Coverage Threshold','ARW'), ...
    field(69,1,'Yellow Max. Cov.','Yellow Maximum Coverage Threshold','ARW'), ...
    field(70,2,'Yellow X','Yellow X position','R'), ...
    field(72,2,'Yellow Y','Yellow Y position','R'), ...
    field(80,2,'Blue Hue','Blue Hue Center','ARW'), ...
    field(82,2,'Blue Hue Tolerance','Blue Hue Tolerance','ARW'), ...
    field(84,1,'Blue Min. Sat.','Blue Minimum Saturation Threshold','ARW'), ...
    field(85,1,'Blue Max. Sat.','Blue Maximum Saturation Threshold','ARW'), ...
    field(86,1,'Blue Min. Val.','Blue Minimum Value Threshold','ARW'), ...
    field(87,1,'Blue Max. Val.','Blue Maximum Value Threshold','ARW'), ...
    field(88,1,'Blue Min. Cov.','Blue Minimum Coverage Threshold','ARW'), ...
    field(89,1,'Blue Max. Cov.','Blue Maximum Coverage Threshold','ARW'), ...
    field(90,2,'Blue X','Blue X position','R'), ...
    field(92,2,'Blue Y','Blue Y position','R'), ...
  };

consts.ids = {
    id('Right Shoulder Pitch',1,200,315), ...
    id('Left Shoulder Pitch',2,270,315), ...
    id('Right Shoulder Roll',3,140,295), ...
    id('Left Shoulder Roll',4,325,295), ...
    id('Right Elbow',5,108,297), ...
    id('Left Elbow',6,360,297), ...
    id('Right Hip Yaw',7,200,250), ...
    id('Left Hip Yaw',8,270,250), ...
    id('Right Hip Roll',9,145,185), ...
    id('Left Hip Roll',10,325,185), ...
    id('Right Hip Pitch',11,200,185), ...
    id('Left Hip Pitch',12,265,185), ...
    id('Right Knee',13,200,125), ...
    id('Left Knee',14,265,125), ...
    id('Right Ankle Pitch',15,200,60), ...
    id('Left Ankle Pitch',16,265,60), ...
    id('Right Ankle Roll',17,140,50), ...
    id('Left Ankle Roll',18,330,50), ...
    id('Head Pan',19,235,310), ...
    id('Head Tilt',20,235,355), ...
    id('Sub controller',200,235,265), ...
    id('Right Foot',111,200,20), ...
    id('Left Foot',112,265,20), ...
    id('Vision',-1,225,380), ...
  };

consts.labels = {
    'Darwin-OP communication setup (%s)', ...
    'Select items to read (ctrl+click for multiple):', ...
    'Select item to write (ctrl+click for multiple):', ...
    'selected joint', ...
    'read/write operation', ...
    'write operation', ...
    'read operation', ...
    'no operation', ...
    'IP address:', ...
    'Port:', ...
    'Protocol:', ...
    'Sample Time (s):', ...
    'Advanced configuration', ...
    'Save and close', ...
  };

consts.language = 'english';

end

function s = field(address, size, name, description, mode)
s = struct('address', address, ...
           'size', size, ...
           'name', name, ...
           'description', description, ...
           'mode', mode);
end

function i = id(name,address,posx,posy)
i = struct('address', address, ...
           'name', name, ...
           'posx', posx, ...
           'posy', posy);
end
