### **Date**: 2025-02-18

## Agenda 
- Quick Recap
- What are Streams??
- `stringstreams`
- `cout` and `cin`
- Output streams
- Input streams 
***
## Streams 
- A general `input`/`output` facility for C++!
- A general `input`/`output` abstraction for C++!
Abstractions provide a consistent *interface* and in the case of **streams**, the interface is for *reading* and *writing* data!

>[!Definition] An output stream
>```cpp
>std::cout << "Hello, World" << std::endl
>```
>The `std::cout` is and **instance** of `std::ostream` which represents the standard output stream!

>[!Definition] An input stream
>```cpp
>std::cin << "Hello, World" << std::endl
>```
>The `std::cin` is an **instance** of `std::istream` which represents the standard input stream!

### Streams and types 
- **ios_base**
- **basic_ios**
Each one of these types are associated with some functionality.

>[!Important] Streams and types
>**std::cout** has the property of *std::basic_ostream* type.
>**std::cin** has the property of *std::istream* type.
>
Streams allow for a **universal** way of **dealing with external data**

***
**Research more**
- [ ] Serialisation
***
### What Streams actually are? 
>[!Hint]  Input streams (I)
>A way to read data from a source!
>- Are inherited from `std::istream`
>- Ex. reading something from the console `std::cin` 
>- primary operator: `>>` called the extraction operator.

>[!Hint]  Output streams (O)
>A way to write data to a destination!
>- Are inherited from `std::ostream`
>- Ex. writing out something to the console `std::cout` 
>- primary operator: `<<` called the insertion operator.

The intersection between *ostream* and *istream* is called `iostream` which has all the features of `ostream` and `istream`.

### std::stringstream
This is a way to treat *strings* as streams. They are useful for use-cases that deal with mixing data types. 

```cpp
int main() {
	///Partial Bjarne Quote
	std::string initial_quote = "Bjarne Stroustrup C makes it easy to shoot yourself in the foot";
	/// Create a stringstream
	std::stringstream ss(initial_quote); // Initialise stringstream with string constructor.

	//Data destinations
	std::string first;
	std::string last;
	std::string language, extracted)quote;
	ss >> first >> last >> language >> extracted_quote;
	std::cout << first << “ ” << last << “ said this: ”<< language << “ “ << extracted_quote << std::endl;
}
```

We can also insert the `initial_quote` like this
```cpp
ss << intial_quote;
```

However, we have a problem. The original code does not extract the quote since the `>>` operator only reads until the next white space!

>[!Idea] Use getline()
>```cpp
>istream& getline(istream& is, string& str, char delim)
>```
>-  **getline()** reads an input stream, **is**, up until the **delim** char and stores it in some buffer, **str**.
>- The **delim** char is by default `\n`.
>- **getline()**  consumes the **delim**  character! Pay attention to this!!

```cpp
int main() {
	///Partial Bjarne Quote
	std::string initial_quote = "Bjarne Stroustrup C makes it easy to shoot yourself in the foot";
	/// Create a stringstream
	std::stringstream ss(initial_quote); // Initialise stringstream with string constructor.

	//Data destinations
	std::string first;
	std::string last;
	std::string language, extracted)quote;
	ss >> first >> last >> language;
	std::getline(ss, extracted_quote);
	std::cout << first << “ ” << last << “ said this: ‘” << language << “ “ << extracted_quote + “‘“ << std::endl;
}
```

## cout and cin
Character in output streams are stored in an intermediary buffer before being flushed to the destination.
- `std::cout` is line-buffered, contents in buffer not shown in external source until an explicit flush occurs. 
- `std::endl` tells the cout stream to end the line. It also tells the stream to *flush*.
- If no `std::endl` stated, `C++` will send to the buffer all the variables until there is no variable left, then, it flushes.
- Instead of `std::endl` we may use `\n`, but it this case, the flush will take place when all the variables have been stored in the buffer. 

**Ideas**
- Buffer
- Flush

## cerr and clog
The former is used to output errors (unbuffered), and the latter is used for non-critical event logging (buffered)

## Output File Streams (ofstream)
- Output file streams have a type: `std::ofstream`
- It is a way to write data to a file!
	- Use the `<<` insertion operator to *send* to the file.
	- There are some methods for `std::ofstream`!
	- Here are some you should know:
		- `is_open()`
		- `open()`
		- `write()`
		- `close()`
		- `fail()`

```cpp
int main() { 
/// associating file on construction 
	std::ofstream ofs(“hello.txt”);
	if (ofs.is_open()) { 
		ofs << “Hello CS106L!” << ‘\n’;
			 } 
	ofs.close();
	ofs << “this will not get written”;
	ofs.open(“hello.txt”); 
	ofs << “this will though! It’s open again”; 
	return 0; 
		}
```

## Input File Streams (ifstream)

```cpp
int inputFileStreamExample() {
	std::ifstream ifs(“append.txt”)
	if (ifs.is_open()) {
	std::string line;
	 std::getline(ifs, line);
	std::cout << “Read from the file: “ << line << ‘\n’;
	}
	if (ifs.is_open()) {
	std::string lineTwo;
	 std::getline(ifs, lineTwo);
	std::cout << “Read from the file: “ << lineTwo << ‘\n’;
	}
	return 0;
}
```




