(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1784279015)
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
      (lambda _%$args186777%_
        (apply make-instance gx#expander-context::t _%$args186777%_)))
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
      (lambda _%$args186774%_
        (apply make-instance gx#root-context::t _%$args186774%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#phi-context? (__make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _%$args186771%_
        (apply make-instance gx#phi-context::t _%$args186771%_)))
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
      (lambda _%$args186768%_
        (apply make-instance gx#top-context::t _%$args186768%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#module-context? (__make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _%$args186765%_
        (apply make-instance gx#module-context::t _%$args186765%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#prelude-context? (__make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _%$args186762%_
        (apply make-instance gx#prelude-context::t _%$args186762%_)))
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
      (lambda _%$args186759%_
        (apply make-instance gx#local-context::t _%$args186759%_)))
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
      (lambda (_%self186732%_ _%id186733%_ _%super186734%_)
        (let ((_%self186737%_ _%self186732%_))
          (if (##fx< '3 (##structure-length _%self186737%_))
              (begin
                (##unchecked-structure-set!
                 _%self186737%_
                 _%id186733%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186737%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186737%_
                 _%super186734%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self186737%_
                     '3
                     (##structure-length _%self186737%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self186750%_ _%id186751%_)
        (let ((_%super186753%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self186750%_
           _%id186751%_
           _%super186753%_))))
    (define gx#phi-context:::init!
      (lambda _g186819_
        (let ((_g186820_ (##length _g186819_)))
          (cond ((##fx= _g186820_ 2)
                 (apply gx#phi-context:::init!__0 _g186819_))
                ((##fx= _g186820_ 3)
                 (apply gx#phi-context:::init!__% _g186819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g186819_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self186585%_ _%super186586%_)
        (let ((_%self186589%_ _%self186585%_))
          (if (##fx< '3 (##structure-length _%self186589%_))
              (begin
                (##unchecked-structure-set!
                 _%self186589%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186589%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186589%_
                 _%super186586%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self186589%_
                     '3
                     (##structure-length _%self186589%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self186602%_)
        (let ((_%super186604%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self186602%_ _%super186604%_))))
    (define gx#local-context:::init!
      (lambda _g186821_
        (let ((_g186822_ (##length _g186821_)))
          (cond ((##fx= _g186822_ 1)
                 (apply gx#local-context:::init!__0 _g186821_))
                ((##fx= _g186822_ 2)
                 (apply gx#local-context:::init!__% _g186821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g186821_))))))
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
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args186459%_
        (apply make-instance gx#binding::t _%$args186459%_)))
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
      (lambda (_%self186442%_ _%id186443%_ _%key186444%_ _%phi186445%_)
        (let ((_%self186448%_ _%self186442%_))
          (##unchecked-structure-set! _%self186448%_ _%id186443%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self186448%_ _%key186444%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self186448%_
           _%phi186445%_
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args186317%_
        (apply make-instance gx#runtime-binding::t _%$args186317%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args186314%_
        (apply make-instance gx#local-binding::t _%$args186314%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args186311%_
        (apply make-instance gx#top-binding::t _%$args186311%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args186308%_
        (apply make-instance gx#module-binding::t _%$args186308%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args186305%_
        (apply make-instance gx#extern-binding::t _%$args186305%_)))
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
      (lambda (_%self185921%_
               _%id185922%_
               _%key185923%_
               _%phi185924%_
               _%ctx185925%_)
        (let ((_%self185928%_ _%self185921%_))
          (gx#binding:::init!
           _%self185928%_
           _%id185922%_
           _%key185923%_
           _%phi185924%_)
          (##unchecked-structure-set!
           _%self185928%_
           _%ctx185925%_
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args185674%_
        (apply make-instance gx#syntax-binding::t _%$args185674%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args185671%_
        (apply make-instance gx#import-binding::t _%$args185671%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: e))))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args185668%_
        (apply make-instance gx#alias-binding::t _%$args185668%_)))
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
      (lambda (_%self185650%_
               _%id185651%_
               _%key185652%_
               _%phi185653%_
               _%e185654%_)
        (let ((_%self185657%_ _%self185650%_))
          (gx#binding:::init!
           _%self185657%_
           _%id185651%_
           _%key185652%_
           _%phi185653%_)
          (##unchecked-structure-set! _%self185657%_ _%e185654%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self185508%_
               _%id185509%_
               _%key185510%_
               _%phi185511%_
               _%e185512%_
               _%ctx185513%_
               _%weak?185514%_)
        (let ((_%self185517%_ _%self185508%_))
          (gx#binding:::init!
           _%self185517%_
           _%id185509%_
           _%key185510%_
           _%phi185511%_)
          (##unchecked-structure-set! _%self185517%_ _%e185512%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self185517%_ _%ctx185513%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self185517%_
           _%weak?185514%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self185368%_
               _%id185369%_
               _%key185370%_
               _%phi185371%_
               _%e185372%_)
        (let ((_%self185375%_ _%self185368%_))
          (gx#binding:::init!
           _%self185375%_
           _%id185369%_
           _%key185370%_
           _%phi185371%_)
          (##unchecked-structure-set! _%self185375%_ _%e185372%_ '5 '#f '#f))))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args185243%_
        (apply make-instance gx#expander::t _%$args185243%_)))
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
       (cons (cons 'struct: '#t) '((print: id)))
       '#f))
    (define gx#core-expander? (__make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _%$args185240%_
        (apply make-instance gx#core-expander::t _%$args185240%_)))
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
      (lambda _%$args185237%_
        (apply make-instance gx#expression-form::t _%$args185237%_)))
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
      (lambda _%$args185234%_
        (apply make-instance gx#special-form::t _%$args185234%_)))
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
      (lambda _%$args185231%_
        (apply make-instance gx#definition-form::t _%$args185231%_)))
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
      (lambda _%$args185228%_
        (apply make-instance gx#top-special-form::t _%$args185228%_)))
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
      (lambda _%$args185225%_
        (apply make-instance gx#module-special-form::t _%$args185225%_)))
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
      (lambda _%$args185222%_
        (apply make-instance gx#feature-expander::t _%$args185222%_)))
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
      (lambda _%$args185219%_
        (apply make-instance gx#private-feature-expander::t _%$args185219%_)))
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
      (lambda _%$args185216%_
        (apply make-instance gx#reserved-expander::t _%$args185216%_)))
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
      (lambda _%$args185213%_
        (apply make-instance gx#macro-expander::t _%$args185213%_)))
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
      (lambda _%$args185210%_
        (apply make-instance gx#rename-macro-expander::t _%$args185210%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#user-expander? (__make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _%$args185207%_
        (apply make-instance gx#user-expander::t _%$args185207%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander-mark? (__make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _%$args185204%_
        (apply make-instance gx#expander-mark::t _%$args185204%_)))
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
      (lambda (_%ctx185188%_
               _%message185189%_
               _%stx185190%_
               .
               _%details185191%_)
        (let ((_%ctx185202%_
               (let ((_%$e185193%_ _%ctx185188%_))
                 (if _%$e185193%_
                     _%$e185193%_
                     (let ((_%$e185196%_ (gx#core-context-top__0)))
                       (if _%$e185196%_
                           (list 'expand
                                 (##structure-ref
                                  _%$e185196%_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                           '#f))))))
          (raise (make-syntax-error
                  _%message185189%_
                  (cons _%stx185190%_ _%details185191%_)
                  _%ctx185202%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx185175%_ _%expression?185176%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx185175%_ _%expression?185176%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx185181%_)
        (let ((_%expression?185183%_ '#f))
          (gx#eval-syntax__% _%stx185181%_ _%expression?185183%_))))
    (define gx#eval-syntax
      (lambda _g186823_
        (let ((_g186824_ (##length _g186823_)))
          (cond ((##fx= _g186824_ 1) (apply gx#eval-syntax__0 _g186823_))
                ((##fx= _g186824_ 2) (apply gx#eval-syntax__% _g186823_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g186823_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx185160%_ _%expression?185161%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx185160%_ _%expression?185161%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx185167%_)
        (let ((_%expression?185169%_ '#f))
          (gx#eval-syntax+1__% _%stx185167%_ _%expression?185169%_))))
    (define gx#eval-syntax+1
      (lambda _g186825_
        (let ((_g186826_ (##length _g186825_)))
          (cond ((##fx= _g186826_ 1) (apply gx#eval-syntax+1__0 _g186825_))
                ((##fx= _g186826_ 2) (apply gx#eval-syntax+1__% _g186825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g186825_))))))
    (define gx#eval-expression+1
      (lambda (_%stx185157%_) (gx#eval-syntax+1__% _%stx185157%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx185155%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx185155%_))))
    (define gx#core-expand__%
      (lambda (_%stx185142%_ _%expression?185143%_)
        (if _%expression?185143%_
            (gx#core-expand-expression _%stx185142%_)
            (gx#core-expand-top _%stx185142%_))))
    (define gx#core-expand__0
      (lambda (_%stx185148%_)
        (let ((_%expression?185150%_ '#f))
          (gx#core-expand__% _%stx185148%_ _%expression?185150%_))))
    (define gx#core-expand
      (lambda _g186827_
        (let ((_g186828_ (##length _g186827_)))
          (cond ((##fx= _g186828_ 1) (apply gx#core-expand__0 _g186827_))
                ((##fx= _g186828_ 2) (apply gx#core-expand__% _g186827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g186827_))))))
    (define gx#core-expand-top
      (lambda (_%stx185109%_)
        (let* ((_%stx185111%_ (gx#core-expand*__0 _%stx185109%_))
               (_%$%e185112185119%_ _%stx185111%_)
               (_%$%E185114185123%_
                (lambda () (gx#core-expand-expression _%stx185111%_)))
               (_%$%E185113185137%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185112185119%_)
                      (let ((_%$%e185115185127%_
                             (gx#syntax-e _%$%e185112185119%_)))
                        (let ((_%$%hd185116185130%_
                               (##car _%$%e185115185127%_))
                              (_%$%tl185117185132%_
                               (##cdr _%$%e185115185127%_)))
                          (let ((_%form185135%_ _%$%hd185116185130%_))
                            (if (gx#core-bound-identifier?__0 _%form185135%_)
                                _%stx185111%_
                                (_%$%E185114185123%_)))))
                      (_%$%E185114185123%_)))))
          (_%$%E185113185137%_))))
    (define gx#core-expand-expression
      (lambda (_%stx185041%_)
        (letrec ((_%sealed-expression?185043%_
                  (lambda (_%hd185079%_)
                    (if (gx#sealed-syntax? _%hd185079%_)
                        (let* ((_%$%e185080185087%_ _%hd185079%_)
                               (_%$%E185082185091%_ (lambda () '#f))
                               (_%$%E185081185105%_
                                (lambda ()
                                  (if (gx#stx-pair? _%$%e185080185087%_)
                                      (let ((_%$%e185083185095%_
                                             (gx#syntax-e
                                              _%$%e185080185087%_)))
                                        (let ((_%$%hd185084185098%_
                                               (##car _%$%e185083185095%_))
                                              (_%$%tl185085185100%_
                                               (##cdr _%$%e185083185095%_)))
                                          (let ((_%form185103%_
                                                 _%$%hd185084185098%_))
                                            (gx#core-bound-identifier?__%
                                             _%form185103%_
                                             gx#expression-form-binding?))))
                                      (_%$%E185082185091%_)))))
                          (_%$%E185081185105%_))
                        '#f)))
                 (_%illegal-expression185044%_
                  (lambda (_%hd185076%_ . _%_185077%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx185041%_
                     _%hd185076%_)))
                 (_%expand-e185045%_
                  (lambda (_%form185068%_ _%hd185069%_)
                    (let ((_%bind185071%_
                           (if (##structure-instance-of?
                                _%form185068%_
                                'gx#binding::t)
                               _%form185068%_
                               (gx#resolve-identifier__0 _%form185068%_))))
                      (if (gx#core-expander-binding? _%bind185071%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind185071%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd185069%_
                            (gx#stx-source _%stx185041%_)))
                          (if (##structure-direct-instance-of?
                               _%bind185071%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind185071%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd185069%_
                                 (gx#stx-source _%stx185041%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx185041%_
                               _%form185068%_)))))))
          (let ((_%hd185047%_ (gx#core-expand-head _%stx185041%_)))
            (if (_%sealed-expression?185043%_ _%hd185047%_)
                _%hd185047%_
                (if (gx#stx-pair? _%hd185047%_)
                    (let* ((_%form185051%_ (gx#stx-car _%hd185047%_))
                           (_%bind185053%_
                            (if (gx#identifier? _%form185051%_)
                                (gx#resolve-identifier__0 _%form185051%_)
                                '#f)))
                      (if (or (not _%bind185053%_)
                              (not (gx#core-expander-binding? _%bind185053%_)))
                          (_%expand-e185045%_
                           '%%app
                           (cons '%%app _%hd185047%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind185053%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd185047%_
                               _%illegal-expression185044%_)
                              (if (gx#expression-form-binding? _%bind185053%_)
                                  (_%expand-e185045%_
                                   _%bind185053%_
                                   _%hd185047%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind185053%_)
                                      (gx#core-expand-expression
                                       (_%expand-e185045%_
                                        _%bind185053%_
                                        _%hd185047%_))
                                      (_%illegal-expression185044%_
                                       _%hd185047%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd185047%_)
                        (_%illegal-expression185044%_ _%hd185047%_)
                        (if (gx#identifier? _%hd185047%_)
                            (_%expand-e185045%_
                             '%%ref
                             (cons '%%ref (cons _%hd185047%_ '())))
                            (if (gx#stx-datum? _%hd185047%_)
                                (_%expand-e185045%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd185047%_ '())))
                                (_%illegal-expression185044%_
                                 _%hd185047%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx185036%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx185039%_ (gx#core-expand-expression _%stx185036%_)))
             (values _%stx185039%_ (gx#eval-syntax* _%stx185039%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx185017%_ _%stop?185018%_)
        (let _%lp185020%_ ((_%stx185022%_ _%stx185017%_))
          (if (_%stop?185018%_ _%stx185022%_)
              _%stx185022%_
              (let ((_%rstx185024%_ (gx#core-expand1 _%stx185022%_)))
                (if (eq? _%stx185022%_ _%rstx185024%_)
                    _%stx185022%_
                    (_%lp185020%_ _%rstx185024%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx185029%_)
        (let ((_%stop?185031%_ false))
          (gx#core-expand*__% _%stx185029%_ _%stop?185031%_))))
    (define gx#core-expand*
      (lambda _g186829_
        (let ((_g186830_ (##length _g186829_)))
          (cond ((##fx= _g186830_ 1) (apply gx#core-expand*__0 _g186829_))
                ((##fx= _g186830_ 2) (apply gx#core-expand*__% _g186829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g186829_))))))
    (define gx#core-expand1
      (lambda (_%stx184969%_)
        (letrec ((_%step184971%_
                  (lambda (_%hd185008%_)
                    (let ((_%bind185010%_
                           (gx#resolve-identifier__0 _%hd185008%_)))
                      (if (##structure-instance-of?
                           _%bind185010%_
                           'gx#runtime-binding::t)
                          _%stx184969%_
                          (if (##structure-direct-instance-of?
                               _%bind185010%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind185010%_
                                '5
                                '#f
                                '#f)
                               _%stx184969%_)
                              (if (not _%bind185010%_)
                                  _%stx184969%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx184969%_))))))))
          (let* ((_%$%e184972184980%_ _%stx184969%_)
                 (_%$%E184978184984%_ (lambda () _%stx184969%_))
                 (_%$%E184974184990%_
                  (lambda ()
                    (let ((_%hd184988%_ _%$%e184972184980%_))
                      (if (gx#identifier? _%hd184988%_)
                          (_%step184971%_ _%hd184988%_)
                          (_%$%E184978184984%_)))))
                 (_%$%E184973185004%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e184972184980%_)
                        (let ((_%$%e184975184994%_
                               (gx#syntax-e _%$%e184972184980%_)))
                          (let ((_%$%hd184976184997%_
                                 (##car _%$%e184975184994%_))
                                (_%$%tl184977184999%_
                                 (##cdr _%$%e184975184994%_)))
                            (let ((_%hd185002%_ _%$%hd184976184997%_))
                              (if (gx#identifier? _%hd185002%_)
                                  (_%step184971%_ _%hd185002%_)
                                  (_%$%E184974184990%_)))))
                        (_%$%E184974184990%_)))))
            (_%$%E184973185004%_)))))
    (define gx#core-expand-head
      (lambda (_%stx184935%_)
        (letrec ((_%stop?184937%_
                  (lambda (_%stx184939%_)
                    (let* ((_%$%e184940184947%_ _%stx184939%_)
                           (_%$%E184942184951%_ (lambda () '#f))
                           (_%$%E184941184965%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184940184947%_)
                                  (let ((_%$%e184943184955%_
                                         (gx#syntax-e _%$%e184940184947%_)))
                                    (let ((_%$%hd184944184958%_
                                           (##car _%$%e184943184955%_))
                                          (_%$%tl184945184960%_
                                           (##cdr _%$%e184943184955%_)))
                                      (let ((_%hd184963%_
                                             _%$%hd184944184958%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd184963%_))))
                                  (_%$%E184942184951%_)))))
                      (_%$%E184941184965%_)))))
          (gx#core-expand*__% _%stx184935%_ _%stop?184937%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx184741%_
               _%expand-special184742%_
               _%begin-form184743%_
               _%expand-e184744%_)
        (letrec ((_%expand-splice184746%_
                  (lambda (_%hd184909%_
                           _%body184910%_
                           _%rest184911%_
                           _%r184912%_)
                    (if (gx#stx-list? _%body184910%_)
                        (_%K184750%_
                         (gx#stx-foldr cons _%rest184911%_ _%body184910%_)
                         _%r184912%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx184741%_
                         _%hd184909%_))))
                 (_%expand-cond-expand184747%_
                  (lambda (_%hd184905%_ _%rest184906%_ _%r184907%_)
                    (_%K184750%_
                     (cons (gx#core-expand-cond-expand% _%hd184905%_)
                           _%rest184906%_)
                     _%r184907%_)))
                 (_%expand-include184748%_
                  (lambda (_%hd184854%_ _%rest184855%_ _%r184856%_)
                    (let* ((_%$%e184857184867%_ _%hd184854%_)
                           (_%$%E184859184871%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e184857184867%_)))
                           (_%$%E184858184901%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184857184867%_)
                                  (let ((_%$%e184860184875%_
                                         (gx#syntax-e _%$%e184857184867%_)))
                                    (let ((_%$%hd184861184878%_
                                           (##car _%$%e184860184875%_))
                                          (_%$%tl184862184880%_
                                           (##cdr _%$%e184860184875%_)))
                                      (if (gx#stx-pair? _%$%tl184862184880%_)
                                          (let ((_%$%e184863184883%_
                                                 (gx#syntax-e
                                                  _%$%tl184862184880%_)))
                                            (let ((_%$%hd184864184886%_
                                                   (##car _%$%e184863184883%_))
                                                  (_%$%tl184865184888%_
                                                   (##cdr _%$%e184863184883%_)))
                                              (let ((_%path184891%_
                                                     _%$%hd184864184886%_))
                                                (if (gx#stx-null?
                                                     _%$%tl184865184888%_)
                                                    (if (gx#stx-string?
                                                         _%path184891%_)
                                                        (let* ((_%rpath184893%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path184891%_
                         (gx#stx-source _%hd184854%_)))
                       (_%block184895%_
                        (gx#core-expand-include%__%
                         _%hd184854%_
                         _%rpath184893%_))
                       (_%rbody184898%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block184895%_
                            _%expand-special184742%_
                            '#f
                            _%expand-e184744%_))
                         gx#current-expander-path
                         (cons _%rpath184893%_ (gx#current-expander-path)))))
                  (_%K184750%_
                   _%rest184855%_
                   (append _%rbody184898%_ _%r184856%_)))
                (_%$%E184859184871%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E184859184871%_)))))
                                          (_%$%E184859184871%_))))
                                  (_%$%E184859184871%_)))))
                      (_%$%E184858184901%_))))
                 (_%expand-expression184749%_
                  (lambda (_%hd184850%_ _%rest184851%_ _%r184852%_)
                    (_%K184750%_
                     _%rest184851%_
                     (cons (_%expand-e184744%_ _%hd184850%_) _%r184852%_))))
                 (_%K184750%_
                  (lambda (_%rest184780%_ _%r184781%_)
                    (let* ((_%$%e184782184789%_ _%rest184780%_)
                           (_%$%E184784184793%_
                            (lambda ()
                              (if _%begin-form184743%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form184743%_
                                    (reverse _%r184781%_))
                                   (gx#stx-source _%stx184741%_))
                                  _%r184781%_)))
                           (_%$%E184783184846%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184782184789%_)
                                  (let ((_%$%e184785184797%_
                                         (gx#syntax-e _%$%e184782184789%_)))
                                    (let ((_%$%hd184786184800%_
                                           (##car _%$%e184785184797%_))
                                          (_%$%tl184787184802%_
                                           (##cdr _%$%e184785184797%_)))
                                      (let* ((_%hd184805%_
                                              _%$%hd184786184800%_)
                                             (_%rest184807%_
                                              _%$%tl184787184802%_)
                                             (_%hd184809%_
                                              (gx#core-expand-head
                                               _%hd184805%_))
                                             (_%$%e184810184817%_ _%hd184809%_)
                                             (_%$%E184812184821%_
                                              (lambda ()
                                                (_%expand-expression184749%_
                                                 _%hd184809%_
                                                 _%rest184807%_
                                                 _%r184781%_)))
                                             (_%$%E184811184842%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e184810184817%_)
                                                    (let ((_%$%e184813184825%_
                                                           (gx#syntax-e
                                                            _%$%e184810184817%_)))
                                                      (let ((_%$%hd184814184828%_
                                                             (##car _%$%e184813184825%_))
                                                            (_%$%tl184815184830%_
                                                             (##cdr _%$%e184813184825%_)))
                                                        (let* ((_%form184833%_
                                                                _%$%hd184814184828%_)
                                                               (_%body184835%_
                                                                _%$%tl184815184830%_)
                                                               (_%bind184837%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form184833%_)
                            (gx#resolve-identifier__0 _%form184833%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind184837%_)
                      (let ((_%$e184839%_
                             (##unchecked-structure-ref
                              _%bind184837%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e184839%_)
                            (_%expand-splice184746%_
                             _%hd184809%_
                             _%body184835%_
                             _%rest184807%_
                             _%r184781%_)
                            (if (eq? '%#cond-expand _%$e184839%_)
                                (_%expand-cond-expand184747%_
                                 _%hd184809%_
                                 _%rest184807%_
                                 _%r184781%_)
                                (if (eq? '%#include _%$e184839%_)
                                    (_%expand-include184748%_
                                     _%hd184809%_
                                     _%rest184807%_
                                     _%r184781%_)
                                    (_%expand-special184742%_
                                     _%hd184809%_
                                     _%K184750%_
                                     _%rest184807%_
                                     _%r184781%_)))))
                      (_%expand-expression184749%_
                       _%hd184809%_
                       _%rest184807%_
                       _%r184781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E184812184821%_)))))
                                        (_%$%E184811184842%_))))
                                  (_%$%E184784184793%_)))))
                      (_%$%E184783184846%_)))))
          (let* ((_%$%e184751184758%_ _%stx184741%_)
                 (_%$%E184753184762%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e184751184758%_)))
                 (_%$%E184752184776%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e184751184758%_)
                        (let ((_%$%e184754184766%_
                               (gx#syntax-e _%$%e184751184758%_)))
                          (let ((_%$%hd184755184769%_
                                 (##car _%$%e184754184766%_))
                                (_%$%tl184756184771%_
                                 (##cdr _%$%e184754184766%_)))
                            (let ((_%body184774%_ _%$%tl184756184771%_))
                              (if (gx#stx-list? _%body184774%_)
                                  (_%K184750%_ _%body184774%_ '())
                                  (_%$%E184753184762%_)))))
                        (_%$%E184753184762%_)))))
            (_%$%E184752184776%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx184917%_ _%expand-special184918%_)
        (let* ((_%begin-form184920%_ '%#begin)
               (_%expand-e184922%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx184917%_
           _%expand-special184918%_
           _%begin-form184920%_
           _%expand-e184922%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx184924%_ _%expand-special184925%_ _%begin-form184926%_)
        (let ((_%expand-e184928%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx184924%_
           _%expand-special184925%_
           _%begin-form184926%_
           _%expand-e184928%_))))
    (define gx#core-expand-block
      (lambda _g186831_
        (let ((_g186832_ (##length _g186831_)))
          (cond ((##fx= _g186832_ 2) (apply gx#core-expand-block__0 _g186831_))
                ((##fx= _g186832_ 3) (apply gx#core-expand-block__1 _g186831_))
                ((##fx= _g186832_ 4) (apply gx#core-expand-block__% _g186831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g186831_))))))
    (define gx#core-expand-block*
      (lambda (_%stx184689%_ _%expand-special184690%_)
        (let* ((_%$%g184691184702%_
                (gx#core-expand-block__1
                 _%stx184689%_
                 _%expand-special184690%_
                 '#f))
               (_%$%E184695184706%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g184691184702%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%$%K184700184737%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx184689%_)))
                (_%$%K184697184723%_ (lambda (_%expr184721%_) _%expr184721%_))
                (_%$%K184696184712%_
                 (lambda (_%body184710%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body184710%_))
                    (gx#stx-source _%stx184689%_)))))
            (let ((_%$%try-match184693184733%_
                   (lambda ()
                     (if (pair? _%$%g184691184702%_)
                         (let ((_%$%tl184699184728%_
                                (##cdr _%$%g184691184702%_))
                               (_%$%hd184698184726%_
                                (##car _%$%g184691184702%_)))
                           (if (null? _%$%tl184699184728%_)
                               (let ((_%expr184731%_ _%$%hd184698184726%_))
                                 (_%$%K184697184723%_ _%expr184731%_))
                               (let ((_%body184715%_ _%$%g184691184702%_))
                                 (_%$%K184696184712%_ _%body184715%_))))
                         (let ((_%body184715%_ _%$%g184691184702%_))
                           (_%$%K184696184712%_ _%body184715%_))))))
              (if (null? _%$%g184691184702%_)
                  (_%$%K184700184737%_)
                  (_%$%try-match184693184733%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx184515%_)
        (letrec ((_%satisfied?184517%_
                  (lambda (_%condition184618%_)
                    (let* ((_%$%e184619184634%_ _%condition184618%_)
                           (_%$%E184629184638%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e184619184634%_)))
                           (_%$%E184622184657%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184619184634%_)
                                  (let ((_%$%e184630184642%_
                                         (gx#syntax-e _%$%e184619184634%_)))
                                    (let ((_%$%hd184631184645%_
                                           (##car _%$%e184630184642%_))
                                          (_%$%tl184632184647%_
                                           (##cdr _%$%e184630184642%_)))
                                      (let* ((_%combinator184650%_
                                              _%$%hd184631184645%_)
                                             (_%body184652%_
                                              _%$%tl184632184647%_))
                                        (if (gx#stx-list? _%body184652%_)
                                            (let ((_%$e184654%_
                                                   (gx#stx-e
                                                    _%combinator184650%_)))
                                              (if (eq? 'not _%$e184654%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?184517%_
                                                        _%body184652%_))
                                                  (if (eq? 'and _%$e184654%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?184517%_
                                                       _%body184652%_)
                                                      (if (eq? 'or
                                                               _%$e184654%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?184517%_
                                                           _%body184652%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e184654%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body184652%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx184515%_
                       _%combinator184650%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E184629184638%_)))))
                                  (_%$%E184629184638%_))))
                           (_%$%E184621184679%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184619184634%_)
                                  (let ((_%$%e184623184661%_
                                         (gx#syntax-e _%$%e184619184634%_)))
                                    (let ((_%$%hd184624184664%_
                                           (##car _%$%e184623184661%_))
                                          (_%$%tl184625184666%_
                                           (##cdr _%$%e184623184661%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd184624184664%_)
                                               (gx#core-identifier=?
                                                _%$%hd184624184664%_
                                                'unquote))
                                          (if (gx#stx-pair?
                                               _%$%tl184625184666%_)
                                              (let ((_%$%e184626184669%_
                                                     (gx#syntax-e
                                                      _%$%tl184625184666%_)))
                                                (let ((_%$%hd184627184672%_
                                                       (##car _%$%e184626184669%_))
                                                      (_%$%tl184628184674%_
                                                       (##cdr _%$%e184626184669%_)))
                                                  (let ((_%expr184677%_
                                                         _%$%hd184627184672%_))
                                                    (if (gx#stx-null?
                                                         _%$%tl184628184674%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr184677%_)
                                                        (_%$%E184622184657%_)))))
                                              (_%$%E184622184657%_))
                                          (_%$%E184622184657%_))))
                                  (_%$%E184622184657%_))))
                           (_%$%E184620184685%_
                            (lambda ()
                              (let ((_%id184683%_ _%$%e184619184634%_))
                                (if (gx#identifier? _%id184683%_)
                                    (gx#core-bound-identifier?__%
                                     _%id184683%_
                                     gx#feature-binding?)
                                    (_%$%E184621184679%_))))))
                      (_%$%E184620184685%_))))
                 (_%loop184518%_
                  (lambda (_%rest184548%_)
                    (let* ((_%$%e184549184557%_ _%rest184548%_)
                           (_%$%E184555184561%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e184549184557%_)))
                           (_%$%E184551184565%_
                            (lambda ()
                              (if (gx#stx-null? _%$%e184549184557%_)
                                  '()
                                  (_%$%E184555184561%_))))
                           (_%$%E184550184614%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184549184557%_)
                                  (let ((_%$%e184552184569%_
                                         (gx#syntax-e _%$%e184549184557%_)))
                                    (let ((_%$%hd184553184572%_
                                           (##car _%$%e184552184569%_))
                                          (_%$%tl184554184574%_
                                           (##cdr _%$%e184552184569%_)))
                                      (let* ((_%hd184577%_
                                              _%$%hd184553184572%_)
                                             (_%rest184579%_
                                              _%$%tl184554184574%_)
                                             (_%$%e184580184587%_ _%hd184577%_)
                                             (_%$%E184582184591%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%$%e184580184587%_)))
                                             (_%$%E184581184610%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e184580184587%_)
                                                    (let ((_%$%e184583184595%_
                                                           (gx#syntax-e
                                                            _%$%e184580184587%_)))
                                                      (let ((_%$%hd184584184598%_
                                                             (##car _%$%e184583184595%_))
                                                            (_%$%tl184585184600%_
                                                             (##cdr _%$%e184583184595%_)))
                                                        (let* ((_%condition184603%_
                                                                _%$%hd184584184598%_)
                                                               (_%body184605%_
                                                                _%$%tl184585184600%_))
                                                          (if (gx#stx-eq?
                                                               _%condition184603%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest184579%_)
                          _%body184605%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx184515%_
                           _%hd184577%_))
                      (if (_%satisfied?184517%_ _%condition184603%_)
                          _%body184605%_
                          (_%loop184518%_ _%rest184579%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E184582184591%_)))))
                                        (_%$%E184581184610%_))))
                                  (_%$%E184551184565%_)))))
                      (_%$%E184550184614%_)))))
          (let* ((_%$%e184519184526%_ _%stx184515%_)
                 (_%$%E184521184530%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e184519184526%_)))
                 (_%$%E184520184544%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e184519184526%_)
                        (let ((_%$%e184522184534%_
                               (gx#syntax-e _%$%e184519184526%_)))
                          (let ((_%$%hd184523184537%_
                                 (##car _%$%e184522184534%_))
                                (_%$%tl184524184539%_
                                 (##cdr _%$%e184522184534%_)))
                            (let ((_%clauses184542%_ _%$%tl184524184539%_))
                              (if (gx#stx-list? _%clauses184542%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop184518%_ _%clauses184542%_))
                                  (_%$%E184521184530%_)))))
                        (_%$%E184521184530%_)))))
            (_%$%E184520184544%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx184458%_ _%rpath184459%_)
        (let* ((_%$%e184460184470%_ _%stx184458%_)
               (_%$%E184462184474%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184460184470%_)))
               (_%$%E184461184501%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184460184470%_)
                      (let ((_%$%e184463184478%_
                             (gx#syntax-e _%$%e184460184470%_)))
                        (let ((_%$%hd184464184481%_
                               (##car _%$%e184463184478%_))
                              (_%$%tl184465184483%_
                               (##cdr _%$%e184463184478%_)))
                          (if (gx#stx-pair? _%$%tl184465184483%_)
                              (let ((_%$%e184466184486%_
                                     (gx#syntax-e _%$%tl184465184483%_)))
                                (let ((_%$%hd184467184489%_
                                       (##car _%$%e184466184486%_))
                                      (_%$%tl184468184491%_
                                       (##cdr _%$%e184466184486%_)))
                                  (let ((_%path184494%_ _%$%hd184467184489%_))
                                    (if (gx#stx-null? _%$%tl184468184491%_)
                                        (if (gx#stx-string? _%path184494%_)
                                            (let ((_%rpath184499%_
                                                   (let ((_%$e184496%_
                                                          _%rpath184459%_))
                                                     (if _%$e184496%_
                                                         _%$e184496%_
                                                         (gx#core-resolve-path__%
                                                          _%path184494%_
                                                          (gx#stx-source
                                                           _%stx184458%_))))))
                                              (if (member _%rpath184499%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx184458%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath184499%_))
                                                    (gx#stx-source
                                                     _%stx184458%_)))))
                                            (_%$%E184462184474%_))
                                        (_%$%E184462184474%_)))))
                              (_%$%E184462184474%_))))
                      (_%$%E184462184474%_)))))
          (_%$%E184461184501%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx184508%_)
        (let ((_%rpath184510%_ '#f))
          (gx#core-expand-include%__% _%stx184508%_ _%rpath184510%_))))
    (define gx#core-expand-include%
      (lambda _g186833_
        (let ((_g186834_ (##length _g186833_)))
          (cond ((##fx= _g186834_ 1)
                 (apply gx#core-expand-include%__0 _g186833_))
                ((##fx= _g186834_ 2)
                 (apply gx#core-expand-include%__% _g186833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g186833_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K184424%_ _%stx184425%_ _%method184426%_)
        (if (procedure? _%K184424%_)
            (let ((_%$e184429%_ (gx#stx-source _%stx184425%_)))
              (if _%$e184429%_
                  (gx#stx-wrap-source (_%K184424%_ _%stx184425%_) _%$e184429%_)
                  (_%K184424%_ _%stx184425%_)))
            (let ((_%$e184437%_
                   (bound-method-ref _%K184424%_ _%method184426%_)))
              (if _%$e184437%_
                  (gx#core-apply-expander__%
                   _%$e184437%_
                   _%stx184425%_
                   _%method184426%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx184425%_
                   _%method184426%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K184448%_ _%stx184449%_)
        (let ((_%method184451%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K184448%_
           _%stx184449%_
           _%method184451%_))))
    (define gx#core-apply-expander
      (lambda _g186835_
        (let ((_g186836_ (##length _g186835_)))
          (cond ((##fx= _g186836_ 2)
                 (apply gx#core-apply-expander__0 _g186835_))
                ((##fx= _g186836_ 3)
                 (apply gx#core-apply-expander__% _g186835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g186835_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self184409%_ _%stx184410%_)
        (let ((_%self184413%_ _%self184409%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx184410%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self184252%_ _%stx184253%_)
        (let* ((_%self184256%_ _%self184252%_)
               (_%$%self184265184271%_ _%self184256%_)
               (_%$%E184267184274%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self184265184271%_
                         '((macro-expander K)))
                  '#!void))
               (_%$%K184268184279%_
                (lambda (_%K184277%_)
                  (gx#core-apply-expander__0 _%K184277%_ _%stx184253%_)))
               (_%$%e184269184282%_
                (##unchecked-structure-ref _%$%self184265184271%_ '1 '#f '#f))
               (_%K184285%_ _%$%e184269184282%_))
          (_%$%K184268184279%_ _%K184285%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self184095%_ _%stx184096%_)
        (let ((_%self184099%_ _%self184095%_))
          (if (gx#sealed-syntax? _%stx184096%_)
              _%stx184096%_
              (let* ((_%$%self184108184114%_ _%self184099%_)
                     (_%$%E184110184117%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%self184108184114%_
                               '((core-expander K)))
                        '#!void))
                     (_%$%K184111184122%_
                      (lambda (_%K184120%_)
                        (gx#core-apply-expander__0 _%K184120%_ _%stx184096%_)))
                     (_%$%e184112184125%_
                      (##unchecked-structure-ref
                       _%$%self184108184114%_
                       '1
                       '#f
                       '#f))
                     (_%K184128%_ _%$%e184112184125%_))
                (_%$%K184111184122%_ _%K184128%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self183945%_ _%stx183946%_ _%top?183947%_)
        (let ((_%self183950%_ _%self183945%_))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin
                (displayln '"@expand " (gx#syntax->datum _%stx183946%_))
                (force-output))
              '#!void)
          (if (_%top?183947%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self183950%_
               _%stx183946%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx183946%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self183964%_ _%stx183965%_)
        (let ((_%top?183967%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self183964%_
           _%stx183965%_
           _%top?183967%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g186837_
        (let ((_g186838_ (##length _g186837_)))
          (cond ((##fx= _g186838_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g186837_))
                ((##fx= _g186838_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g186837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g186837_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self183808%_ _%stx183809%_)
        (let ((_%self183812%_ _%self183808%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self183812%_
           _%stx183809%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self183623%_ _%stx183624%_)
        (let* ((_%self183627%_ _%self183623%_)
               (_%$%self183636183642%_ _%self183627%_)
               (_%$%E183638183645%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self183636183642%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%$%K183639183678%_
                (lambda (_%id183648%_)
                  (let* ((_%$%e183649183656%_ _%stx183624%_)
                         (_%$%E183651183660%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%$%e183649183656%_)))
                         (_%$%E183650183674%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e183649183656%_)
                                (let ((_%$%e183652183664%_
                                       (gx#syntax-e _%$%e183649183656%_)))
                                  (let ((_%$%hd183653183667%_
                                         (##car _%$%e183652183664%_))
                                        (_%$%tl183654183669%_
                                         (##cdr _%$%e183652183664%_)))
                                    (let ((_%body183672%_
                                           _%$%tl183654183669%_))
                                      (gx#core-cons
                                       _%id183648%_
                                       _%body183672%_))))
                                (_%$%E183651183660%_)))))
                    (_%$%E183650183674%_))))
               (_%$%e183640183681%_
                (##unchecked-structure-ref _%$%self183636183642%_ '1 '#f '#f))
               (_%id183684%_ _%$%e183640183681%_))
          (_%$%K183639183678%_ _%id183684%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self183450%_ _%stx183451%_ _%method183452%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx183451%_))
              (force-output))
            '#!void)
        (let* ((_%$%self183453183461%_ _%self183450%_)
               (_%$%E183455183464%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self183453183461%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%$%K183456183471%_
                (lambda (_%phi183467%_ _%ctx183468%_ _%K183469%_)
                  (gx#core-apply-user-macro
                   _%K183469%_
                   _%stx183451%_
                   _%ctx183468%_
                   _%phi183467%_
                   _%method183452%_))))
          (if (##structure-instance-of?
               _%$%self183453183461%_
               'gx#user-expander::t)
              (let* ((_%$%e183457183474%_
                      (##unchecked-structure-ref
                       _%$%self183453183461%_
                       '1
                       '#f
                       '#f))
                     (_%K183477%_ _%$%e183457183474%_)
                     (_%$%e183458183479%_
                      (##unchecked-structure-ref
                       _%$%self183453183461%_
                       '2
                       '#f
                       '#f))
                     (_%ctx183482%_ _%$%e183458183479%_)
                     (_%$%e183459183484%_
                      (##unchecked-structure-ref
                       _%$%self183453183461%_
                       '3
                       '#f
                       '#f))
                     (_%phi183487%_ _%$%e183459183484%_))
                (_%$%K183456183471%_ _%phi183487%_ _%ctx183482%_ _%K183477%_))
              (_%$%E183455183464%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self183492%_ _%stx183493%_)
        (let ((_%method183495%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self183492%_
           _%stx183493%_
           _%method183495%_))))
    (define gx#core-apply-user-expander
      (lambda _g186839_
        (let ((_g186840_ (##length _g186839_)))
          (cond ((##fx= _g186840_ 2)
                 (apply gx#core-apply-user-expander__0 _g186839_))
                ((##fx= _g186840_ 3)
                 (apply gx#core-apply-user-expander__% _g186839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g186839_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K183440%_
               _%stx183441%_
               _%ctx183442%_
               _%phi183443%_
               _%method183444%_)
        (let ((_%mark183446%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx183442%_
                _%phi183443%_
                _%stx183441%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K183440%_
               (gx#stx-apply-mark _%stx183441%_ _%mark183446%_)
               _%method183444%_)
              _%mark183446%_))
           gx#current-expander-marks
           (cons _%mark183446%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx183288%_ _%phi183289%_ _%ctx183290%_)
        (let _%lp183292%_ ((_%bind183294%_
                            (gx#core-resolve-identifier__%
                             _%stx183288%_
                             _%phi183289%_
                             _%ctx183290%_)))
          (if (##structure-direct-instance-of?
               _%bind183294%_
               'gx#import-binding::t)
              (_%lp183292%_
               (##unchecked-structure-ref _%bind183294%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind183294%_
                   'gx#alias-binding::t)
                  (_%lp183292%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind183294%_ '5 '#f '#f)
                    _%phi183289%_
                    _%ctx183290%_))
                  _%bind183294%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx183302%_)
        (let* ((_%phi183304%_ (gx#current-expander-phi))
               (_%ctx183306%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx183302%_
           _%phi183304%_
           _%ctx183306%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx183308%_ _%phi183309%_)
        (let ((_%ctx183311%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx183308%_
           _%phi183309%_
           _%ctx183311%_))))
    (define gx#resolve-identifier
      (lambda _g186841_
        (let ((_g186842_ (##length _g186841_)))
          (cond ((##fx= _g186842_ 1)
                 (apply gx#resolve-identifier__0 _g186841_))
                ((##fx= _g186842_ 2)
                 (apply gx#resolve-identifier__1 _g186841_))
                ((##fx= _g186842_ 3)
                 (apply gx#resolve-identifier__% _g186841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g186841_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx183243%_
               _%val183244%_
               _%rebind?183245%_
               _%phi183246%_
               _%ctx183247%_)
        (let ((_%rebind?183252%_
               (if (not _%rebind?183245%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?183245%_)
                       _%rebind?183245%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx183243%_)
           _%val183244%_
           _%rebind?183252%_
           _%phi183246%_
           _%ctx183247%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx183257%_ _%val183258%_)
        (let* ((_%rebind?183260%_ '#f)
               (_%phi183262%_ (gx#current-expander-phi))
               (_%ctx183264%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx183257%_
           _%val183258%_
           _%rebind?183260%_
           _%phi183262%_
           _%ctx183264%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx183266%_ _%val183267%_ _%rebind?183268%_)
        (let* ((_%phi183270%_ (gx#current-expander-phi))
               (_%ctx183272%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx183266%_
           _%val183267%_
           _%rebind?183268%_
           _%phi183270%_
           _%ctx183272%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx183274%_ _%val183275%_ _%rebind?183276%_ _%phi183277%_)
        (let ((_%ctx183279%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx183274%_
           _%val183275%_
           _%rebind?183276%_
           _%phi183277%_
           _%ctx183279%_))))
    (define gx#bind-identifier!
      (lambda _g186843_
        (let ((_g186844_ (##length _g186843_)))
          (cond ((##fx= _g186844_ 2) (apply gx#bind-identifier!__0 _g186843_))
                ((##fx= _g186844_ 3) (apply gx#bind-identifier!__1 _g186843_))
                ((##fx= _g186844_ 4) (apply gx#bind-identifier!__2 _g186843_))
                ((##fx= _g186844_ 5) (apply gx#bind-identifier!__% _g186843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g186843_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx183209%_ _%phi183210%_ _%ctx183211%_)
        (let _%lp183213%_ ((_%e183215%_ _%stx183209%_)
                           (_%marks183216%_ (gx#current-expander-marks)))
          (if (symbol? _%e183215%_)
              (gx#core-resolve-binding
               _%e183215%_
               _%phi183210%_
               _%phi183210%_
               _%ctx183211%_
               (reverse _%marks183216%_))
              (if (gx#identifier-quote? _%e183215%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e183215%_ '1 '#f '#f)
                   _%phi183210%_
                   '0
                   (##unchecked-structure-ref _%e183215%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e183215%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e183215%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e183215%_ '1 '#f '#f)
                       _%phi183210%_
                       _%phi183210%_
                       _%ctx183211%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e183215%_ '3 '#f '#f)
                        _%marks183216%_))
                      (if (##structure-direct-instance-of?
                           _%e183215%_
                           'gx#syntax-wrap::t)
                          (_%lp183213%_
                           (##unchecked-structure-ref _%e183215%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e183215%_ '3 '#f '#f)
                            _%marks183216%_))
                          (if (##structure-instance-of?
                               _%e183215%_
                               'gerbil#AST::t)
                              (_%lp183213%_
                               (##unchecked-structure-ref
                                _%e183215%_
                                '1
                                '#f
                                '#f)
                               _%marks183216%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx183209%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx183227%_)
        (let* ((_%phi183229%_ (gx#current-expander-phi))
               (_%ctx183231%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx183227%_
           _%phi183229%_
           _%ctx183231%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx183233%_ _%phi183234%_)
        (let ((_%ctx183236%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx183233%_
           _%phi183234%_
           _%ctx183236%_))))
    (define gx#core-resolve-identifier
      (lambda _g186845_
        (let ((_g186846_ (##length _g186845_)))
          (cond ((##fx= _g186846_ 1)
                 (apply gx#core-resolve-identifier__0 _g186845_))
                ((##fx= _g186846_ 2)
                 (apply gx#core-resolve-identifier__1 _g186845_))
                ((##fx= _g186846_ 3)
                 (apply gx#core-resolve-identifier__% _g186845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g186845_))))))
    (define gx#core-resolve-binding
      (lambda (_%id183120%_
               _%phi183121%_
               _%src-phi183122%_
               _%ctx183123%_
               _%marks183124%_)
        (letrec ((_%resolve183126%_
                  (lambda (_%ctx183193%_ _%src-phi183194%_ _%key183195%_)
                    (let _%lp183197%_ ((_%ctx183199%_
                                        (gx#core-context-shift
                                         _%ctx183193%_
                                         _%phi183121%_))
                                       (_%dphi183200%_
                                        (fx- _%phi183121%_ _%src-phi183194%_)))
                      (let ((_%$e183202%_
                             (gx#core-context-resolve
                              _%ctx183199%_
                              _%key183195%_)))
                        (if _%$e183202%_
                            _%$e183202%_
                            (if (fxzero? _%dphi183200%_)
                                '#f
                                (if (fxpositive? _%dphi183200%_)
                                    (_%lp183197%_
                                     (gx#core-context-shift _%ctx183199%_ '-1)
                                     (##fx- _%dphi183200%_ '1))
                                    (_%lp183197%_
                                     (gx#core-context-shift _%ctx183199%_ '1)
                                     (##fx+ _%dphi183200%_ '1))))))))))
          (let _%lp183128%_ ((_%ctx183130%_ _%ctx183123%_)
                             (_%src-phi183131%_ _%src-phi183122%_)
                             (_%rest183132%_ _%marks183124%_))
            (let* ((_%$%rest183133183141%_ _%rest183132%_)
                   (_%$%else183135183149%_
                    (lambda ()
                      (_%resolve183126%_
                       _%ctx183130%_
                       _%src-phi183131%_
                       _%id183120%_)))
                   (_%$%K183137183181%_
                    (lambda (_%rest183152%_ _%hd183153%_)
                      (let* ((_%$%hd183154183160%_ _%hd183153%_)
                             (_%$%E183156183163%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%hd183154183160%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%$%K183157183173%_
                              (lambda (_%subst183166%_)
                                (let ((_%$e183170%_
                                       (let ((_%key183168%_
                                              (if _%subst183166%_
                                                  (hash-get
                                                   _%subst183166%_
                                                   _%id183120%_)
                                                  '#f)))
                                         (if _%key183168%_
                                             (_%resolve183126%_
                                              _%ctx183130%_
                                              _%src-phi183131%_
                                              _%key183168%_)
                                             '#f))))
                                  (if _%$e183170%_
                                      _%$e183170%_
                                      (_%lp183128%_
                                       (##unchecked-structure-ref
                                        _%hd183153%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd183153%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest183152%_))))))
                        (if (##structure-instance-of?
                             _%$%hd183154183160%_
                             'gx#expander-mark::t)
                            (let* ((_%$%e183158183176%_
                                    (##unchecked-structure-ref
                                     _%$%hd183154183160%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst183179%_ _%$%e183158183176%_))
                              (_%$%K183157183173%_ _%subst183179%_))
                            (_%$%E183156183163%_))))))
              (if (pair? _%$%rest183133183141%_)
                  (let ((_%$%hd183138183184%_ (##car _%$%rest183133183141%_))
                        (_%$%tl183139183186%_ (##cdr _%$%rest183133183141%_)))
                    (let* ((_%hd183189%_ _%$%hd183138183184%_)
                           (_%rest183191%_ _%$%tl183139183186%_))
                      (_%$%K183137183181%_ _%rest183191%_ _%hd183189%_)))
                  (_%$%else183135183149%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key182991%_
               _%val182992%_
               _%rebind?182993%_
               _%phi182994%_
               _%ctx182995%_)
        (letrec ((_%update-binding182997%_
                  (lambda (_%xval183069%_)
                    (if (or (_%rebind?182993%_
                             _%ctx182995%_
                             _%xval183069%_
                             _%val182992%_)
                            (and (##structure-direct-instance-of?
                                  _%xval183069%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval183069%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val182992%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val182992%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval183069%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val182992%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val182992%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval183069%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val182992%_
                        (if (and (##structure-direct-instance-of?
                                  _%val182992%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val182992%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval183069%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val182992%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval183069%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval183069%_
                            (if (and (##structure-direct-instance-of?
                                      _%val182992%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval183069%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key182991%_
                                 (cons (##unchecked-structure-ref
                                        _%val182992%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val182992%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval183069%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval183069%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval183069%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval183069%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key182991%_
                                 _%val182992%_
                                 _%xval183069%_))))))
                 (_%gensubst182998%_
                  (lambda (_%subst183064%_ _%id183065%_)
                    (let ((_%eid183067%_
                           (gensym (if (uninterned-symbol? _%id183065%_)
                                       '%
                                       _%id183065%_))))
                      (hash-put! _%subst183064%_ _%id183065%_ _%eid183067%_)
                      _%eid183067%_)))
                 (_%subst!182999%_
                  (lambda (_%key183001%_)
                    (let* ((_%$%key183002183010%_ _%key183001%_)
                           (_%$%else183004183018%_ (lambda () _%key183001%_))
                           (_%$%K183006183052%_
                            (lambda (_%mark183021%_ _%id183022%_)
                              (let* ((_%$%mark183023183029%_ _%mark183021%_)
                                     (_%$%E183025183032%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark183023183029%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K183026183044%_
                                      (lambda (_%subst183035%_)
                                        (if (not _%subst183035%_)
                                            (let ((_%subst183038%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark183021%_
                                               _%subst183038%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst182998%_
                                               _%subst183038%_
                                               _%id183022%_))
                                            (let ((_%$e183040%_
                                                   (hash-get
                                                    _%subst183035%_
                                                    _%id183022%_)))
                                              (if _%$e183040%_
                                                  _%$e183040%_
                                                  (_%gensubst182998%_
                                                   _%subst183035%_
                                                   _%id183022%_)))))))
                                (if (##structure-instance-of?
                                     _%$%mark183023183029%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e183027183047%_
                                            (##unchecked-structure-ref
                                             _%$%mark183023183029%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst183050%_
                                            _%$%e183027183047%_))
                                      (_%$%K183026183044%_ _%subst183050%_))
                                    (_%$%E183025183032%_))))))
                      (if (pair? _%$%key183002183010%_)
                          (let ((_%$%hd183007183055%_
                                 (##car _%$%key183002183010%_))
                                (_%$%tl183008183057%_
                                 (##cdr _%$%key183002183010%_)))
                            (let* ((_%id183060%_ _%$%hd183007183055%_)
                                   (_%mark183062%_ _%$%tl183008183057%_))
                              (_%$%K183006183052%_
                               _%mark183062%_
                               _%id183060%_)))
                          (_%$%else183004183018%_))))))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin (displayln '"@bind " _%key182991%_) (force-output))
              '#!void)
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx182995%_ _%phi182994%_)
           (_%subst!182999%_ _%key182991%_)
           _%val182992%_
           _%update-binding182997%_))))
    (define gx#core-bind!__0
      (lambda (_%key183090%_ _%val183091%_)
        (let* ((_%rebind?183093%_ false)
               (_%phi183095%_ (gx#current-expander-phi))
               (_%ctx183097%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183090%_
           _%val183091%_
           _%rebind?183093%_
           _%phi183095%_
           _%ctx183097%_))))
    (define gx#core-bind!__1
      (lambda (_%key183099%_ _%val183100%_ _%rebind?183101%_)
        (let* ((_%phi183103%_ (gx#current-expander-phi))
               (_%ctx183105%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183099%_
           _%val183100%_
           _%rebind?183101%_
           _%phi183103%_
           _%ctx183105%_))))
    (define gx#core-bind!__2
      (lambda (_%key183107%_ _%val183108%_ _%rebind?183109%_ _%phi183110%_)
        (let ((_%ctx183112%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183107%_
           _%val183108%_
           _%rebind?183109%_
           _%phi183110%_
           _%ctx183112%_))))
    (define gx#core-bind!
      (lambda _g186847_
        (let ((_g186848_ (##length _g186847_)))
          (cond ((##fx= _g186848_ 2) (apply gx#core-bind!__0 _g186847_))
                ((##fx= _g186848_ 3) (apply gx#core-bind!__1 _g186847_))
                ((##fx= _g186848_ 4) (apply gx#core-bind!__2 _g186847_))
                ((##fx= _g186848_ 5) (apply gx#core-bind!__% _g186847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g186847_))))))
    (define gx#core-identifier-key
      (lambda (_%stx182922%_)
        (if (symbol? _%stx182922%_)
            (let* ((_%$%g182924182932%_ (gx#current-expander-marks))
                   (_%$%else182926182940%_ (lambda () _%stx182922%_))
                   (_%$%K182928182945%_
                    (lambda (_%hd182943%_) (cons _%stx182922%_ _%hd182943%_))))
              (if (pair? _%$%g182924182932%_)
                  (let* ((_%$%hd182929182948%_ (##car _%$%g182924182932%_))
                         (_%hd182951%_ _%$%hd182929182948%_))
                    (_%$%K182928182945%_ _%hd182951%_))
                  (_%$%else182926182940%_)))
            (if (gx#identifier? _%stx182922%_)
                (let* ((_%id182954%_ (gx#syntax-local-unwrap _%stx182922%_))
                       (_%eid182956%_ (gx#stx-e _%id182954%_))
                       (_%marks182958%_
                        (gx#stx-identifier-marks* _%id182954%_))
                       (_%$%marks182960182968%_ _%marks182958%_)
                       (_%$%else182962182976%_ (lambda () _%eid182956%_))
                       (_%$%K182964182981%_
                        (lambda (_%hd182979%_)
                          (cons _%eid182956%_ _%hd182979%_))))
                  (if (pair? _%$%marks182960182968%_)
                      (let* ((_%$%hd182965182984%_
                              (##car _%$%marks182960182968%_))
                             (_%hd182987%_ _%$%hd182965182984%_))
                        (_%$%K182964182981%_ _%hd182987%_))
                      (_%$%else182962182976%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx182922%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx182861%_ _%phi182862%_)
        (letrec ((_%make-phi182864%_
                  (lambda (_%super182920%_)
                    (let ((__obj186818
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj186818
                       (##gensym 'phi)
                       _%super182920%_)
                      __obj186818)))
                 (_%make-phi/up182865%_
                  (lambda (_%ctx182915%_ _%super182916%_)
                    (let ((_%ctx+1182918%_
                           (_%make-phi182864%_ _%super182916%_)))
                      (##unchecked-structure-set!
                       _%ctx182915%_
                       _%ctx+1182918%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1182918%_
                       _%ctx182915%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1182918%_)))
                 (_%make-phi/down182866%_
                  (lambda (_%ctx182910%_ _%super182911%_)
                    (let ((_%ctx-1182913%_
                           (_%make-phi182864%_ _%super182911%_)))
                      (##unchecked-structure-set!
                       _%ctx-1182913%_
                       _%ctx182910%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx182910%_
                       _%ctx-1182913%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1182913%_)))
                 (_%shift182867%_
                  (lambda (_%ctx182893%_
                           _%delta182894%_
                           _%make-delta-context182895%_
                           _%phi182896%_
                           _%K182897%_)
                    (let ((_%$e182899%_
                           (##unchecked-structure-ref
                            _%ctx182893%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e182899%_
                          (let* ((_%super182904%_
                                  (_%K182897%_ _%$e182899%_ _%delta182894%_))
                                 (_%ctx+d182906%_
                                  (_%make-delta-context182895%_
                                   _%ctx182893%_
                                   _%super182904%_)))
                            (_%K182897%_
                             _%ctx+d182906%_
                             (fx- _%phi182896%_ _%delta182894%_)))
                          (error '"Bad context" _%ctx182893%_))))))
          (let _%K182869%_ ((_%ctx182871%_ _%ctx182861%_)
                            (_%phi182872%_ _%phi182862%_))
            (if (fxzero? _%phi182872%_)
                _%ctx182871%_
                (if (##structure-instance-of? _%ctx182871%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi182872%_)
                        (let ((_%$e182876%_
                               (##unchecked-structure-ref
                                _%ctx182871%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e182876%_
                              (_%K182869%_
                               _%$e182876%_
                               (##fx- _%phi182872%_ '1))
                              (_%shift182867%_
                               _%ctx182871%_
                               '1
                               _%make-phi/up182865%_
                               _%phi182872%_
                               _%K182869%_)))
                        (let ((_%$e182884%_
                               (##unchecked-structure-ref
                                _%ctx182871%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e182884%_
                              (_%K182869%_
                               _%$e182884%_
                               (##fx+ _%phi182872%_ '1))
                              (_%shift182867%_
                               _%ctx182871%_
                               '-1
                               _%make-phi/down182866%_
                               _%phi182872%_
                               _%K182869%_))))
                    _%ctx182871%_))))))
    (define gx#core-context-get
      (lambda (_%ctx182858%_ _%key182859%_)
        (hash-get
         (##unchecked-structure-ref _%ctx182858%_ '2 '#f '#f)
         _%key182859%_)))
    (define gx#core-context-put!
      (lambda (_%ctx182854%_ _%key182855%_ _%val182856%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx182854%_ '2 '#f '#f)
         _%key182855%_
         _%val182856%_)
        _%val182856%_))
    (define gx#core-context-resolve
      (lambda (_%ctx182840%_ _%key182841%_)
        (let _%lp182843%_ ((_%ctx182845%_ _%ctx182840%_))
          (let ((_%$e182847%_
                 (gx#core-context-get _%ctx182845%_ _%key182841%_)))
            (if _%$e182847%_
                _%$e182847%_
                (let ((_%$e182850%_
                       (if (##structure-instance-of?
                            _%ctx182845%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx182845%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e182850%_ (_%lp182843%_ _%$e182850%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx182829%_ _%key182830%_ _%val182831%_ _%rebind182832%_)
        (let ((_%$e182834%_ (gx#core-context-get _%ctx182829%_ _%key182830%_)))
          (if _%$e182834%_
              (gx#core-context-put!
               _%ctx182829%_
               _%key182830%_
               (_%rebind182832%_ _%$e182834%_))
              (gx#core-context-put!
               _%ctx182829%_
               _%key182830%_
               _%val182831%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx182804%_ _%stop?182805%_)
        (let _%lp182807%_ ((_%ctx182809%_ _%ctx182804%_))
          (if (_%stop?182805%_ _%ctx182809%_)
              _%ctx182809%_
              (if (##structure-instance-of? _%ctx182809%_ 'gx#phi-context::t)
                  (_%lp182807%_
                   (##unchecked-structure-ref _%ctx182809%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx182818%_ (gx#current-expander-context))
               (_%stop?182820%_ gx#top-context?))
          (gx#core-context-top__% _%ctx182818%_ _%stop?182820%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx182822%_)
        (let ((_%stop?182824%_ gx#top-context?))
          (gx#core-context-top__% _%ctx182822%_ _%stop?182824%_))))
    (define gx#core-context-top
      (lambda _g186849_
        (let ((_g186850_ (##length _g186849_)))
          (cond ((##fx= _g186850_ 0) (apply gx#core-context-top__0 _g186849_))
                ((##fx= _g186850_ 1) (apply gx#core-context-top__1 _g186849_))
                ((##fx= _g186850_ 2) (apply gx#core-context-top__% _g186849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g186849_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx182789%_)
        (let _%lp182791%_ ((_%ctx182793%_ _%ctx182789%_))
          (if (##structure-instance-of? _%ctx182793%_ 'gx#phi-context::t)
              (_%lp182791%_
               (##unchecked-structure-ref _%ctx182793%_ '3 '#f '#f))
              _%ctx182793%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx182799%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx182799%_))))
    (define gx#core-context-root
      (lambda _g186851_
        (let ((_g186852_ (##length _g186851_)))
          (cond ((##fx= _g186852_ 0) (apply gx#core-context-root__0 _g186851_))
                ((##fx= _g186852_ 1) (apply gx#core-context-root__% _g186851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g186851_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx182771%_ . _%ignore182772%_)
        (let ((_%$e182774%_ (gx#current-expander-allow-rebind?)))
          (if _%$e182774%_
              _%$e182774%_
              (if (##structure-instance-of? _%ctx182771%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx182771%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx182771%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx182781%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx182781%_))))
    (define gx#core-context-rebind?
      (lambda _g186853_
        (let ((_g186854_ (##length _g186853_)))
          (cond ((##fx= _g186854_ 0)
                 (apply gx#core-context-rebind?__0 _g186853_))
                ((##fx= _g186854_ 1)
                 (apply gx#core-context-rebind?__% _g186853_))
                ((##fx>= _g186854_ 1)
                 (apply gx#core-context-rebind?__% _g186853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g186853_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx182754%_)
        (let ((_%$e182756%_ (gx#core-context-top__1 _%ctx182754%_)))
          (if _%$e182756%_
              (if (##structure-instance-of? _%$e182756%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e182756%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx182766%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx182766%_))))
    (define gx#core-context-namespace
      (lambda _g186855_
        (let ((_g186856_ (##length _g186855_)))
          (cond ((##fx= _g186856_ 0)
                 (apply gx#core-context-namespace__0 _g186855_))
                ((##fx= _g186856_ 1)
                 (apply gx#core-context-namespace__% _g186855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g186855_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind182740%_ _%is?182741%_)
        (if (##structure-direct-instance-of?
             _%bind182740%_
             'gx#syntax-binding::t)
            (_%is?182741%_
             (##unchecked-structure-ref _%bind182740%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind182746%_)
        (let ((_%is?182748%_ gx#expander?))
          (gx#expander-binding?__% _%bind182746%_ _%is?182748%_))))
    (define gx#expander-binding?
      (lambda _g186857_
        (let ((_g186858_ (##length _g186857_)))
          (cond ((##fx= _g186858_ 1) (apply gx#expander-binding?__0 _g186857_))
                ((##fx= _g186858_ 2) (apply gx#expander-binding?__% _g186857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g186857_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind182737%_)
        (gx#expander-binding?__% _%bind182737%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind182735%_)
        (gx#expander-binding?__% _%bind182735%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind182729%_)
        (letrec ((_%direct-special-form?182731%_
                  (lambda (_%obj182733%_)
                    (##structure-direct-instance-of?
                     _%obj182733%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind182729%_
           _%direct-special-form?182731%_))))
    (define gx#special-form-binding?
      (lambda (_%bind182727%_)
        (gx#expander-binding?__% _%bind182727%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind182718%_)
        (letrec ((_%feature?182720%_
                  (lambda (_%e182722%_)
                    (let ((_%$e182724%_
                           (##structure-instance-of?
                            _%e182722%_
                            'gx#feature-expander::t)))
                      (if _%$e182724%_
                          _%$e182724%_
                          (##structure-instance-of?
                           _%e182722%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind182718%_ _%feature?182720%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind182716%_)
        (gx#expander-binding?__% _%bind182716%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id182703%_ _%bound?182704%_)
        (if (gx#identifier? _%id182703%_)
            (_%bound?182704%_ (gx#resolve-identifier__0 _%id182703%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id182709%_)
        (let ((_%bound?182711%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id182709%_ _%bound?182711%_))))
    (define gx#core-bound-identifier?
      (lambda _g186859_
        (let ((_g186860_ (##length _g186859_)))
          (cond ((##fx= _g186860_ 1)
                 (apply gx#core-bound-identifier?__0 _g186859_))
                ((##fx= _g186860_ 2)
                 (apply gx#core-bound-identifier?__% _g186859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g186859_))))))
    (define gx#core-identifier=?
      (lambda (_%x182693%_ _%y182694%_)
        (letrec ((_%y=?182696%_
                  (lambda (_%xid182700%_)
                    ((if (list? _%y182694%_) memq eq?)
                     _%xid182700%_
                     _%y182694%_))))
          (let ((_%bind182698%_ (gx#resolve-identifier__0 _%x182693%_)))
            (if (##structure-instance-of? _%bind182698%_ 'gx#binding::t)
                (_%y=?182696%_
                 (##unchecked-structure-ref _%bind182698%_ '1 '#f '#f))
                (_%y=?182696%_ (gx#stx-e _%x182693%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e182691%_)
        (if (interned-symbol? _%e182691%_)
            (string-index__0 (symbol->string _%e182691%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx182644%_ _%src182645%_ _%ctx182646%_ _%marks182647%_)
        (if (##structure? _%stx182644%_)
            (let ((_%$e182649%_ (gx#sealed-syntax-unwrap _%stx182644%_)))
              (if _%$e182649%_
                  _%$e182649%_
                  (if (gx#identifier? _%stx182644%_)
                      (let ((_%id182653%_
                             (gx#stx-unwrap__% _%stx182644%_ _%marks182647%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id182653%_ '1 '#f '#f)
                         (let ((_%$e182655%_
                                (##unchecked-structure-ref
                                 _%id182653%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e182655%_ _%$e182655%_ _%src182645%_))
                         _%ctx182646%_
                         (##unchecked-structure-ref _%id182653%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx182644%_)
                       (let ((_%$e182659%_ (gx#stx-source _%stx182644%_)))
                         (if _%$e182659%_ _%$e182659%_ _%src182645%_))
                       _%ctx182646%_
                       (reverse _%marks182647%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx182644%_
             _%src182645%_
             _%ctx182646%_
             (reverse _%marks182647%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx182665%_)
        (let* ((_%src182667%_ '#f)
               (_%ctx182669%_ (gx#current-expander-context))
               (_%marks182671%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx182665%_
           _%src182667%_
           _%ctx182669%_
           _%marks182671%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx182673%_ _%src182674%_)
        (let* ((_%ctx182676%_ (gx#current-expander-context))
               (_%marks182678%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx182673%_
           _%src182674%_
           _%ctx182676%_
           _%marks182678%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx182680%_ _%src182681%_ _%ctx182682%_)
        (let ((_%marks182684%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx182680%_
           _%src182681%_
           _%ctx182682%_
           _%marks182684%_))))
    (define gx#core-quote-syntax
      (lambda _g186861_
        (let ((_g186862_ (##length _g186861_)))
          (cond ((##fx= _g186862_ 1) (apply gx#core-quote-syntax__0 _g186861_))
                ((##fx= _g186862_ 2) (apply gx#core-quote-syntax__1 _g186861_))
                ((##fx= _g186862_ 3) (apply gx#core-quote-syntax__2 _g186861_))
                ((##fx= _g186862_ 4) (apply gx#core-quote-syntax__% _g186861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g186861_))))))
    (define gx#core-cons
      (lambda (_%hd182640%_ _%tl182641%_)
        (cons (gx#core-quote-syntax__0 _%hd182640%_) _%tl182641%_)))
    (define gx#core-list
      (lambda (_%hd182637%_ . _%rest182638%_)
        (cons (gx#core-quote-syntax__0 _%hd182637%_) _%rest182638%_)))
    (define gx#core-cons*
      (lambda (_%hd182634%_ . _%rest182635%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd182634%_) _%rest182635%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path182603%_ _%rel182604%_)
        (let ((_%path182621%_ (gx#stx-e _%stx-path182603%_))
              (_%reldir182622%_
               (let _%lp182606%_ ((_%relsrc182608%_
                                   (let ((_%$e182618%_
                                          (gx#stx-source _%stx-path182603%_)))
                                     (if _%$e182618%_
                                         _%$e182618%_
                                         _%rel182604%_))))
                 (if (##structure-instance-of? _%relsrc182608%_ 'gerbil#AST::t)
                     (_%lp182606%_
                      (let ((_%$e182611%_ (gx#stx-source _%relsrc182608%_)))
                        (if _%$e182611%_
                            _%$e182611%_
                            (gx#stx-e _%relsrc182608%_))))
                     (if (source-location-path? _%relsrc182608%_)
                         (path-directory
                          (source-location-path _%relsrc182608%_))
                         (if (string? _%relsrc182608%_)
                             (path-directory _%relsrc182608%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path182621%_ (path-normalize _%reldir182622%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path182627%_)
        (let ((_%rel182629%_ '#f))
          (gx#core-resolve-path__% _%stx-path182627%_ _%rel182629%_))))
    (define gx#core-resolve-path
      (lambda _g186863_
        (let ((_g186864_ (##length _g186863_)))
          (cond ((##fx= _g186864_ 1) (apply gx#core-resolve-path__0 _g186863_))
                ((##fx= _g186864_ 2) (apply gx#core-resolve-path__% _g186863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g186863_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr182559%_ _%ctx182560%_)
        (let* ((_%$%repr182561182568%_ _%repr182559%_)
               (_%$%E182563182572%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%repr182561182568%_
                         '([phi . subs]))
                  '#!void))
               (_%$%K182564182580%_
                (lambda (_%subs182575%_ _%phi182576%_)
                  (let ((_%subst182578%_
                         (if (null? _%subs182575%_)
                             '#f
                             (list->hash-table-eq _%subs182575%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst182578%_
                     _%ctx182560%_
                     _%phi182576%_
                     '#f)))))
          (if (pair? _%$%repr182561182568%_)
              (let ((_%$%hd182565182583%_ (##car _%$%repr182561182568%_))
                    (_%$%tl182566182585%_ (##cdr _%$%repr182561182568%_)))
                (let* ((_%phi182588%_ _%$%hd182565182583%_)
                       (_%subs182590%_ _%$%tl182566182585%_))
                  (_%$%K182564182580%_ _%subs182590%_ _%phi182588%_)))
              (_%$%E182563182572%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr182595%_)
        (let ((_%ctx182597%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr182595%_ _%ctx182597%_))))
    (define gx#core-deserialize-mark
      (lambda _g186865_
        (let ((_g186866_ (##length _g186865_)))
          (cond ((##fx= _g186866_ 1)
                 (apply gx#core-deserialize-mark__0 _g186865_))
                ((##fx= _g186866_ 2)
                 (apply gx#core-deserialize-mark__% _g186865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g186865_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx182556%_)
        (gx#stx-rewrap _%stx182556%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx182554%_)
        (gx#stx-unwrap__% _%stx182554%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx182524%_)
        (let* ((_%$%g182525182533%_ (gx#current-expander-marks))
               (_%$%else182527182541%_ (lambda () _%stx182524%_))
               (_%$%K182529182546%_
                (lambda (_%hd182544%_)
                  (gx#stx-apply-mark _%stx182524%_ _%hd182544%_))))
          (if (pair? _%$%g182525182533%_)
              (let* ((_%$%hd182530182549%_ (##car _%$%g182525182533%_))
                     (_%hd182552%_ _%$%hd182530182549%_))
                (_%$%K182529182546%_ _%hd182552%_))
              (_%$%else182527182541%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym182522%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym182522%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx182507%_ _%E182508%_)
        (let ((_%bind182510%_ (gx#resolve-identifier__0 _%stx182507%_)))
          (if (##structure-direct-instance-of?
               _%bind182510%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind182510%_ '5 '#f '#f)
              (_%E182508%_ _%stx182507%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx182515%_)
        (let ((_%E182517%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx182515%_ _%E182517%_))))
    (define gx#syntax-local-e
      (lambda _g186867_
        (let ((_g186868_ (##length _g186867_)))
          (cond ((##fx= _g186868_ 1) (apply gx#syntax-local-e__0 _g186867_))
                ((##fx= _g186868_ 2) (apply gx#syntax-local-e__% _g186867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g186867_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx182491%_ _%E182492%_)
        (let ((_%e182494%_ (gx#syntax-local-e__% _%stx182491%_ _%E182492%_)))
          (if (##structure-instance-of? _%e182494%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e182494%_ '1 '#f '#f)
              _%e182494%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx182499%_)
        (let ((_%E182501%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx182499%_ _%E182501%_))))
    (define gx#syntax-local-value
      (lambda _g186869_
        (let ((_g186870_ (##length _g186869_)))
          (cond ((##fx= _g186870_ 1)
                 (apply gx#syntax-local-value__0 _g186869_))
                ((##fx= _g186870_ 2)
                 (apply gx#syntax-local-value__% _g186869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g186869_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx182488%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx182488%_)))))
