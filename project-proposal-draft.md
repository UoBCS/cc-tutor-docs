# Project proposal draft

The project proposal should demonstrate that you know what problem the project will address and that you know how you are going to solve, and evaluate it. It should include a timetable showing different phases of the development and when they will be completed, and should give details of the resources that you will require. For software development projects, it should give details of the hardware and software that you will use.

As part of your project proposal, you should make a feasibility study to make sure that the hardware and software necessary for your project are indeed available in the School. Discuss this with your Supervisor. Note that the School may be prepared to purchase special purpose equipment if this is necessary for your project. You should apply for this through your Supervisor as soon as possible (to allow for ordering/commissioning delays).

Your project proposal should be ambitious and imaginative, but it should also provide several fall-back positions in case you cannot realise all of it in the available time. Make sure you have specified a substantial and self-contained core, together with several extras which you will do if time permits.

## Introduction

Compiler construction is a well-researched field, and every computer science student should
have at least a good overview on the topic. Compilers are an interesting topic, but it is hard
to show. Mostly one sees the command line and error output of a compiler. Sometimes even
those are hidden in an IDE. That implies Compilers are not easy to understand by working
with it the first time. This thesis should give an insight into the workings of a compiler,
especially to computer science beginners and interested amateurs, so that it’s easier to
understand the compiler operations and imagine the single steps.

A project-based compiler course presents several challenges to the student-implementor. In addition to the “book learning about” various compiler topics, a student must assimilate a large amount of information about the compiler's implementation. Furthermore he or she must be able understand each source-program construct at a number of different representation levels. Finally, the student must apply that knowledge during implementation and debugging of a compiler.

This paper describes a pair of packages that employ Java's graphical capabilities so that a program may be visualized at various stages of the compilation process. We argue that these tools are effective in helping students understand the transformation process from source program to machine code. We summarize our experience in using these tools in the context of a project-based compiler course. We also discuss other features of Java that make it well-suited for a student compiler project.

## Project statement

This project will tackle the problems in teaching compilers/compiler construction in University courses.
It will firstly identify the the main topics taught in compiler design then focus
on the most common topics student find hard to grasp.
To do so it will:

- Research the content of multiple compiler courses
- Build a questionnaire for UoB CS students that have taken the compiler construction course
- Build a prototype and a post-questionnaire to assess the below mentioned features.

The project is an ecosystem of tools that will enable students to learn about the compilation
process through visualisation and the teachers to customise, upload content and prepare assessments.

The ecosystem will include (this may vary throughout the development of the system)

- A sized-down compiler for educational purposes called MiniJava
- An API for hooking into the compilation process so that developers can implement their custom visualisations
- A student portal with the following features:
    * General information about the compilation process
    * Editor to input code (one class)
    * Visualisation of the compilation process with the possibility to choose which layer to perform and which to skip
    * In-depth visualisation for each compiling phase
    * Exercises that require the student to fill in some stubs in the compilation process
    * Full compiler availability to tweak (advanced )
- A lecturer portal with the following features:
    * Upload exercises on specific compilation phases (i.e. defining the stubs)
    * Ability to set custom visualisation (through the above mentioned API)
    * (Probably) add modules (e.g. advanced sections of the base compiler)

## Methods

The cctutor system will be developed in Java including 5 main/top level packages (prefixed by co):

- cctutor.minijava : the sized-down compiler for educational purposes
- cctutor.hooks: the event driven interface between the compiler and the visualisation framework
- cctutor.viz.default: the default visualisation package for the compilation process
- cctutor.student: the student portal (uses JavaFX as the graphics library)
- cctutor.teacher: the teacher portal (uses JavaFX as the graphics library)

**To be completed.**

## Project schedule

**To be completed.**

## Bibliography

**To be completed.**

## Artifacts

**To be completed.**