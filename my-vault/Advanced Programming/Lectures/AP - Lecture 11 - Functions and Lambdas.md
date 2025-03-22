### **Date**: 2025-03-20
## Agenda 
- Functions and Lambdas
	- How can we represent functions as variables in C++?
- Algorithms 
	- Revisiting and algorithm you may have seen before in modern C++
- Ranges and Views 
	- A brand new (C++26), functional approach to C++ algorithms 
***
>[!Question] How do we make `find` even more general? 
>- Our function `find` searches for the first occurrence of `value` in a container!!
>- What if we wanted to find the first occurrence of: 
>	- A vowel in a `string`
>	- A prime number in a `vector<int>`
>	- A number divisible by 5 in a `set<int>`

>[!Definition] Predicate
> A predicate is a `boolean-valued` function 
> **Using predicates!**
> - How can we use `isVowel` to find the first vowel in a `string`?
> - Or `isPrime` to find a prime number in a `vector<int>`
> - or `isDivisible` to find a number divisible by 5?
> 
> **Idea!**: We need to pass a `predicate` to a function.

>[!Note] Modifying our `find` function
```cpp
template <typename It, typename T>
	It find(It first, It last, const T& value) {
	for (auto it = first; it != last; ++it) {
		if (*it == value) {
			return it;
		}
	}
	return last;
}
```

## Lambda Functions 
Python Lambda functions are not the same as C++ Lambda functions!!

```cpp
int n;
std::cin >> n;

auto lessThanN = [n](int x) { return x < n; };

find_if(begin, end, lessThanN);//
```

![[captures.png.png]]

>[!Important] `auto` parameters are shorthand for templates!
```cpp
auto lessThanN = [n](auto x) {
	return x < n;
}
```
This is true wherever you see an `auto` parameter , not just in lambda functions!!
```cpp
template <typename T> 
auto lessThanN = [n](T x) {
	return x < n;
}
```
Uses `implicit instantiation`! Compiler figures out types when function is called!


### Functors 
A functor is any object that defines and `operator()`. An object that acts like a function!

***
## Algorithms 
`<algorithm>` is a collection of template functions!!


## Ranges and Views 
Ranges are a **new version** of the STL!! Ranges and Views are some experimental ideas!

