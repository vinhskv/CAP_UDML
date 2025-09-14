# CourseMan - OCL to Java Annotations

This project demonstrates the implementation of OCL (Object Constraint Language) constraints as Java annotations in a Spring Boot application for course management.

## Overview

CourseMan is a course management system that demonstrates how OCL constraints can be transformed into Java annotations and validators. The project consists of two main parts:

1. **OCL2Annos Framework**: A framework that provides annotations and validators for OCL constraints
2. **CourseMan Application**: A case study application that uses the OCL2Annos framework

## OCL2Annos Framework

The OCL2Annos framework provides the following components:

### Annotations

* `@SumConstraint`: Validates that the sum of a field doesn't exceed a maximum value
* `@AverageConstraint`: Validates that the average of a field is within limits
* `@Sum`: Calculates the sum of a field in a collection
* `@SumProduct`: Calculates the sum of products of two fields
* `@CardinalityConstraint`: Validates that a collection doesn't exceed a maximum size

### Validators

* `SumConstraintValidator`: Enforces the 15 credit limit per semester constraint
* `AverageConstraintValidator`: Ensures average grade doesn't exceed 10 and is ≥ 0
* `CardinalityConstraintValidator`: Enforces the max 30 students per class constraint

### Processor & Listeners

* `AnnotationProcessor`: Processes annotations to validate constraints
* `EntityListener`: Triggers validation at entity lifecycle events
* `ConstraintListener`: Reacts to entity state changes

## CourseMan Application

The CourseMan application is a course management system that demonstrates the use of OCL2Annos framework. It provides the following features:

* CourseModule management
* Student management
* SClassRegistration management
* Enrollment management
* SClass management

### Models

* `CourseModule`: Represents a course with code, name, and credit points
* `Student`: Represents a student with student ID, name, and email
* `SClassRegistration`: Represents an offering of a course in a semester
* `Enrollment`: Represents a student's enrollment in a course offering
* 'SClass Represents a class of student 

### Constraints

The application enforces the following constraints using OCL2Annos:

1. A student cannot exceed 15 credit points per semester
2. A course offering cannot have more than 30 students
3. Grades must be between 0 and 10

## Running the Application

### Prerequisites

* Java 11 or higher
* Maven 3.6.0 or higher

### Steps

1. Clone the repository
2. Build the project: `mvn clean install`
3. Run the application: `mvn spring-boot:run`
4. Access the application at: `http://localhost:8080`

## Technology Stack

* Java 11
* Spring Boot 2.7.x
* Spring Data JPA
* Thymeleaf
* H2 Database
* Bootstrap 5

## Project Structure

```
ocl2annos/
├── annotation/
│   ├── SumConstraint.java
│   ├── AverageConstraint.java
│   ├── Sum.java
│   ├── SumProduct.java
│   └── CardinalityConstraint.java
├── config/
│   └── OCL2AnnosConfig.java
├── listener/
│   ├── EntityListener.java
│   ├── ConstraintListener.java
│   └── ConstraintListenerRegistry.java
├── observable/
│   ├── Observable.java
│   └── Observer.java
├── processor/
│   └── AnnotationProcessor.java
└── validate/
    ├── SumConstraintValidator.java
    ├── AverageConstraintValidator.java
    └── CardinalityConstraintValidator.java

test/courseman/
├── controllers/
│   ├── CourseController.java
│   ├── CourseOfferingController.java
│   ├── EnrollmentController.java
│   ├── HomeController.java
│   └── StudentController.java
├── models/
│   ├── Course.java
│   ├── CourseOffering.java
│   ├── Enrollment.java
│   └── Student.java
├── repositories/
│   ├── CourseRepository.java
│   ├── CourseOfferingRepository.java
│   ├── EnrollmentRepository.java
│   └── StudentRepository.java
├── services/
│   ├── CourseService.java
│   ├── CourseOfferingService.java
│   ├── EnrollmentService.java
│   └── StudentService.java
└── CourseManApplication.java
```

## Validation Error Handling

The application demonstrates validation error handling with Thymeleaf:

1. When a constraint violation occurs, the error is caught and displayed to the user
2. The error message is customized based on the constraint that was violated
3. The user is provided with guidance on how to correct the error

This provides a user-friendly experience while enforcing the OCL constraints.