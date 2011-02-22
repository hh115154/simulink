#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "LinuxDARwIn.h"


using namespace Robot;

int main()
{
	printf( "\n===== Read/Write Tutorial for DARwIn =====\n\n");

	//////////////////// Framework Initialize ////////////////////////////
	LinuxCM730 linux_cm730("/dev/ttyUSB0");
	CM730 cm730(&linux_cm730);
	if(cm730.Connect() == false)
	{
		printf("Fail to connect CM-730!\n");
		return 0;
	}
	/////////////////////////////////////////////////////////////////////

	int value;

	while(1)
	{
		printf("\r");

		printf("GFB:");
		if(cm730.ReadWord(CM730::P_GYRO_Y_L, &value, 0) == CM730::SUCCESS)
			printf("%3d", value);
		else
			printf("---");

		printf(" GRL:");
		if(cm730.ReadWord(CM730::P_GYRO_X_L, &value, 0) == CM730::SUCCESS)
			printf("%3d", value);
		else
			printf("---");

		printf(" AFB:");
		if(cm730.ReadWord(CM730::P_ACCEL_Y_L, &value, 0) == CM730::SUCCESS)
			printf("%3d", value);
		else
			printf("----");

		printf(" ARL:");
		if(cm730.ReadWord(CM730::P_ACCEL_X_L, &value, 0) == CM730::SUCCESS)
			printf("%3d", value);
		else
			printf("----");

		printf(" BTN:");
		if(cm730.ReadWord(CM730::P_BUTTON, &value, 0) == CM730::SUCCESS)
			printf("%1d", value);
		else
			printf("----");

		printf(" ID[%d]:", JointData::ID_R_SHOULDER_PITCH);
		if(cm730.ReadWord(JointData::ID_R_SHOULDER_PITCH, RX28M::P_PRESENT_POSITION_L, &value, 0) == CM730::SUCCESS)
		{
			printf("%4d", value);
			cm730.WriteWord(JointData::ID_L_SHOULDER_PITCH, RX28M::P_GOAL_POSITION_L, RX28M::GetMirrorValue(value), 0);
		}
		else
			printf("----");

		printf(" ID[%d]:", JointData::ID_R_SHOULDER_ROLL);
		if(cm730.ReadWord(JointData::ID_R_SHOULDER_ROLL, RX28M::P_PRESENT_POSITION_L, &value, 0) == CM730::SUCCESS)
		{
			printf("%4d", value);
			cm730.WriteWord(JointData::ID_L_SHOULDER_ROLL, RX28M::P_GOAL_POSITION_L, RX28M::GetMirrorValue(value), 0);
		}
		else
			printf("----");

		printf(" ID[%d]:", JointData::ID_R_ELBOW);
		if(cm730.ReadWord(JointData::ID_R_ELBOW, RX28M::P_PRESENT_POSITION_L, &value, 0) == CM730::SUCCESS)
		{
			printf("%4d", value);
			cm730.WriteWord(JointData::ID_L_ELBOW, RX28M::P_GOAL_POSITION_L, RX28M::GetMirrorValue(value), 0);
		}
		else
			printf("----");

		if(cm730.ReadWord(CM730::P_LED_HEAD_L, &value, 0) == CM730::SUCCESS)
		{
			if(value == 0x7FFF)
				value = 0;
			else
				value++;

			cm730.WriteWord(CM730::P_LED_HEAD_L, value, 0);
		}

		if(cm730.ReadWord(CM730::P_LED_EYE_L, &value, 0) == CM730::SUCCESS)
		{
			if(value == 0)
				value = 0x7FFF;
			else
				value--;

			cm730.WriteWord(CM730::P_LED_EYE_L, value, 0);
		}

		usleep(50000);
	}

	return 0;
}