### **Date**: 2025-02-13
## Agenda 
- What is `C++`
- Structs bundle data together
- Code Demo
- Improving our code
***

>[!tip] Resources for the course
>- Book: A tour of C++
>- Book: The C++ Programming Language
>- Prof. email: ipineda@...

## What is C++?

```cpp exec
// Include some libraries 
#include <iostream>
#include <utility>
#include <cmath>

using namespace std;

//Main logic of your programm 
int main() {
std::cout <<"Hello World" << std::endl;
std::cout <<"Welcome to" << std::endl;
for (char ch : "CS106L")
	{
	std::cout << ch << std::endl;
	}
return 0;
}
```


>[!Important]
>In `C++`
>```cpp
>std::cin
>std::cout
>``````
>are object instances!
>
>In python, it is much more simple:
>```python
print("Hello World")
print("Welcome to")
for ch in "CS106L":
>	print(ch)

>[!Question] How do we run code?
>We first need to translate our code to machine code:
>```
>Source code -> Translation -> Machine code 
## Classification of programming languages

>[!DEFINITION] Interpreted Languages
>  Interpreted programming languages are executed line by line, with each line being translated and executed on the fly. This means that code can be tested and modified quickly, making them ideal for rapid prototyping and scripting. However, interpreted languages can be slower than compiled languages because the code is translated every time it is run.
>```
>Source Code -> Interpreter -> Machine Code 
>```
```bash
python3 python.py # python3 is the interpreter
```

>[!Definition] Compiled Languages 
>Compiled programming languages are translated into machine code before they are executed. This means that the code can be optimized for specific hardware, resulting in faster execution speeds. However, the compilation process can take time, making them less suitable for rapid prototyping. Compiled languages are often used for applications where performance is critical, such as operating systems and video games.
>```
>Source Code -> Compiler -> Machine Code
>```
```bash
$ g++ main.cpp -o main # Compilation g++ outputs binary to main
./main # This actually runs our programm
```

>[!QUESTION] Why compiled over interpret?
>- It allows us to generate more efficient machine code!
>	- Interpreters only see one small part of code at a time
>	- Compilers see everything
>- However, compilation takes time!

>[!important] Compile time vs. runtime
>`Compile time` is the time it takes for our compiler to generate the binaries of our program, and `runtime` is the time it takes to our program to execute. 

>[!question] How do we verify code? 
> Once we run our code, either interpreted or compiled, we have multiple error messages that will pop up in case something when wrong throughout the compilation/execution process.
## Types 
- A `type` refers to the "category" of a variable.
- `C++` comes with built-in types

| Type   | Example             |
| ------ | ------------------- |
| int    | 106                 |
| double | 75.3                |
| string | "Welcome to CS106L" |
| bool   | `true` `false`      |
| size_t | 12 // Non-negative  |

>[!Info] Static Typing
>C++ is a statically typed language 
>- Every variable must declare a type
>- Once declared, the type cannot be changed

```python
# Python (Dynamic Typing)
a = 3
b = "test"

def foo(c):
	d = 106
	d = "Hello world!"
```
```cpp
// C++ (Static Typing)
int a = 3;
string b = "test";
void foo(string c)
{
	int d = 106;
	d = "hello world!" // cannot do this!!
}
```
>[!QUESTION] Why compiled over interpret?
>- More efficient
>- Easier to understand and reason about
>- Better error checking 

>[!Important] Important
>(int) x `casts` x to an int by dropping decimals
>- Ex. (int) 5.3 = 5

| Type   | Example                                      |
| ------ | -------------------------------------------- |
| string | a = "test";                                  |
| double | b = 3.2 * 5 - 1;                             |
| int    | c = 5/2;                                     |
| int    | d(int foo) {return foo / 2; }                |
| double | e(double foo) {return foo / 2;}              |
| int    | f(double foo) {return (int)(foo + 0.5); }    |
| void   | g(double c) {std::cout << c << std::endlx; } |
>[!Note] Aside: Function Overloading
>Defining two functions with the same name but different signatures
>```cpp
>double func(int x) {
>	return (double) x + 3;
>}
>double func(double x) {
>	return x * 3;
>}
>func(2);  
>func(2.0);
>```

## Structs 

>[!EXAMPLE] Keeping track of students
>Every student ID has a few properties
>- A name (`string`)
>- A SUNet (`string`)
>- An ID # (`int`)

>[!question] A fundamental problem
>- How do we return more than one value?
>- What should our return type be?

### Structs bundle data together

```cpp
struct StanfordID {
	string name;    // These are called fields
	string sunet;   // Each has a name and a type
	int idNumber;
};

StanfordID id;    // Initialise struct
id.name = "Jacob Roberts-Beca";    // Access field with "."
id.sunet = "jtrb"
id.idNumber = 6504417
```

```cpp
// Returning multiple values
StanfordID issueNewID() {
	StandfordID id;
	id.name = "Jacob";
	id.sunet = "jtbr";
	id.idNumber = 6504417;
	return id;
}
```

>[!Note] List Initialisation
>```cpp
>// Order depends on field order in struct. '=' is optional
>StanfordID jrb = {"Jacob", "jbrt", 6504417};
>StanfordID fi {"Fabio", "fibanez", 6504418};
>```

>[!Note] Using list initialisation
>```cpp
>StanfordID issueNewID() {
>	StanfordID id = {"Jacob", "jbrt", 6504417};
>	return id; 
>}
>
>StanfordID issueNewID() {
>	return {"Jacob", "jbrt", 6504417};
>```

>[!Example] Many Possible Structs
>```cpp
>struct Name {
>	string first; 
>	string last;
>};
>Name jrb = {"Jacob", "R.B"};
>
>struct Order {
>	string item; 
>	int quantity;
>};
>Order dozen - {"Eggs", 12};
>
>struct Point {
>	double x; 
>	double y;
>};
>Point origin {0.0, 0.0};
>
>struct Circle {
>	Point center; 
>	double radius;
>};
>Circle circle {{0.0}, 1.0};
>```

## Using std::pair!

```cpp
struct Order {
	std::string item;
	int quantity;
};

Order dozen = {"Eggs" ,12};
```
```cpp
std::pair<std::string, int> dozen {"Eggs", 12};
std::string item = dozen.first; //Eggs
int quantity = dozen.second;
```

>[!Note] std::pair is a template
>```cpp
>//std::pair template
>template <typename T1, typename T2>
>struct pair {
>	T1 first;
>	T2 second;
>};
>std::pair<std::string, int>
>
>struct pair {
>	std::string first;
>	int second;
>};
>```

### std - The C++ Standard Library
- Built-in types, functions and more provided by `C++`
- You need to `#include` the relevant file
	- `#include <string>`-> std::string
	- `#include <utility>`-> std::pair
	- `#include <iostream>`-> std::cout, std::endl
- `using namespace std` is not recommended (bad style)

>[!exercise]   Solving a Quadratic Equation
>If we have 
>$$ ax^2 + bx + c = 0$$
> solutions are
> $$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$
> if $b^2 - 4ac$ is negative, there are no solutions.

```cpp
//Solution 
#include <iostream>
#include <string>
#include <cmath>
#include <utility>

// Function to solve a quadratic equation
std::pair <bool, std::pair<double, double>> solveQuadratic(double a, double b, double c) {
	double discriminant = b*b - 4*a*c;
	if (discriminant < 0) {
		return std::pair<bool, std::pair<double, double>>(false, std::pair<double, double>(0, 0));
	}

	else {

		double x1 = (-b + sqrt(discriminant)) / (2*a);
		double x2 = (-b - sqrt(discriminant)) / (2*a);

		return std::pair<bool, std::pair<double, double>>(true, std::pair<double, double>(x1, x2));
	}
}

int main () {
	double a, b, c;
	std::cout << "Enter a: ";
	std::cin >> a;
	std::cout << "Enter b: ";
	std::cin >> b;
	std::cout << "Enter c: ";
	std::cin >> c;
	std::pair<bool, std::pair<double, double>> roots = solveQuadratic(a, b, c);

	std::cout << "{" << (roots.first ? "true" : "false") << ", {" << roots.second.first << ", " << roots.second.second << "}}" << std::endl;
return 0;
}
```
