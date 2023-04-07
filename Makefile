BUILD = build
SRC = src
SAMPLE = sample

$(BUILD)/assembler: $(SRC)/pass1.cpp $(SRC)/pass2.cpp $(SRC)/utils.cpp $(SRC)/table_structs.cpp build 
	g++ $(SRC)/pass2.cpp -o $(BUILD)/assembler

sample:
	cp $(SAMPLE)/* $(BUILD)/

build:
	mkdir -p $(BUILD)
	cp $(SAMPLE)/* $(BUILD)/