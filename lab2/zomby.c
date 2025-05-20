#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    pid_t pid = fork();

    if (pid > 0) {
        printf("Parent PID: %d, Child PID: %d\n", getpid(), pid);
        sleep(60);
    } else if (pid == 0) {
        exit(0);
    } else {
        perror("fork failed");
        exit(1);
    }

    return 0;
}
