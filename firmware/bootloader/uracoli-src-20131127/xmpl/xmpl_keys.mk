#   Copyright (c) 2011 - 2013  Axel Wachtler
#   All rights reserved.
#
#   Redistribution and use in source and binary forms, with or without
#   modification, are permitted provided that the following conditions
#   are met:
#
#   * Redistributions of source code must retain the above copyright
#     notice, this list of conditions and the following disclaimer.
#   * Redistributions in binary form must reproduce the above copyright
#     notice, this list of conditions and the following disclaimer in the
#     documentation and/or other materials provided with the distribution.
#   * Neither the name of the authors nor the names of its contributors
#     may be used to endorse or promote products derived from this software
#     without specific prior written permission.
#
#   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
#   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
#   ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
#   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
#   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
#   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
#   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
#   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
#   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
#   POSSIBILITY OF SUCH DAMAGE.

# $Id$

# === main parameters of the project =========================================
URACOLIDIR = ..
PROJECT = xmpl_keys
CURRENT_MAKEFILE = xmpl_keys.mk
BOARD = UNDEFINED
PART = UNDEFINED
OBJDIR = ./obj

BINDIR = $(URACOLIDIR)/bin
LIBDIR = $(URACOLIDIR)/lib

# guessing the OS for a working (g)mkdir
ifndef MKDIR
    ifdef SystemRoot
        MKDIR=gmkdir -p
    else
        MKDIR=mkdir -p
    endif
endif

# === autogenerated board rules ========================================
help:
	@echo
	@echo "========================================================="
	@echo "Enter a board name or "all" for building the libraries.  "
	@echo "Have a look in the docu for what board you want to build."
	@echo "========================================================="
	@echo

all: cbb212 cbb230 cbb230b cbb231 cbb232 cbb233 rdk212 rdk230 rdk230b rdk231 rdk232 rdk233 stb212 stb230 stb230b stb231 stb232 stb233

list:
	 @echo '  cbb212           : REB Controller Base Board with REB23x/REB212 attached'
	 @echo '  cbb230           : REB Controller Base Board with REB23x/REB212 attached'
	 @echo '  cbb230b          : REB Controller Base Board with REB23x/REB212 attached'
	 @echo '  cbb231           : REB Controller Base Board with REB23x/REB212 attached'
	 @echo '  cbb232           : REB Controller Base Board with REB23x/REB212 attached'
	 @echo '  cbb233           : REB Controller Base Board with REB23x/REB212 attached'
	 @echo '  rdk212           : Radio Controller Board by Atmel and Dresden Elektronik'
	 @echo '  rdk230           : Radio Controller Board by Atmel and Dresden Elektronik'
	 @echo '  rdk230b          : Radio Controller Board by Atmel and Dresden Elektronik'
	 @echo '  rdk231           : Radio Controller Board by Atmel and Dresden Elektronik'
	 @echo '  rdk232           : Radio Controller Board by Atmel and Dresden Elektronik'
	 @echo '  rdk233           : Radio Controller Board by Atmel and Dresden Elektronik'
	 @echo '  stb212           : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF{212,23x}'
	 @echo '  stb230           : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF{212,23x}'
	 @echo '  stb230b          : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF{212,23x}'
	 @echo '  stb231           : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF{212,23x}'
	 @echo '  stb232           : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF{212,23x}'
	 @echo '  stb233           : Dresden Elektronik Sensor Terminal Board with RCB for AT86RF{212,23x}'


cbb212:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=cbb212 MCU=atxmega256a3 F_CPU=2000000UL BOOTOFFSET=0x0000 $(TARGETS)

cbb230:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=cbb230 MCU=atxmega256a3 F_CPU=2000000UL BOOTOFFSET=0x0000 $(TARGETS)

cbb230b:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=cbb230b MCU=atxmega256a3 F_CPU=2000000UL BOOTOFFSET=0x0000 $(TARGETS)

cbb231:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=cbb231 MCU=atxmega256a3 F_CPU=2000000UL BOOTOFFSET=0x0000 $(TARGETS)

cbb232:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=cbb232 MCU=atxmega256a3 F_CPU=2000000UL BOOTOFFSET=0x0000 $(TARGETS)

cbb233:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=cbb233 MCU=atxmega256a3 F_CPU=2000000UL BOOTOFFSET=0x0000 $(TARGETS)

rdk212:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rdk212 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rdk230:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rdk230 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rdk230b:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rdk230b MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rdk231:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rdk231 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rdk232:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rdk232 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

rdk233:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=rdk233 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

stb212:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stb212 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

stb230:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stb230 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

stb230b:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stb230b MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

stb231:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stb231 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

stb232:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stb232 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)

stb233:
	$(MAKE) -f $(CURRENT_MAKEFILE) BOARD=stb233 MCU=atmega1281 F_CPU=8000000UL BOOTOFFSET=0x1e000 $(TARGETS)


clean:
	rm -rf $(OBJDIR)/*.o $(OBJDIR)/*.lst $(BINDIR)/*.elf $(BINDIR)/*.hex

# === internal rules ===================================================

# temporary output directory
$(OBJDIR):
	$(MKDIR) $@

$(BINDIR):
	$(MKDIR) $@

TARGETS=$(OBJDIR) $(BINDIR) __xmpl_keys__
SOURCES = $(PROJECT).c
INCDIRS = . $(URACOLIDIR)/inc
LIBDIRS = $(URACOLIDIR)/lib
# DBGFMT=stabs for Linux
# DBGFMT=dwarf-2 for Windows
DBGFMT=
# automatically derived parameters
OBJECTS = $(SOURCES:%.c=$(OBJDIR)/%_$(BOARD).o)
TARGET = $(BINDIR)/$(PROJECT)_$(BOARD)

# === tool parameters ======================================================

CC = avr-gcc
CCFLAGS = -Wall -Wundef -Os -g$(DBGFMT) -mmcu=$(MCU)
CCFLAGS += -Wa,-adhlns=$(<:%.c=$(OBJDIR)/%_$(BOARD).lst)
CCFLAGS += -D$(BOARD) -DF_CPU=$(F_CPU)
ifneq ($(baudrate),)
    CCFLAGS += -DHIF_DEFAULT_BAUDRATE=$(baudrate)
endif
CCFLAGS += -I$(URACOLIDIR)/inc -I.
LDFLAGS = $(patsubst %,-L%,$(LIBDIRS)) -luracoli_$(BOARD)

# === custom settings ======================================================
CCFLAGS += -DAPP_NAME=\"xmpl_keys\"


OC=avr-objcopy
OCFLAGS=-O ihex

# === build rules ============================================================
__xmpl_keys__: $(TARGET).hex

$(TARGET).hex: $(TARGET).elf
	$(OC) $(OCFLAGS) $< $@

$(TARGET).elf: $(OBJECTS)
	$(CC) -o $@ $(CCFLAGS) $^ $(LDFLAGS)

$(OBJDIR)/%_$(BOARD).o: %.c
	$(CC) $(CCFLAGS) -c -o $@ $<

