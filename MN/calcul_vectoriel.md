Profiter des opérateurs vectoriels (unité vectoriels) de notre processeur pour faire plusieurs opérations en même temps sur le même coeur.

```c
#include <smmintrin.h>

typedef float float[4] __attribute__ ((aligned (16))); # Aligne sur 16 octets pour faciliter le transport dans la ram

float a = {1.0f, 2.0f, 3.0f, 4.0f};
float b = {1.0f, 2.0f, 3.0f, 4.0f};
float dp;

__m128 v1, v2, res;
v1 = _mm_load_ps(a);
v2 = _mm_load_ps(b);

res = _mm_dp_ps(v1, v2, 0xFF);

_mm_store_ps(dp, res);
```

_... = intrinsic ?

`gcc -msse4.2`
