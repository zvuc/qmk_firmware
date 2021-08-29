MCU = atmega32u4
USB = /dev/cu.usbmodem14141
SCULPT_UPLOAD_COMMAND = while [ ! -r $(USB) ]; do sleep 1; done ; avrdude -p $(MCU) -c avr109 -U flash:w:$(TARGET).hex -P $(USB)
