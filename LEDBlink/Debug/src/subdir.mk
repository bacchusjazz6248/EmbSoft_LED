################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/LEDBlink.c \
../src/cr_startup_lpc8xx.c \
../src/swm.c 

OBJS += \
./src/LEDBlink.o \
./src/cr_startup_lpc8xx.o \
./src/swm.o 

C_DEPS += \
./src/LEDBlink.d \
./src/cr_startup_lpc8xx.d \
./src/swm.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DDEBUG -D__CODE_RED -DCORE_M0PLUS -D__MTB_DISABLE -D__MTB_BUFFER_SIZE=256 -D__USE_CMSIS=CMSIS_CORE_LPC8xx -D__LPC8XX__ -D__REDLIB__ -I"C:\Users\bacch\OneDrive\ESE\05\CMSIS_CORE_LPC8xx\inc" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m0 -mthumb -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


