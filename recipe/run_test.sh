set -x

# test from:
# https://github.com/tnagler/wdm/blob/5337860a9a77f147f3adebf4c93fe2ca74d5a028/.github/workflows/main.yml

${CXX} ${CXXFLAGS} ${LDFLAGS} ./test/test.cpp -I${PREFIX}/include -L${PREFIX}/lib -o test/wdm_test

./test/wdm_test

# Headers tests - Unix 
test -e ${PREFIX}/include/wdm.hpp
test -e ${PREFIX}/include/wdm/bbeta.hpp
test -e ${PREFIX}/include/wdm/eigen.hpp
test -e ${PREFIX}/include/wdm/hoeffd.hpp
test -e ${PREFIX}/include/wdm/ktau.hpp
test -e ${PREFIX}/include/wdm/methods.hpp
test -e ${PREFIX}/include/wdm/nan_handling.hpp
test -e ${PREFIX}/include/wdm/prho.hpp
test -e ${PREFIX}/include/wdm/ranks.hpp
test -e ${PREFIX}/include/wdm/srho.hpp
test -e ${PREFIX}/include/wdm/utils.hpp