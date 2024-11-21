#pragma region Definitions

#define VIDEO_MEMORY 0xb8000

#define DISPLAY_COLS 80
#define DISPLAY_ROWS 25

#pragma endregion

#pragma region Global Variables

char* video_memory = (char*) VIDEO_MEMORY;
int cursorX = 0;
int cursorY = 0;

#pragma endregion

#pragma region Functions

void cls();
void printChar(char character, int x, int y);
void printString(const char* string, int x, int y);

#pragma endregion

void entry_point() {
    cls();
    printString("Hello World!", 0, 0);

    while (1);
}

#pragma region Output Utility Functions

void printChar(char character, int x, int y) {
    int offset = (DISPLAY_COLS * y + x) * 2;
    video_memory[offset] = character;
    video_memory[offset + 1] = 0x07;
}

void cls() {
    for (int x = 0; x < DISPLAY_COLS; ++x) {
        for (int y = 0; y < DISPLAY_ROWS; ++y) {
            printChar(' ', x, y);
        }
    }
}

void printString(const char* string, int x, int y) {
    int stringCharacter = 0;
    for (; string[stringCharacter] != '\0'; stringCharacter++) {
        printChar(string[stringCharacter], x, y);
        x++;
    }
}

#pragma endregion
