# Moldable Development Explained

##TL;DR

- What are the ingredients to moldable development?
- This page offers a high-level explanation of moldable development making systems explainable by focusing on *objects* and *domain concepts* in the IDE rather than source code editing. This is done by creating narratives with the help of (i) live lepiter notebooks, (ii) example methods, and (iii) the moldable inspector with custom views.

##Core ideas

###Focus on objects, not text

- OOP is supposed to be about objects, but there are no objects in the typical IDE, just source code editors.
  - A live IDE puts the objects in focus.
  - To make systems explainable, we need to connect the code with the live objects.  
This motivates why we need live programming, inspectors, examples, visualizations etc.

##Adapt the tools to the task
- Moldable development is about having a development environment and tools that can be easily adapted to the task at hand.
  - [[TG]]: Not just every domain but every problem is different. Every specialized language or tool is optimized for certain questions, but offers nothing for others. You need visualizations that cross-cut dimensions. So instead of domain-specific views, we want views at the finest level of granularity, that is, the object.
  - This means that domain concepts become explicit, it is easy to navigate between concepts and their instances, and it is easy to have dedicated views that expose the underlying concepts.
  - Even if your task is code analysis, you need a live model of the code, as objects, that you can query, navigate, and explore.

##Use visualizations to express domain-specific queries
- GQM for visualization — don't want fixed set of metrics or visualizations
  - [[TG]]: Every view is a predicate in a sentence — concatenation of panes creates a narrative.
  - The visualizations and views should emerge from the questions
  - A dialogue between the developer and the system.
  - The system should be responsive and live

## Takeaways

- [[TG]]: So the message is that moldable development offers a critical discipline and methodology to drive developement by making the insides of systems explainable, not just for technical people!
- To make systems explainable, they must be explorable, and queryable.
- Moldability helps to drive the development of explainable systems
- IDE not as a glorified editor but as an inspector

##IDE

- The GT IDE is not just a text editor focusing on source code, but a live notebook and object inspector that links code to running objects.
- Documentation is expressed in ***live notebooks*** that integrate text, code, and live objects
- Code and objects are linked through ***example methods***
- The main tool for exploring code is not a text editor but a ***moldable inspector*** with interactive navigation of live objects and *custom views* that are cheap to create

##Lepiter notebook

- Lepiter is a *live* notebook, connecting documentation of models and source code with live, running examples.
- [[TG]]: Two ways of creating narratives: (1) cascading ones of views, and (2) within lepiter.
- **Best practices:** As you develop, document your process by creating tagged notes that describe features and use cases by linking code and examples.
- **Takeaways:** Live documentation is not an add-on, but an integral part of a software system.
  - Systems become explainable by linking code and examples in live documentation.
- **Impact:** Creating narratives as live documentation becomes part of the development process.

##Examples

- Examples are live objects produced by executing *example methods*.
- Example methods are just like unit tests, except that they return an object. This means:
  - The result of a test is not just *passed* or *failed* but an object that can be explored.
  - An example can be used as input to another example method, thus allowing tests to be chained. (So when a test fails, its dependent tests don't fail, as they are not run.)
  - Examples can be used to create narratives, to explain use cases, scenarios and features.
- **Best practices:** If you need a feature, write an example (test).
  - If you find a bug, write an example.
  - If you want to explain something, write an example.
- **Takeaways:** Tests should return examples.
  - You can tell stories with examples.
- **Impact:** EDD forces you to develop the system in a way that it can be explored, visualized and explained, just like TDD encourages you to develop systems so they become testable!)
  - TDD \ra Example DD \ra Explanation DD (Moldable Development)

##Moldable Inspector

- The moldable inspector extends the usual /object inspector with interactive playgrounds, Miller columns and moldable views.
- *Miller columns provide a way to query and navigate through a chain of connected objects*
  - Each column provides a view of an object, and a playground that allows you to send messages to that object. You can either click in the view, or evaluate an expression (query) to inspect the result in new column.
- *Moldable views provide a way to avoid navigating through a chain of connected objects*
  - Each view corresponds to different ways of answering questions about an object.
  - If you need to navigate or evaluate complex expressions to answer questions about an object, turn that interaction into a new view.
- **Best practices:** If you need to navigate or write a query, create a view.
  - If you need to explain something about a domain concept, create a custom view.
  - Apply GQM — views arise from domain-specific questions.
  - Create the views as you develop to enhance both debugging and documentation.

- **Takeaways:** Interactive navigation and custom views are complementary. 
  - Tools are only effectively moldable if it is cheap to adapt them.
  - This is possible because there is [[One rendering tree]], allowing you to create flexible visualizations combining arbitrary elements (text, graphics, widgets).

- **Impact:** Custom views answer questions about domain objects in an application. These answers become words in narratives in live notebooks, to make systems explainable.

##Other bits

- GT Filters
- Parsing tech (SmaCC, PetitParser)

