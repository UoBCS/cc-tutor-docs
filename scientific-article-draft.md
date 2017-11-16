# Assignment

You will write an article about your project that includes a literature review and a description of the preliminary project work. This article will be in the style of a scientific article such as, for example, the articles published in Communications of the ACM, or the late-breaking work sections of major conferences. Journals and conferences typically provide quite detailed instructions on how an article is to be presented. You will work with your supervisor to determine a suitable journal, or conference, format for your article. The format of the article, including the number of pages, will depend on the journal or conference chosen.

Your article will have to be carefully written so that it can be understood by the particular journal or conference readership. Again using Communications of the ACM as an example, an article suitable for this journal would need to be written for readers who have advanced degrees but who will be unlikely to be experts in the particular field. It is worth looking at a few Communications of the ACM articles as examples of what you should aim for. Some guidance on types of article can be found at: http://cacm.acm.org/system/assets/0000/6052/CACM_Author-Guidelines.pdf (Links to an external site.).

# Choice of style

The style to be used is the ACM Transactions on Programming Languages and Systems (TOPLAS) journal.
The motive of choosing this style is that in this journal compiler related papers are published.

# Guidelines

See material on Canvas.

- Remember signposts and flow

# Structure

- Abstract
- Introduction
- Problem analysis and proposed solution
- Software specification
- Implementation
- Evaluation
- Discussion and related work
- Conclusion

----------------------------------------------------------------------------------------------------

# Abstract

Compiler construction is a well-researched field, and every computer science student should have at least a good
overview on the topic. The traditional method in teaching compiler construction is that of following
a textbook and for each section incrementally build the compiler.
However many aspects of compilation, such as lexing, parsing, abstract machines, automata, garbage collection
and many more may need an additional learning which bridges the gap between theoretical knowledge and practical implementation.

This project consists of an extensible platform for teaching and learning compiler construction
using a subset of Java. The main feature of the platform is for a program to be visualized and interacted with
at various stages of the compilation process.

# 1. Introduction

This article details a novel platform for teaching and learning compiler construction.
Many topics in Computer Science have been provided with visualization toolkits,
e-learning platforms such as Codecademy. However such comprehensive tools for
compilers and their underlying principles are scarse and likewise the literature.
Didactical tools for algorithms and data structures taught in standard introduction to computer
science modules, have been studied in depth. [...]

Many compiler construction modules cover the process with a reference book such as
"Compiler implementation in Java" and structure the module segments with the various phases.
For example, the MIT OpenCourseWare Computer Language Engineering (https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-035-computer-language-engineering-spring-2010/) course
follows the "Compiler implementation in Java" book with detailed attention to code generation optimizations.
The approach used in this course is to cover each phase theoretically then an implementation
of the phase is carried out in groups. Moreover this course focuses on later stages of
compilation leaving the lexical and syntax analysis underlying principles to the lexer and parser
generators respectively (ANTLR).

Section 2 of this article will describe the existing problems in teaching and learning
compiler construction and what CC Tutor proposes to solve
them. Section 3 gives the details of the requirements of the platform in form of functional
and non-functional requirements. Section 4 outlines the implementation details of the
platform and section 5 gives a roadmap for the software evaluation before and after development.
Section 6 outlines and compares related work to the focus of the project.

# 2. Problem analysis and proposed solution

## 2.1 Motivation

The lack of educational tools/toolkits for compiler construction prompted the development
of CC Tutor, a platform for teacher and students to inspect and interact with the algorithms
governing the compilation process.
CC Tutor is a comprehensive tool which includes in-depth visualization of single algorihtms,
comparison of algorithms (such as LL and LR parsing) walkthrough of all frontend phases and
a compiler frontend implementation assistant.

The phases covered are from the [book] as well as the language, a subset of Java called MiniJava:

[Picture of the phases from book]

## 2.2 Frontend Overview

[...]

## 2.3 Proposed solution

The challenge in developing this platform lies in conveying all the complexity of the
compilation process into a two-dimensional time-based setting without sacrificing the
details in the name of simple visualizations.
Efficient visualizations map data onto visual elements in a way
that will help people understand the principles in the
algorithms and reason about them effectively.
A simple mapping from text/concepts to visual elements matching them goes against the goal
of this platform; a too abstract representation of the concepts will remove the efficient learning
factor. Therefore a proper visualization and interaction model needs to be implemented.

What are the visual representations of
the data structures and algorithms that will best reveal their semantics?
In order to answer this question a visualization and interaction framework (cc-viz)
has been defined in Section 3.

In order to relate steps in the algorithms to visualizations and interactions an intermediate
inspection layer (cc-inspect) will be implemented (details in Section 3).

This resembles the [Flux architecture] where the algorithm steps are the data,
the inspection layer emits this data to the store and the visualization and interaction framework in the controller-view.
The platform architecture and the motivation of using the Flux architecture are specified in detail in Section 3/4 (?).

# 3. Software specification

<See software-specification-draft.md>

# 4. Implementation

<Flux model>
<Explain MVC model and why it's not used in CC tutor>

# 5. Evaluation

# 6. Discussion and related work

# 7. Conclusion