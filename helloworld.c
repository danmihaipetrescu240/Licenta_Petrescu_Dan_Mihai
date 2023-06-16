/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xuartps_hw.h"
#include "xplatform_info.h"
#include "xuartps.h"
#include "xil_io.h"
#include "xparameters.h"
#include "xil_types.h"
#include "xil_printf.h"

#include "xgpio.h"

XGpio gpio1 ;
XGpio gpio2 ;


	XUartPs uart;
	XUartPs_Config *uart_config;

	void uart_init(){
		int status = 0;
		uart_config = XUartPs_LookupConfig(XPAR_PS7_UART_1_DEVICE_ID);
		status = XUartPs_CfgInitialize(&uart, uart_config, uart_config->BaseAddress);
		if(status == XST_SUCCESS)
			xil_printf("UART init Successful\n");
		else
			xil_printf("UART init Failed\n");

	}




int main()

{
	uart_init();
	 XGpio_Initialize(&gpio1, XPAR_AXI_GPIO_0_DEVICE_ID);
	 XGpio_Initialize(&gpio2, XPAR_AXI_GPIO_1_DEVICE_ID);

	 XGpio_SetDataDirection(&gpio1 , 1 ,0);
	// XGpio_SetDataDirection(&gpio1 , 2 ,1);

	 XGpio_SetDataDirection(&gpio2 , 1 ,1);
	// XGpio_SetDataDirection(&gpio2 , 2 ,1);

		xil_printf("code is starting from here\n");
	init_platform();
	u8 DATA_UART = 0;
	u8 FLAG = 0;
	u8 DATA = 0;
	//XUartPs_SendByte(0xE0001000, 0xDD);
	xil_printf("Please input the enable for neural netowrk module\n");
	while (1) {

		   if (!XUartPs_IsReceiveData(0xE0001000))
			{
				DATA_UART = XUartPs_RecvByte(0xE0001000);
	            XGpio_DiscreteWrite(&gpio1,1,DATA_UART);
			}

	    	FLAG = XGpio_DiscreteRead(&gpio2,1);
		     //while (!XUartPs_IsReceiveData(0xE0001000))

                   xil_printf("Neural Network Output \n");
			XUartPs_SendByte(0xE0001000, FLAG);



	}
	//cleanup_platform();
	return 0;
}
