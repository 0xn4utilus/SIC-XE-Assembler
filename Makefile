BUILD = build
SRC = src


$(BUILD)/assembler: $(SRC)/pass1.cpp $(SRC)/pass2.cpp $(SRC)/utils.cpp $(SRC)/table_structs.cpp build
	g++ $(SRC)/pass2.cpp -o $(BUILD)/assembler

build:
	mkdir -p $(BUILD)