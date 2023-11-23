# Prime Number Functions

This module offers various functions having to do with
primality tests and factoring integers into prime numbers.

Be careful that these functions while reasonably efficient for casual use
as currently implemented are neither high-performance nor high-security.
They should not be used for real time cryptography in production
without time padding and other appropriate security measures.

Also, these functions use a lot of shared data structures and
were not designed to work in a multithreaded environment.
You must use your own mutex to prevent concurrent use of these data structures.
If there is demand, a future version of this module will include such a mutex,
but at present you shouldn't assume one.

::: tip To use the bindings from this module:
```scheme
(import :std/misc/prime)
```
:::

## primes
```scheme
primes => extensible-vector
```

The variable `primes` is bound to an extensible vector of all the primes known so far
to the algorithms in this module. `(evector-ref primes k)` is the kᵗʰ prime
in the usual mathematical notation `$p_k$`.

As an exception, `(evector-ref primes 0)` is `0`,
even though `0` is not usually considered a prime number,
which is unjust since it is the generator of a prime ideal;
either way, it allows the “usual” prime numbers to be numbered from 1 as usual
(English numbering suffers from an off-by-one bug).

::: tip Examples:
```scheme
> (evector->list primes) ;; initial value
(0 2 3 5 7 11 13)

> (factor 1234)
(2 617)

> (evector->list primes)
(0 2 3 5 7 11 13 17 19 23 29)
```
:::

## compute-prime-wheel
```scheme
(compute-prime-wheel list-of-primes) => array-of-integers
```

Given a list of primes, return a vector the size of which is
the product `M` of those primes, that at index `I` contains
the smallest positive increment `J` such that `I+J` is a unit modulo `M`.
This makes it easier to skip over obvious composite numbers when looking for primes,
although with increasing costs and decreasing benefits as the prime numbers get larger.

::: tip Examples:
```scheme
> (compute-prime-wheel '(2 3))
#(1 4 3 2 1 2)
```
:::

## wheel
```scheme
wheel => array-of-integers
```

The prime wheel we use to weed off most numbers as obviously composite.
By default, we use `(compute-prime-wheel '(2 3 5 7))` as our wheel,
of length `210`, which filters off over 77% of numbers as composite in one test.

::: tip Examples:
```scheme
> wheel
#(1 10 9 8 7 6 5 4 3 2 1 2 1 4 3 2 1 2 1 4 3 2 1 6 5 4 3 2 1 2 1 6 5 4 3 2 1 4 3 2 1 2 1 4 3 2 1 6 5 4 3 2 1 6 5 4 3 2 1 2 1 6 5 4 3 2 1 4 3 2 1 2 1 6 5 4 3 2 1 4 3 2 1 6 5 4 3 2 1 8 7 6 5 4 3 2 1 4 3 2 1 2 1 4 3 2 1 2 1 4 3 2 1 8 7 6 5 4 3 2 1 6 5 4 3 2 1 4 3 2 1 6 5 4 3 2 1 2 1 4 3 2 1 6 5 4 3 2 1 2 1 6 5 4 3 2 1 6 5 4 3 2 1 4 3 2 1 2 1 4 3 2 1 6 5 4 3 2 1 2 1 6 5 4 3 2 1 4 3 2 1 2 1 4 3 2 1 2 1 10 9 8 7 6 5 4 3 2 1 2)
```
:::

## wheel-position
```scheme
(wheel-position wheel number) => integer
```
Compute the position of a `number` in the `wheel`. See `compute-prime-wheel`.

::: tip Examples:
```scheme
> (wheel-position wheel 32041)
121
```
:::

## wheel-next
```scheme
(wheel-next wheel number position) => (values number position)
```
Given a `number` at given `position` in the `wheel`, return the next `number`
that is not divisible by a factor of the wheel size, and its position in the wheel.

::: tip Examples:
```scheme
> (wheel-next wheel 32041)
32047
127
```
:::

## nth-prime
```scheme
(nth-prime n) => prime-number
```

Given an integer `n`, return the `n`th prime number, starting with prime number `2` at index `1`.

::: tip Examples:
```scheme
> (nth-prime 1000)
7919
```
:::

## prime-sieve
```
prime-sieve => ebits
```

An extensible bitmap telling which numbers are prime below some fill-pointer.
To save half the space, we only storing a bitmask for odd numbers.
We could further save space, by using a variant of the 2,3,5,7-wheel,
from 50% to under 23% (48/210), but that would mean a much larger access factor constant.

## next-prime-above
```scheme
(next-prime-above n) => prime
```

Return the next prime number `p` such that `p > n`

::: tip Examples:
```scheme
> (next-prime-above 300)
307
> (next-prime-above 1000)
1009
```
:::

## prime?/sieve
```scheme
(prime?/sieve n)
```

Given a small integer `n`, is it a prime number?
Answer using Erathostenes' sieve.

::: tip Examples:
```scheme
> (prime?/sieve 19890604)
#f
> (prime?/sieve (next-prime-above 19890604))
#t
```
:::

## largest-known-prime
```scheme
(largest-known-prime) => prime
```

Return the largest small prime computed so far using the sieve of Erathostenes.

::: tip Examples:
```scheme
> (largest-known-prime) ;; initially
13
> (next-prime-above 19890604)
19890631
> (largest-known-prime) ;; based on using the sieve of Erathostenes
4457
```
:::

Note that we checked that 19890631 was a prime number, but we only ran the sieve up to 4457,
so we don’t have (and didn’t need) a definitive list of prime numbers above 4457,
which is the largest prime number *known* to the algorithms in this module.
Possibly not the best-named function in the module.

## erathostenes-sieve
```scheme
(erathostenes-sieve n)
```

Run the sieve of Erathostenes up to `n`,
which can help easily factor numbers up to `n` squared.
Doesn’t return a value, but will update various internal data structures.

::: tip Examples:
```scheme
> (import :std/misc/evector :std/misc/prime)
> (list (evector->list primes) (largest-known-prime) (values->list (ebits->bits prime-sieve)))
((0 2 3 5 7 11 13) 13 (0 0 1 2 2 3 3 4 4 4 4) (110 8))
> (erathostenes-sieve 100)
> (list (evector->list primes) (largest-known-prime) (values->list (ebits->bits prime-sieve)))
((0 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97) 97 (0 0 1 2 2 3 3 4 4 4 4) (1427829207386990 51))
```
:::

## pi-function, pi-cache
```scheme
(pi-function n) => count
pi-cache => evector
```

`(pi-function n)` is the number of positive prime integers no greater than `n`.
`pi-cache` is an extensible vector that caches the results of `pi-function`.
Note that this is a naive implementation using the sieve of Erathostenes.

::: tip Examples:
```scheme
> (evector->list pi-cache)
(0 0 1 2 2 3 3 4 4 4 4)
> (pi-function 100)
25
```
:::

## factor
```scheme
(factor n) => list-of-primes
```

Given positive integer `n`, return a list of prime numbers that divide `n`,
each repeated as many times as it divides `n`.

::: tip Examples:
```scheme
> (factor 625)
(5 5 5 5)
> (import :std/misc/func)
> (equal? (factor 808017424794512875886459904961710757005754368000000000)
          [(repeat 2 46)... (repeat 3 20)... (repeat 5 9)...
           (repeat 7 6)... (repeat 11 2)... (repeat 13 3)...
           17 19 23 29 31 41 47 59 71])
#t
```
:::

## witness-of-compositeness?
```scheme
(witness-of-compositeness? a n n-1 r d)
```

Given integers `a` and `n`, and ancillary data
`n-1` which is `(- n 1)`,
`r` which is the valuation of 2 in n-1 (number of times n-1 is divisible by 2), and
`d` which is the rest of `n-1` divided by `2**r`,
return true if `a` is a witness of `n` being composite according to the Miller test.

## prime?/miller
```scheme
(prime?/miller n as)
```

Is integer `n` a prime number?
Use Miller method to check, with a list of candidate witnesses `as`.

## prime?/miller-rabin
```scheme
(prime?/miller-rabin n (extra-checks 16))
```

Is integer `n` a prime number? Use Rabin-Miller method to check, which is probabilistic.
The number of extra checks determine how much heuristic assurance we have that the number is prime:
each extra-check decreases the probability of false positive by 1/4,
so 16 (the default) makes for 2**-64 chances of error.

## prime?
```scheme
(prime? n)
```

Is integer `n` a prime number? Use Rabin-Miller method to check for large enough `n`,
or faster methods when `n` is small enough.

::: tip Examples:
```scheme
> (map prime? (iota 20))
'(#f #f #t #t #f #t #f #t #f #f #f #t #f #t #f #f #f #t #f #t)
```
:::
