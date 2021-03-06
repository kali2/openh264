#USE_ASM = No  # We don't have ASM working on Mac yet
ASM = nasm
CFLAGS +=  -fPIC
LDFLAGS += -lpthread
ifeq ($(ENABLE64BIT), Yes)
ASMFLAGS += -f macho64 --prefix _
else
ASMFLAGS += -f macho32 
endif
