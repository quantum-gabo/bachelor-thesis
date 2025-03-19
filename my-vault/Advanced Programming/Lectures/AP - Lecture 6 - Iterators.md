### **Date**: 2025-02-27

## Agenda 
- Iterators Basics
- Iterators Types
- Pointers and Memory 
***
## Iterators 

>[!Question] How do we iterate? 

We need something to track where we are in a container.  Here we introduce **iterators**.

The **iterator** tells us where to start and where to end. 

### Container Interface
**API** : Application Programming Interface 

container.begin: Gets an iterator to the first_element of the container (assuming non-empty)
container.end : Gets a past-the-end iterator. That is, an iterator to one element after the end of the container. 

So, end() never points to an element. Instead, it points one past the end if the container. If c is empty, the begin() and end() are equal. 

```cpp
//Copy construction 
auto it = c.begin();

// Increment iterator forwads 
++it;

// Dereference iterator -- undefined if it == end()
auto elem = *it;

// Equality: are we in the same spot? 
if (it == c.end()) ... 
```

We can also go backwards with the iterators. 

```cpp
std::set<int> s {1, 2, 3, 4};
for (var-init; condition; increment) {
	const auto& elem = /*grab element */
}

for (auto it s.begin(); it != s.end();) {
	const auto& elem = *it/*grab element*/
}
```

When you write: 

What it actually is: 

### What are the types? 
Using **auto** avoids spelling out long iterator types.

Why do we use ++it instead of it++

++it avoids making an unnecessary copy

```cpp
//Prefix ++it
// Increments it and returns a reference to same object
Iterator& operator++(int);

// Postfix
// Increments it and returns a copy of the old value 
Iterator operator++();
```

++it is faster!!

a points to the first element

```cpp
std::map<int, int> m {
	{1, 2}, {3, 4}, {5, 6}
};

auto a = m.begin();
++a;
auto b = a;
++a;
auto c = ++a;
```

## Iterator types 

All iterators provide these four operations
- `auto it = c.begin();`
- `++it;`
- `*it;`
- `it == c.end()`

But most provide even more...
- `--it; ` Move backwards 
- `*it = elem;` Modify 
- `it += n ` Rand access
- `it1 < it2`  Is before? 

#### Input Iterators 
- Most basic kind of operators 
- Allows to read elements 

```cpp
auto elem = *it;
```

#### Output Iterators 
Allows us to write elements 
```cpp
*it = elem;
```

#### Forward Iterator
- An input iterator that allows us to make multiple passes.
- All STL containers iterators fall here. 

#### Bidirectional Iterators 
- Allows us to move forwards and backwards
- `std::map`, `std::set`

#### Random Access Iterators 



![[Pasted image 20250227080701.png]]
***
An **iterator** points to a **container element** 
A **pointer** points to any object

### Memory Basics 
- Every variable lives somewhere in memory 
- All the places something could live form the **address space**
- Memory is usually byte-addressable, with each byte numbered from 0
- 1 byte = 8 bits 
- The address of an object is the location of its lowest byte
- For example, an integer always uses 32 bits = 4 bytes.

```cpp
int x = 106; // 32 bits

// x's memory
//[00000000][00000000][00000000][01101010]
//   0x10      0x11      0x12      0x13
// 0x10 is the address of x
```

>[!Question] How do we get the address of a variable in C++?
> Pointers!! 
> A pointer is the **address** of a variable.

```cpp
int x = 106;
int* px = &x;

std::cout << x << std::endl;       // 106
std::cout << *px << std::endl;     // 106  
std::cout << px << std::endl;      // 0x50527c
```

int* means px is a pointer to an int. 
& is the address operator.

A pointer is just a number 

#### We can have pointers to all kind of things 
- Pointer to an integer
- Pointer to an custom object 
- Pointer to a vector
- Pointer to an element of a vector 




