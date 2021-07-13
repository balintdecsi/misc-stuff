#include <stdio.h>

int main() {

    // Input & Output:

    // int x, y;
    // char text[20];

    // scanf("%2d %d %*f %5s", &x, &y, text);
    // /* input: 1234  5.7  elephant */
    // printf("%d  %d  %s", x, y, text);
    // /* output: 12  34  eleph */

    // Data types:

    // printf("Color: %s, Number: %d, float: %5.2f \n", "red", 42, 3.14159);
    // /* Color: red, Number: 42, float:  3.14  */

    // printf("Pi = %3.2f", 3.14159); 
    // /* Pi = 3.14 */

    // printf("Pi = %8.5f", 3.14159); 
    // /* Pi =   3.14159 */

    // printf("Pi = %-8.5f", 3.14159); 
    // /* Pi = 3.14159 */

    // printf("There are %d %% in the tree.", 22, "apples");
    // /* There are 22 apples in the tree. */ 

    // printf("%3.2f", 4.4289743);

    // Control sequences:

    // int y;
    // int x = 7;

    // y = (x >= 5) ?  5 : x;

    /* This is equivalent to:
    if (x >= 5)
        y = 5;
    else
        y = x;
    */

    // Conditionals and loops:

    // printf("\n%d\n", y);

    // int num = 4;

    // switch (num) {
    // case 1:
    //     printf("One\n");
    // break;   
    // case 2:
    //     printf("Two\n");
    //     break;   
    // case 3:
    //     printf("Three\n");
    //     break;   
    // default:
    //     printf("Not 1, 2, or 3.\n");
    // }

    // switch (num) {
    // case 1:
    // case 2:
    // case 3:
    //     printf("One, Two, or Three.\n");
    //     break;   
    // case 4:
    // case 5:
    // case 6:
    //     printf("Four, Five, or Six.\n");
    //     break;
    // default:
    //     printf("Greater than Six.\n");
    // }


    int x, y;
    int num = 5;

    for(x = 0, y = num; x < y; x++, y--)
        printf("x is %d and y is %d ", x, y);
    
    // Arrays:

    float purchases[3] = {10.99, 14.25, 90.50};
    float total = 0;
    int k;

    /* total the purchases */
    for (k = 0; k < 3; k++) {
        total += purchases[k];
    }
   
    printf("Purchases total is %6.2f\n", total);
    /* Output:  Purchases total is 115.74 */ 

    return 0;

} 