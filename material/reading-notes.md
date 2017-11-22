http://fellinlovewithdata.com/reflections/data-visualization-semantics


# Algorithm Visualization: The State of the Field - notes



# An educational tool for teaching compiler construction - notes

As [...] states, "in the compiler construction course, students learn how to write a
compiler by hand and how to generate a compiler using tools like
lex and yacc. However, these tools usually have little or no didactical value."
In fact these are hands-on approaches useful to study later stages of the compilation process
as they do not cover the details in the early parts. This however is not ideal for
a full compiler construction module.

# Using visualization tools to teach compiler design - notes

The tools described in this article merely show the correspondence between
the program and an AST which is later annotated with semantic values.
Lexical and syntax analysis are absent.

# A Collection of Tools for Making Automata Theory and Formal Languages Come Alive - notes

This paper builds on top of the one below by adding more algorithms and principles from
formal languages but as far as parsing concerned the exact same visualisations are used
with addition of parsing LL(2) grammars, displaying parse trees, and parsing any context-free
grammar with conflict resolution.

# LLparse and LRparse: Visual and Interactive Tools for Parsing - notes

In this article, LLparse and LRparse are two interactive and
visual instructional tools for constructing LL(1) and
LR(1) parse tables from appropriate grammars, and for
using these constructed tables to parse strings.
For LR(1) as an example, the process works by letting the user input the grammar, then they calculate FIRST and
FOLLOW sets, graphically constructs
a deterministic finite automaton of item sets,
and finally constructs the LR(1) parsing table. Upon
completion of the constructed table, the user can observe
a visualization of the parsing of input strings.

The issue with this approach is that it maps the complexity of the algorithms as it is and it
does not show why FIRST and FOLLOW sets are useful to decide the next step in the
state machine, apart from using these sets to build the parse table.
Although it adds a interactivity element, it is not dynamic with respect to the algorithm.
Another aspect to note in this article and in the literature in general
is the lack of clear incremental implementation of deterministic parsers.
The students needs to understand the transition from nondetermism (LL no lookahead - no first and follow set construction) to determinism (LL1).
Therefore CC Tutor provides visualisation and interaction of both forms so that the student
get the full picture of why certain constructions are needed (like FIRST and FOLLOW).

# Animating Parsing Algorithms - notes

This article develops an algorithm animator (Boroni et al.) which visualises the
internal workings of parsing algorithms (specifically LL(1) AND SLR(1)).
It shows in the same window the parsing stack, the input string being processed,
the current action and the parse tree being constructed.
The layout helps with readability and flow of information, however it lacks
the association with the grammar rules and the first, follow and nullable computations.
This hides the complexity of the parsing procedure which is what CC Tutor is tackling.
Moreover from a visualization point of view there is no colouring which conveys the semantics
of the current state of the parser.

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

# Empirically Evaluating the Use of Animations to Teach Algorithms - notes

# Compilation process notes

- Parse tree is generated
from parser and abstract syntax tree is generated and fed into semantic analysis (type checking, declaration checking etc...)
The abstract syntax tree conveys the phrase structure of the source program, with all parsing
issues resolved but without any semantic interpretation.
