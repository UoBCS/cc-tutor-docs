# Introduction

The following Software Requirement Specification follows the IEEE SRS 830 template defined by Karl E. Wiegers.

## Purpose and System Scope

The purpose of this platform (CC Tutor) is to enable students to learn efficiently about the
compilation process and its underlying alogrithms and principles.
It is a support for the teacher to tran

The system tackles the gap in educational tools in computer science by providing a distance learning platform
that is focussed towards visualising and interacting with the compilation process algorithms.
Students of compiler construction and formal languages modules can benefit from this tool
in their learning process.

## Naming Conventions

- User: Student + Teacher

# Overall Description

## System Perspective

The system is comprised of:

- A platform for students
- A platform for teachers
- A generic framework to inspect/debug the compilation process
- An extensible visualisation framework

Each component of the system is visualised in the high-level diagram below:

[Insert diagram here]

## System Functions

### Core Features

The core/general features are common for both the student and teacher portal and form
the basis of the platform. They include:

- Lexical analysis walkthrough
- Syntax analysis walkthrough
- Semantic analysis walkthrough
- Garbage collection algorithms walkthrough
- CEK machine walkthrough
- Grammar manipulations
- Compiler optimisations
- Compiler construction assistant
- Save execution of algorithms (snapshots)
- Save grammars and lexer input
- Export algorithm visualizations to PDF

For each topic there are algorithms and concepts which can be visualised and interacted with.
For each topic the algorithms can be executed independently (i.e. not tied to the walkthrough).

Dataflow diagrams for each component are included in [...]

### Student Portal

The student portal includes all core features plus the following:

- Complete quizzes assigned by the teacher
- Complete assignments assigned by the teacher.
- Complete targetted excercises to test the understanding of edge cases in each algorithm.

### Teacher Portal

The teacher portal includes all core features plus the following:

- Create general and targetted quizzes.
- Create assignments which are of the following formats:
    * Provide the steps of an algorithm and check the correctness (e.g. LL parsing steps).
    * During a visualization the teacher provides checkpoints where the student should provide an answer (i.e. matching the next step).
    * Provide some stubs to fill in order to execute an algorithm. The teacher can also define test cases or choose from predefined ones.
- Create custom visualizations using the cc-tutor-viz API.

### Inspection Framework

The inspection framework is the intermediate layer between the execution of a program and
its visualization. It works like a debugging tool where execution units are defined in terms
of sections of code. Details of the internal workings of this framework are described in [...]

### Visualization Framework

To visualize the various algorithms a defaul visualization package is to be developed. This is the package
that communicates to the underlying algorithms through the inspection framework.
It is an extensible package which can be used by developers and teachers to produce their own
algorithm visualizations.

## Documentation

The documentation of the software consists of user tutorials for the student and teacher platforms,
a code documentation, an API documentation for the extensibility of the visualization framework.

# System Features

In this section the system features are studied on an operational point of view.
The visualization/interaction approach of each features are elencated in the [Prototypes] section.
In order to capture the essence of the algorithm visualizations and interactions in each feature an
Abstract Visualization Concept framework has been developed. This is described in Appendix [...].

## Regular Expressions to Nondeterministic Finite Automata (NFA)

### Description and Priority

This feature allows the user to input several regular expressions (if using the lexical
analysis walkthrough) and for each one of them visualize the conversion to NFA.
In the overall software perspective this has high priority since it will benefit both compiler construction
and models of computation students.

### Stimulus/Response Sequences

- User selects from the set of algorithms, Regex to NFA or selects Lexical Analysis Walkthrough.
- User input regular expressions and lexemes associated with them to define tokens (if in
the lexical analysis mode).
- User confirms that the regular expressions have been entered.
- System checks for errors in the regular expressions syntax and report to the user.
- System visualizes the conversion process through the regular expression syntax tree first and then
the transformation to NFA.
- System advances to the next regular expression, if any.

The dataflow diagram for this feature is detailed in [...]

### Functional Requirements

LA-REGEX-NFA-1: Submit multiple regular expressions and associated lexemes if necessary.
LA-REGEX-NFA-2: Check for syntax errors.
LA-REGEX-NFA-3: Build, visualize the regex syntax tree to unveil the structure of the regex necessary for the next steps.
LA-REGEX-NFA-4: Allow the user to create nodes in the syntax tree for the next step and check for correctness.
LA-REGEX-NFA-5: Allow the user to create the entire syntax tree and check for correctness.
LA-REGEX-NFA-6: Visualize step by step the creation of NFA from the regex syntax tree by highlighting the nodes being processed.
LA-REGEX-NFA-7: Allow the user to create states and transitions in the NFA corresponding to the next step and check for correctness.
LA-REGEX-NFA-8: Allow the user to create the entire NFA and check for correctness.
LA-REGEX-NFA-9: Enable the user to check the history of the algorithm execution and rewind at any point.
LA-REGEX-NFA-10: Enable the user to save the history for future visualizations (this is suitable for teachers).

### Abstract Visualization Concept

<DONE>

## Nondeterministic Finite Automata (NFA) to Deterministic Finite Automata (DFA)

### Description and Priority

This feature allows the user to input a NFA or as a result from regex to NFA in lexical analysis,
and convert it to a DFA through the subset construction algorithm.
In the overall software perspective this has high priority since it is one of the core
algorithms taught in models of computation courses as well as being the basis for the tokenization process
in lexical analysis.

### Stimulus/Response Sequences

- User inputs the NFA either manually or via previous steps (i.e. regex to NFA).
- System checks if the automaton is nondeterministic and highlights where the nondeterminism lies.
- System visualizes the conversion process.

The dataflow diagram for this feature is detailed in [...]

### Functional Requirements

LA-NFA-DFA-1: Dynamically create NFA through user input (file upload or through user interface).
LA-NFA-DFA-2: Check if automaton is nondeterministic and highlight where the nondeterminism lies.
LA-NFA-DFA-3: In each step visualize how the epsilon closure and the move functions are executed by highlighting the involved states in the NFA and currently generated DFA.
LA-NFA-DFA-4: Allow the user to enter the epsilon closure and/or the move function output for the current DFA state.
LA-NFA-DFA-5: Allow the user to enter a whole DFA state by selecting which NFA states correspond to it.
LA-NFA-DFA-6: Check correctness of the interactions and inform user.
LA-NFA-DFA-7: Enable the user to check the history of the algorithm execution and rewind at any point.
LA-NFA-DFA-8: Enable the user to save the history for future visualizations (this is suitable for teachers).

### Abstract Visualization Concept



## Deterministic Finite Automata (DFA) Minimization

### Description and Priority

This features enables the user to input a DFA or as a result from NFA to DFA in lexical analysis,
and convert it to a minimal DFA by removing unreachable states and collapsing equivalent states.
In the overall software perspective this has medium priority since it is not required by
lexical analysis but is a fundamental algorithm in models of computation modules.

### Stimulus/Response Sequences

- User inputs DFA either manually or via previous steps (i.e. NFA to DFA).
- System checks if the automaton is deterministic.
- System visualizes first the elimination of unreachable states, then the collapsing of equivalent states.

### Functional Requirements

DFA-MIN-1: Dynamically create DFA through user input (file upload or through user intarface).
DFA-MIN-2: Check if automaton is deterministic.
DFA-MIN-3: Perform depth-first search on the transition graph to remove unreachable states. Visualize the nodes involved.
DFA-MIN-4: Enable the user to input the answer for the next state in the visualization and check for correctness.
DFA-MIN-5: Enable the user to input the entire minimized automaton and check for correctness. The system will highlight the places where the submitted and the actual automata differ.
DFA-MIN-6: Dynamically construct the DISTINCT table which will contain entries if a pair of states is distinct. This is visualized by highlighting each state and transition involved.
DFA-MIN-7: Visualize the merging process by highlighting the empty cells (i.e. not distinct states) and the corresponding states in the automaton.

### Abstract Visualization Concept

## Tokenization

### Description and Priority

The tokenization process navigates the generated deterministic automaton and advances the input
stream pointer.
In the overall software perspective this feature has medium priority since it is beneficial
only for compiler construction modules students.

### Stimulus/Reponse Sequences

- User provides a DFA representing the acceptance of regular expressions. The DFA can also be generate from the NFA to DFA algorithm in the lexical analysis process.
- System checks the validity of the DFA.
- System visualizes how the tokenization process produces the next token.

### Functional Requirements

TOK-1: Dynamically create DFA through user input (file upload or through user interface).
TOK-2: Perform a visualized depth-first search and store final states in a stack in order to extract the last one (longest match).
TOK-3: Show the priority of each token type and based on that select the state (recall that a DFA state is a set of NFA states) that will be used for the next token.

### Abstract Visualization Concept

## LL Walkthrough

### Description and Priority

The LL Walkthrough will help visualize how a top down parser works. In this setting the algorithm
is non-deterministic, therefore no FIRST or FOLLOW sets will be computed to eliminate this
non-determinism. Thus this feature relies on the user to input the next step (match characters or predict non terminal).
This setting helps the student understand the jump from non-determinism to the determinism achieved by LL(1).
The priority of this feature is set to high since many tools and modules on compiler construction do not
cover this part in detail, they instead delve into parsing tables and how they can be computed leaving out
an important abstraction.

### Stimulus/Response Sequences

- User provides a grammar or uses the MiniJava grammar as part of the compiler front-end walkthrough.
- User provides text which needs to be parsed. If using the front-end walkthrough the tokens will be passed from the lexical
analysis phase to the parsing phase automatically.
- System builds the stack machine and processes the token stream.
- For each step the user selects the next action to take
- System responds appropriately if the move was valid or produces a stuck state.

### Functional Requirements

LL-1: Create grammar from user input (upload or text).
LL-2: MiniJava editor, standard editor or file upload for input text.
LL-3: Visualize stack, grammar and input stream. At each step highlight all involved entities.
LL-4: Let user input the next step in the process (match or predict).
LL-5: Save derivation history for later inspection.
LL-6: Save environment (grammar and user input).

### Abstract Visualization Concept

## LL(1) Walkthrough

### Description and Priority

In the LL(1) walktrhough the user can inspect the LL(1) top down predictive parser which uses
1 item of lookahead in the stream. The user will visualize and interact with the creation
of FIRST and FOLLOW sets for each step and see how these help in making a deterministic
choice instead of pure guessing.
In the overall software perspective this feature has high priority. Beginner students can utilize this
tools after the LL walkthrough (non-deterministic) to appreciate the difference.

### Stimulus/Response Sequences

- Input of grammar and text is the same as LL walkthrough.
- System visualizes stack, grammar, input stream and parse tree (dynamically built).
- System selects the next step according to FIRST, FOLLOW and nullable constructions, the symbol on top of the stack and the current token in the input stream.

### Functional Requirements

LL1-1: Create grammar from user input (upload or text).
LL1-2: MiniJava editor, standard editor or file upload for input text.
LL1-3: Visualize stack, grammar, input stream and grammar. At each step highlight all involved entities.
LL1-4: Compute FIRST, FOLLOW and nullable sets in order to decide the next step in parsing.
LL1-5: Enable the user to manipulate the stack and check for correctness in the next step.
LL1-6: Save derivation history with all sets/construction for later inspection.
LL1-7: Save environment (grammar and user input).

### Abstract Visualization Concept

## LR Walkthrough

## LR(0) Walkthrough

## Semantic Analysis

## Garbage Collection

## CEK Machine Walkthrough

## Compiler Construction Assistant

### Description and Priority

The Compiler Construction Assistant is an advanced feature which aids the student
in the implementation of a compiler frontend. This is a step by step tool that accompanies
the user through the development. The job of CCA is to give hints, pointers and defined requirements;
most of the development work is done by the student.

In the overall software perspective this feature has high priority since it serves as the next step
in the learning curve of the student, after the visualization of algorithms and principles underlying
the compiler frontend.

### Stimulus/Response Sequences

- System initializes the environment (either from saved state or new state).
- System guides user through the various sections defined in each phase.
- User implements each feature.
- System checks the solution against predefined tests.

### Functional Requirements

CCA-1: System prepares the environment; a space for storing folders and files and a Java editor.
CCA-2: Enable the user to save the state of the assistant.
CCA-3: Enable the user to build some parts of the frontend.

## Inspection and Visualization Frameworks

# Other Nonfunctional Requirements

5.1 Performance Requirements
<If there are performance requirements for the product under various circumstances, state them here and explain their rationale, to help the developers understand the intent and make suitable design choices. Specify the timing relationships for real time systems. Make such requirements as specific as possible. You may need to state performance requirements for individual functional requirements or features.>

5.2 Software Quality Attributes
<Specify any additional quality characteristics for the product that will be important to either the customers or the developers. Some to consider are: adaptability, availability, correctness, flexibility, interoperability, maintainability, portability, reliability, reusability, robustness, testability, and usability. Write these to be specific, quantitative, and verifiable when possible. At the least, clarify the relative preferences for various attributes, such as ease of use over ease of learning.>

# Data Flow Diagrams

# Prototypes