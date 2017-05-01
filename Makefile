cxx	=	g++
CFLAGS	=	-g	-Wall -O2

LIBUSB_FLAG	=	-I/usr/local/Cellar/libusb/1.0.20/include/libusb-1.0/

all: usb

usb.o: usb.cpp
	@$(cxx) $(CFLAGS) $(LIBUSB_FLAG) -c usb.cpp

usb: usb.o
	@$(cxx) usb.o -o usb -lusb-1.0

clean:
	@rm usb.o usb
