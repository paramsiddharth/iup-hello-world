#include <stdlib.h>
#include <iup.h>

int main(int argc, char* argv[]) {
	IupOpen(&argc, &argv);

	IupMessage("Hi!", "Hello, world!");

	IupClose();	
	return EXIT_SUCCESS;
}