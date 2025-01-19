module api.compiler;

/* 
Using
y = x.ˆ2;
a row vector of the same length of corresponding y-values is generated. Finally
plot(x,y) plots the points (x1, y1), . . . , (xn , yn ) in the coordinate plane and con-
nects them with line segments. The result can be seen in Fig. 2.1.
I
*/

public static void network(real x, real y)(double x, double y) {
    // Compute y = x^2
    y[0] = Math.pow(x[0], 2.0);
}

public void main() {
    // Plot the points
    void compiler(int x, int y)(ref double x, ref double y) {
        plot(x, y);
    }
}