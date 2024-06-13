# configure
cmake . -B build -G Ninja $CMAKE_ARGS
# install
cmake --install build --prefix=$PREFIX
