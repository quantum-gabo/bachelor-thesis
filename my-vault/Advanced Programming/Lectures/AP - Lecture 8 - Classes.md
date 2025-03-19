### **Date**: 2025-03-11

## Agenda 
- Classes 
- Inheritance 
***
## Classes 

>[!Question] Why classes? 
>- C has no **objects**
>- No way of **encapsulating** data and the functions that operate on that data.
>- No ability to have object oriented programming (OOP) design patterns.

>[!Question] What is Object Oriented Programming?
>- OOP is centred around **objects**
>- Focuses on design and implementation of classes!
>- Classes are the **user-defined types** that can be declared as an object!

Most of the **programming languages** are **multi-paradigm**, meaning they not only allows to use OOP, but other styles as well. 

>[!NOTE]
>Containers are classes defined in the STL!

>[!INFO] Comparing  'struct' and 'class'
>- Classes containing a sequence of objects of various types, a set of functions for manipulating these objects and a set of restrictions on the access of these objects and functions;
>
>- Structures which are classes without access restrictions.

>[!Important] What is inside a class? 
>- Objects 
>- Functions to manipulate the objects
>- Access restrictions

### Recall `struct`

```c++


```

All the fields are public, i.e. can be changed by the user!

>[!Definition] A Class
>```cpp
>class ClassName {
>// We have three different access levels
>public:
>// A user can access all the public methods 
>
>private:
>// But is restricted from accessing the private stuff!
>
>protected:
>}
>```
>In a `struct` we do not need access levels since all the objects are public. 

>[!Example] Let's make StanfordID class
>```cpp
>
>```

>[!Definition] Class file structure
>- A class is distributed in a `header.h` file and a `source.cpp` file.
>- A struct is only contained in the `main.cpp` file.

![[class-vs-struct.png.png]]

>[!Note] Object File
>In `cpp` an **Object File** is not an `c++ object` but a `binary` file

### Class Design
- A constructor 
- Private member functions/variables
- Public member functions/variables
- Destructor

>[!Note] Constructor and Destructor
> A `constructor` and `destructor` are functions with an special syntax that allows us to create and delete an object.

### Constructor (.h file)
```cpp
class StanfordID {
private:
	std::string name;
	std::string sunet;
	int idNumber;
public:
	//constructor for our student
	StanfordID(std::string name, std::string sunet, int idNumber);
	// method to get name, sunet, and idNumber, respectively
	std::string getName();
	std::string getSunet()
	int getID();
}
```

A method is a function inside a class!!

### Implementation (.cpp file)
```cpp
#include "StanfordID.h"
#include <string>

StanfordID::StanfordID(std::string name, std::string sunet, int idNumber) {
this->name = name;
this->sunet = sunet;
this->idNumber = idNumber

// List initialisation
sunet{sunet}, idNumber{idNumber}, name{name};

// Default constructor
StanfordID::StanfordID() {
name = "John";
sunet = "J";
idNumber = 000;
}

// Parameterised constructor
StanfordID::StanfordID(std::string name, std::string sunet, int idNumber) {
this->name = name;
this->sunet = sunet;
this->idNumber = idNumber
}

// Implement methods
std::string StanfordID::getName() {
	return this->name;
}

std::string StanfordID::getSunet() {
	return this->sunet;
}

int StanfordID::getID() {
	return this->idNumber;
}

// The destructor
Stanford::~StanfordID() {
// free/dellocate any data here
}

```

`StanfordID::` tells the program that the function on the right is contained in the library `StanfordId`.

`this` is similar to `self` in Python. 

## Inheritance 
Some things are common for everybody 

### Dynamic Polymorphism 
Different types of objects may need the same interface

### Extensibility 
Inheritance allows you to extend a class by creating a subclass with specific properties.

