kmain()
{
    char* vidmem=(char *)0xb8000;
    vidmem[0]='x';
    vidmem[1]=0x02;
}
