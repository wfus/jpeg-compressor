OBJS=jpge.o jpgd.o encoder.o
BIN=encoder
CXXFLAGS ?= -O3 -ffast-math -fno-signed-zeros
CXX=g++

$(BIN): $(OBJS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^

clean:
	rm $(OBJS) $(BIN)
