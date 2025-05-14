#include "mlsprelude.h"

#include <mimalloc-new-delete.h>
#include <mimalloc.h>

#include <random>

std::minstd_rand rng(42);
std::uniform_int_distribution<int> dist(0, MLS_RAND_MAX);

int _mlsRand() { return dist(rng); }

