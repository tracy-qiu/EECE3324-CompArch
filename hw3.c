#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <sys/time.h>

//helper function: prints out elements of array separated by spaces
void printArray(int arr[], int len) {
    int i;
    for (i = 0; i < len; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

void insertionSort(int arr[], int len) {
    int index, next, value;
    for (index = 1; index < len; index++) {
        value = arr[index];
        next = index - 1;

        while (next >= 0 && arr[next] > value) {
            arr[next + 1] = arr[next];
            next = next - 1;
        }
        arr[next + 1] = value;
    }
}

int medianOfList(int arr[], int len) {
    int middle = len / 2;
    if (len % 2 == 0) {
        return (arr[middle] + arr[middle - 1])/2;
    } 
    else {
        return arr[middle];
    }
}

int main(int argc, char ** argv) {
    int arr[] = { 3, 5, 4, 1, 2 };
    size_t n = sizeof(arr) / sizeof(int);
    insertionSort(arr, n);
    printArray(arr, n);
    int median1 = medianOfList(arr, n);
    printf("%d\n", median1);

    int arr2[] = { 5, 7, 3, 8, 20, 4 };
    size_t n2 = sizeof(arr2) / sizeof(int);
    insertionSort(arr2, n2);
    printArray(arr2, n2);
    int median2 = medianOfList(arr2, n2);
    printf("%d\n", median2);
}