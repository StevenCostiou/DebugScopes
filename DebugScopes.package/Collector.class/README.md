A Collector allows to dynamically collect objects from the control flow and to interact with them. They provide references to the collected objects, that can be freely manipulated.

Collectors provide a programming interface to specify which object to collect in the control flow and how to interact with them.

Can be collected:
- instance variables of a class 
- temporary variables in methods
- receivers of specific messages
- the result value of an expression in a method

Collection can be done on a per-object basis. See class side.

I only hold weak references to the collected objects, so that i (try to) interfere the less possible with the objects lifecycles. I never collect duplicates. I never collect nil objects.

Paper: <todo> 