### **Date**: 2025-02-25

## Agenda 
- What is the STL? What are templates?
- Sequence containers 
- Associative containers
***
>[!Question] What is C++? 
>It is a programming language, it is a compiled, low-level, general-purpose programming language. 

***
## Containers 
Think of containers as "smart arrays" or data structures with built-in functionality for adding, removing, and accessing elements, all while managing memory for you.

More specifically, a container is a class from the C++ Standard Library (often called the STL, or Standard Template Library) that stores and organises multiple objects of the same type (or sometimes mixed types, with special cases). Containers are generic, meaning they use templates to work with any data type—built-in (like int, float) or custom (like a struct Package).

>[!Note] Containers of C++
>![[stl-containers.png.png]]
>


>[!Example] 
>Suppose we want to store a list of integers!
>```cpp
>class IntVector {
>	// Code to store
>	// a list of integers
>}
>```
>Now we want to store a list of doubles!!
>```cpp
>class DoubleVector {
>	// Code to store
>	// a list of doubles 
>}
>```

So, we need to keep the logic and change the type solely!! Therefore, we can move all these classes into a template:
```cpp
template <typename T>
class vector {
	// So satisfying xd!.
};

vector<int> v1;
vector<double> v2;
vector<std::string> v3;
```

All STL containers are templates. They are built-in, but we can also create our own ones. 

>[!Note]
>The Standard Template Library (STL) is included inside the Standard Library (STD).  In the STL we can find:
>- **Containers**: How do we store groups of things?
>- **Iterators**: How do we traverse containers?
>- **Functors**: How can we represent functions as objects?
>- **Algorithms**: How do we transform and modify containers in a generic way?

### Sequence Containers 
Are type of containers that are used to store liner sequences of elements.

```cpp
std::vector<int> vec {1, 2, 3, 4};
vec.push_back(5);
vec.push_back(6);
vec[1] = 20;

for (size_t i = 0; i < vec.size(), ++i) {
	std::cout << vec[i] << " ";
}
```


![[std_stl_vector.png.png]]

>[!Tip] 
>- Use range-based loops when possible!
>- Use `const auto&` when possible!
>	- Applies for all iterable containers.
>	- Saves making a potentially expensive copy

>[!Attention]
>Operator `[]` does not perform bounds checking!!
```cpp
std::vec<int> vec {5, 6} // {5, 6}
vec[1] = 3; // {5, 3}
vec[2] = 4; // Undefined behaviour 
vec.at(2) = 4; // Runtime error 
```

>[!Definition] Zero-overhead principle
>The *zero-overhead principle* is a C++ design principle that states:
>1. You do not pay for what you do not use!
>2. What do you use is just as efficient as what you could reasonably write by hand!

>[!Attention] **std::vector** is not the best for all cases!
>- Suppose we need to observe at least 10000 prices of a stock!
>- Can we add more elements to a vector? 
```cpp
void receivePrice(vector<double>& prices, double price) {
	prices.push_front(price);
	if (prices.size() > 10000) {
	prices.pop_back()}
}
```
One thing!! **std::vector** has no `push_back()` operator. 

>[!Definition] **std::dqueue**! 
>- a `deck` is a double-ended queue
>- Allows efficient insertion/removal at either ends!
>- A `dqueue` has the same interface as a `vector`, except we can `push_front/pop_front`. 
```cpp
void receivePrice(dqueue<double>& prices, double price)
{
	prices.push_front(price);
	if (prices.size() > 10000)
	{
		prices.pop_back();
	}
}
```

## Associative Containers 
Associative containers organise elements by unique keys!!

>[!Definition] std::map
>"CS106L" -> *std::map<std::string, int>* -> 42
>- Equivalent of a Python dictionary!
>- Sometimes called an **associative array**!

![[stl-map.png.png]]

>[!Important] 
>`std::map<K, V>` stores a collection of `std::pair<const K, V>`

We can iterate through the key-values pairs using a range based loop!
```cpp
std::map<std::string, int> map;
for (auto kv : map)
{
	std::string key = kv.first;
	int value = kv.second;
}
```

Structured bindings come in handy when iterating a map!
```cpp
std::map<std::string, int> 
for (const auto& [key, value] : map) {
	// key has a type const std::string&
	// value has a type const int&
}
```

![[map-implementation.png.png]]

>[!Important]
>`std::map<K, V>` requires `K` to have and operator `<`
```cpp
std::map<int, int> map1; // OK, int has operator <
std::map<std:ifstream, int> map2; // Error, std::ifstream has no operator >
```

>[!Definition] std::set
>Stores a collection of unique items!
>
![[stl-set.png.png]]

>[!Definition] std::unordered_map & std::unordered_set 
>- You can think of an `unordered_map` as an optimised version of `map`!
>- It has the same interface as map!
>- Remember, a `map` is a collection of `std::pair`.
>- `unordered_map` stores a collection of *n* *buckets* of pairs!
>- 

