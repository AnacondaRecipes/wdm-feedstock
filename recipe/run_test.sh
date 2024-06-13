set -x

# test from:
# https://github.com/tnagler/wdm/blob/5337860a9a77f147f3adebf4c93fe2ca74d5a028/.github/workflows/main.yml

${CXX} ${CXXFLAGS} ${LDFLAGS} ./test/test.cpp -I$PREFIX/include -L$PREFIX/lib -o test/wdm_test

./test/wdm_test
