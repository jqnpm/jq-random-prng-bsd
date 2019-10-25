<p align="center">
  <a href="https://github.com/joelpurra/jqnpm"><img src="https://raw.githubusercontent.com/joelpurra/jqnpm/master/resources/logotype/penrose-triangle.svg?sanitize=true" alt="jqnpm logotype, a Penrose triangle" width="100" border="0" /></a>
</p>

# [jq-random-prng-bsd](https://github.com/joelpurra/jq-random-prng-bsd)

An implementation of the [BSD libc `rand()`](http://rosettacode.org/wiki/Linear_congruential_generator) [pseudorandom number generator (PRNG)](https://en.wikipedia.org/wiki/Pseudorandom_number_generator) function. The range is `[0,2147483647]`.

This is a package for the command-line JSON processor [`jq`](https://stedolan.github.io/jq/). Install the package in your jq project/package directory with [`jqnpm`](https://github.com/joelpurra/jqnpm):

```bash
jqnpm install joelpurra/jq-random-prng-bsd
```



## Usage


```jq
import "joelpurra/jq-random-prng-bsd" as RandomPrngBsd;

# RandomPrngBsd::rand(seed; n)
RandomPrngBsd::rand(1;5)		# 1103527590, 377401575, 662824084, 1147902781, 2035015474

# RandomPrngBsd::RAND_MAX
RandomPrngBsd::RAND_MAX			# 2147483647
```



---

## License
Copyright (c) 2014, 2015 Peter Koppstein <https://github.com/pkoppstein> and Joel Purra <http://joelpurra.com/>
All rights reserved.

When using **jq-random-prng-bsd**, comply to the MIT license. Please see the LICENSE file for details.
