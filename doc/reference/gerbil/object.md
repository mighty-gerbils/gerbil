# Gerbil Object System

## Objects

At the lowest level, an object is a contiguous chunk of memory
encapsulating state, and a bundled class meta object which provides
functionality for interacting with it. In Gerbil, objects are low
level Gambit structures, with a runtime type descriptor that is a
[class](#classes).

Object state is encapsulated within slots: a slot is a named field that
has an offset inside the object state. The class meta object contains
information necessary for resolving slots to field offsets in the
object itself.

Classes also contain [methods](#methods) that operate on objects in
order to provide behavior. Methods can be dynamically dispatched on
the object or directly dispatched through [interfaces](#interfaces).
By protocol, methods take the object as a first argument, with
invocation arguments following.

An object can be created with `make-object`, `make-instance` or a
specialized object constructor automatically defined from
[class definition macrology](TODO).

## Classes

Class meta objects are refinements of Gambit runtime type descriptors,
whose class is class; nicely self referential and a top in the type
hierarchy. Classes can be created with `make-class-type` or more
commonly using [class definition macrology](TODO).
The macrology also defines slot accessors and mutators, a constructor,
a predicate, and a meta syntactic object that contains information
about the class accessible at expansion time.

### Inheritance and Mixins

Classes can inherit or mix in other classes; the resulting class fuses
and deduplicates slots, so that there is a single offset defined for
each slot. The class meta object contains a linearized precedence list
of all super classses in order to faclitate method dispatch and further
extensions. Linearization is performed using the [C4 Algorithm](TODO).

Note that diamond inheritance graphs do not pose a problem in Gerbil.

### Structs

In general, the layout of an object of a specific class is
unspecified: slots are not in field offset known in advance because
they might be extended and mixed in by other classes. As a result,
slot access can be expensive as it requires a slot offset lookup
through the class meta object.

There are many situation that such overhead is unacceptable, and this
is what brought structs to life. Structs are restricted classes
whereby the slot layout is fixed and known at class definition time;
furthermore, subclasses cannot change the layout at least for the
slots defined by the class.

Naturally, in order to maintain the fixed slot layout constraint for
structs, inheritance and mixin is restricted to a linear inheritance
chain for the struct. As such, two or more classes cannot be mixed in
if they are extensions of incompatible classes. At most, every struct
involved in the inheritance chain must either be a struct already in
the chain or an extension of such a struct (which becomes the next
link in the chain).

Note that structs can extend or mix in classes and classes can extend
or mix in structs (or other classes that extend or mix in structs and
so on) freely, as long as the struct linear inheritance chain property
is satisfied; see also the [C4 Algorithm](TODO).

### Final and Sealed Classes

Classes can be marked as _final_ at definition time. A final class
cannot be further extended or mixed in; as a result the slot layout is
fixed at definition time.

A final class can be _sealed_ at runtime. When a class is sealed, then
the programmer asserts that no more methods will be added to the class
method set. During sealing, all methods in the hierarchy are
pre-resolved and collapsed to the sealed class's method table. In
addition, the methods are specialized for the exact class type so that
all internal calls to self and slot references are resolved and
avoid dynamic resolution.

See also [Runtime Specialization](#runtime-specialization).

### System Classes

So far we have described standard objects -- objects and classes
defined through the MOP, either predefined in the runtime and library
modules or by the user. But this doesn't capture the entire Scheme
type zoo -- how about those procedures, pairs, vectors, strings,
symbols and the rest? They are not standard objects, in that they have
an optimized representation that can accelerate relevant operations,
but they are still objects, no? Shouldn't they have a class?

And of course, in Gerbil, they do: they have classes that are not
bundled with the objects themselves, but rather are looked up as
needed. These classes are _system classes_, ie classes defined by the
system for primitive objects. System classes are predefined for all
low level non standard objects in the Gambit runtime.

System classes are constrained in that standard classes cannot extend
system classes. However, they support methods just like any standard
class which allows us to write fully object oriented code without
special casing for primitive objects.

See [System Classes](/reference/gerbil/core/predefined-classes.md#system-classes) for
reference.

### Meta Classes

Meta Classes are classes of classes, classy as it sounds. They are
extended types of classes that allow customization of the meta object
protocol by the user. Metaclasses first appeared in the Gerbil v0.18.2
release cycle, so they currently have somewhat limited capabilities;
at the minimum they do allow custom method resolution however. Expect
the metaclass protocol to evolve significantly in future releases of
Gerbil.

## Methods

Methods are procedures that operate on an object in order to implement
behavior.  Methods are attached to the class meta object in the method
lookup table. By protocol, methods take the object as their first
argument.

Methods defined on a class implicitly acquire a type assertion for the
receiver in the methoed definition body. More importantly, methods can
be defined on a class for a specific interface; this names the method
using the appropriate interface namespace so that the interface
contract is enforced at interface call boundary. As a result, the
method signature is ascertained to match the interface method
signature and argument types are automatically asserted.

Note again that interface specific methods have a synthetic method
name prefixed by the interface namespace, so that they can't be
trivially or accidentally invoked dynamically. This is a design
choice, in order to provide interface contract safety, enable
syntactic support and perform type directed compiler optimizations in
the method body. In addition, it also allows classes to implement
multiple potentially conflicting interface safely.

## Interfaces

Interfaces provide a powerful mechanism for bundling objects together
with resolved methods in order to provide related
behaviors. Furthermore, using contracts for interface method
signatures, we can make safety assertions at interface call sites, and
even bypass unnecessary checks if the compiler can prove the contract
is satisfied. This implies that method implementations do not need to
perform any needless checks; in fact, interface methods defined with
`defmethod` already inject the appropriate type assertions at the
lambda signature. Finally, interface methods are [runtime specialized](#runtime-specialization) for maximum performance.

::: tip The Safety Spectrum
Note that if the user is fully confident
that the interface contract is satisfied, even if the compiler cannot
(currently) prove it, the contract checks can be bypassed if so
desired. This is Gerbil after all, if the programmer knows what (s)he is
doing, the language gets out of the way. But beware of Dragons: mistakes
will probably be fatal for your process.
:::

In practice, an interface definition creates a few things:
- An interface descriptor meta object, that is used by the runtime to find the
  relevant methods.
- An interface info syntactic meta object, that is used by macros to reflect
  on interfaces.
- An interface instance object that will enclose the object and method bundle
  at runtime.
- Procedure definitions for all interface methods.

At runtime, an object can be _cast_ into an interface instance using
the `cast` runtime primitive. At first cast of a class to an
interface, a prototype is created that contains all relevant runtime
specialized methods. This prototype is then copied during casts in
order to create the appropriate interface instance. Note that if the
class of the object does not implement all necessary methods, the cast
fails; if you want to conditionally cast, you can use the `try-cast`
primitive.

Note that methods defined in an interface have an implicit namespace
for disambiguating conflicting interface definitions and dynamic
method invocations. When a method is resolved at prototype creation
time the exact synethic names method name is tried first, then all the
matching mixin interface synthetic method names, and finally bottoms
to the unqualified method. The resolution order uses the [C4 Algorithm](TODO).

A method defined with the `defmethod` macro using the `interface: InterfaceType`
directive in the body will be defined for the exact specified namespace.

For further information on interfaces see the [More About Interfaces](/reference/gerbil/interface.md)
and [Interface Macrology](/reference/gerbil/core/interface.md) sections of the hyperspec.

## Runtime Specialization

Runtime specialization takes a concrete class and constructs a fully
resolved method table, where all methods have been optimized to turn
method calls and slot references maximally efficient. The optimization
is performed by specializer procedures. These procedures are
normally compiler generated from method definitions with `defmethod`.

Specialization is recursive, in that internal method calls on the
receiver will use the specialized versions. This mechanism can confer
very significant performance gains for object heavy programming.

## Meta Object Protocol and Macrology

So far we have given a high level overview of the Gerbil object
system. Naturally, the details and macrology requires a deeper dive
and specification.

The first order of bussiness is to understand the [class definition macrology](TODO),
[method definition macrology](TODO) and [interface macrology](TODO)
sections in the hyperspec.

This will get you most of the way there for effective objective Gerbil
programming. If you want to know the nitty gritty details of the MOP,
maybe because you are making your own macrology or object system or
you are just a curious cat, refer to the [MOP Reference](/reference/gerbil/runtime/mop.md)
in the hyperspec and of course the source.
