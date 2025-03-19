### **Date**: 2025-02-18
## Agenda

- Recap
- Initialisation
- References 
- L-values and R-values
- Const
- Compiling C++ Programs
***

>[!Important] Project: Midterm & Final 
>
>- **Midterm part**
>- Problem
>- Solution (computational solution) `c++`
>- Preliminary results (optional)
>- Format:
>	- Report (3 pages IEEE Conference Format)
>	- Presentation
>- **Final part**
>- Midterm Part + Final implementations/results
>- Format:
>	- Report (6 pages)
>	- Presentation
>	- Comparison midterm/final sections, problems and challenges.
>	- GitHub repository 

## Recap

>[!TIP] Git and Github
>`git clone` -> copies a remote repository in your local machine.
>`git push`   -> upload changes from your local machine to your remote repository.
>
>We can `fork` a repository so we can start to modify someone else's code. 

>[!TIP] The `using` keyword
>We can use **type aliases** with `using`:
>```cpp
>using Zeros = std::pair<double, double>;
>using Solution = std::pair<bool, Zeros>;
>Solution solveQuadratic(double a, double b, double c);
>```
>

>[!TIP] The `auto` keyword
>The `auto` keyword tells the compiler to infer the type of a variable:
>
>```cpp
>auto result = solveQuadratic(a, b, c);
>```

***
## Initialisation
Provides initial values at the time of construction.

>[!QUESTION] How?
>- Direct initialisation 
>- Uniform initialisation
>- Structured binding

>[!Definition] Direct Initialisation
> ```cpp
> int main() {
>	int numOne = 12.0;
> 	int numTwo(12.0);
>	std::cout << "numOne is: " << numOne << std::endl;
>	std::cout << "numTwo is: " << numTwo << std::endl;
>return 0;
>} 
>```
>Notice that `12.0` is not an int, nevertheless C++ does not care. C++ will store `12.0` as an int `12`. This is called  **narrowing conversion** and can lead to loss of data.

>[!Definition] Uniform Initialisation
>**Notice the curly braces!**
>```cpp
>int main () {
>	int num0ne {12.0}; //This will rise an error (narrowing conversion)
>	float numTwo {12.0}; 
>	std::cout << "numOne is: " << numOne << std::endl;
>	std::cout << "numTwo is: " << numTwo << std::endl;
return 0;
>}
>```
> With **uniform initialisation** C++ does care about types!
> **It is awesome because:**
> - It is **safe**! It does not allow for narrowing conversions.
> - It is **ubiquitous**, it works for all types like vectors, maps, and custom classes.
```cpp
#include <iostream>
#include <map> // Hash map, dictionary in python

int main() {
	// Uniform initialisation of a map
	std::map<std::string, int> ages{
		{"Alice", 25},
		{"Bob", 30},
		{"Charlie", 35}
}; // Corly braces mean type checking 
	std::cout << "Alice's age: " << ages["Alice"] << std::endl;
	std::cout << "Bob's age: " << ages.at("Bob") << std::endl;
return 0;
}
```

Check the slides for more examples of uniform initialisation for different structs. 

>[!Definition] Structured Binding
>- A useful way to initialise some variables from data structures with fixed sizes at compile time
>- Ability to access multiple values returned by a function
>- Can use on objects where the size is known at compile-time
>```cpp
>std::tuple<std::string, std::string, std::string> getClassInfo() {
>	std::string className = "CS106L";
>	std::string buildingName = "Tutoring Auditorium";
>	std::string language = "C++";
>	return {className, buildingName, language};
>	}
>	int main() {
>	auto [className, buildingName, laguage] = getClassInfo();
>	std::cout << "Come to " << buildingName << " and join us for " << className << " to learn " << language << "!" << std::endl;
>return 0;
>	}
>```
>Notice the uniform initialisation above. Square brackets are used to unpack the values `getClassInfo` returns.  Refer to the slides for another examples!

## References 
It declares a name variable as a reference. Works as an alias for an already-existing thing (variable, tuple, vector,...) using an ampersand `&`.
```cpp
int num = 5;
int& ref = num;

ref = 10; // Assinging a new value through the reference!
std::cout << num << std::endl; // Output: 10
```
`num` is a variable of type `int`, that is assigned to have the value 5.  On the other hand, `ref` is a variable of type `int&`, that is an alias to `num`. So, when we assign 10 to `ref`, we are changing the value of `num`, since `ref` is an alias for `num`.

>[!Example] Example
```cpp
#include <iostream>
#include <cmath>

//Note the ampersand 
void squareN(int& n) {
// Calculates n to the power of 2
	n = std::pow(n, 2);
}

int main() {
	int num = 2;
	squareN(num);
	std::cout << num << std::endl;
	return 0;
}
```

Note that `n` is being passed into `squareN` by reference, so `n` is going to be modified inside the function.

>[!Note] Note
>**Pass by reference** means taking the actual piece of memory and avoiding making a copy of the value.
>**Pass by value** means making a copy. 

>[!Example] 
```cpp
#include <iostream>
#include <cmath>
#include <vector>

void shift(std::vector<std::pair<int,int>> &nums) {
	for (auto& [num1, num2] : nums) {
		num1++;
		num2++;
	}
}
```

Notice that, when we use `auto` solely, we are not modifying `nums` elements, but a copy of them. So we are passing by value in the loop. However, if we use `auto&`, it will create a reference to both values inside the `nums` vector, resulting in effectively changing the values of the original `nums` vector. 

>[!Note]
>When we use an `structured binding` type variable inside a loop, like the case above, we need to unpack the values using `:`. On the other hand, in a non-loop case we use `=`

## L-values and R-values 

|                                  | L-value       | R-value       |
| -------------------------------- | ------------- | ------------- |
| Where with respect to equal sign | left or right | right         |
| Example                          | int `x` = 10; | int x = `10`; |
|                                  | int y = `x`;  | int y = x;    |
>[!Attention] 
>**L-values** refers to an object that occupies some identifiable location in memory (i.e, has an address). Essentially an L-value is something that can appear on the left hand side of an assingment.
>```cpp
>x = 10; // x is an L-value
>int& y = x;  // y is an L-value
>```
>**R-values** refer to temporary objects or values that do not have a persistent location in memory.  R-values are typically results of expressions and cannot be assigned to directly.
>```cpp
>int x = 5; // Here 5 is an R-value
>int sum = x + y; // Here x+y is an R-value
>```
>We cannot pass an R-value by reference because they are temporary.

## Const
It is a qualifier for objects that declares they cannot be modified. 

```cpp
#include <iostream>
#include <vector>

int main()
{
    std::vector<int> vec{ 1, 2, 3 };    // A normal vector
    const std::vector<int> const_vec{ 1, 2, 3 };  // A const vector
    std::vector<int>& ref_vec{ vec };    // A reference to 'vec'
    const std::vector<int>& const_ref{ vec };  // A const reference to 'vec'

    vec.push_back(3);           // Okay, 'vec' is modifiable
    const_vec.push_back(3);     // ERROR: 'const_vec' is a constant vector and cannot be modified
    ref_vec.push_back(3);       // Okay, 'ref_vec' refers to 'vec', which is modifiable
    const_ref.push_back(3);     // ERROR: 'const_ref' is a constant reference, so it cannot be used to modify the underlying object

    return 0;
}

```

We cannot declare a non-const reference to a const variable!!

```cpp
#include #include int main() {
/// a const vector 
const std::vector const_vec{ 1, 2, 3 }; 
std::vector& bad_ref{ const_vec }; /// BAD 
return 0; 
}
```
