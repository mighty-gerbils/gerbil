# Directed Acyclic Graph (DAG) utilities

::: tip To use the bindings from this module:
```scheme
(import :std/misc/dag)
```
:::

## walk-dag
```scheme
(walk-dag
   walk                          ;; (Node -> Attribute) -> Result
   arrows: arrows                ;; Node -> Arrows
   [arrow-target: identity]      ;; Arrow -> Node
   [synthetic-attribute: true]   ;; Node (List Arrows) (List Attribute) -> Attribute
   [register-arrow void])        ;; Node Arrow -> Unit
   -> Attribute
```

Recursively walk a DAG of transitive arrows depth-first from a set of nodes,
possibly possibly register the visiting paths, and
compute a synthetic attribute as we go.

Every reachable node will be visited once and only once,
wherein node identity is ascertained by the predicate `equal?`.
An error will be raised if there is a cycle in the graph.

The first and only positional argument, `walk`, is a function
that takes a `visit` argument and calls it on one or many nodes,
and finally returns a result.
Typically, `walk` will look like `(cut <> start-node)`,
or `(cut map <> start-node-list)` or `(cut for-each <> all-nodes)`.

The only mandatory keyword argument, `arrows:`, is a function
that takes a node as input, and returns a list of arrows that go from there.
In the simplest case, an “arrow” is just the name of another node,
i.e. a super class in an inheritance graph, or
a sub-expression in an evaluation graph, etc.

The optional keyword argument `arrow-target` takes one of the arrows returned
by the `arrow` function and returns the target node that this arrow points to.
The default value `identity` corresponds to the case where arrows do not carry
any information beside pointing to another node, as is the case in a simple
dependency graph. In the general case, arrows can be individually labeled
with extra information, such as a position index within a larger expression,
and the same target node can sometimes be reached from a same origin multiple
times through distinct arrows.

The optional keyword argument `synthetic-attribute` is a function that
takes as arguments a node, the list of arrows from that node, and
the list of attributes for the respective target node of each arrow,
and returns the attribute value for the current node.

The optional keyword argument `register-arrow` is a function that is called
once for each arrow, with the origin node and the arrow as arguments.
It is called for side-effect and defaults to `void`.

Example:
```scheme
> (import :std/sugar)
> (def operators (hash (+ +) (* *) (- -) (/ /)))
> (def (simple-eval expr)
    (walk-dag
      (cut <> expr)
      arrows:
      (lambda (x) (if (pair? x) (cdr x) []))
      synthetic-attribute:
      (lambda (expr _subexpr values)
        (cond
          ((and (pair? expr) (hash-get operators (car expr)) =>
           (cut apply <> values)))
          ((number? expr) expr)
          (else (error "invalid expression" expr))))))
> (simple-eval '(- (* (+ (* 4 5) (/ 18 3)) 2) 10))
42
```
The above example isn't realistic in that the representation of nodes
causing the hashing and equality is in O(n),
so the overall evaluation will be in O(n^2).
Also, in this case, the DAG is actually a tree.
However, the example illustrates the use of synthetic attributes
to compute a value.
In a more realistic example, nodes would be identified by labels in O(1),
any identification of nodes through hash-consing or let-sharing
would occur in a previous phase, and of course the evaluation would be richer.
