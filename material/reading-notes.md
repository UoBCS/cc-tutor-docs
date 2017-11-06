# An educational tool for teaching compiler construction - notes

# Learning compiler construction by examples - notes

# Using visualization tools to teach compiler design - notes

# A Collection of Tools for Making Automata Theory and Formal Languages Come Alive - notes

# Animating Parsing Algorithms - notes

This article develops an algorithm animator (Boroni et al.) which visualises the
internal workings of parsing algorithms (specifically LL(1) AND SLR(1)).
It shows in the same window the parsing stack, the input string being processed,
the current action and the parse tree being constructed.
The layout helps with readability and flow of information, however it lacks
the association with the grammar rules and the first, follow and nullable computations.
This hides the complexity of the parsing procedure which is what CC tutor is tackling.


# A Process-Visible Compiler Aimed for Teaching Assistant - notes

This is the closest resource to the project being developed.

The paper states "The term 'process-visible' means that all procedures in
compiling can be dynamically showed in a step-by-step way,
which hasn't been achieved by any other compilers before."

...

Lexical analysis visualisation in the project defined in [] uses pointers to extract the
tokens. Therefore the visualisation doesn't add any learning outcome. In fact there is no
algorithm related to abstract machines such as finite automaton and how these are used
in the lexical analysis phase.
Thus, the lexical analysis phase needs more visualisation and interaction points
in relation to central concepts in compilers and languages such as regular expressions
and finite automata.

In terms of syntax analysis, the application developed in [] dynamically shows the
parse tree being built from the abstract machine stack. This is an efficient way to
visualise the relation between the two. On the other hand the parsing table
is being implemented from First and Follow sets which does not convey the necessary
information to the student of why certain production rules have been chosen.
The issue with this approach is that it separates the [...]

Some concepts such as intermediate representation and machine code generation (?) are not
suited for visualisation since the latter does not add any learning outcome to the existing
ways. Therefore the visualisation of such phases is merely a translation from
one form of learning channel to another without any change that will enable greater learning
outcome.

[Talk about the application itself]

In conclusion, the project developed in [] can be viewed as a simulation of the
compilation process [...].

# Compilation process notes

- Parse tree is generated
from parser and abstract syntax tree is generated and fed into semantic analysis (type checking, declaration checking etc...)
The abstract syntax tree conveys the phrase structure of the source program, with all parsing
issues resolved but without any semantic interpretation.

# Online resources on algorithm visualisation

The motivation to pursue such a project is the lack of interactive visualisation tools
regarding the compilation process underlying principles and algorithms.
In this project a visualisation and interaction suite will be developed.

What constitutes a good visualisation?

