#include <unistd.h>
#include <stdio.h>

int main(int argc, char **argv) {
  printf("Выполняется %s\n", argv[0]);
  execv("sequential_min_max", argv);
  return 0;
}
