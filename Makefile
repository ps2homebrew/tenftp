# _____     ___ ____     ___ ____
#  ____|   |    ____|   |        | |____|
# |     ___|   |____ ___|    ____| |    \    PS2DEV Open Source Project.
#-----------------------------------------------------------------------
# Copyright 2001-2004, ps2dev - http://www.ps2dev.org
# Licenced under Academic Free License version 2.0
# Review ps2sdk README & LICENSE files for further details.
#
# $Id$

PS2SDKSRC=/cygdrive/c/ps2dev/ps2sdk

IOP_OBJS_DIR = obj/
IOP_BIN_DIR = bin/
IOP_SRC_DIR = src/
IOP_INC_DIR = include/

IOP_BIN  = bin/tenfs.irx
IOP_OBJS = obj/tenfs.o obj/ftp_cache.o obj/ftp_proto.o obj/imports.o

IOP_CFLAGS  += -Wall -fno-builtin
IOP_LDFLAGS += -s
IOP_INCS += -I$(PS2SDKSRC)/iop/tcpip/tcpip/include -I$(PS2SDKSRC)/iop/tcpip/dns/include

all: $(IOP_OBJS_DIR) $(IOP_BIN_DIR) $(IOP_BIN)

clean:
	rm -f -r $(IOP_OBJS_DIR) $(IOP_BIN_DIR)

include $(PS2SDKSRC)/Defs.make
include $(PS2SDKSRC)/iop/Rules.make
include $(PS2SDKSRC)/iop/Rules.release
