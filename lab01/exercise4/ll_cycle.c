#include <stddef.h>
#include "ll_cycle.h"

int ll_has_cycle(node *head) {
    /* TODO: Implement ll_has_cycle */
    
    
    // Use two pointers, one moving twice as fast as the other
    node *slow = head;
    node *fast = head;

    while (fast != NULL && fast->next != NULL) {
        slow = slow->next;          // Move one step
        fast = fast->next->next;    // Move two steps

        // If there is a cycle, the two pointers will eventually meet
        if (slow == fast) {
            return 1;  // Cycle detected
        }
    }

    return 0;  // No cycle found
    
}



