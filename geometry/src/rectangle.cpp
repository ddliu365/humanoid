#include "rectangle.h"

rectangle::rectangle()
{
	width = height = 0;
}

rectangle::rectangle(int a, int b)
{
	width = a; height = b;
}


int rectangle::area()
{
	return width*height;
}

