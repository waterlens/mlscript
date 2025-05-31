CXX := clang++
USE_RC := 0
ifeq ($(USE_RC),1)
  CFLAGS += -DMLS_ENABLE_RC
endif
CFLAGS += -O3 -Wall -Wextra -std=c++20 -I. -Wno-inconsistent-missing-override -I/opt/homebrew/include -g -fsanitize=address
LDFLAGS += -L/opt/homebrew/lib
LDLIBS := -lmimalloc -lgmp
SRC :=
INCLUDES := mlsprelude.h
DST :=
DEFAULT_TARGET := mls.out
TARGET := $(or $(DST),$(DEFAULT_TARGET))

.PHONY: pre all run clean auto

all: $(TARGET)

run: $(TARGET) 
	./$(TARGET)

pre: $(SRC)
	sed -i '' 's#^//│ ##g' $(SRC)

clean:
	rm -r $(TARGET) $(TARGET).dSYM 2> /dev/null || true
	rm -r *.out 2> /dev/null || true
	rm -r *.o 2> /dev/null || true

auto: $(TARGET)

$(TARGET): $(SRC) $(INCLUDES)
	$(CXX) -c $(CFLAGS) -o $(TARGET).o $(SRC)
	$(CXX) -c $(CFLAGS) -o $(TARGET).aux.o mlsaux.cxx
	$(CXX) $(CFLAGS) $(LDFLAGS) $(LDLIBS) -o $(TARGET) $(TARGET).aux.o $(TARGET).o
