/*
===============================================================================
 Name        : TrafficLight.c
 Author      : $(author)
 Version     :
 Copyright   : $(copyright)
 Description : main definition
===============================================================================
*/

#ifdef __USE_CMSIS
#include "LPC8xx.h"
#endif

#include <cr_section_macros.h>
#include "type.h"

void SwitchMatrix_Init();

int main(void) {
	SwitchMatrix_Init();

	// PIO0_2: output
	LPC_GPIO_PORT->DIR0 |= (1<<2);

	// PIO0_4: output
	LPC_GPIO_PORT->DIR0 |= (1<<4);

	// Force the counter to be placed into memory
	volatile static int i = 0 ;
	volatile static int j = 0 ;

	// Enter an infinite loop, just incrementing a counter
	while(1) {
		// Toggle PIO0_2
		LPC_GPIO_PORT->NOT0 = 1<<2;

		// Wait
		for (i=0; i<1000000; i++);

		// Blue_Flash
		for (i=0; i<10; i++) {
			for (j=0; j<100000; j++);
			LPC_GPIO_PORT->NOT0 = 1<<2;
		}

		// Red_TurnOn
		LPC_GPIO_PORT->NOT0 = 1<<4;
		for (i=0; i<1000000; i++);
	}
	return 0 ;
}
