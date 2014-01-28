deka provides correctly rounded decimal arithmetic for Haskell.

Currently the library is nearly done, but it needs more tests and
documentation, which I'm working on.  Use at your own risk.

The core of deka is a binding to the C library decNumber. As the
author of deka, I have no association with the author of decNumber,
and any errors in this library are mine and should be reported to
omari@smileystation.com or to the Github tracker at

http://www.github.com/massysett/deka

deka uses the decQuad functions in decNumber.  This means that deka
is limited to 34 digits of precision.  Because 1 quadrillion (that
is, one thousand trillion) has only 16 digits of precision, I figure
that 34 should be sufficient for many uses.  Also, you are limited
to exponents no smaller than -6143 and no greater than 6144.  deka
will notify you if you perform calculations that must be rounded in
order to fit within the 34 digits of precision or within the size
limits for the exponent.

You will want to understand decNumber and the General Decimal
Arithmetic Specification in order to fully understand deka.  The
specification is at

http://speleotrove.com/decimal/decarith.html

and decNumber is at

http://speleotrove.com/decimal/decnumber.html

and more about decimal arithmetic generally at

http://speleotrove.com/decimal/

You will need to have the decNumber library installed in order to
use this library.  I have packaged decNumber for easy installation,
as the original decNumber files are distributed as plain C files
without any provision for installation as a library.  This packaging
was done without any collaboration with the author of decNumber, so
use it at your own risk.  The latest version of the package is
downloadable by clicking on the big green button here:

https://github.com/massysett/decnumber/releases

Much more documentation is available in the Haddock comments in the
source files.  There is also a file of examples to get you started.
It has copious comments.  It is written in literate Haskell, so the
compiler keeps me honest with the example code.  Unfortunately
Haddock does not play very nice with literate Haskell.  However, the
file is easy to view on Github:

[Examples](lib/Data/Deka/Docs/Examples.lhs)

deka is licensed under the BSD license, see the LICENSE file.

[![Build Status](https://travis-ci.org/massysett/deka.png?branch=master)](https://travis-ci.org/massysett/deka)
