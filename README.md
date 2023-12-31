# Swift-Design-Patterns
A list of design patterns in swift with example code when i get to it... this a learning work in progress...

**Singleton Pattern:**
Ensures a class has only one instance and provides a global point of access to it.
 
**Factory Method Pattern:**
Defines an interface for creating an object but leaves the choice of its type to the subclasses, creation being deferred at the time of instantiation.

**Abstract Factory Pattern:**
Provides an interface for creating families of related or dependent objects without specifying their concrete classes.

**Builder Pattern:**
Separates the construction of a complex object from its representation, allowing the same construction process to create various representations.

**Prototype Pattern:**
Creates new objects by copying an existing object, known as the prototype, during runtime.

**Adapter Pattern:**
Allows the interface of an existing class to be used as another interface, providing a way for the incompatible interfaces to work together.

**Bridge Pattern:**
	Separates an object’s abstraction from its implementation so that the two can vary independently.

**Composite Pattern:**
Composes objects into tree structures to represent part-whole hierarchies, allowing clients to treat individual objects and compositions of objects uniformly.

**Decorator Pattern:**
Attaches additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.

**Facade Pattern:**
Provides a unified interface to a set of interfaces in a subsystem, making it easier to use.

**Flyweight Pattern:**
Minimizes memory usage or computational expenses by sharing as much as possible with related objects; it is a way to use objects in large numbers when a simple repeated representation would use an unacceptable amount of memory.

**Proxy Pattern:**
Provides a surrogate or placeholder for another object to control access to it.

**Chain of Responsibility Pattern:**
Passes the request along a chain of handlers. Upon receiving a request, each handler decides either to process the request or to pass it to the next handler in the chain.

**Command Pattern:**
Encapsulates a request as an object, thereby allowing for parameterization of clients with different requests, queuing of requests, and logging of the parameters of a request.

**Interpreter Pattern:**
Defines a grammar for interpreting the sentences in a language and provides an interpreter to deal with those sentences.

**terator Pattern:**
Provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation.

**Mediator Pattern:**
Defines an object that encapsulates how a set of objects interact. It promotes loose coupling by keeping objects from referring to each other explicitly.

**Memento Pattern:**
Captures and externalizes an object’s internal state so that the object can be restored to this state later.

**Observer Pattern:**
Defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.

**State Pattern:**
	Allows an object to alter its behavior when its internal state changes. The object will appear to change its class.

**Strategy Pattern:**
	Defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it.

**Template Method Pattern:**
Defines the skeleton of an algorithm in the superclass but lets subclasses override specific steps of the algorithm without changing its structure.

**Visitor Pattern:**
	Represents an operation to be performed on the elements of an object structure. Allows the definition of a new operation without changing the classes of the elements on which it operates.
 
**Command Handler Pattern:**
Decouples the sender and receiver of a command by allowing multiple objects to handle the command.

**Dependency Injection Patter:**
Supplies a dependent object (a client) with the objects it depends on (a service) rather than allowing it to create them. This promotes loose coupling and easier testing.

**Data Access Object (DAO) Pattern:**
Provides an abstract interface to some type of database or other persistence mechanism, allowing different implementations or database types.

**Data Mapper Pattern:**
Separates the in-memory objects from the database, mapping one to the other. It provides a more flexible and cleaner way to access and manipulate data.

**Double-Checked Locking Pattern:**
Used to reduce the overhead of acquiring a lock by first testing the locking criterion without actually acquiring the lock.

**Event Aggregator Pattern:**
Provides a way for objects to subscribe to events of interest without having to directly communicate with each other. An event aggregator acts as a centralized hub for events.

**Extension Objects Pattern:**
Allows for adding new functionality to existing objects without altering their structure. Extensions are implemented as separate objects.

**Guarded Suspension Pattern:**
Defers the request processing until the system is in a state where the request can be safely handled.

**Identity Map Pattern:**
Ensures that each object gets loaded only once into memory by keeping a map of objects that have been read from the database.

**Lazy Initialization Pattern:**
Delays the creation or calculation of an object until it is actually needed, improving performance and resource usage.

**Module Pattern:**
Organizes code by separating it into smaller, self-contained units, or modules, promoting better code organization and maintainability.

**Object Pool Pattern:**
Manages a pool of reusable objects to reduce the overhead of creating and destroying objects, especially in resource-intensive operations.

**Specification Pattern:**
Defines a set of criteria for an object, allowing the creation of complex queries or rules for filtering objects based on those criteria.

**Strategy Chain Pattern:**
Combines the Strategy and Chain of Responsibility patterns, allowing a client to choose a strategy from a chain of strategies dynamically.

**Strategy Enum Pattern:**
Uses an enumeration to represent different strategies, providing a way to switch between strategies using a simple enum value.

**Strategy Interceptor Pattern:**
Introduces interceptors that can alter the behavior of a strategy dynamically.

**Template Callback Pattern:**
Inverts the control flow by allowing a client to define certain steps of an algorithm through callback methods.

**Type Object Pattern:**
Represents types as objects, allowing you to treat types as first-class citizens and add behavior or metadata to them.

**Unit of Work Pattern:**
Keeps track of all changes to a set of related objects and ensures that these changes are committed together in a transaction.

**Value Object Pattern:**
Represents a simple object whose equality is not based on identity but rather on the values it holds.

**View Model Pattern:**
Separates the presentation logic from the view, allowing for better testability and maintainability in SwiftUI or other UI frameworks.

**Visitor Extension Pattern:**
Extends the Visitor pattern to allow new visitor functionalities to be added without modifying the existing code.

**Web Service Broker Pattern:**
Acts as an intermediary between clients and web services, managing the communication and handling complexities such as authentication and error handling.

**Module View Presenter (MVP) Pattern:**
Separates an application into three components: Model (data and business logic), View (user interface), and Presenter (mediates between the Model and View).

**Hexagonal Architecture Pattern:**
Organizes an application into inner and outer layers, with the inner layer containing the core business logic and the outer layer handling external concerns like UI and databases.
