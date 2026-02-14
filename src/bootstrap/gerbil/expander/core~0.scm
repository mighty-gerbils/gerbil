(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1771037609)
  (begin
    (declare (not safe))
    (define gx#current-expander-context (make-parameter '#f))
    (define gx#current-expander-marks (make-parameter '()))
    (define gx#current-expander-phi (make-parameter '0))
    (define gx#current-expander-path (make-parameter '()))
    (define gx#current-expander-eval (make-parameter '#f))
    (define gx#current-expander-compile (make-parameter '#f))
    (define gx#current-expander-module-eval (make-parameter '#f))
    (define gx#current-expander-module-import (make-parameter '#f))
    (define gx#current-expander-module-prelude (make-parameter '#f))
    (define gx#current-expander-allow-rebind? (make-parameter '#f))
    (define gx#current-expander-compiling? (make-parameter '#f))
    (define gx#current-compilation-target (make-parameter '#f))
    (define gx#expander-context::t
      (__make-class-type
       'gx#expander-context::t
       'expander-context
       (list)
       '(id table)
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#expander-context?
      (__make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _%$args186723%_
        (apply make-instance gx#expander-context::t _%$args186723%_)))
    (define gx#expander-context-id
      (__make-class-slot-accessor gx#expander-context::t 'id))
    (define gx#expander-context-table
      (__make-class-slot-accessor gx#expander-context::t 'table))
    (define gx#expander-context-id-set!
      (__make-class-slot-mutator gx#expander-context::t 'id))
    (define gx#expander-context-table-set!
      (__make-class-slot-mutator gx#expander-context::t 'table))
    (define gx#&expander-context-id
      (__make-class-slot-unchecked-accessor gx#expander-context::t 'id))
    (define gx#&expander-context-table
      (__make-class-slot-unchecked-accessor gx#expander-context::t 'table))
    (define gx#&expander-context-id-set!
      (__make-class-slot-unchecked-mutator gx#expander-context::t 'id))
    (define gx#&expander-context-table-set!
      (__make-class-slot-unchecked-mutator gx#expander-context::t 'table))
    (define gx#root-context::t
      (__make-class-type
       'gx#root-context::t
       'root-context
       (list gx#expander-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#root-context? (__make-class-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _%$args186720%_
        (apply make-instance gx#root-context::t _%$args186720%_)))
    (define gx#root-context-id
      (__make-class-slot-accessor gx#root-context::t 'id))
    (define gx#root-context-table
      (__make-class-slot-accessor gx#root-context::t 'table))
    (define gx#root-context-id-set!
      (__make-class-slot-mutator gx#root-context::t 'id))
    (define gx#root-context-table-set!
      (__make-class-slot-mutator gx#root-context::t 'table))
    (define gx#&root-context-id
      (__make-class-slot-unchecked-accessor gx#root-context::t 'id))
    (define gx#&root-context-table
      (__make-class-slot-unchecked-accessor gx#root-context::t 'table))
    (define gx#&root-context-id-set!
      (__make-class-slot-unchecked-mutator gx#root-context::t 'id))
    (define gx#&root-context-table-set!
      (__make-class-slot-unchecked-mutator gx#root-context::t 'table))
    (define gx#phi-context::t
      (__make-class-type
       'gx#phi-context::t
       'phi-context
       (list gx#expander-context::t)
       '(super up down)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#phi-context? (__make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _%$args186717%_
        (apply make-instance gx#phi-context::t _%$args186717%_)))
    (define gx#phi-context-super
      (__make-class-slot-accessor gx#phi-context::t 'super))
    (define gx#phi-context-up
      (__make-class-slot-accessor gx#phi-context::t 'up))
    (define gx#phi-context-down
      (__make-class-slot-accessor gx#phi-context::t 'down))
    (define gx#phi-context-id
      (__make-class-slot-accessor gx#phi-context::t 'id))
    (define gx#phi-context-table
      (__make-class-slot-accessor gx#phi-context::t 'table))
    (define gx#phi-context-super-set!
      (__make-class-slot-mutator gx#phi-context::t 'super))
    (define gx#phi-context-up-set!
      (__make-class-slot-mutator gx#phi-context::t 'up))
    (define gx#phi-context-down-set!
      (__make-class-slot-mutator gx#phi-context::t 'down))
    (define gx#phi-context-id-set!
      (__make-class-slot-mutator gx#phi-context::t 'id))
    (define gx#phi-context-table-set!
      (__make-class-slot-mutator gx#phi-context::t 'table))
    (define gx#&phi-context-super
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'super))
    (define gx#&phi-context-up
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'up))
    (define gx#&phi-context-down
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'down))
    (define gx#&phi-context-id
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'id))
    (define gx#&phi-context-table
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'table))
    (define gx#&phi-context-super-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'super))
    (define gx#&phi-context-up-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'up))
    (define gx#&phi-context-down-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'down))
    (define gx#&phi-context-id-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'id))
    (define gx#&phi-context-table-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'table))
    (define gx#top-context::t
      (__make-class-type
       'gx#top-context::t
       'top-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-context? (__make-class-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _%$args186714%_
        (apply make-instance gx#top-context::t _%$args186714%_)))
    (define gx#top-context-super
      (__make-class-slot-accessor gx#top-context::t 'super))
    (define gx#top-context-up
      (__make-class-slot-accessor gx#top-context::t 'up))
    (define gx#top-context-down
      (__make-class-slot-accessor gx#top-context::t 'down))
    (define gx#top-context-id
      (__make-class-slot-accessor gx#top-context::t 'id))
    (define gx#top-context-table
      (__make-class-slot-accessor gx#top-context::t 'table))
    (define gx#top-context-super-set!
      (__make-class-slot-mutator gx#top-context::t 'super))
    (define gx#top-context-up-set!
      (__make-class-slot-mutator gx#top-context::t 'up))
    (define gx#top-context-down-set!
      (__make-class-slot-mutator gx#top-context::t 'down))
    (define gx#top-context-id-set!
      (__make-class-slot-mutator gx#top-context::t 'id))
    (define gx#top-context-table-set!
      (__make-class-slot-mutator gx#top-context::t 'table))
    (define gx#&top-context-super
      (__make-class-slot-unchecked-accessor gx#top-context::t 'super))
    (define gx#&top-context-up
      (__make-class-slot-unchecked-accessor gx#top-context::t 'up))
    (define gx#&top-context-down
      (__make-class-slot-unchecked-accessor gx#top-context::t 'down))
    (define gx#&top-context-id
      (__make-class-slot-unchecked-accessor gx#top-context::t 'id))
    (define gx#&top-context-table
      (__make-class-slot-unchecked-accessor gx#top-context::t 'table))
    (define gx#&top-context-super-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'super))
    (define gx#&top-context-up-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'up))
    (define gx#&top-context-down-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'down))
    (define gx#&top-context-id-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'id))
    (define gx#&top-context-table-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'table))
    (define gx#module-context::t
      (__make-class-type
       'gx#module-context::t
       'module-context
       (list gx#top-context::t)
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-context? (__make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _%$args186711%_
        (apply make-instance gx#module-context::t _%$args186711%_)))
    (define gx#module-context-ns
      (__make-class-slot-accessor gx#module-context::t 'ns))
    (define gx#module-context-path
      (__make-class-slot-accessor gx#module-context::t 'path))
    (define gx#module-context-import
      (__make-class-slot-accessor gx#module-context::t 'import))
    (define gx#module-context-export
      (__make-class-slot-accessor gx#module-context::t 'export))
    (define gx#module-context-e
      (__make-class-slot-accessor gx#module-context::t 'e))
    (define gx#module-context-code
      (__make-class-slot-accessor gx#module-context::t 'code))
    (define gx#module-context-super
      (__make-class-slot-accessor gx#module-context::t 'super))
    (define gx#module-context-up
      (__make-class-slot-accessor gx#module-context::t 'up))
    (define gx#module-context-down
      (__make-class-slot-accessor gx#module-context::t 'down))
    (define gx#module-context-id
      (__make-class-slot-accessor gx#module-context::t 'id))
    (define gx#module-context-table
      (__make-class-slot-accessor gx#module-context::t 'table))
    (define gx#module-context-ns-set!
      (__make-class-slot-mutator gx#module-context::t 'ns))
    (define gx#module-context-path-set!
      (__make-class-slot-mutator gx#module-context::t 'path))
    (define gx#module-context-import-set!
      (__make-class-slot-mutator gx#module-context::t 'import))
    (define gx#module-context-export-set!
      (__make-class-slot-mutator gx#module-context::t 'export))
    (define gx#module-context-e-set!
      (__make-class-slot-mutator gx#module-context::t 'e))
    (define gx#module-context-code-set!
      (__make-class-slot-mutator gx#module-context::t 'code))
    (define gx#module-context-super-set!
      (__make-class-slot-mutator gx#module-context::t 'super))
    (define gx#module-context-up-set!
      (__make-class-slot-mutator gx#module-context::t 'up))
    (define gx#module-context-down-set!
      (__make-class-slot-mutator gx#module-context::t 'down))
    (define gx#module-context-id-set!
      (__make-class-slot-mutator gx#module-context::t 'id))
    (define gx#module-context-table-set!
      (__make-class-slot-mutator gx#module-context::t 'table))
    (define gx#&module-context-ns
      (__make-class-slot-unchecked-accessor gx#module-context::t 'ns))
    (define gx#&module-context-path
      (__make-class-slot-unchecked-accessor gx#module-context::t 'path))
    (define gx#&module-context-import
      (__make-class-slot-unchecked-accessor gx#module-context::t 'import))
    (define gx#&module-context-export
      (__make-class-slot-unchecked-accessor gx#module-context::t 'export))
    (define gx#&module-context-e
      (__make-class-slot-unchecked-accessor gx#module-context::t 'e))
    (define gx#&module-context-code
      (__make-class-slot-unchecked-accessor gx#module-context::t 'code))
    (define gx#&module-context-super
      (__make-class-slot-unchecked-accessor gx#module-context::t 'super))
    (define gx#&module-context-up
      (__make-class-slot-unchecked-accessor gx#module-context::t 'up))
    (define gx#&module-context-down
      (__make-class-slot-unchecked-accessor gx#module-context::t 'down))
    (define gx#&module-context-id
      (__make-class-slot-unchecked-accessor gx#module-context::t 'id))
    (define gx#&module-context-table
      (__make-class-slot-unchecked-accessor gx#module-context::t 'table))
    (define gx#&module-context-ns-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'ns))
    (define gx#&module-context-path-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'path))
    (define gx#&module-context-import-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'import))
    (define gx#&module-context-export-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'export))
    (define gx#&module-context-e-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'e))
    (define gx#&module-context-code-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'code))
    (define gx#&module-context-super-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'super))
    (define gx#&module-context-up-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'up))
    (define gx#&module-context-down-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'down))
    (define gx#&module-context-id-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'id))
    (define gx#&module-context-table-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'table))
    (define gx#prelude-context::t
      (__make-class-type
       'gx#prelude-context::t
       'prelude-context
       (list gx#top-context::t)
       '(path import e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#prelude-context? (__make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _%$args186708%_
        (apply make-instance gx#prelude-context::t _%$args186708%_)))
    (define gx#prelude-context-path
      (__make-class-slot-accessor gx#prelude-context::t 'path))
    (define gx#prelude-context-import
      (__make-class-slot-accessor gx#prelude-context::t 'import))
    (define gx#prelude-context-e
      (__make-class-slot-accessor gx#prelude-context::t 'e))
    (define gx#prelude-context-super
      (__make-class-slot-accessor gx#prelude-context::t 'super))
    (define gx#prelude-context-up
      (__make-class-slot-accessor gx#prelude-context::t 'up))
    (define gx#prelude-context-down
      (__make-class-slot-accessor gx#prelude-context::t 'down))
    (define gx#prelude-context-id
      (__make-class-slot-accessor gx#prelude-context::t 'id))
    (define gx#prelude-context-table
      (__make-class-slot-accessor gx#prelude-context::t 'table))
    (define gx#prelude-context-path-set!
      (__make-class-slot-mutator gx#prelude-context::t 'path))
    (define gx#prelude-context-import-set!
      (__make-class-slot-mutator gx#prelude-context::t 'import))
    (define gx#prelude-context-e-set!
      (__make-class-slot-mutator gx#prelude-context::t 'e))
    (define gx#prelude-context-super-set!
      (__make-class-slot-mutator gx#prelude-context::t 'super))
    (define gx#prelude-context-up-set!
      (__make-class-slot-mutator gx#prelude-context::t 'up))
    (define gx#prelude-context-down-set!
      (__make-class-slot-mutator gx#prelude-context::t 'down))
    (define gx#prelude-context-id-set!
      (__make-class-slot-mutator gx#prelude-context::t 'id))
    (define gx#prelude-context-table-set!
      (__make-class-slot-mutator gx#prelude-context::t 'table))
    (define gx#&prelude-context-path
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'path))
    (define gx#&prelude-context-import
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'import))
    (define gx#&prelude-context-e
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'e))
    (define gx#&prelude-context-super
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'super))
    (define gx#&prelude-context-up
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'up))
    (define gx#&prelude-context-down
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'down))
    (define gx#&prelude-context-id
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'id))
    (define gx#&prelude-context-table
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'table))
    (define gx#&prelude-context-path-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'path))
    (define gx#&prelude-context-import-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'import))
    (define gx#&prelude-context-e-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'e))
    (define gx#&prelude-context-super-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'super))
    (define gx#&prelude-context-up-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'up))
    (define gx#&prelude-context-down-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'down))
    (define gx#&prelude-context-id-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'id))
    (define gx#&prelude-context-table-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'table))
    (define gx#local-context::t
      (__make-class-type
       'gx#local-context::t
       'local-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-context? (__make-class-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _%$args186705%_
        (apply make-instance gx#local-context::t _%$args186705%_)))
    (define gx#local-context-super
      (__make-class-slot-accessor gx#local-context::t 'super))
    (define gx#local-context-up
      (__make-class-slot-accessor gx#local-context::t 'up))
    (define gx#local-context-down
      (__make-class-slot-accessor gx#local-context::t 'down))
    (define gx#local-context-id
      (__make-class-slot-accessor gx#local-context::t 'id))
    (define gx#local-context-table
      (__make-class-slot-accessor gx#local-context::t 'table))
    (define gx#local-context-super-set!
      (__make-class-slot-mutator gx#local-context::t 'super))
    (define gx#local-context-up-set!
      (__make-class-slot-mutator gx#local-context::t 'up))
    (define gx#local-context-down-set!
      (__make-class-slot-mutator gx#local-context::t 'down))
    (define gx#local-context-id-set!
      (__make-class-slot-mutator gx#local-context::t 'id))
    (define gx#local-context-table-set!
      (__make-class-slot-mutator gx#local-context::t 'table))
    (define gx#&local-context-super
      (__make-class-slot-unchecked-accessor gx#local-context::t 'super))
    (define gx#&local-context-up
      (__make-class-slot-unchecked-accessor gx#local-context::t 'up))
    (define gx#&local-context-down
      (__make-class-slot-unchecked-accessor gx#local-context::t 'down))
    (define gx#&local-context-id
      (__make-class-slot-unchecked-accessor gx#local-context::t 'id))
    (define gx#&local-context-table
      (__make-class-slot-unchecked-accessor gx#local-context::t 'table))
    (define gx#&local-context-super-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'super))
    (define gx#&local-context-up-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'up))
    (define gx#&local-context-down-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'down))
    (define gx#&local-context-id-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'id))
    (define gx#&local-context-table-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'table))
    (define gx#phi-context:::init!__%
      (lambda (_%self186678%_ _%id186679%_ _%super186680%_)
        (let ((_%self186683%_ _%self186678%_))
          (if (##fx< '3 (##structure-length _%self186683%_))
              (begin
                (##unchecked-structure-set!
                 _%self186683%_
                 _%id186679%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186683%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186683%_
                 _%super186680%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self186683%_
                     '3
                     (##structure-length _%self186683%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self186696%_ _%id186697%_)
        (let ((_%super186699%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self186696%_
           _%id186697%_
           _%super186699%_))))
    (define gx#phi-context:::init!
      (lambda _g186765_
        (let ((_g186766_ (##length _g186765_)))
          (cond ((##fx= _g186766_ 2)
                 (apply gx#phi-context:::init!__0 _g186765_))
                ((##fx= _g186766_ 3)
                 (apply gx#phi-context:::init!__% _g186765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g186765_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self186531%_ _%super186532%_)
        (let ((_%self186535%_ _%self186531%_))
          (if (##fx< '3 (##structure-length _%self186535%_))
              (begin
                (##unchecked-structure-set!
                 _%self186535%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186535%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186535%_
                 _%super186532%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self186535%_
                     '3
                     (##structure-length _%self186535%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self186548%_)
        (let ((_%super186550%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self186548%_ _%super186550%_))))
    (define gx#local-context:::init!
      (lambda _g186767_
        (let ((_g186768_ (##length _g186767_)))
          (cond ((##fx= _g186768_ 1)
                 (apply gx#local-context:::init!__0 _g186767_))
                ((##fx= _g186768_ 2)
                 (apply gx#local-context:::init!__% _g186767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g186767_))))))
    (__bind-method!__%
     gx#local-context::t
     ':init!
     gx#local-context:::init!
     '#f)
    (define gx#binding::t
      (__make-class-type
       'gx#binding::t
       'binding
       (list)
       '(id key phi properties)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args186405%_
        (apply make-instance gx#binding::t _%$args186405%_)))
    (define gx#binding-id (__make-class-slot-accessor gx#binding::t 'id))
    (define gx#binding-key (__make-class-slot-accessor gx#binding::t 'key))
    (define gx#binding-phi (__make-class-slot-accessor gx#binding::t 'phi))
    (define gx#binding-properties
      (__make-class-slot-accessor gx#binding::t 'properties))
    (define gx#binding-id-set! (__make-class-slot-mutator gx#binding::t 'id))
    (define gx#binding-key-set! (__make-class-slot-mutator gx#binding::t 'key))
    (define gx#binding-phi-set! (__make-class-slot-mutator gx#binding::t 'phi))
    (define gx#binding-properties-set!
      (__make-class-slot-mutator gx#binding::t 'properties))
    (define gx#&binding-id
      (__make-class-slot-unchecked-accessor gx#binding::t 'id))
    (define gx#&binding-key
      (__make-class-slot-unchecked-accessor gx#binding::t 'key))
    (define gx#&binding-phi
      (__make-class-slot-unchecked-accessor gx#binding::t 'phi))
    (define gx#&binding-properties
      (__make-class-slot-unchecked-accessor gx#binding::t 'properties))
    (define gx#&binding-id-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'id))
    (define gx#&binding-key-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'key))
    (define gx#&binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'phi))
    (define gx#&binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'properties))
    (define gx#binding:::init!
      (lambda (_%self186388%_ _%id186389%_ _%key186390%_ _%phi186391%_)
        (let ((_%self186394%_ _%self186388%_))
          (##unchecked-structure-set! _%self186394%_ _%id186389%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self186394%_ _%key186390%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self186394%_
           _%phi186391%_
           '3
           '#f
           '#f))))
    (__bind-method!__% gx#binding::t ':init! gx#binding:::init! '#f)
    (define gx#runtime-binding::t
      (__make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '(type macro)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args186263%_
        (apply make-instance gx#runtime-binding::t _%$args186263%_)))
    (define gx#runtime-binding-type
      (__make-class-slot-accessor gx#runtime-binding::t 'type))
    (define gx#runtime-binding-macro
      (__make-class-slot-accessor gx#runtime-binding::t 'macro))
    (define gx#runtime-binding-id
      (__make-class-slot-accessor gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key
      (__make-class-slot-accessor gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi
      (__make-class-slot-accessor gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-properties
      (__make-class-slot-accessor gx#runtime-binding::t 'properties))
    (define gx#runtime-binding-type-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'type))
    (define gx#runtime-binding-macro-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'macro))
    (define gx#runtime-binding-id-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-properties-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'properties))
    (define gx#&runtime-binding-type
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'type))
    (define gx#&runtime-binding-macro
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'macro))
    (define gx#&runtime-binding-id
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-properties
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'properties))
    (define gx#&runtime-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'type))
    (define gx#&runtime-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'macro))
    (define gx#&runtime-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'properties))
    (define gx#local-binding::t
      (__make-class-type
       'gx#local-binding::t
       'local-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args186260%_
        (apply make-instance gx#local-binding::t _%$args186260%_)))
    (define gx#local-binding-type
      (__make-class-slot-accessor gx#local-binding::t 'type))
    (define gx#local-binding-macro
      (__make-class-slot-accessor gx#local-binding::t 'macro))
    (define gx#local-binding-id
      (__make-class-slot-accessor gx#local-binding::t 'id))
    (define gx#local-binding-key
      (__make-class-slot-accessor gx#local-binding::t 'key))
    (define gx#local-binding-phi
      (__make-class-slot-accessor gx#local-binding::t 'phi))
    (define gx#local-binding-properties
      (__make-class-slot-accessor gx#local-binding::t 'properties))
    (define gx#local-binding-type-set!
      (__make-class-slot-mutator gx#local-binding::t 'type))
    (define gx#local-binding-macro-set!
      (__make-class-slot-mutator gx#local-binding::t 'macro))
    (define gx#local-binding-id-set!
      (__make-class-slot-mutator gx#local-binding::t 'id))
    (define gx#local-binding-key-set!
      (__make-class-slot-mutator gx#local-binding::t 'key))
    (define gx#local-binding-phi-set!
      (__make-class-slot-mutator gx#local-binding::t 'phi))
    (define gx#local-binding-properties-set!
      (__make-class-slot-mutator gx#local-binding::t 'properties))
    (define gx#&local-binding-type
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'type))
    (define gx#&local-binding-macro
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'macro))
    (define gx#&local-binding-id
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'id))
    (define gx#&local-binding-key
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'key))
    (define gx#&local-binding-phi
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'phi))
    (define gx#&local-binding-properties
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'properties))
    (define gx#&local-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'type))
    (define gx#&local-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'macro))
    (define gx#&local-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'id))
    (define gx#&local-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'key))
    (define gx#&local-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'phi))
    (define gx#&local-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'properties))
    (define gx#top-binding::t
      (__make-class-type
       'gx#top-binding::t
       'top-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args186257%_
        (apply make-instance gx#top-binding::t _%$args186257%_)))
    (define gx#top-binding-type
      (__make-class-slot-accessor gx#top-binding::t 'type))
    (define gx#top-binding-macro
      (__make-class-slot-accessor gx#top-binding::t 'macro))
    (define gx#top-binding-id
      (__make-class-slot-accessor gx#top-binding::t 'id))
    (define gx#top-binding-key
      (__make-class-slot-accessor gx#top-binding::t 'key))
    (define gx#top-binding-phi
      (__make-class-slot-accessor gx#top-binding::t 'phi))
    (define gx#top-binding-properties
      (__make-class-slot-accessor gx#top-binding::t 'properties))
    (define gx#top-binding-type-set!
      (__make-class-slot-mutator gx#top-binding::t 'type))
    (define gx#top-binding-macro-set!
      (__make-class-slot-mutator gx#top-binding::t 'macro))
    (define gx#top-binding-id-set!
      (__make-class-slot-mutator gx#top-binding::t 'id))
    (define gx#top-binding-key-set!
      (__make-class-slot-mutator gx#top-binding::t 'key))
    (define gx#top-binding-phi-set!
      (__make-class-slot-mutator gx#top-binding::t 'phi))
    (define gx#top-binding-properties-set!
      (__make-class-slot-mutator gx#top-binding::t 'properties))
    (define gx#&top-binding-type
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'type))
    (define gx#&top-binding-macro
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'macro))
    (define gx#&top-binding-id
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'id))
    (define gx#&top-binding-key
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'key))
    (define gx#&top-binding-phi
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'phi))
    (define gx#&top-binding-properties
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'properties))
    (define gx#&top-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'type))
    (define gx#&top-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'macro))
    (define gx#&top-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'id))
    (define gx#&top-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'key))
    (define gx#&top-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'phi))
    (define gx#&top-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'properties))
    (define gx#module-binding::t
      (__make-class-type
       'gx#module-binding::t
       'module-binding
       (list gx#top-binding::t)
       '(context)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args186254%_
        (apply make-instance gx#module-binding::t _%$args186254%_)))
    (define gx#module-binding-context
      (__make-class-slot-accessor gx#module-binding::t 'context))
    (define gx#module-binding-type
      (__make-class-slot-accessor gx#module-binding::t 'type))
    (define gx#module-binding-macro
      (__make-class-slot-accessor gx#module-binding::t 'macro))
    (define gx#module-binding-id
      (__make-class-slot-accessor gx#module-binding::t 'id))
    (define gx#module-binding-key
      (__make-class-slot-accessor gx#module-binding::t 'key))
    (define gx#module-binding-phi
      (__make-class-slot-accessor gx#module-binding::t 'phi))
    (define gx#module-binding-properties
      (__make-class-slot-accessor gx#module-binding::t 'properties))
    (define gx#module-binding-context-set!
      (__make-class-slot-mutator gx#module-binding::t 'context))
    (define gx#module-binding-type-set!
      (__make-class-slot-mutator gx#module-binding::t 'type))
    (define gx#module-binding-macro-set!
      (__make-class-slot-mutator gx#module-binding::t 'macro))
    (define gx#module-binding-id-set!
      (__make-class-slot-mutator gx#module-binding::t 'id))
    (define gx#module-binding-key-set!
      (__make-class-slot-mutator gx#module-binding::t 'key))
    (define gx#module-binding-phi-set!
      (__make-class-slot-mutator gx#module-binding::t 'phi))
    (define gx#module-binding-properties-set!
      (__make-class-slot-mutator gx#module-binding::t 'properties))
    (define gx#&module-binding-context
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'context))
    (define gx#&module-binding-type
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'type))
    (define gx#&module-binding-macro
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'macro))
    (define gx#&module-binding-id
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'id))
    (define gx#&module-binding-key
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'key))
    (define gx#&module-binding-phi
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'phi))
    (define gx#&module-binding-properties
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'properties))
    (define gx#&module-binding-context-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'context))
    (define gx#&module-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'type))
    (define gx#&module-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'macro))
    (define gx#&module-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'id))
    (define gx#&module-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'key))
    (define gx#&module-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'phi))
    (define gx#&module-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'properties))
    (define gx#extern-binding::t
      (__make-class-type
       'gx#extern-binding::t
       'extern-binding
       (list gx#top-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args186251%_
        (apply make-instance gx#extern-binding::t _%$args186251%_)))
    (define gx#extern-binding-type
      (__make-class-slot-accessor gx#extern-binding::t 'type))
    (define gx#extern-binding-macro
      (__make-class-slot-accessor gx#extern-binding::t 'macro))
    (define gx#extern-binding-id
      (__make-class-slot-accessor gx#extern-binding::t 'id))
    (define gx#extern-binding-key
      (__make-class-slot-accessor gx#extern-binding::t 'key))
    (define gx#extern-binding-phi
      (__make-class-slot-accessor gx#extern-binding::t 'phi))
    (define gx#extern-binding-properties
      (__make-class-slot-accessor gx#extern-binding::t 'properties))
    (define gx#extern-binding-type-set!
      (__make-class-slot-mutator gx#extern-binding::t 'type))
    (define gx#extern-binding-macro-set!
      (__make-class-slot-mutator gx#extern-binding::t 'macro))
    (define gx#extern-binding-id-set!
      (__make-class-slot-mutator gx#extern-binding::t 'id))
    (define gx#extern-binding-key-set!
      (__make-class-slot-mutator gx#extern-binding::t 'key))
    (define gx#extern-binding-phi-set!
      (__make-class-slot-mutator gx#extern-binding::t 'phi))
    (define gx#extern-binding-properties-set!
      (__make-class-slot-mutator gx#extern-binding::t 'properties))
    (define gx#&extern-binding-type
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'type))
    (define gx#&extern-binding-macro
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'macro))
    (define gx#&extern-binding-id
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'id))
    (define gx#&extern-binding-key
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'phi))
    (define gx#&extern-binding-properties
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'properties))
    (define gx#&extern-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'type))
    (define gx#&extern-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'macro))
    (define gx#&extern-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'id))
    (define gx#&extern-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'phi))
    (define gx#&extern-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'properties))
    (define gx#runtime-binding:::init! gx#binding:::init!)
    (__bind-method!__%
     gx#runtime-binding::t
     ':init!
     gx#runtime-binding:::init!
     '#f)
    (define gx#local-binding:::init! gx#binding:::init!)
    (__bind-method!__%
     gx#local-binding::t
     ':init!
     gx#local-binding:::init!
     '#f)
    (define gx#top-binding:::init! gx#binding:::init!)
    (__bind-method!__% gx#top-binding::t ':init! gx#top-binding:::init! '#f)
    (define gx#module-binding:::init!
      (lambda (_%self185867%_
               _%id185868%_
               _%key185869%_
               _%phi185870%_
               _%ctx185871%_)
        (let ((_%self185874%_ _%self185867%_))
          (gx#binding:::init!
           _%self185874%_
           _%id185868%_
           _%key185869%_
           _%phi185870%_)
          (##unchecked-structure-set!
           _%self185874%_
           _%ctx185871%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#module-binding::t
     ':init!
     gx#module-binding:::init!
     '#f)
    (define gx#extern-binding:::init! gx#binding:::init!)
    (__bind-method!__%
     gx#extern-binding::t
     ':init!
     gx#extern-binding:::init!
     '#f)
    (define gx#syntax-binding::t
      (__make-class-type
       'gx#syntax-binding::t
       'syntax-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args185620%_
        (apply make-instance gx#syntax-binding::t _%$args185620%_)))
    (define gx#syntax-binding-e
      (__make-class-slot-accessor gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id
      (__make-class-slot-accessor gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key
      (__make-class-slot-accessor gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi
      (__make-class-slot-accessor gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-properties
      (__make-class-slot-accessor gx#syntax-binding::t 'properties))
    (define gx#syntax-binding-e-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-properties-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'properties))
    (define gx#&syntax-binding-e
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-properties
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'properties))
    (define gx#&syntax-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'properties))
    (define gx#import-binding::t
      (__make-class-type
       'gx#import-binding::t
       'import-binding
       (list gx#binding::t)
       '(e context weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args185617%_
        (apply make-instance gx#import-binding::t _%$args185617%_)))
    (define gx#import-binding-e
      (__make-class-slot-accessor gx#import-binding::t 'e))
    (define gx#import-binding-context
      (__make-class-slot-accessor gx#import-binding::t 'context))
    (define gx#import-binding-weak?
      (__make-class-slot-accessor gx#import-binding::t 'weak?))
    (define gx#import-binding-id
      (__make-class-slot-accessor gx#import-binding::t 'id))
    (define gx#import-binding-key
      (__make-class-slot-accessor gx#import-binding::t 'key))
    (define gx#import-binding-phi
      (__make-class-slot-accessor gx#import-binding::t 'phi))
    (define gx#import-binding-properties
      (__make-class-slot-accessor gx#import-binding::t 'properties))
    (define gx#import-binding-e-set!
      (__make-class-slot-mutator gx#import-binding::t 'e))
    (define gx#import-binding-context-set!
      (__make-class-slot-mutator gx#import-binding::t 'context))
    (define gx#import-binding-weak?-set!
      (__make-class-slot-mutator gx#import-binding::t 'weak?))
    (define gx#import-binding-id-set!
      (__make-class-slot-mutator gx#import-binding::t 'id))
    (define gx#import-binding-key-set!
      (__make-class-slot-mutator gx#import-binding::t 'key))
    (define gx#import-binding-phi-set!
      (__make-class-slot-mutator gx#import-binding::t 'phi))
    (define gx#import-binding-properties-set!
      (__make-class-slot-mutator gx#import-binding::t 'properties))
    (define gx#&import-binding-e
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'e))
    (define gx#&import-binding-context
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'context))
    (define gx#&import-binding-weak?
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'weak?))
    (define gx#&import-binding-id
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'id))
    (define gx#&import-binding-key
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'key))
    (define gx#&import-binding-phi
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'phi))
    (define gx#&import-binding-properties
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'properties))
    (define gx#&import-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'e))
    (define gx#&import-binding-context-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'context))
    (define gx#&import-binding-weak?-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'weak?))
    (define gx#&import-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'id))
    (define gx#&import-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'key))
    (define gx#&import-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'phi))
    (define gx#&import-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'properties))
    (define gx#alias-binding::t
      (__make-class-type
       'gx#alias-binding::t
       'alias-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args185614%_
        (apply make-instance gx#alias-binding::t _%$args185614%_)))
    (define gx#alias-binding-e
      (__make-class-slot-accessor gx#alias-binding::t 'e))
    (define gx#alias-binding-id
      (__make-class-slot-accessor gx#alias-binding::t 'id))
    (define gx#alias-binding-key
      (__make-class-slot-accessor gx#alias-binding::t 'key))
    (define gx#alias-binding-phi
      (__make-class-slot-accessor gx#alias-binding::t 'phi))
    (define gx#alias-binding-properties
      (__make-class-slot-accessor gx#alias-binding::t 'properties))
    (define gx#alias-binding-e-set!
      (__make-class-slot-mutator gx#alias-binding::t 'e))
    (define gx#alias-binding-id-set!
      (__make-class-slot-mutator gx#alias-binding::t 'id))
    (define gx#alias-binding-key-set!
      (__make-class-slot-mutator gx#alias-binding::t 'key))
    (define gx#alias-binding-phi-set!
      (__make-class-slot-mutator gx#alias-binding::t 'phi))
    (define gx#alias-binding-properties-set!
      (__make-class-slot-mutator gx#alias-binding::t 'properties))
    (define gx#&alias-binding-e
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'e))
    (define gx#&alias-binding-id
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'id))
    (define gx#&alias-binding-key
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'phi))
    (define gx#&alias-binding-properties
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'properties))
    (define gx#&alias-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'e))
    (define gx#&alias-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'id))
    (define gx#&alias-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'phi))
    (define gx#&alias-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'properties))
    (define gx#syntax-binding:::init!
      (lambda (_%self185596%_
               _%id185597%_
               _%key185598%_
               _%phi185599%_
               _%e185600%_)
        (let ((_%self185603%_ _%self185596%_))
          (gx#binding:::init!
           _%self185603%_
           _%id185597%_
           _%key185598%_
           _%phi185599%_)
          (##unchecked-structure-set! _%self185603%_ _%e185600%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self185454%_
               _%id185455%_
               _%key185456%_
               _%phi185457%_
               _%e185458%_
               _%ctx185459%_
               _%weak?185460%_)
        (let ((_%self185463%_ _%self185454%_))
          (gx#binding:::init!
           _%self185463%_
           _%id185455%_
           _%key185456%_
           _%phi185457%_)
          (##unchecked-structure-set! _%self185463%_ _%e185458%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self185463%_ _%ctx185459%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self185463%_
           _%weak?185460%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self185314%_
               _%id185315%_
               _%key185316%_
               _%phi185317%_
               _%e185318%_)
        (let ((_%self185321%_ _%self185314%_))
          (gx#binding:::init!
           _%self185321%_
           _%id185315%_
           _%key185316%_
           _%phi185317%_)
          (##unchecked-structure-set! _%self185321%_ _%e185318%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#alias-binding::t
     ':init!
     gx#alias-binding:::init!
     '#f)
    (define gx#expander::t
      (__make-class-type
       'gx#expander::t
       'expander
       (list)
       '(e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args185189%_
        (apply make-instance gx#expander::t _%$args185189%_)))
    (define gx#expander-e (__make-class-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (__make-class-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (__make-class-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (__make-class-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (__make-class-type
       'gx#core-expander::t
       'core-expander
       (list gx#expander::t)
       '(id compile-top)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#core-expander? (__make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _%$args185186%_
        (apply make-instance gx#core-expander::t _%$args185186%_)))
    (define gx#core-expander-id
      (__make-class-slot-accessor gx#core-expander::t 'id))
    (define gx#core-expander-compile-top
      (__make-class-slot-accessor gx#core-expander::t 'compile-top))
    (define gx#core-expander-e
      (__make-class-slot-accessor gx#core-expander::t 'e))
    (define gx#core-expander-id-set!
      (__make-class-slot-mutator gx#core-expander::t 'id))
    (define gx#core-expander-compile-top-set!
      (__make-class-slot-mutator gx#core-expander::t 'compile-top))
    (define gx#core-expander-e-set!
      (__make-class-slot-mutator gx#core-expander::t 'e))
    (define gx#&core-expander-id
      (__make-class-slot-unchecked-accessor gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top
      (__make-class-slot-unchecked-accessor gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e
      (__make-class-slot-unchecked-accessor gx#core-expander::t 'e))
    (define gx#&core-expander-id-set!
      (__make-class-slot-unchecked-mutator gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#core-expander::t 'e))
    (define gx#expression-form::t
      (__make-class-type
       'gx#expression-form::t
       'expression-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (__make-class-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _%$args185183%_
        (apply make-instance gx#expression-form::t _%$args185183%_)))
    (define gx#expression-form-id
      (__make-class-slot-accessor gx#expression-form::t 'id))
    (define gx#expression-form-compile-top
      (__make-class-slot-accessor gx#expression-form::t 'compile-top))
    (define gx#expression-form-e
      (__make-class-slot-accessor gx#expression-form::t 'e))
    (define gx#expression-form-id-set!
      (__make-class-slot-mutator gx#expression-form::t 'id))
    (define gx#expression-form-compile-top-set!
      (__make-class-slot-mutator gx#expression-form::t 'compile-top))
    (define gx#expression-form-e-set!
      (__make-class-slot-mutator gx#expression-form::t 'e))
    (define gx#&expression-form-id
      (__make-class-slot-unchecked-accessor gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#expression-form::t
       'compile-top))
    (define gx#&expression-form-e
      (__make-class-slot-unchecked-accessor gx#expression-form::t 'e))
    (define gx#&expression-form-id-set!
      (__make-class-slot-unchecked-mutator gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e-set!
      (__make-class-slot-unchecked-mutator gx#expression-form::t 'e))
    (define gx#special-form::t
      (__make-class-type
       'gx#special-form::t
       'special-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (__make-class-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _%$args185180%_
        (apply make-instance gx#special-form::t _%$args185180%_)))
    (define gx#special-form-id
      (__make-class-slot-accessor gx#special-form::t 'id))
    (define gx#special-form-compile-top
      (__make-class-slot-accessor gx#special-form::t 'compile-top))
    (define gx#special-form-e
      (__make-class-slot-accessor gx#special-form::t 'e))
    (define gx#special-form-id-set!
      (__make-class-slot-mutator gx#special-form::t 'id))
    (define gx#special-form-compile-top-set!
      (__make-class-slot-mutator gx#special-form::t 'compile-top))
    (define gx#special-form-e-set!
      (__make-class-slot-mutator gx#special-form::t 'e))
    (define gx#&special-form-id
      (__make-class-slot-unchecked-accessor gx#special-form::t 'id))
    (define gx#&special-form-compile-top
      (__make-class-slot-unchecked-accessor gx#special-form::t 'compile-top))
    (define gx#&special-form-e
      (__make-class-slot-unchecked-accessor gx#special-form::t 'e))
    (define gx#&special-form-id-set!
      (__make-class-slot-unchecked-mutator gx#special-form::t 'id))
    (define gx#&special-form-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#special-form::t 'compile-top))
    (define gx#&special-form-e-set!
      (__make-class-slot-unchecked-mutator gx#special-form::t 'e))
    (define gx#definition-form::t
      (__make-class-type
       'gx#definition-form::t
       'definition-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (__make-class-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _%$args185177%_
        (apply make-instance gx#definition-form::t _%$args185177%_)))
    (define gx#definition-form-id
      (__make-class-slot-accessor gx#definition-form::t 'id))
    (define gx#definition-form-compile-top
      (__make-class-slot-accessor gx#definition-form::t 'compile-top))
    (define gx#definition-form-e
      (__make-class-slot-accessor gx#definition-form::t 'e))
    (define gx#definition-form-id-set!
      (__make-class-slot-mutator gx#definition-form::t 'id))
    (define gx#definition-form-compile-top-set!
      (__make-class-slot-mutator gx#definition-form::t 'compile-top))
    (define gx#definition-form-e-set!
      (__make-class-slot-mutator gx#definition-form::t 'e))
    (define gx#&definition-form-id
      (__make-class-slot-unchecked-accessor gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#definition-form::t
       'compile-top))
    (define gx#&definition-form-e
      (__make-class-slot-unchecked-accessor gx#definition-form::t 'e))
    (define gx#&definition-form-id-set!
      (__make-class-slot-unchecked-mutator gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e-set!
      (__make-class-slot-unchecked-mutator gx#definition-form::t 'e))
    (define gx#top-special-form::t
      (__make-class-type
       'gx#top-special-form::t
       'top-special-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form?
      (__make-class-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _%$args185174%_
        (apply make-instance gx#top-special-form::t _%$args185174%_)))
    (define gx#top-special-form-id
      (__make-class-slot-accessor gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top
      (__make-class-slot-accessor gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e
      (__make-class-slot-accessor gx#top-special-form::t 'e))
    (define gx#top-special-form-id-set!
      (__make-class-slot-mutator gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top-set!
      (__make-class-slot-mutator gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e-set!
      (__make-class-slot-mutator gx#top-special-form::t 'e))
    (define gx#&top-special-form-id
      (__make-class-slot-unchecked-accessor gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#top-special-form::t
       'compile-top))
    (define gx#&top-special-form-e
      (__make-class-slot-unchecked-accessor gx#top-special-form::t 'e))
    (define gx#&top-special-form-id-set!
      (__make-class-slot-unchecked-mutator gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top-set!
      (__make-class-slot-unchecked-mutator
       gx#top-special-form::t
       'compile-top))
    (define gx#&top-special-form-e-set!
      (__make-class-slot-unchecked-mutator gx#top-special-form::t 'e))
    (define gx#module-special-form::t
      (__make-class-type
       'gx#module-special-form::t
       'module-special-form
       (list gx#top-special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (__make-class-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _%$args185171%_
        (apply make-instance gx#module-special-form::t _%$args185171%_)))
    (define gx#module-special-form-id
      (__make-class-slot-accessor gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top
      (__make-class-slot-accessor gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e
      (__make-class-slot-accessor gx#module-special-form::t 'e))
    (define gx#module-special-form-id-set!
      (__make-class-slot-mutator gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top-set!
      (__make-class-slot-mutator gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e-set!
      (__make-class-slot-mutator gx#module-special-form::t 'e))
    (define gx#&module-special-form-id
      (__make-class-slot-unchecked-accessor gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e
      (__make-class-slot-unchecked-accessor gx#module-special-form::t 'e))
    (define gx#&module-special-form-id-set!
      (__make-class-slot-unchecked-mutator gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top-set!
      (__make-class-slot-unchecked-mutator
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e-set!
      (__make-class-slot-unchecked-mutator gx#module-special-form::t 'e))
    (define gx#feature-expander::t
      (__make-class-type
       'gx#feature-expander::t
       'feature-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander?
      (__make-class-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _%$args185168%_
        (apply make-instance gx#feature-expander::t _%$args185168%_)))
    (define gx#feature-expander-e
      (__make-class-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (__make-class-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (__make-class-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (__make-class-type
       'gx#private-feature-expander::t
       'private-feature-expander
       (list gx#feature-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (__make-class-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _%$args185165%_
        (apply make-instance gx#private-feature-expander::t _%$args185165%_)))
    (define gx#private-feature-expander-e
      (__make-class-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (__make-class-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (__make-class-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (__make-class-type
       'gx#reserved-expander::t
       'reserved-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (__make-class-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _%$args185162%_
        (apply make-instance gx#reserved-expander::t _%$args185162%_)))
    (define gx#reserved-expander-e
      (__make-class-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (__make-class-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (__make-class-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (__make-class-type
       'gx#macro-expander::t
       'macro-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (__make-class-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _%$args185159%_
        (apply make-instance gx#macro-expander::t _%$args185159%_)))
    (define gx#macro-expander-e
      (__make-class-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (__make-class-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (__make-class-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (__make-class-type
       'gx#rename-macro-expander::t
       'rename-macro-expander
       (list gx#macro-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (__make-class-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _%$args185156%_
        (apply make-instance gx#rename-macro-expander::t _%$args185156%_)))
    (define gx#rename-macro-expander-e
      (__make-class-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (__make-class-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (__make-class-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (__make-class-type
       'gx#user-expander::t
       'user-expander
       (list gx#macro-expander::t)
       '(context phi)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#user-expander? (__make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _%$args185153%_
        (apply make-instance gx#user-expander::t _%$args185153%_)))
    (define gx#user-expander-context
      (__make-class-slot-accessor gx#user-expander::t 'context))
    (define gx#user-expander-phi
      (__make-class-slot-accessor gx#user-expander::t 'phi))
    (define gx#user-expander-e
      (__make-class-slot-accessor gx#user-expander::t 'e))
    (define gx#user-expander-context-set!
      (__make-class-slot-mutator gx#user-expander::t 'context))
    (define gx#user-expander-phi-set!
      (__make-class-slot-mutator gx#user-expander::t 'phi))
    (define gx#user-expander-e-set!
      (__make-class-slot-mutator gx#user-expander::t 'e))
    (define gx#&user-expander-context
      (__make-class-slot-unchecked-accessor gx#user-expander::t 'context))
    (define gx#&user-expander-phi
      (__make-class-slot-unchecked-accessor gx#user-expander::t 'phi))
    (define gx#&user-expander-e
      (__make-class-slot-unchecked-accessor gx#user-expander::t 'e))
    (define gx#&user-expander-context-set!
      (__make-class-slot-unchecked-mutator gx#user-expander::t 'context))
    (define gx#&user-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#user-expander::t 'phi))
    (define gx#&user-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#user-expander::t 'e))
    (define gx#expander-mark::t
      (__make-class-type
       'gx#expander-mark::t
       'expander-mark
       (list)
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander-mark? (__make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _%$args185150%_
        (apply make-instance gx#expander-mark::t _%$args185150%_)))
    (define gx#expander-mark-subst
      (__make-class-slot-accessor gx#expander-mark::t 'subst))
    (define gx#expander-mark-context
      (__make-class-slot-accessor gx#expander-mark::t 'context))
    (define gx#expander-mark-phi
      (__make-class-slot-accessor gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace
      (__make-class-slot-accessor gx#expander-mark::t 'trace))
    (define gx#expander-mark-subst-set!
      (__make-class-slot-mutator gx#expander-mark::t 'subst))
    (define gx#expander-mark-context-set!
      (__make-class-slot-mutator gx#expander-mark::t 'context))
    (define gx#expander-mark-phi-set!
      (__make-class-slot-mutator gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace-set!
      (__make-class-slot-mutator gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'trace))
    (define gx#raise-syntax-error
      (lambda (_%ctx185134%_
               _%message185135%_
               _%stx185136%_
               .
               _%details185137%_)
        (let ((_%ctx185148%_
               (let ((_%$e185139%_ _%ctx185134%_))
                 (if _%$e185139%_
                     _%$e185139%_
                     (let ((_%$e185142%_ (gx#core-context-top__0)))
                       (if _%$e185142%_
                           ((lambda (_%ctx185145%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx185145%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e185142%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message185135%_
                  (cons _%stx185136%_ _%details185137%_)
                  _%ctx185148%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx185121%_ _%expression?185122%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx185121%_ _%expression?185122%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx185127%_)
        (let ((_%expression?185129%_ '#f))
          (gx#eval-syntax__% _%stx185127%_ _%expression?185129%_))))
    (define gx#eval-syntax
      (lambda _g186769_
        (let ((_g186770_ (##length _g186769_)))
          (cond ((##fx= _g186770_ 1) (apply gx#eval-syntax__0 _g186769_))
                ((##fx= _g186770_ 2) (apply gx#eval-syntax__% _g186769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g186769_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx185106%_ _%expression?185107%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx185106%_ _%expression?185107%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx185113%_)
        (let ((_%expression?185115%_ '#f))
          (gx#eval-syntax+1__% _%stx185113%_ _%expression?185115%_))))
    (define gx#eval-syntax+1
      (lambda _g186771_
        (let ((_g186772_ (##length _g186771_)))
          (cond ((##fx= _g186772_ 1) (apply gx#eval-syntax+1__0 _g186771_))
                ((##fx= _g186772_ 2) (apply gx#eval-syntax+1__% _g186771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g186771_))))))
    (define gx#eval-expression+1
      (lambda (_%stx185103%_) (gx#eval-syntax+1__% _%stx185103%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx185101%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx185101%_))))
    (define gx#core-expand__%
      (lambda (_%stx185088%_ _%expression?185089%_)
        (if _%expression?185089%_
            (gx#core-expand-expression _%stx185088%_)
            (gx#core-expand-top _%stx185088%_))))
    (define gx#core-expand__0
      (lambda (_%stx185094%_)
        (let ((_%expression?185096%_ '#f))
          (gx#core-expand__% _%stx185094%_ _%expression?185096%_))))
    (define gx#core-expand
      (lambda _g186773_
        (let ((_g186774_ (##length _g186773_)))
          (cond ((##fx= _g186774_ 1) (apply gx#core-expand__0 _g186773_))
                ((##fx= _g186774_ 2) (apply gx#core-expand__% _g186773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g186773_))))))
    (define gx#core-expand-top
      (lambda (_%stx185055%_)
        (let* ((_%stx185057%_ (gx#core-expand*__0 _%stx185055%_))
               (_%e185058185065%_ _%stx185057%_)
               (_%E185060185069%_
                (lambda () (gx#core-expand-expression _%stx185057%_)))
               (_%E185059185083%_
                (lambda ()
                  (if (gx#stx-pair? _%e185058185065%_)
                      (let ((_%e185061185073%_
                             (gx#syntax-e _%e185058185065%_)))
                        (let ((_%hd185062185076%_ (##car _%e185061185073%_))
                              (_%tl185063185078%_ (##cdr _%e185061185073%_)))
                          (let ((_%form185081%_ _%hd185062185076%_))
                            (if (gx#core-bound-identifier?__0 _%form185081%_)
                                _%stx185057%_
                                (_%E185060185069%_)))))
                      (_%E185060185069%_)))))
          (_%E185059185083%_))))
    (define gx#core-expand-expression
      (lambda (_%stx184987%_)
        (letrec ((_%sealed-expression?184989%_
                  (lambda (_%hd185025%_)
                    (if (gx#sealed-syntax? _%hd185025%_)
                        (let* ((_%e185026185033%_ _%hd185025%_)
                               (_%E185028185037%_ (lambda () '#f))
                               (_%E185027185051%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e185026185033%_)
                                      (let ((_%e185029185041%_
                                             (gx#syntax-e _%e185026185033%_)))
                                        (let ((_%hd185030185044%_
                                               (##car _%e185029185041%_))
                                              (_%tl185031185046%_
                                               (##cdr _%e185029185041%_)))
                                          (let ((_%form185049%_
                                                 _%hd185030185044%_))
                                            (gx#core-bound-identifier?__%
                                             _%form185049%_
                                             gx#expression-form-binding?))))
                                      (_%E185028185037%_)))))
                          (_%E185027185051%_))
                        '#f)))
                 (_%illegal-expression184990%_
                  (lambda (_%hd185022%_ . _%_185023%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx184987%_
                     _%hd185022%_)))
                 (_%expand-e184991%_
                  (lambda (_%form185014%_ _%hd185015%_)
                    (let ((_%bind185017%_
                           (if (##structure-instance-of?
                                _%form185014%_
                                'gx#binding::t)
                               _%form185014%_
                               (gx#resolve-identifier__0 _%form185014%_))))
                      (if (gx#core-expander-binding? _%bind185017%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind185017%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd185015%_
                            (gx#stx-source _%stx184987%_)))
                          (if (##structure-direct-instance-of?
                               _%bind185017%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind185017%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd185015%_
                                 (gx#stx-source _%stx184987%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx184987%_
                               _%form185014%_)))))))
          (let ((_%hd184993%_ (gx#core-expand-head _%stx184987%_)))
            (if (_%sealed-expression?184989%_ _%hd184993%_)
                _%hd184993%_
                (if (gx#stx-pair? _%hd184993%_)
                    (let* ((_%form184997%_ (gx#stx-car _%hd184993%_))
                           (_%bind184999%_
                            (if (gx#identifier? _%form184997%_)
                                (gx#resolve-identifier__0 _%form184997%_)
                                '#f)))
                      (if (or (not _%bind184999%_)
                              (not (gx#core-expander-binding? _%bind184999%_)))
                          (_%expand-e184991%_
                           '%%app
                           (cons '%%app _%hd184993%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind184999%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd184993%_
                               _%illegal-expression184990%_)
                              (if (gx#expression-form-binding? _%bind184999%_)
                                  (_%expand-e184991%_
                                   _%bind184999%_
                                   _%hd184993%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind184999%_)
                                      (gx#core-expand-expression
                                       (_%expand-e184991%_
                                        _%bind184999%_
                                        _%hd184993%_))
                                      (_%illegal-expression184990%_
                                       _%hd184993%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd184993%_)
                        (_%illegal-expression184990%_ _%hd184993%_)
                        (if (gx#identifier? _%hd184993%_)
                            (_%expand-e184991%_
                             '%%ref
                             (cons '%%ref (cons _%hd184993%_ '())))
                            (if (gx#stx-datum? _%hd184993%_)
                                (_%expand-e184991%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd184993%_ '())))
                                (_%illegal-expression184990%_
                                 _%hd184993%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx184982%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx184985%_ (gx#core-expand-expression _%stx184982%_)))
             (values _%stx184985%_ (gx#eval-syntax* _%stx184985%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx184963%_ _%stop?184964%_)
        (let _%lp184966%_ ((_%stx184968%_ _%stx184963%_))
          (if (_%stop?184964%_ _%stx184968%_)
              _%stx184968%_
              (let ((_%rstx184970%_ (gx#core-expand1 _%stx184968%_)))
                (if (eq? _%stx184968%_ _%rstx184970%_)
                    _%stx184968%_
                    (_%lp184966%_ _%rstx184970%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx184975%_)
        (let ((_%stop?184977%_ false))
          (gx#core-expand*__% _%stx184975%_ _%stop?184977%_))))
    (define gx#core-expand*
      (lambda _g186775_
        (let ((_g186776_ (##length _g186775_)))
          (cond ((##fx= _g186776_ 1) (apply gx#core-expand*__0 _g186775_))
                ((##fx= _g186776_ 2) (apply gx#core-expand*__% _g186775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g186775_))))))
    (define gx#core-expand1
      (lambda (_%stx184915%_)
        (letrec ((_%step184917%_
                  (lambda (_%hd184954%_)
                    (let ((_%bind184956%_
                           (gx#resolve-identifier__0 _%hd184954%_)))
                      (if (##structure-instance-of?
                           _%bind184956%_
                           'gx#runtime-binding::t)
                          _%stx184915%_
                          (if (##structure-direct-instance-of?
                               _%bind184956%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind184956%_
                                '5
                                '#f
                                '#f)
                               _%stx184915%_)
                              (if (not _%bind184956%_)
                                  _%stx184915%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx184915%_))))))))
          (let* ((_%e184918184926%_ _%stx184915%_)
                 (_%E184924184930%_ (lambda () _%stx184915%_))
                 (_%E184920184936%_
                  (lambda ()
                    (let ((_%hd184934%_ _%e184918184926%_))
                      (if (gx#identifier? _%hd184934%_)
                          (_%step184917%_ _%hd184934%_)
                          (_%E184924184930%_)))))
                 (_%E184919184950%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184918184926%_)
                        (let ((_%e184921184940%_
                               (gx#syntax-e _%e184918184926%_)))
                          (let ((_%hd184922184943%_ (##car _%e184921184940%_))
                                (_%tl184923184945%_ (##cdr _%e184921184940%_)))
                            (let ((_%hd184948%_ _%hd184922184943%_))
                              (if (gx#identifier? _%hd184948%_)
                                  (_%step184917%_ _%hd184948%_)
                                  (_%E184920184936%_)))))
                        (_%E184920184936%_)))))
            (_%E184919184950%_)))))
    (define gx#core-expand-head
      (lambda (_%stx184881%_)
        (letrec ((_%stop?184883%_
                  (lambda (_%stx184885%_)
                    (let* ((_%e184886184893%_ _%stx184885%_)
                           (_%E184888184897%_ (lambda () '#f))
                           (_%E184887184911%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184886184893%_)
                                  (let ((_%e184889184901%_
                                         (gx#syntax-e _%e184886184893%_)))
                                    (let ((_%hd184890184904%_
                                           (##car _%e184889184901%_))
                                          (_%tl184891184906%_
                                           (##cdr _%e184889184901%_)))
                                      (let ((_%hd184909%_ _%hd184890184904%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd184909%_))))
                                  (_%E184888184897%_)))))
                      (_%E184887184911%_)))))
          (gx#core-expand*__% _%stx184881%_ _%stop?184883%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx184687%_
               _%expand-special184688%_
               _%begin-form184689%_
               _%expand-e184690%_)
        (letrec ((_%expand-splice184692%_
                  (lambda (_%hd184855%_
                           _%body184856%_
                           _%rest184857%_
                           _%r184858%_)
                    (if (gx#stx-list? _%body184856%_)
                        (_%K184696%_
                         (gx#stx-foldr cons _%rest184857%_ _%body184856%_)
                         _%r184858%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx184687%_
                         _%hd184855%_))))
                 (_%expand-cond-expand184693%_
                  (lambda (_%hd184851%_ _%rest184852%_ _%r184853%_)
                    (_%K184696%_
                     (cons (gx#core-expand-cond-expand% _%hd184851%_)
                           _%rest184852%_)
                     _%r184853%_)))
                 (_%expand-include184694%_
                  (lambda (_%hd184800%_ _%rest184801%_ _%r184802%_)
                    (let* ((_%e184803184813%_ _%hd184800%_)
                           (_%E184805184817%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e184803184813%_)))
                           (_%E184804184847%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184803184813%_)
                                  (let ((_%e184806184821%_
                                         (gx#syntax-e _%e184803184813%_)))
                                    (let ((_%hd184807184824%_
                                           (##car _%e184806184821%_))
                                          (_%tl184808184826%_
                                           (##cdr _%e184806184821%_)))
                                      (if (gx#stx-pair? _%tl184808184826%_)
                                          (let ((_%e184809184829%_
                                                 (gx#syntax-e
                                                  _%tl184808184826%_)))
                                            (let ((_%hd184810184832%_
                                                   (##car _%e184809184829%_))
                                                  (_%tl184811184834%_
                                                   (##cdr _%e184809184829%_)))
                                              (let ((_%path184837%_
                                                     _%hd184810184832%_))
                                                (if (gx#stx-null?
                                                     _%tl184811184834%_)
                                                    (if (gx#stx-string?
                                                         _%path184837%_)
                                                        (let* ((_%rpath184839%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path184837%_
                         (gx#stx-source _%hd184800%_)))
                       (_%block184841%_
                        (gx#core-expand-include%__%
                         _%hd184800%_
                         _%rpath184839%_))
                       (_%rbody184844%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block184841%_
                            _%expand-special184688%_
                            '#f
                            _%expand-e184690%_))
                         gx#current-expander-path
                         (cons _%rpath184839%_ (gx#current-expander-path)))))
                  (_%K184696%_
                   _%rest184801%_
                   (foldr__0 cons _%r184802%_ _%rbody184844%_)))
                (_%E184805184817%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E184805184817%_)))))
                                          (_%E184805184817%_))))
                                  (_%E184805184817%_)))))
                      (_%E184804184847%_))))
                 (_%expand-expression184695%_
                  (lambda (_%hd184796%_ _%rest184797%_ _%r184798%_)
                    (_%K184696%_
                     _%rest184797%_
                     (cons (_%expand-e184690%_ _%hd184796%_) _%r184798%_))))
                 (_%K184696%_
                  (lambda (_%rest184726%_ _%r184727%_)
                    (let* ((_%e184728184735%_ _%rest184726%_)
                           (_%E184730184739%_
                            (lambda ()
                              (if _%begin-form184689%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form184689%_
                                    (reverse _%r184727%_))
                                   (gx#stx-source _%stx184687%_))
                                  _%r184727%_)))
                           (_%E184729184792%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184728184735%_)
                                  (let ((_%e184731184743%_
                                         (gx#syntax-e _%e184728184735%_)))
                                    (let ((_%hd184732184746%_
                                           (##car _%e184731184743%_))
                                          (_%tl184733184748%_
                                           (##cdr _%e184731184743%_)))
                                      (let* ((_%hd184751%_ _%hd184732184746%_)
                                             (_%rest184753%_
                                              _%tl184733184748%_)
                                             (_%hd184755%_
                                              (gx#core-expand-head
                                               _%hd184751%_))
                                             (_%e184756184763%_ _%hd184755%_)
                                             (_%E184758184767%_
                                              (lambda ()
                                                (_%expand-expression184695%_
                                                 _%hd184755%_
                                                 _%rest184753%_
                                                 _%r184727%_)))
                                             (_%E184757184788%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e184756184763%_)
                                                    (let ((_%e184759184771%_
                                                           (gx#syntax-e
                                                            _%e184756184763%_)))
                                                      (let ((_%hd184760184774%_
                                                             (##car _%e184759184771%_))
                                                            (_%tl184761184776%_
                                                             (##cdr _%e184759184771%_)))
                                                        (let* ((_%form184779%_
                                                                _%hd184760184774%_)
                                                               (_%body184781%_
                                                                _%tl184761184776%_)
                                                               (_%bind184783%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form184779%_)
                            (gx#resolve-identifier__0 _%form184779%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind184783%_)
                      (let ((_%$e184785%_
                             (##unchecked-structure-ref
                              _%bind184783%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e184785%_)
                            (_%expand-splice184692%_
                             _%hd184755%_
                             _%body184781%_
                             _%rest184753%_
                             _%r184727%_)
                            (if (eq? '%#cond-expand _%$e184785%_)
                                (_%expand-cond-expand184693%_
                                 _%hd184755%_
                                 _%rest184753%_
                                 _%r184727%_)
                                (if (eq? '%#include _%$e184785%_)
                                    (_%expand-include184694%_
                                     _%hd184755%_
                                     _%rest184753%_
                                     _%r184727%_)
                                    (_%expand-special184688%_
                                     _%hd184755%_
                                     _%K184696%_
                                     _%rest184753%_
                                     _%r184727%_)))))
                      (_%expand-expression184695%_
                       _%hd184755%_
                       _%rest184753%_
                       _%r184727%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E184758184767%_)))))
                                        (_%E184757184788%_))))
                                  (_%E184730184739%_)))))
                      (_%E184729184792%_)))))
          (let* ((_%e184697184704%_ _%stx184687%_)
                 (_%E184699184708%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e184697184704%_)))
                 (_%E184698184722%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184697184704%_)
                        (let ((_%e184700184712%_
                               (gx#syntax-e _%e184697184704%_)))
                          (let ((_%hd184701184715%_ (##car _%e184700184712%_))
                                (_%tl184702184717%_ (##cdr _%e184700184712%_)))
                            (let ((_%body184720%_ _%tl184702184717%_))
                              (if (gx#stx-list? _%body184720%_)
                                  (_%K184696%_ _%body184720%_ '())
                                  (_%E184699184708%_)))))
                        (_%E184699184708%_)))))
            (_%E184698184722%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx184863%_ _%expand-special184864%_)
        (let* ((_%begin-form184866%_ '%#begin)
               (_%expand-e184868%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx184863%_
           _%expand-special184864%_
           _%begin-form184866%_
           _%expand-e184868%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx184870%_ _%expand-special184871%_ _%begin-form184872%_)
        (let ((_%expand-e184874%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx184870%_
           _%expand-special184871%_
           _%begin-form184872%_
           _%expand-e184874%_))))
    (define gx#core-expand-block
      (lambda _g186777_
        (let ((_g186778_ (##length _g186777_)))
          (cond ((##fx= _g186778_ 2) (apply gx#core-expand-block__0 _g186777_))
                ((##fx= _g186778_ 3) (apply gx#core-expand-block__1 _g186777_))
                ((##fx= _g186778_ 4) (apply gx#core-expand-block__% _g186777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g186777_))))))
    (define gx#core-expand-block*
      (lambda (_%stx184635%_ _%expand-special184636%_)
        (let* ((_%g184637184648%_
                (gx#core-expand-block__1
                 _%stx184635%_
                 _%expand-special184636%_
                 '#f))
               (_%E184641184652%_
                (lambda ()
                  (error '"No clause matching"
                         _%g184637184648%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K184646184683%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx184635%_)))
                (_%K184643184669%_ (lambda (_%expr184667%_) _%expr184667%_))
                (_%K184642184658%_
                 (lambda (_%body184656%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body184656%_))
                    (gx#stx-source _%stx184635%_)))))
            (let ((_%try-match184639184679%_
                   (lambda ()
                     (if (pair? _%g184637184648%_)
                         (let ((_%tl184645184674%_ (##cdr _%g184637184648%_))
                               (_%hd184644184672%_ (##car _%g184637184648%_)))
                           (if (null? _%tl184645184674%_)
                               (let ((_%expr184677%_ _%hd184644184672%_))
                                 (_%K184643184669%_ _%expr184677%_))
                               (let ((_%body184661%_ _%g184637184648%_))
                                 (_%K184642184658%_ _%body184661%_))))
                         (let ((_%body184661%_ _%g184637184648%_))
                           (_%K184642184658%_ _%body184661%_))))))
              (if (null? _%g184637184648%_)
                  (_%K184646184683%_)
                  (_%try-match184639184679%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx184461%_)
        (letrec ((_%satisfied?184463%_
                  (lambda (_%condition184564%_)
                    (let* ((_%e184565184580%_ _%condition184564%_)
                           (_%E184575184584%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e184565184580%_)))
                           (_%E184568184603%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184565184580%_)
                                  (let ((_%e184576184588%_
                                         (gx#syntax-e _%e184565184580%_)))
                                    (let ((_%hd184577184591%_
                                           (##car _%e184576184588%_))
                                          (_%tl184578184593%_
                                           (##cdr _%e184576184588%_)))
                                      (let* ((_%combinator184596%_
                                              _%hd184577184591%_)
                                             (_%body184598%_
                                              _%tl184578184593%_))
                                        (if (gx#stx-list? _%body184598%_)
                                            (let ((_%$e184600%_
                                                   (gx#stx-e
                                                    _%combinator184596%_)))
                                              (if (eq? 'not _%$e184600%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?184463%_
                                                        _%body184598%_))
                                                  (if (eq? 'and _%$e184600%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?184463%_
                                                       _%body184598%_)
                                                      (if (eq? 'or
                                                               _%$e184600%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?184463%_
                                                           _%body184598%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e184600%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body184598%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx184461%_
                       _%combinator184596%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E184575184584%_)))))
                                  (_%E184575184584%_))))
                           (_%E184567184625%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184565184580%_)
                                  (let ((_%e184569184607%_
                                         (gx#syntax-e _%e184565184580%_)))
                                    (let ((_%hd184570184610%_
                                           (##car _%e184569184607%_))
                                          (_%tl184571184612%_
                                           (##cdr _%e184569184607%_)))
                                      (if (and (gx#identifier?
                                                _%hd184570184610%_)
                                               (gx#core-identifier=?
                                                _%hd184570184610%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl184571184612%_)
                                              (let ((_%e184572184615%_
                                                     (gx#syntax-e
                                                      _%tl184571184612%_)))
                                                (let ((_%hd184573184618%_
                                                       (##car _%e184572184615%_))
                                                      (_%tl184574184620%_
                                                       (##cdr _%e184572184615%_)))
                                                  (let ((_%expr184623%_
                                                         _%hd184573184618%_))
                                                    (if (gx#stx-null?
                                                         _%tl184574184620%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr184623%_)
                                                        (_%E184568184603%_)))))
                                              (_%E184568184603%_))
                                          (_%E184568184603%_))))
                                  (_%E184568184603%_))))
                           (_%E184566184631%_
                            (lambda ()
                              (let ((_%id184629%_ _%e184565184580%_))
                                (if (gx#identifier? _%id184629%_)
                                    (gx#core-bound-identifier?__%
                                     _%id184629%_
                                     gx#feature-binding?)
                                    (_%E184567184625%_))))))
                      (_%E184566184631%_))))
                 (_%loop184464%_
                  (lambda (_%rest184494%_)
                    (let* ((_%e184495184503%_ _%rest184494%_)
                           (_%E184501184507%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e184495184503%_)))
                           (_%E184497184511%_
                            (lambda ()
                              (if (gx#stx-null? _%e184495184503%_)
                                  '()
                                  (_%E184501184507%_))))
                           (_%E184496184560%_
                            (lambda ()
                              (if (gx#stx-pair? _%e184495184503%_)
                                  (let ((_%e184498184515%_
                                         (gx#syntax-e _%e184495184503%_)))
                                    (let ((_%hd184499184518%_
                                           (##car _%e184498184515%_))
                                          (_%tl184500184520%_
                                           (##cdr _%e184498184515%_)))
                                      (let* ((_%hd184523%_ _%hd184499184518%_)
                                             (_%rest184525%_
                                              _%tl184500184520%_)
                                             (_%e184526184533%_ _%hd184523%_)
                                             (_%E184528184537%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e184526184533%_)))
                                             (_%E184527184556%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e184526184533%_)
                                                    (let ((_%e184529184541%_
                                                           (gx#syntax-e
                                                            _%e184526184533%_)))
                                                      (let ((_%hd184530184544%_
                                                             (##car _%e184529184541%_))
                                                            (_%tl184531184546%_
                                                             (##cdr _%e184529184541%_)))
                                                        (let* ((_%condition184549%_
                                                                _%hd184530184544%_)
                                                               (_%body184551%_
                                                                _%tl184531184546%_))
                                                          (if (gx#stx-eq?
                                                               _%condition184549%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest184525%_)
                          _%body184551%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx184461%_
                           _%hd184523%_))
                      (if (_%satisfied?184463%_ _%condition184549%_)
                          _%body184551%_
                          (_%loop184464%_ _%rest184525%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E184528184537%_)))))
                                        (_%E184527184556%_))))
                                  (_%E184497184511%_)))))
                      (_%E184496184560%_)))))
          (let* ((_%e184465184472%_ _%stx184461%_)
                 (_%E184467184476%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e184465184472%_)))
                 (_%E184466184490%_
                  (lambda ()
                    (if (gx#stx-pair? _%e184465184472%_)
                        (let ((_%e184468184480%_
                               (gx#syntax-e _%e184465184472%_)))
                          (let ((_%hd184469184483%_ (##car _%e184468184480%_))
                                (_%tl184470184485%_ (##cdr _%e184468184480%_)))
                            (let ((_%clauses184488%_ _%tl184470184485%_))
                              (if (gx#stx-list? _%clauses184488%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop184464%_ _%clauses184488%_))
                                  (_%E184467184476%_)))))
                        (_%E184467184476%_)))))
            (_%E184466184490%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx184404%_ _%rpath184405%_)
        (let* ((_%e184406184416%_ _%stx184404%_)
               (_%E184408184420%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184406184416%_)))
               (_%E184407184447%_
                (lambda ()
                  (if (gx#stx-pair? _%e184406184416%_)
                      (let ((_%e184409184424%_
                             (gx#syntax-e _%e184406184416%_)))
                        (let ((_%hd184410184427%_ (##car _%e184409184424%_))
                              (_%tl184411184429%_ (##cdr _%e184409184424%_)))
                          (if (gx#stx-pair? _%tl184411184429%_)
                              (let ((_%e184412184432%_
                                     (gx#syntax-e _%tl184411184429%_)))
                                (let ((_%hd184413184435%_
                                       (##car _%e184412184432%_))
                                      (_%tl184414184437%_
                                       (##cdr _%e184412184432%_)))
                                  (let ((_%path184440%_ _%hd184413184435%_))
                                    (if (gx#stx-null? _%tl184414184437%_)
                                        (if (gx#stx-string? _%path184440%_)
                                            (let ((_%rpath184445%_
                                                   (let ((_%$e184442%_
                                                          _%rpath184405%_))
                                                     (if _%$e184442%_
                                                         _%$e184442%_
                                                         (gx#core-resolve-path__%
                                                          _%path184440%_
                                                          (gx#stx-source
                                                           _%stx184404%_))))))
                                              (if (member _%rpath184445%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx184404%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath184445%_))
                                                    (gx#stx-source
                                                     _%stx184404%_)))))
                                            (_%E184408184420%_))
                                        (_%E184408184420%_)))))
                              (_%E184408184420%_))))
                      (_%E184408184420%_)))))
          (_%E184407184447%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx184454%_)
        (let ((_%rpath184456%_ '#f))
          (gx#core-expand-include%__% _%stx184454%_ _%rpath184456%_))))
    (define gx#core-expand-include%
      (lambda _g186779_
        (let ((_g186780_ (##length _g186779_)))
          (cond ((##fx= _g186780_ 1)
                 (apply gx#core-expand-include%__0 _g186779_))
                ((##fx= _g186780_ 2)
                 (apply gx#core-expand-include%__% _g186779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g186779_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K184370%_ _%stx184371%_ _%method184372%_)
        (if (procedure? _%K184370%_)
            (let ((_%$e184375%_ (gx#stx-source _%stx184371%_)))
              (if _%$e184375%_
                  ((lambda (_%g184377184379%_)
                     (gx#stx-wrap-source
                      (_%K184370%_ _%stx184371%_)
                      _%g184377184379%_))
                   _%$e184375%_)
                  (_%K184370%_ _%stx184371%_)))
            (let ((_%$e184383%_
                   (bound-method-ref _%K184370%_ _%method184372%_)))
              (if _%$e184383%_
                  ((lambda (_%g184385184387%_)
                     (gx#core-apply-expander__%
                      _%g184385184387%_
                      _%stx184371%_
                      _%method184372%_))
                   _%$e184383%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx184371%_
                   _%method184372%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K184394%_ _%stx184395%_)
        (let ((_%method184397%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K184394%_
           _%stx184395%_
           _%method184397%_))))
    (define gx#core-apply-expander
      (lambda _g186781_
        (let ((_g186782_ (##length _g186781_)))
          (cond ((##fx= _g186782_ 2)
                 (apply gx#core-apply-expander__0 _g186781_))
                ((##fx= _g186782_ 3)
                 (apply gx#core-apply-expander__% _g186781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g186781_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self184355%_ _%stx184356%_)
        (let ((_%self184359%_ _%self184355%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx184356%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self184198%_ _%stx184199%_)
        (let* ((_%self184202%_ _%self184198%_)
               (_%self184211184217%_ _%self184202%_)
               (_%E184213184220%_
                (lambda ()
                  (error '"No clause matching"
                         _%self184211184217%_
                         '((macro-expander K)))
                  '#!void))
               (_%K184214184225%_
                (lambda (_%K184223%_)
                  (gx#core-apply-expander__0 _%K184223%_ _%stx184199%_)))
               (_%e184215184228%_
                (##unchecked-structure-ref _%self184211184217%_ '1 '#f '#f))
               (_%K184231%_ _%e184215184228%_))
          (_%K184214184225%_ _%K184231%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self184041%_ _%stx184042%_)
        (let ((_%self184045%_ _%self184041%_))
          (if (gx#sealed-syntax? _%stx184042%_)
              _%stx184042%_
              (let* ((_%self184054184060%_ _%self184045%_)
                     (_%E184056184063%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self184054184060%_
                               '((core-expander K)))
                        '#!void))
                     (_%K184057184068%_
                      (lambda (_%K184066%_)
                        (gx#core-apply-expander__0 _%K184066%_ _%stx184042%_)))
                     (_%e184058184071%_
                      (##unchecked-structure-ref
                       _%self184054184060%_
                       '1
                       '#f
                       '#f))
                     (_%K184074%_ _%e184058184071%_))
                (_%K184057184068%_ _%K184074%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self183892%_ _%stx183893%_ _%top?183894%_)
        (let ((_%self183897%_ _%self183892%_))
          (if (_%top?183894%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self183897%_
               _%stx183893%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx183893%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self183910%_ _%stx183911%_)
        (let ((_%top?183913%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self183910%_
           _%stx183911%_
           _%top?183913%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g186783_
        (let ((_g186784_ (##length _g186783_)))
          (cond ((##fx= _g186784_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g186783_))
                ((##fx= _g186784_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g186783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g186783_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self183755%_ _%stx183756%_)
        (let ((_%self183759%_ _%self183755%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self183759%_
           _%stx183756%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self183570%_ _%stx183571%_)
        (let* ((_%self183574%_ _%self183570%_)
               (_%self183583183589%_ _%self183574%_)
               (_%E183585183592%_
                (lambda ()
                  (error '"No clause matching"
                         _%self183583183589%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K183586183625%_
                (lambda (_%id183595%_)
                  (let* ((_%e183596183603%_ _%stx183571%_)
                         (_%E183598183607%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e183596183603%_)))
                         (_%E183597183621%_
                          (lambda ()
                            (if (gx#stx-pair? _%e183596183603%_)
                                (let ((_%e183599183611%_
                                       (gx#syntax-e _%e183596183603%_)))
                                  (let ((_%hd183600183614%_
                                         (##car _%e183599183611%_))
                                        (_%tl183601183616%_
                                         (##cdr _%e183599183611%_)))
                                    (let ((_%body183619%_ _%tl183601183616%_))
                                      (gx#core-cons
                                       _%id183595%_
                                       _%body183619%_))))
                                (_%E183598183607%_)))))
                    (_%E183597183621%_))))
               (_%e183587183628%_
                (##unchecked-structure-ref _%self183583183589%_ '1 '#f '#f))
               (_%id183631%_ _%e183587183628%_))
          (_%K183586183625%_ _%id183631%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self183397%_ _%stx183398%_ _%method183399%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx183398%_))
              (force-output))
            '#!void)
        (let* ((_%self183400183408%_ _%self183397%_)
               (_%E183402183411%_
                (lambda ()
                  (error '"No clause matching"
                         _%self183400183408%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K183403183418%_
                (lambda (_%phi183414%_ _%ctx183415%_ _%K183416%_)
                  (gx#core-apply-user-macro
                   _%K183416%_
                   _%stx183398%_
                   _%ctx183415%_
                   _%phi183414%_
                   _%method183399%_))))
          (if (##structure-instance-of?
               _%self183400183408%_
               'gx#user-expander::t)
              (let* ((_%e183404183421%_
                      (##unchecked-structure-ref
                       _%self183400183408%_
                       '1
                       '#f
                       '#f))
                     (_%K183424%_ _%e183404183421%_)
                     (_%e183405183426%_
                      (##unchecked-structure-ref
                       _%self183400183408%_
                       '2
                       '#f
                       '#f))
                     (_%ctx183429%_ _%e183405183426%_)
                     (_%e183406183431%_
                      (##unchecked-structure-ref
                       _%self183400183408%_
                       '3
                       '#f
                       '#f))
                     (_%phi183434%_ _%e183406183431%_))
                (_%K183403183418%_ _%phi183434%_ _%ctx183429%_ _%K183424%_))
              (_%E183402183411%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self183439%_ _%stx183440%_)
        (let ((_%method183442%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self183439%_
           _%stx183440%_
           _%method183442%_))))
    (define gx#core-apply-user-expander
      (lambda _g186785_
        (let ((_g186786_ (##length _g186785_)))
          (cond ((##fx= _g186786_ 2)
                 (apply gx#core-apply-user-expander__0 _g186785_))
                ((##fx= _g186786_ 3)
                 (apply gx#core-apply-user-expander__% _g186785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g186785_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K183387%_
               _%stx183388%_
               _%ctx183389%_
               _%phi183390%_
               _%method183391%_)
        (let ((_%mark183393%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx183389%_
                _%phi183390%_
                _%stx183388%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K183387%_
               (gx#stx-apply-mark _%stx183388%_ _%mark183393%_)
               _%method183391%_)
              _%mark183393%_))
           gx#current-expander-marks
           (cons _%mark183393%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx183235%_ _%phi183236%_ _%ctx183237%_)
        (let _%lp183239%_ ((_%bind183241%_
                            (gx#core-resolve-identifier__%
                             _%stx183235%_
                             _%phi183236%_
                             _%ctx183237%_)))
          (if (##structure-direct-instance-of?
               _%bind183241%_
               'gx#import-binding::t)
              (_%lp183239%_
               (##unchecked-structure-ref _%bind183241%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind183241%_
                   'gx#alias-binding::t)
                  (_%lp183239%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind183241%_ '5 '#f '#f)
                    _%phi183236%_
                    _%ctx183237%_))
                  _%bind183241%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx183249%_)
        (let* ((_%phi183251%_ (gx#current-expander-phi))
               (_%ctx183253%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx183249%_
           _%phi183251%_
           _%ctx183253%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx183255%_ _%phi183256%_)
        (let ((_%ctx183258%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx183255%_
           _%phi183256%_
           _%ctx183258%_))))
    (define gx#resolve-identifier
      (lambda _g186787_
        (let ((_g186788_ (##length _g186787_)))
          (cond ((##fx= _g186788_ 1)
                 (apply gx#resolve-identifier__0 _g186787_))
                ((##fx= _g186788_ 2)
                 (apply gx#resolve-identifier__1 _g186787_))
                ((##fx= _g186788_ 3)
                 (apply gx#resolve-identifier__% _g186787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g186787_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx183190%_
               _%val183191%_
               _%rebind?183192%_
               _%phi183193%_
               _%ctx183194%_)
        (let ((_%rebind?183199%_
               (if (not _%rebind?183192%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?183192%_)
                       _%rebind?183192%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx183190%_)
           _%val183191%_
           _%rebind?183199%_
           _%phi183193%_
           _%ctx183194%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx183204%_ _%val183205%_)
        (let* ((_%rebind?183207%_ '#f)
               (_%phi183209%_ (gx#current-expander-phi))
               (_%ctx183211%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx183204%_
           _%val183205%_
           _%rebind?183207%_
           _%phi183209%_
           _%ctx183211%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx183213%_ _%val183214%_ _%rebind?183215%_)
        (let* ((_%phi183217%_ (gx#current-expander-phi))
               (_%ctx183219%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx183213%_
           _%val183214%_
           _%rebind?183215%_
           _%phi183217%_
           _%ctx183219%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx183221%_ _%val183222%_ _%rebind?183223%_ _%phi183224%_)
        (let ((_%ctx183226%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx183221%_
           _%val183222%_
           _%rebind?183223%_
           _%phi183224%_
           _%ctx183226%_))))
    (define gx#bind-identifier!
      (lambda _g186789_
        (let ((_g186790_ (##length _g186789_)))
          (cond ((##fx= _g186790_ 2) (apply gx#bind-identifier!__0 _g186789_))
                ((##fx= _g186790_ 3) (apply gx#bind-identifier!__1 _g186789_))
                ((##fx= _g186790_ 4) (apply gx#bind-identifier!__2 _g186789_))
                ((##fx= _g186790_ 5) (apply gx#bind-identifier!__% _g186789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g186789_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx183156%_ _%phi183157%_ _%ctx183158%_)
        (let _%lp183160%_ ((_%e183162%_ _%stx183156%_)
                           (_%marks183163%_ (gx#current-expander-marks)))
          (if (symbol? _%e183162%_)
              (gx#core-resolve-binding
               _%e183162%_
               _%phi183157%_
               _%phi183157%_
               _%ctx183158%_
               (reverse _%marks183163%_))
              (if (gx#identifier-quote? _%e183162%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e183162%_ '1 '#f '#f)
                   _%phi183157%_
                   '0
                   (##unchecked-structure-ref _%e183162%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e183162%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e183162%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e183162%_ '1 '#f '#f)
                       _%phi183157%_
                       _%phi183157%_
                       _%ctx183158%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e183162%_ '3 '#f '#f)
                        _%marks183163%_))
                      (if (##structure-direct-instance-of?
                           _%e183162%_
                           'gx#syntax-wrap::t)
                          (_%lp183160%_
                           (##unchecked-structure-ref _%e183162%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e183162%_ '3 '#f '#f)
                            _%marks183163%_))
                          (if (##structure-instance-of?
                               _%e183162%_
                               'gerbil#AST::t)
                              (_%lp183160%_
                               (##unchecked-structure-ref
                                _%e183162%_
                                '1
                                '#f
                                '#f)
                               _%marks183163%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx183156%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx183174%_)
        (let* ((_%phi183176%_ (gx#current-expander-phi))
               (_%ctx183178%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx183174%_
           _%phi183176%_
           _%ctx183178%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx183180%_ _%phi183181%_)
        (let ((_%ctx183183%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx183180%_
           _%phi183181%_
           _%ctx183183%_))))
    (define gx#core-resolve-identifier
      (lambda _g186791_
        (let ((_g186792_ (##length _g186791_)))
          (cond ((##fx= _g186792_ 1)
                 (apply gx#core-resolve-identifier__0 _g186791_))
                ((##fx= _g186792_ 2)
                 (apply gx#core-resolve-identifier__1 _g186791_))
                ((##fx= _g186792_ 3)
                 (apply gx#core-resolve-identifier__% _g186791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g186791_))))))
    (define gx#core-resolve-binding
      (lambda (_%id183067%_
               _%phi183068%_
               _%src-phi183069%_
               _%ctx183070%_
               _%marks183071%_)
        (letrec ((_%resolve183073%_
                  (lambda (_%ctx183140%_ _%src-phi183141%_ _%key183142%_)
                    (let _%lp183144%_ ((_%ctx183146%_
                                        (gx#core-context-shift
                                         _%ctx183140%_
                                         _%phi183068%_))
                                       (_%dphi183147%_
                                        (fx- _%phi183068%_ _%src-phi183141%_)))
                      (let ((_%$e183149%_
                             (gx#core-context-resolve
                              _%ctx183146%_
                              _%key183142%_)))
                        (if _%$e183149%_
                            _%$e183149%_
                            (if (fxzero? _%dphi183147%_)
                                '#f
                                (if (fxpositive? _%dphi183147%_)
                                    (_%lp183144%_
                                     (gx#core-context-shift _%ctx183146%_ '-1)
                                     (##fx- _%dphi183147%_ '1))
                                    (_%lp183144%_
                                     (gx#core-context-shift _%ctx183146%_ '1)
                                     (##fx+ _%dphi183147%_ '1))))))))))
          (let _%lp183075%_ ((_%ctx183077%_ _%ctx183070%_)
                             (_%src-phi183078%_ _%src-phi183069%_)
                             (_%rest183079%_ _%marks183071%_))
            (let* ((_%rest183080183088%_ _%rest183079%_)
                   (_%else183082183096%_
                    (lambda ()
                      (_%resolve183073%_
                       _%ctx183077%_
                       _%src-phi183078%_
                       _%id183067%_)))
                   (_%K183084183128%_
                    (lambda (_%rest183099%_ _%hd183100%_)
                      (let* ((_%hd183101183107%_ _%hd183100%_)
                             (_%E183103183110%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd183101183107%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K183104183120%_
                              (lambda (_%subst183113%_)
                                (let ((_%$e183117%_
                                       (let ((_%key183115%_
                                              (if _%subst183113%_
                                                  (hash-get
                                                   _%subst183113%_
                                                   _%id183067%_)
                                                  '#f)))
                                         (if _%key183115%_
                                             (_%resolve183073%_
                                              _%ctx183077%_
                                              _%src-phi183078%_
                                              _%key183115%_)
                                             '#f))))
                                  (if _%$e183117%_
                                      _%$e183117%_
                                      (_%lp183075%_
                                       (##unchecked-structure-ref
                                        _%hd183100%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd183100%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest183099%_))))))
                        (if (##structure-instance-of?
                             _%hd183101183107%_
                             'gx#expander-mark::t)
                            (let* ((_%e183105183123%_
                                    (##unchecked-structure-ref
                                     _%hd183101183107%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst183126%_ _%e183105183123%_))
                              (_%K183104183120%_ _%subst183126%_))
                            (_%E183103183110%_))))))
              (if (pair? _%rest183080183088%_)
                  (let ((_%hd183085183131%_ (##car _%rest183080183088%_))
                        (_%tl183086183133%_ (##cdr _%rest183080183088%_)))
                    (let* ((_%hd183136%_ _%hd183085183131%_)
                           (_%rest183138%_ _%tl183086183133%_))
                      (_%K183084183128%_ _%rest183138%_ _%hd183136%_)))
                  (_%else183082183096%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key182938%_
               _%val182939%_
               _%rebind?182940%_
               _%phi182941%_
               _%ctx182942%_)
        (letrec ((_%update-binding182944%_
                  (lambda (_%xval183016%_)
                    (if (or (_%rebind?182940%_
                             _%ctx182942%_
                             _%xval183016%_
                             _%val182939%_)
                            (and (##structure-direct-instance-of?
                                  _%xval183016%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval183016%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val182939%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val182939%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval183016%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val182939%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val182939%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval183016%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val182939%_
                        (if (and (##structure-direct-instance-of?
                                  _%val182939%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val182939%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval183016%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val182939%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval183016%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval183016%_
                            (if (and (##structure-direct-instance-of?
                                      _%val182939%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval183016%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key182938%_
                                 (cons (##unchecked-structure-ref
                                        _%val182939%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val182939%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval183016%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval183016%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval183016%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval183016%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key182938%_
                                 _%val182939%_
                                 _%xval183016%_))))))
                 (_%gensubst182945%_
                  (lambda (_%subst183011%_ _%id183012%_)
                    (let ((_%eid183014%_
                           (gensym (if (uninterned-symbol? _%id183012%_)
                                       '%
                                       _%id183012%_))))
                      (hash-put! _%subst183011%_ _%id183012%_ _%eid183014%_)
                      _%eid183014%_)))
                 (_%subst!182946%_
                  (lambda (_%key182948%_)
                    (let* ((_%key182949182957%_ _%key182948%_)
                           (_%else182951182965%_ (lambda () _%key182948%_))
                           (_%K182953182999%_
                            (lambda (_%mark182968%_ _%id182969%_)
                              (let* ((_%mark182970182976%_ _%mark182968%_)
                                     (_%E182972182979%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark182970182976%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K182973182991%_
                                      (lambda (_%subst182982%_)
                                        (if (not _%subst182982%_)
                                            (let ((_%subst182985%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark182968%_
                                               _%subst182985%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst182945%_
                                               _%subst182985%_
                                               _%id182969%_))
                                            (let ((_%$e182987%_
                                                   (hash-get
                                                    _%subst182982%_
                                                    _%id182969%_)))
                                              (if _%$e182987%_
                                                  _%$e182987%_
                                                  (_%gensubst182945%_
                                                   _%subst182982%_
                                                   _%id182969%_)))))))
                                (if (##structure-instance-of?
                                     _%mark182970182976%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e182974182994%_
                                            (##unchecked-structure-ref
                                             _%mark182970182976%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst182997%_ _%e182974182994%_))
                                      (_%K182973182991%_ _%subst182997%_))
                                    (_%E182972182979%_))))))
                      (if (pair? _%key182949182957%_)
                          (let ((_%hd182954183002%_
                                 (##car _%key182949182957%_))
                                (_%tl182955183004%_
                                 (##cdr _%key182949182957%_)))
                            (let* ((_%id183007%_ _%hd182954183002%_)
                                   (_%mark183009%_ _%tl182955183004%_))
                              (_%K182953182999%_ _%mark183009%_ _%id183007%_)))
                          (_%else182951182965%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx182942%_ _%phi182941%_)
           (_%subst!182946%_ _%key182938%_)
           _%val182939%_
           _%update-binding182944%_))))
    (define gx#core-bind!__0
      (lambda (_%key183037%_ _%val183038%_)
        (let* ((_%rebind?183040%_ false)
               (_%phi183042%_ (gx#current-expander-phi))
               (_%ctx183044%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183037%_
           _%val183038%_
           _%rebind?183040%_
           _%phi183042%_
           _%ctx183044%_))))
    (define gx#core-bind!__1
      (lambda (_%key183046%_ _%val183047%_ _%rebind?183048%_)
        (let* ((_%phi183050%_ (gx#current-expander-phi))
               (_%ctx183052%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183046%_
           _%val183047%_
           _%rebind?183048%_
           _%phi183050%_
           _%ctx183052%_))))
    (define gx#core-bind!__2
      (lambda (_%key183054%_ _%val183055%_ _%rebind?183056%_ _%phi183057%_)
        (let ((_%ctx183059%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183054%_
           _%val183055%_
           _%rebind?183056%_
           _%phi183057%_
           _%ctx183059%_))))
    (define gx#core-bind!
      (lambda _g186793_
        (let ((_g186794_ (##length _g186793_)))
          (cond ((##fx= _g186794_ 2) (apply gx#core-bind!__0 _g186793_))
                ((##fx= _g186794_ 3) (apply gx#core-bind!__1 _g186793_))
                ((##fx= _g186794_ 4) (apply gx#core-bind!__2 _g186793_))
                ((##fx= _g186794_ 5) (apply gx#core-bind!__% _g186793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g186793_))))))
    (define gx#core-identifier-key
      (lambda (_%stx182869%_)
        (if (symbol? _%stx182869%_)
            (let* ((_%g182871182879%_ (gx#current-expander-marks))
                   (_%else182873182887%_ (lambda () _%stx182869%_))
                   (_%K182875182892%_
                    (lambda (_%hd182890%_) (cons _%stx182869%_ _%hd182890%_))))
              (if (pair? _%g182871182879%_)
                  (let* ((_%hd182876182895%_ (##car _%g182871182879%_))
                         (_%hd182898%_ _%hd182876182895%_))
                    (_%K182875182892%_ _%hd182898%_))
                  (_%else182873182887%_)))
            (if (gx#identifier? _%stx182869%_)
                (let* ((_%id182901%_ (gx#syntax-local-unwrap _%stx182869%_))
                       (_%eid182903%_ (gx#stx-e _%id182901%_))
                       (_%marks182905%_
                        (gx#stx-identifier-marks* _%id182901%_))
                       (_%marks182907182915%_ _%marks182905%_)
                       (_%else182909182923%_ (lambda () _%eid182903%_))
                       (_%K182911182928%_
                        (lambda (_%hd182926%_)
                          (cons _%eid182903%_ _%hd182926%_))))
                  (if (pair? _%marks182907182915%_)
                      (let* ((_%hd182912182931%_ (##car _%marks182907182915%_))
                             (_%hd182934%_ _%hd182912182931%_))
                        (_%K182911182928%_ _%hd182934%_))
                      (_%else182909182923%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx182869%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx182808%_ _%phi182809%_)
        (letrec ((_%make-phi182811%_
                  (lambda (_%super182867%_)
                    (let ((__obj186764
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj186764
                       (##gensym 'phi)
                       _%super182867%_)
                      __obj186764)))
                 (_%make-phi/up182812%_
                  (lambda (_%ctx182862%_ _%super182863%_)
                    (let ((_%ctx+1182865%_
                           (_%make-phi182811%_ _%super182863%_)))
                      (##unchecked-structure-set!
                       _%ctx182862%_
                       _%ctx+1182865%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1182865%_
                       _%ctx182862%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1182865%_)))
                 (_%make-phi/down182813%_
                  (lambda (_%ctx182857%_ _%super182858%_)
                    (let ((_%ctx-1182860%_
                           (_%make-phi182811%_ _%super182858%_)))
                      (##unchecked-structure-set!
                       _%ctx-1182860%_
                       _%ctx182857%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx182857%_
                       _%ctx-1182860%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1182860%_)))
                 (_%shift182814%_
                  (lambda (_%ctx182840%_
                           _%delta182841%_
                           _%make-delta-context182842%_
                           _%phi182843%_
                           _%K182844%_)
                    (let ((_%$e182846%_
                           (##unchecked-structure-ref
                            _%ctx182840%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e182846%_
                          ((lambda (_%super182849%_)
                             (let* ((_%super182851%_
                                     (_%K182844%_
                                      _%super182849%_
                                      _%delta182841%_))
                                    (_%ctx+d182853%_
                                     (_%make-delta-context182842%_
                                      _%ctx182840%_
                                      _%super182851%_)))
                               (_%K182844%_
                                _%ctx+d182853%_
                                (fx- _%phi182843%_ _%delta182841%_))))
                           _%$e182846%_)
                          (error '"Bad context" _%ctx182840%_))))))
          (let _%K182816%_ ((_%ctx182818%_ _%ctx182808%_)
                            (_%phi182819%_ _%phi182809%_))
            (if (fxzero? _%phi182819%_)
                _%ctx182818%_
                (if (##structure-instance-of? _%ctx182818%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi182819%_)
                        (let ((_%$e182823%_
                               (##unchecked-structure-ref
                                _%ctx182818%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e182823%_
                              ((lambda (_%g182825182827%_)
                                 (_%K182816%_
                                  _%g182825182827%_
                                  (##fx- _%phi182819%_ '1)))
                               _%$e182823%_)
                              (_%shift182814%_
                               _%ctx182818%_
                               '1
                               _%make-phi/up182812%_
                               _%phi182819%_
                               _%K182816%_)))
                        (let ((_%$e182831%_
                               (##unchecked-structure-ref
                                _%ctx182818%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e182831%_
                              ((lambda (_%g182833182835%_)
                                 (_%K182816%_
                                  _%g182833182835%_
                                  (##fx+ _%phi182819%_ '1)))
                               _%$e182831%_)
                              (_%shift182814%_
                               _%ctx182818%_
                               '-1
                               _%make-phi/down182813%_
                               _%phi182819%_
                               _%K182816%_))))
                    _%ctx182818%_))))))
    (define gx#core-context-get
      (lambda (_%ctx182805%_ _%key182806%_)
        (hash-get
         (##unchecked-structure-ref _%ctx182805%_ '2 '#f '#f)
         _%key182806%_)))
    (define gx#core-context-put!
      (lambda (_%ctx182801%_ _%key182802%_ _%val182803%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx182801%_ '2 '#f '#f)
         _%key182802%_
         _%val182803%_)
        _%val182803%_))
    (define gx#core-context-resolve
      (lambda (_%ctx182787%_ _%key182788%_)
        (let _%lp182790%_ ((_%ctx182792%_ _%ctx182787%_))
          (let ((_%$e182794%_
                 (gx#core-context-get _%ctx182792%_ _%key182788%_)))
            (if _%$e182794%_
                _%$e182794%_
                (let ((_%$e182797%_
                       (if (##structure-instance-of?
                            _%ctx182792%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx182792%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e182797%_ (_%lp182790%_ _%$e182797%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx182776%_ _%key182777%_ _%val182778%_ _%rebind182779%_)
        (let ((_%$e182781%_ (gx#core-context-get _%ctx182776%_ _%key182777%_)))
          (if _%$e182781%_
              ((lambda (_%xval182784%_)
                 (gx#core-context-put!
                  _%ctx182776%_
                  _%key182777%_
                  (_%rebind182779%_ _%xval182784%_)))
               _%$e182781%_)
              (gx#core-context-put!
               _%ctx182776%_
               _%key182777%_
               _%val182778%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx182751%_ _%stop?182752%_)
        (let _%lp182754%_ ((_%ctx182756%_ _%ctx182751%_))
          (if (_%stop?182752%_ _%ctx182756%_)
              _%ctx182756%_
              (if (##structure-instance-of? _%ctx182756%_ 'gx#phi-context::t)
                  (_%lp182754%_
                   (##unchecked-structure-ref _%ctx182756%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx182765%_ (gx#current-expander-context))
               (_%stop?182767%_ gx#top-context?))
          (gx#core-context-top__% _%ctx182765%_ _%stop?182767%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx182769%_)
        (let ((_%stop?182771%_ gx#top-context?))
          (gx#core-context-top__% _%ctx182769%_ _%stop?182771%_))))
    (define gx#core-context-top
      (lambda _g186795_
        (let ((_g186796_ (##length _g186795_)))
          (cond ((##fx= _g186796_ 0) (apply gx#core-context-top__0 _g186795_))
                ((##fx= _g186796_ 1) (apply gx#core-context-top__1 _g186795_))
                ((##fx= _g186796_ 2) (apply gx#core-context-top__% _g186795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g186795_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx182736%_)
        (let _%lp182738%_ ((_%ctx182740%_ _%ctx182736%_))
          (if (##structure-instance-of? _%ctx182740%_ 'gx#phi-context::t)
              (_%lp182738%_
               (##unchecked-structure-ref _%ctx182740%_ '3 '#f '#f))
              _%ctx182740%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx182746%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx182746%_))))
    (define gx#core-context-root
      (lambda _g186797_
        (let ((_g186798_ (##length _g186797_)))
          (cond ((##fx= _g186798_ 0) (apply gx#core-context-root__0 _g186797_))
                ((##fx= _g186798_ 1) (apply gx#core-context-root__% _g186797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g186797_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx182718%_ . _%ignore182719%_)
        (let ((_%$e182721%_ (gx#current-expander-allow-rebind?)))
          (if _%$e182721%_
              _%$e182721%_
              (if (##structure-instance-of? _%ctx182718%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx182718%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx182718%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx182728%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx182728%_))))
    (define gx#core-context-rebind?
      (lambda _g186799_
        (let ((_g186800_ (##length _g186799_)))
          (cond ((##fx= _g186800_ 0)
                 (apply gx#core-context-rebind?__0 _g186799_))
                ((##fx= _g186800_ 1)
                 (apply gx#core-context-rebind?__% _g186799_))
                ((##fx>= _g186800_ 1)
                 (apply gx#core-context-rebind?__% _g186799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g186799_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx182701%_)
        (let ((_%$e182703%_ (gx#core-context-top__1 _%ctx182701%_)))
          (if _%$e182703%_
              ((lambda (_%ctx182706%_)
                 (if (##structure-instance-of?
                      _%ctx182706%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx182706%_ '6 '#f '#f)
                     '#f))
               _%$e182703%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx182713%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx182713%_))))
    (define gx#core-context-namespace
      (lambda _g186801_
        (let ((_g186802_ (##length _g186801_)))
          (cond ((##fx= _g186802_ 0)
                 (apply gx#core-context-namespace__0 _g186801_))
                ((##fx= _g186802_ 1)
                 (apply gx#core-context-namespace__% _g186801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g186801_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind182687%_ _%is?182688%_)
        (if (##structure-direct-instance-of?
             _%bind182687%_
             'gx#syntax-binding::t)
            (_%is?182688%_
             (##unchecked-structure-ref _%bind182687%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind182693%_)
        (let ((_%is?182695%_ gx#expander?))
          (gx#expander-binding?__% _%bind182693%_ _%is?182695%_))))
    (define gx#expander-binding?
      (lambda _g186803_
        (let ((_g186804_ (##length _g186803_)))
          (cond ((##fx= _g186804_ 1) (apply gx#expander-binding?__0 _g186803_))
                ((##fx= _g186804_ 2) (apply gx#expander-binding?__% _g186803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g186803_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind182684%_)
        (gx#expander-binding?__% _%bind182684%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind182682%_)
        (gx#expander-binding?__% _%bind182682%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind182676%_)
        (letrec ((_%direct-special-form?182678%_
                  (lambda (_%obj182680%_)
                    (##structure-direct-instance-of?
                     _%obj182680%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind182676%_
           _%direct-special-form?182678%_))))
    (define gx#special-form-binding?
      (lambda (_%bind182674%_)
        (gx#expander-binding?__% _%bind182674%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind182665%_)
        (letrec ((_%feature?182667%_
                  (lambda (_%e182669%_)
                    (let ((_%$e182671%_
                           (##structure-instance-of?
                            _%e182669%_
                            'gx#feature-expander::t)))
                      (if _%$e182671%_
                          _%$e182671%_
                          (##structure-instance-of?
                           _%e182669%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind182665%_ _%feature?182667%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind182663%_)
        (gx#expander-binding?__% _%bind182663%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id182650%_ _%bound?182651%_)
        (if (gx#identifier? _%id182650%_)
            (_%bound?182651%_ (gx#resolve-identifier__0 _%id182650%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id182656%_)
        (let ((_%bound?182658%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id182656%_ _%bound?182658%_))))
    (define gx#core-bound-identifier?
      (lambda _g186805_
        (let ((_g186806_ (##length _g186805_)))
          (cond ((##fx= _g186806_ 1)
                 (apply gx#core-bound-identifier?__0 _g186805_))
                ((##fx= _g186806_ 2)
                 (apply gx#core-bound-identifier?__% _g186805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g186805_))))))
    (define gx#core-identifier=?
      (lambda (_%x182640%_ _%y182641%_)
        (letrec ((_%y=?182643%_
                  (lambda (_%xid182647%_)
                    ((if (list? _%y182641%_) memq eq?)
                     _%xid182647%_
                     _%y182641%_))))
          (let ((_%bind182645%_ (gx#resolve-identifier__0 _%x182640%_)))
            (if (##structure-instance-of? _%bind182645%_ 'gx#binding::t)
                (_%y=?182643%_
                 (##unchecked-structure-ref _%bind182645%_ '1 '#f '#f))
                (_%y=?182643%_ (gx#stx-e _%x182640%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e182638%_)
        (if (interned-symbol? _%e182638%_)
            (string-index__0 (symbol->string _%e182638%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx182591%_ _%src182592%_ _%ctx182593%_ _%marks182594%_)
        (if (##structure? _%stx182591%_)
            (let ((_%$e182596%_ (gx#sealed-syntax-unwrap _%stx182591%_)))
              (if _%$e182596%_
                  _%$e182596%_
                  (if (gx#identifier? _%stx182591%_)
                      (let ((_%id182600%_
                             (gx#stx-unwrap__% _%stx182591%_ _%marks182594%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id182600%_ '1 '#f '#f)
                         (let ((_%$e182602%_
                                (##unchecked-structure-ref
                                 _%id182600%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e182602%_ _%$e182602%_ _%src182592%_))
                         _%ctx182593%_
                         (##unchecked-structure-ref _%id182600%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx182591%_)
                       (let ((_%$e182606%_ (gx#stx-source _%stx182591%_)))
                         (if _%$e182606%_ _%$e182606%_ _%src182592%_))
                       _%ctx182593%_
                       (reverse _%marks182594%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx182591%_
             _%src182592%_
             _%ctx182593%_
             (reverse _%marks182594%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx182612%_)
        (let* ((_%src182614%_ '#f)
               (_%ctx182616%_ (gx#current-expander-context))
               (_%marks182618%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx182612%_
           _%src182614%_
           _%ctx182616%_
           _%marks182618%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx182620%_ _%src182621%_)
        (let* ((_%ctx182623%_ (gx#current-expander-context))
               (_%marks182625%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx182620%_
           _%src182621%_
           _%ctx182623%_
           _%marks182625%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx182627%_ _%src182628%_ _%ctx182629%_)
        (let ((_%marks182631%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx182627%_
           _%src182628%_
           _%ctx182629%_
           _%marks182631%_))))
    (define gx#core-quote-syntax
      (lambda _g186807_
        (let ((_g186808_ (##length _g186807_)))
          (cond ((##fx= _g186808_ 1) (apply gx#core-quote-syntax__0 _g186807_))
                ((##fx= _g186808_ 2) (apply gx#core-quote-syntax__1 _g186807_))
                ((##fx= _g186808_ 3) (apply gx#core-quote-syntax__2 _g186807_))
                ((##fx= _g186808_ 4) (apply gx#core-quote-syntax__% _g186807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g186807_))))))
    (define gx#core-cons
      (lambda (_%hd182587%_ _%tl182588%_)
        (cons (gx#core-quote-syntax__0 _%hd182587%_) _%tl182588%_)))
    (define gx#core-list
      (lambda (_%hd182584%_ . _%rest182585%_)
        (cons (gx#core-quote-syntax__0 _%hd182584%_) _%rest182585%_)))
    (define gx#core-cons*
      (lambda (_%hd182581%_ . _%rest182582%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd182581%_) _%rest182582%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path182550%_ _%rel182551%_)
        (let ((_%path182568%_ (gx#stx-e _%stx-path182550%_))
              (_%reldir182569%_
               (let _%lp182553%_ ((_%relsrc182555%_
                                   (let ((_%$e182565%_
                                          (gx#stx-source _%stx-path182550%_)))
                                     (if _%$e182565%_
                                         _%$e182565%_
                                         _%rel182551%_))))
                 (if (##structure-instance-of? _%relsrc182555%_ 'gerbil#AST::t)
                     (_%lp182553%_
                      (let ((_%$e182558%_ (gx#stx-source _%relsrc182555%_)))
                        (if _%$e182558%_
                            _%$e182558%_
                            (gx#stx-e _%relsrc182555%_))))
                     (if (source-location-path? _%relsrc182555%_)
                         (path-directory
                          (source-location-path _%relsrc182555%_))
                         (if (string? _%relsrc182555%_)
                             (path-directory _%relsrc182555%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path182568%_ (path-normalize _%reldir182569%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path182574%_)
        (let ((_%rel182576%_ '#f))
          (gx#core-resolve-path__% _%stx-path182574%_ _%rel182576%_))))
    (define gx#core-resolve-path
      (lambda _g186809_
        (let ((_g186810_ (##length _g186809_)))
          (cond ((##fx= _g186810_ 1) (apply gx#core-resolve-path__0 _g186809_))
                ((##fx= _g186810_ 2) (apply gx#core-resolve-path__% _g186809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g186809_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr182506%_ _%ctx182507%_)
        (let* ((_%repr182508182515%_ _%repr182506%_)
               (_%E182510182519%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr182508182515%_
                         '([phi . subs]))
                  '#!void))
               (_%K182511182527%_
                (lambda (_%subs182522%_ _%phi182523%_)
                  (let ((_%subst182525%_
                         (if (null? _%subs182522%_)
                             '#f
                             (list->hash-table-eq _%subs182522%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst182525%_
                     _%ctx182507%_
                     _%phi182523%_
                     '#f)))))
          (if (pair? _%repr182508182515%_)
              (let ((_%hd182512182530%_ (##car _%repr182508182515%_))
                    (_%tl182513182532%_ (##cdr _%repr182508182515%_)))
                (let* ((_%phi182535%_ _%hd182512182530%_)
                       (_%subs182537%_ _%tl182513182532%_))
                  (_%K182511182527%_ _%subs182537%_ _%phi182535%_)))
              (_%E182510182519%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr182542%_)
        (let ((_%ctx182544%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr182542%_ _%ctx182544%_))))
    (define gx#core-deserialize-mark
      (lambda _g186811_
        (let ((_g186812_ (##length _g186811_)))
          (cond ((##fx= _g186812_ 1)
                 (apply gx#core-deserialize-mark__0 _g186811_))
                ((##fx= _g186812_ 2)
                 (apply gx#core-deserialize-mark__% _g186811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g186811_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx182503%_)
        (gx#stx-rewrap _%stx182503%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx182501%_)
        (gx#stx-unwrap__% _%stx182501%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx182471%_)
        (let* ((_%g182472182480%_ (gx#current-expander-marks))
               (_%else182474182488%_ (lambda () _%stx182471%_))
               (_%K182476182493%_
                (lambda (_%hd182491%_)
                  (gx#stx-apply-mark _%stx182471%_ _%hd182491%_))))
          (if (pair? _%g182472182480%_)
              (let* ((_%hd182477182496%_ (##car _%g182472182480%_))
                     (_%hd182499%_ _%hd182477182496%_))
                (_%K182476182493%_ _%hd182499%_))
              (_%else182474182488%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym182469%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym182469%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx182454%_ _%E182455%_)
        (let ((_%bind182457%_ (gx#resolve-identifier__0 _%stx182454%_)))
          (if (##structure-direct-instance-of?
               _%bind182457%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind182457%_ '5 '#f '#f)
              (_%E182455%_ _%stx182454%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx182462%_)
        (let ((_%E182464%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx182462%_ _%E182464%_))))
    (define gx#syntax-local-e
      (lambda _g186813_
        (let ((_g186814_ (##length _g186813_)))
          (cond ((##fx= _g186814_ 1) (apply gx#syntax-local-e__0 _g186813_))
                ((##fx= _g186814_ 2) (apply gx#syntax-local-e__% _g186813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g186813_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx182438%_ _%E182439%_)
        (let ((_%e182441%_ (gx#syntax-local-e__% _%stx182438%_ _%E182439%_)))
          (if (##structure-instance-of? _%e182441%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e182441%_ '1 '#f '#f)
              _%e182441%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx182446%_)
        (let ((_%E182448%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx182446%_ _%E182448%_))))
    (define gx#syntax-local-value
      (lambda _g186815_
        (let ((_g186816_ (##length _g186815_)))
          (cond ((##fx= _g186816_ 1)
                 (apply gx#syntax-local-value__0 _g186815_))
                ((##fx= _g186816_ 2)
                 (apply gx#syntax-local-value__% _g186815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g186815_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx182435%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx182435%_)))))
