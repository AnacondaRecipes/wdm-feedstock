# configure
cmake . -B build -G Ninja $CMAKE_ARGS  \
        -DCMAKE_INSTALL_PREFIX=$PREFIX \
        -DCMAKE_PREFIX_PATH=$PREFIX    \
        -DCMAKE_BUILD_TYPE=Release

# install
cmake --install ./build