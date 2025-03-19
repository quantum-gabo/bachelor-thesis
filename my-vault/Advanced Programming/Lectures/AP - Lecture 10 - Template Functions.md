### **Date**: 2025-03-18

## Agenda

- Template Functions!
	- How can we extent template classes to functions? 
- Concepts 
	- How can we make C++ template sane?
- Variadic Templates
	- How do we build functions that accept a variable number of arguments?
- Template Meta-programming 
	- How do we run code at compile time? 
***
## Template Functions 
>[!Example] Writing a `min` function
>```cpp
>int min(int a, int b) {
>	return a < b? a : b;
>}
>```
>`min` makes sense for more than just integers. How can we do that? 
>```cpp
>min(106, 107) // int, returns 106
>min(1.2, 1.4) // double, returns 1.2
>min("Jacob", "Fabio") // string, returns "Fabio"
>```

>[!Idea]
>We can use function overloading to generate multiple functions to address different data types and keep the same functionality as `min`. This method will involve writing too much code, so we may want to consider a clever way!
>We can use template functions!!
```cpp
// This is a template, not a function!!
template <typename T>
T min (T a, T b)

// This is a function. A.K.A. a template instantiation!
min<std::string>
```
```cpp
// Template functions
template <typename T>
T min (T a, T b) {
	return a < b? a : b;
}

// We can also use references to avoid making copies!!
template <typename T>
T min (const T& a, const T& b) {
	return a < b? a : b;
}
```

### How do we call template functions? 

>[!Idea] Option A: Explicit instantiation
>Explicit instantiation passes the types directly, just like template classes!
```cpp
min<int>(106, 107) // int, returns 106 
min<double>(1.2, 1.4) // double, returns 1.2
```

>[!Idea] Option B: Implicit instantiation
>Implicit instantiation lets the compiler **infer** the types for us!
```cpp
min(106, 107) // int, returns 106 
min(1.2, 1.4) // double, returns 1.2
```

Implicit instantiation can be finicky!!
```cpp
template <typename T>
T min (T a, T b) {
	return a < b? a : b;
}

min("Jacob", "Fabio") 
// Here C++ will assing const char* 
// So we need to fix this, since we do not want to compare pointers!!
auto x = min<std::string>("Jacob", "Fabio") 
```

We cannot mix different data types!!
```cpp
template <typename T>
???? min (const T& a, const U& b) {
	return a < b? a : b;
}

min(106/*int*/, 3.14 /*double*/)
```
What should the return type of this function be? It is complicated, so we let the compiler infer it for us!!

>[!Example]
```cpp
std::vector<int> v {106, 111, 42, 112};
auto it = find(v.begin(), v.end(), 42);
*it = 107;
//v = {106, 111, 107, 112}
```

>[!Example] Writing a find function... but templated

>[!Important] `find` function in the STL!
>- Part of the `<algorithm>` header.
>- Read the C++ STD documentation!!
```cpp
std::find, std::find_if, std::find_if_not
defined in header <algorithm>

template<class InputIt, class T>
InputIt find(InputIt first, InputIt last, const T& value);
```

## Concepts 

>[!Question] How do we put **constraints** on templates? 
>- Templates are great, but the errors they produce when used incorrectly are unintuitive  
>- Compiler should not instantiate the template if the constrains are not met. 

>[!Idea] Creating a **Comparable** concept
```cpp
template <typename T> 
concept Comparable = requires(T a, T b) {
	{a < b} -> std::convertible_to<bool>;
};

// Using our Comparable concept
template <typename T> requires Comparable<T>
T min(const auto& a, const auto& b);

// Short version
template<Comparable T> 
T min(const T& a, const T& b);
```

>[!Example] Fixing our `min` function!

***
## Variadic Templates
>[!Question] How do we create a function that accepts a **variable number** of parameters?
>

***

## Template Meta-programming 
TMP is Turing Complete 


