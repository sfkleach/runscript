#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char **argv) {
    // 1. Determine script path
    // 2. Open script
    // 3. Parse shebang
    // 4. Parse header lines
    //    - extract metachars
    //    - apply escapes
    //    - apply substitution
    //    - classify line
    // 5. Build argv[]
    // 6. Build envp[]
    // 7. execve()

    fprintf(stderr, "runscript: implementation pending\n");
    return 1;
}
