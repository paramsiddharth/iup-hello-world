FLAGS := 
WIN_FLAGS := -mwindows
INCLUDE_DIRS := -I./iup/include
LINKS := -liup -lgdi32 -lcomdlg32 -lcomctl32 -luuid -loleaut32 -lole32
LINK_DIRS := -L./iup

ifeq ($(OS),Windows_NT)
	FLAGS += ${WIN_FLAGS}
endif

build:
	gcc \
		-o main.exe \
		${FLAGS} \
		${INCLUDE_DIRS} \
		main.c \
		${LINKS} \
		${LINK_DIRS}