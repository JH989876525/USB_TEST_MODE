# Copyright (c) 2023 innodisk Crop.
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

PKG_CONFIG=${OECORE_NATIVE_SYSROOT}/usr/bin/pkg-config

TARGRT=USB_TEST_MODE

OBJ=${TARGRT}.o
${TARGRT}: $(OBJ)
	$(CC) $(OBJ) -lusb-1.0 -o ${TARGRT} `${PKG_CONFIG} --libs --cflags libusb-1.0`

${TARGRT}.o: ${TARGRT}.c
	$(CC) -O2 -c ${TARGRT}.c `${PKG_CONFIG} --libs --cflags libusb-1.0`

clean :
	rm *.o ${TARGRT}
