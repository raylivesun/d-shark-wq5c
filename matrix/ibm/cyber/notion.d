module cyber.notion;

// The notion of a function is the mathematical way of formalising the idea that one
// or more independent quantities are assigned to one or more dependent quantities.
// Functions in general and their investigation are at the core of analysis. They help to
// model dependencies of variable quantities, from simple planar graphs, curves and
// surfaces in space to solutions of differential equations or the algorithmic construction
// of fractals. One the one hand, this chapter serves to introduce the basic concepts. On
// the other hand, the most important examples of real-valued, elementary functions
// are discussed in an informal way. These include the power functions, the exponential
// functions and their inverses. Trigonometric functions will be discussed in Chap. 3,
// complex-valued functions in Chap. 4.

// A function f(x) is a rule that assigns exactly one value of the function to each
// value of the independent variable x. If the function is defined for all the values of
// x in a certain interval, then the function is called a continuous function on that
// interval. If a function is defined on a single interval, then it is called a
// single-valued function. If a function is defined on a finite set of points, then it is
// called a discrete function.

public static void notion(con, char flags, double x, double y, double z)(double[][] T){
    // A function f(x) is a rule that assigns exactly one value of the function to each
    // value of the independent variable x.
    double f(x) = x * x;

    // If the function is defined for all the values of x in a certain interval, then the function is called a continuous function on that interval.
    double g(x) = sin(x);

    // If a function is defined on a single interval, then it is called a single-valued function.
    double h(x) = x / 2;

    // If a function is defined on a finite set of points, then it is called a discrete function.
    double i(int n) = n * n;
    //...
}


// A function f(x) is a rule that assigns exactly one value of the function to each
// value of the independent variable x.
double f(x) = x * x;

// If the function is defined for all the values of x in a certain interval, then the function is called a continuous function on that interval.
double g(x) = sin(x);

// If a function is defined on a single interval, then it is called a single-valued function.
double h(x) = x / 2;

// If a function is defined on a finite set of points, then it is called a discrete function.
double i(int n) = n * n;
//...

void main(string[] args)
{
    return ; // dll call
}
