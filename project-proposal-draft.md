# Project proposal draft

> The project proposal should demonstrate that you know what problem the project will address and that you know how you are going to solve, and evaluate it. It should include a timetable showing different phases of the development and when they will be completed, and should give details of the resources that you will require. For software development projects, it should give details of the hardware and software that you will use.

> As part of your project proposal, you should make a feasibility study to make sure that the hardware and software necessary for your project are indeed available in the School. Discuss this with your Supervisor. Note that the School may be prepared to purchase special purpose equipment if this is necessary for your project. You should apply for this through your Supervisor as soon as possible (to allow for ordering/commissioning delays).

> Your project proposal should be ambitious and imaginative, but it should also provide several fall-back positions in case you cannot realise all of it in the available time. Make sure you have specified a substantial and self-contained core, together with several extras which you will do if time permits.

## Introduction

> Compiler construction is a well-researched field, and every computer science student should
have at least a good overview on the topic. Compilers are an interesting topic, but it is hard
to show. Mostly one sees the command line and error output of a compiler. Sometimes even
those are hidden in an IDE. That implies Compilers are not easy to understand by working
with it the first time. This thesis should give an insight into the workings of a compiler,
especially to computer science beginners and interested amateurs, so that it’s easier to
understand the compiler operations and imagine the single steps.

> A project-based compiler course presents several challenges to the student-implementor. In addition to the “book learning about” various compiler topics, a student must assimilate a large amount of information about the compiler's implementation. Furthermore he or she must be able understand each source-program construct at a number of different representation levels. Finally, the student must apply that knowledge during implementation and debugging of a compiler.

> This paper describes a pair of packages that employ Java's graphical capabilities so that a program may be visualized at various stages of the compilation process. We argue that these tools are effective in helping students understand the transformation process from source program to machine code. We summarize our experience in using these tools in the context of a project-based compiler course. We also discuss other features of Java that make it well-suited for a student compiler project.

Compiler construction is a well-researched field, and every computer science student should have at least a good
overview on the topic. The traditional method in teaching compiler construction is that of following
a textbook and for each section incrementally build the compiler.
However many aspects of compilation, such as parsing, abstract machines, and many more may need an additional
method of learning which bridges the gap between theoretical knowledge and practical implementation.

This project consists of an extensible platform for teaching and learning compiler construction
using a subset of Java. One of its features is for a program to be visualized at various stages of the compilation process.

## Project statement

> A concise statement of the project, e.g., the hypothesis to be tested, the thesis to be 
defended, the project to be completed, the question to be answered, etc. 

This project will tackle the problems in teaching compilers/compiler construction in University courses.
It will firstly identify the the main topics taught in compiler design then focus
on the most common topics student find hard to grasp.

The project therefore is an ecosystem of tools that will enable students to learn about the compilation
process through visualisation and live interaction and the teachers to customise, upload content and prepare assessments.

The hypothesis of the research study is that compiler construction modules, where students learn how to write a
compiler and how to generate one using various tools, approach the problem in a traditional setting and
a visualisation approach can improve the understanding of generally difficult to grasp concepts.
This means that there isn't a bridge between the high level concepts that the students learn from
textbooks and the hands-on-practice course. The project will therefore fill the gap
by providing the conceptual understanding of compiler construction through the visualisation
and interaction with the compilation process (among other learning styles, described in the 'Methods' section).

## Methods

> The method to be followed in accomplishing the project statement, i.e., proposed algorithms, procedures,
controls, sample sizes, experiments, and expected results, etc. 

### Research study

In order to test the research study hypothesis the pre-development phase is defined as follows:

- Research the content of multiple compiler courses:
    * American and European Universitites compiler construction modules syllabi
- Build a targetted questionnaire for UoB CS students that have taken the compiler construction course
- Build a prototype and a post-questionnaire to assess the features of the system

### Development

The project's ecosystem (CC Tutor) will include (this may vary throughout the development of the system):

- A sized-down compiler for educational purposes called MiniJava
- An API for hooking into the compilation process so that developers can implement their custom visualisations (extension point)
- A student portal with the following features:
    * General information about the compilation process
    * Editor to input code (one class)
    * Visualisation of the compilation process with the possibility to choose which layer to perform and which to skip
    * In-depth visualisation for each compiling phase
    * Real-time interaction with the visual components
    * Exercises that require the student to fill in some stubs in the compilation process
    * Full compiler availability to tweak (advanced )
- A lecturer portal with the following features:
    * Upload exercises on specific compilation phases (i.e. defining the stubs)
    * Ability to set custom visualisation (through the above mentioned API)
    * (Probably) add modules (e.g. advanced sections of the base compiler)

The cctutor system will be developed in Java including 5 main/top level packages (prefixed by co):

- cctutor.minijava : the sized-down compiler for educational purposes
- cctutor.hooks: the event driven interface between the compiler and the visualisation framework
- cctutor.viz.def: the default visualisation package for the compilation process
- cctutor.base: the base portal functionality for both the student and teacher user spaces
- cctutor.student: the student portal (uses JavaFX as the graphics library)
- cctutor.teacher: the teacher portal (uses JavaFX as the graphics library)

The compilation process is the one defined in "Modern Compiler Implementation in Java" (introduction, figure 1.1).
The project will at least include the frontend.

The development will follow a User-Centred Design for the interface and visualisations.
Since the latter are an important part of the platform it's important to follow UCD:

1. Specify context of use
2. Specify requirements
3. Produce design solutions (alternatives, through lo-fi prototypes)
4. Evaluate designs (mostly through expert evaluation)

All non-code documents will be placed in the project repository under `docs`.

If time permits the project will include a toolkit for a declarative approach in compiler construction
where the user specifies in a declarative manner each phases and the platform
will choose the appropriate tools to accomplish the request.

## Project schedule

### Term 1

- **Week 3**
    * Complete paper and articles readings
    * Start literature review
    * Start sketching of the system
- **Week 4**
- **Week 5**
- **Week 6**
- **Week 7**

### Term 2


## Bibliography

See [reading material](material/).

## Artifacts

> A description of any artifacts beside the write-up for the project or thesis, i.e., code, user's guide, etc. 

## Notes

- Do not develop the whole compilation process
- Use LLVM
- Use dragon book