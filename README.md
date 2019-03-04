# xxbash
xxHash in pure Bash (with m4)

As the title says, this is a pure Bash implementation of XXH32 and XXH64
(m4 is used to expand macros, nothing else).

**This code is a joke/proof of concept.** The performance
is **terrible**, and you are better with any other
implementation. XXH64 runs about 150 times slower than
the native implementation, and XXH32 runs about 250
times slower than the native implementation.

If you use this in production code, you are a monster.

The original xxHash code can be found at https://github.com/Cyan4973/xxhash,
and you are 150-250 times better off using that implementaion.

Requirements: A Bash with 64-bit arithmetic (preferably
a recent version, although macOS's bash 3.2 works), and m4 for building.

xxhsum.sh requires hexdump.

**Usage:**
Don't.

Ok, this is how you use it:
```
./xxhsum.sh [FILE] (defaults to xxhash.sh)

. xxhash.sh
XXH32 "file in hex, no spaces or prefix" "seed"
XXH64 "file in hex, no spaces or prefix" "seed"
```

# License

```
xxHash Library
Copyright (c) 2012-2016, Yann Collet
Copyright (c) 2019, easyaspi314
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice, this
  list of conditions and the following disclaimer in the documentation and/or
  other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```
