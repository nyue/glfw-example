
CXX := g++
CXXFLAGS := -Wall -g -I/opt/local/include -I$(HOME)/local/include
LDFLAGS := -L/opt/local/lib -L$(HOME)/local/lib -lopenctm -lglfw -framework Cocoa -framework OpenGL
TARGET := bump
OBJECTS := $(patsubst %.cpp,%.o,$(wildcard *.cpp))

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<

all: $(TARGET)

$(TARGET):  $(OBJECTS)
	$(CXX) $(LDFLAGS) $(OBJECTS) -o $@

clean:
	rm -f $(TARGET) $(OBJECTS)

