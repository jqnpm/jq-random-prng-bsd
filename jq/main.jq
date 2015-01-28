import "joelpurra/jq-bigint" as BigInt;

# http://rosettacode.org/wiki/Linear_congruential_generator#jq

def RAND_MAX:
	2147483647;


# BSD rand()
# Input: [count, previous]
def next_rand:
  BigInt::long_multiply("1103515245" ; .[1]|tostring) as $lm
  | BigInt::long_add( $lm; "12345") as $la
  # mod 2^31
  | [.[0] + 1, (BigInt::long_mod( $la; "2147483648") | tonumber) ];
 
# Generate n values
def rand(seed; n):
  [0, seed]
  | next_rand # skip the seed itself
  | recurse(if .[0] < n then next_rand else empty end)
  | .[1];
