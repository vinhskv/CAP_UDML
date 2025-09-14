# UDML - Unified Domain Model Language
Composing Concerns into a Unified
Domain Model in Domain-Driven Design

# Overview
This guide provides step-by-step instructions for using the UDML tool developed on JetBrains MPS to model and generate code for real-world software systems.

# Installation

You can download JetBrains MPS (version 2024.3.2) from the official website: [JetBrains MPS Previous Releases](https://www.jetbrains.com/mps/download/previous.html#).

To use UDML, you will also need to install all required dependencies for the project.

**Download all JetBrains MPS Extensions: (for version 2024)**

```
git clone -b mps/2024.3 https://github.com/JetBrains/MPS-extensions.git
```

**Download UDML:**

```
git@github.com:vnu-sme/ConstraintAnnotationPattern_CAPs.git
```

After downloading, make sure to import these projects into JetBrains MPS to get started. If you encounter issues with importing, you can also open multiple projects in separate windows simultaneously.
# New Features 
**We have implemented three core components:**
| Components  |   |
|---|---|
| Instructor | Which defines the metaconcepts for UDML and concern DSLs; |
| Editor | which defines a graphical concrete syntax enabling drag-and-drop functionality; |
| Generator | which defines the semantics for transforming the AST model created by concern DSLs into executable source code embedded within the JDA framework |

# Usage

**1. Project Initialization:**
    Open JetBrains MPS and create a new project. Create new solution add import the following language modules: UDML.core, UDML.diagram, UDML.dcsl, UDML.agl, UDML.rbac, UDML.gui.

**2. Domain Model Definition:**
    Use the Instructor to define metaconcepts for each concern DSL. Import the UDML.core language and set the **"Scope"** value to "Extend". You can also select an existing module (such as UDML.dcsl for structure). 

Define classes, attributes, relationships, and annotations according to your system requirements. Make sure to inherit from the concepts provided in UDML.core

** You may also need to implement an additional Generator module for your concern DSL.

**3. Graphical Interface Design:**
    Switch to the Editor with the drag-and-drop diagram interface **(Right Click -> Push Editor Hints -> Use custom hint -> AsDiagram)** .
    Use the palette to drag and drop elements such as Class, DataType and Annotation onto the canvas.

Connect elements to model your real-world system (e.g., course management, sales system).
    ![Image](https://github.com/user-attachments/assets/55f511f8-447f-44d3-94d7-41d7280b7d2a)


**4. Source Code Generation:**
    After completing the model, select the Generator.
    Define or use existing transformation rules to generate Java source code from the UDML model.
    Review, compile, and run the generated code.

**5. Iteration and Extension:** 
    Easily edit, extend the model, or add new concerns by updating metaconcepts and rearranging elements in the diagram.
    Repeat the process to refine the product according to real-world requirements.

