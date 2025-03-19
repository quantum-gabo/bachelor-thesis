### **Date**: 2025-03-13

## Agenda
- Template Classes 
	- How can we generalise across different types?
- Code Demo
	- Implementing a template class
- Const Correctness
	- Unlocking the power of `const`

***
>[!Definition] Class Templates
>```cpp
>class IntVector {...
>class DoubleVector {...
>class StringVector {...
>```

>[!Important] Processor Macro
>Runs before compiler

>[!Important] Problems with macros
>- Clunky syntax
>- Hard to type check
>- Problems calling a macro more than once

Templates automate code generation!!
Typename is interchangeable!!

>[!Note] Using a template
>1. When implementing a template, we must copy the syntax in the .cpp file
>2. .h must include .cpp at bottom of file.
>3. typename is the same as class

>[!Question] Why?
>- Template .h must include .cpp due to the way template code generation is implemented in the compiler (and linker)

```cpp
template <typename T>
class Vector{};

template <class T>
class Vector{};
```

All the following are identical!!
```cpp

```

## Const Correctness
- By passing `v` as `const` 
by setting `const` to a method we indicate the method not to change the values it is handling, so we do not change anything by accident. 

>[!Idea]  The const interface
>- Objects marked as `const` can only make use of the `const` interface
>- The `const` interface are the methods that are marked as `const` in an object!!





