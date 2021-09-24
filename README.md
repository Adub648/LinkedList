# Linked list

Two ruby files with separate algorithms made as a part of [The Odin Project](theodinproject.com) curriculum.

The `linked_list.rb` file contains an class that will generate a [linked list](https://en.wikipedia.org/wiki/Linked_list) element in ruby. This linked list can be modified with the following methods:
- `append(value)` adds a new node to the end of a list
- `prepend(value)` adds a new node to the start of a list
- `size` returns the size of a list
- `head` returns the first node of a list
- `tail` returns the last node of a list
- `at(index)` finds the node that exists at the given index
- `pop` removes the last node from the list
- `contains?(value)` checks if the value is in the list
- `find(value)` finds the index of the value, if it is in the list
- `delete(value)` deletes the value
- `to_s` prints the list as a string

The `node.rb` file contains a class that will generate a new node, as well as specifying the format in which nodes are printed to the console.

## What I struggled with

While I was able to understand most of my code in the end I started off this project extremely confused which continued throughout most of the project. I struggled to understand the logic behind creating objects that were not inherently linked to anything except for each other which made the first couple of hours of this project extremely challenging. After conducting research and ruminating over it more, I was able to understand the concepts better and was able to finish the project well, as I realized that many of the methods that we were required to make were variations on a simple iterative counting method.