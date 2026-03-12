awk 'BEGIN {
    print "#ifndef __COEFF_TABLE_HPP"
    print "#define __COEFF_TABLE_HPP"
    print "const double CoeffTable[128][4] = {"
}
{
    printf "    { %s, %s, %s, %s }%s\n", $1, $2, $3, $4, (NR==128 ? "" : ",")
}
END {
    print "};"
    print "#endif"
}' coeffs.txt > ../c++-model/CoeffTable.hpp
