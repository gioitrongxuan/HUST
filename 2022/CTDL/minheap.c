#include <stdio.h>
#include <stdlib.h>

#define LEFT(i) (2 * (i) + 1)
#define RIGHT(i) (2 * (i) + 2)
#define PARENT(i) ((i) / 2)

void swap(int *a, int *b) {
  int temp = *a;
  *a = *b;
  *b = temp;
}

void heapify(int *heap, int i, int heap_size) {
  int smallest = i;
  int left = LEFT(i);
  int right = RIGHT(i);
  if (left < heap_size && heap[left] < heap[smallest]) {
    smallest = left;
  }
  if (right < heap_size && heap[right] < heap[smallest]) {
    smallest = right;
  }
  if (smallest != i) {
    swap(&heap[i], &heap[smallest]);
    heapify(heap, smallest, heap_size);
  }
}

void build_heap(int *heap, int heap_size) {
  int i;
  for (i = heap_size / 2; i >= 0; i--) {
    heapify(heap, i, heap_size);
  }
}

int main(int argc, char *argv[]) {
  int heap[] = {40, 30, 65, 25, 35, 50, 76, 10, 28, 27, 33, 36, 34, 48, 60, 68, 80, 69};
  int heap_size = sizeof(heap) / sizeof(int);

  build_heap(heap, heap_size);

  int i;
  for (i = 0; i < heap_size; i++) {
    printf("%d ", heap[i]);
  }
  printf("\n");

  return 0;
}

