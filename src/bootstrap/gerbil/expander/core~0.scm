(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1734215269)
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
      (lambda _%$args121694%_
        (apply make-instance gx#expander-context::t _%$args121694%_)))
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
      (lambda _%$args121691%_
        (apply make-instance gx#root-context::t _%$args121691%_)))
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
      (lambda _%$args121688%_
        (apply make-instance gx#phi-context::t _%$args121688%_)))
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
      (lambda _%$args121685%_
        (apply make-instance gx#top-context::t _%$args121685%_)))
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
      (lambda _%$args121682%_
        (apply make-instance gx#module-context::t _%$args121682%_)))
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
      (lambda _%$args121679%_
        (apply make-instance gx#prelude-context::t _%$args121679%_)))
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
      (lambda _%$args121676%_
        (apply make-instance gx#local-context::t _%$args121676%_)))
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
      (lambda (_%self118582121647%_ _%id121649%_ _%super121650%_)
        (let* ((_%self121652%_ _%self118582121647%_)
               (_%self121654%_ _%self121652%_))
          (if (##fx< '3 (##structure-length _%self121654%_))
              (begin
                (##unchecked-structure-set!
                 _%self121654%_
                 _%id121649%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121654%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121654%_
                 _%super121650%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self121654%_
                     '3
                     (##vector-length _%self121654%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self118582121667%_ _%id121668%_)
        (let ((_%super121670%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self118582121667%_
           _%id121668%_
           _%super121670%_))))
    (define gx#phi-context:::init!
      (lambda _g121737_
        (let ((_g121736_ (##length _g121737_)))
          (cond ((##fx= _g121736_ 2)
                 (apply gx#phi-context:::init!__0 _g121737_))
                ((##fx= _g121736_ 3)
                 (apply gx#phi-context:::init!__% _g121737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g121737_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self118583121498%_ _%super121500%_)
        (let* ((_%self121502%_ _%self118583121498%_)
               (_%self121504%_ _%self121502%_))
          (if (##fx< '3 (##structure-length _%self121504%_))
              (begin
                (##unchecked-structure-set!
                 _%self121504%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121504%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121504%_
                 _%super121500%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self121504%_
                     '3
                     (##vector-length _%self121504%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self118583121517%_)
        (let ((_%super121519%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self118583121517%_ _%super121519%_))))
    (define gx#local-context:::init!
      (lambda _g121739_
        (let ((_g121738_ (##length _g121739_)))
          (cond ((##fx= _g121738_ 1)
                 (apply gx#local-context:::init!__0 _g121739_))
                ((##fx= _g121738_ 2)
                 (apply gx#local-context:::init!__% _g121739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g121739_))))))
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
       '(id key phi)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args121372%_
        (apply make-instance gx#binding::t _%$args121372%_)))
    (define gx#binding-id (__make-class-slot-accessor gx#binding::t 'id))
    (define gx#binding-key (__make-class-slot-accessor gx#binding::t 'key))
    (define gx#binding-phi (__make-class-slot-accessor gx#binding::t 'phi))
    (define gx#binding-id-set! (__make-class-slot-mutator gx#binding::t 'id))
    (define gx#binding-key-set! (__make-class-slot-mutator gx#binding::t 'key))
    (define gx#binding-phi-set! (__make-class-slot-mutator gx#binding::t 'phi))
    (define gx#&binding-id
      (__make-class-slot-unchecked-accessor gx#binding::t 'id))
    (define gx#&binding-key
      (__make-class-slot-unchecked-accessor gx#binding::t 'key))
    (define gx#&binding-phi
      (__make-class-slot-unchecked-accessor gx#binding::t 'phi))
    (define gx#&binding-id-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'id))
    (define gx#&binding-key-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'key))
    (define gx#&binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'phi))
    (define gx#runtime-binding::t
      (__make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args121369%_
        (apply make-instance gx#runtime-binding::t _%$args121369%_)))
    (define gx#runtime-binding-id
      (__make-class-slot-accessor gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key
      (__make-class-slot-accessor gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi
      (__make-class-slot-accessor gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-id-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'phi))
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
      (lambda _%$args121366%_
        (apply make-instance gx#local-binding::t _%$args121366%_)))
    (define gx#local-binding-id
      (__make-class-slot-accessor gx#local-binding::t 'id))
    (define gx#local-binding-key
      (__make-class-slot-accessor gx#local-binding::t 'key))
    (define gx#local-binding-phi
      (__make-class-slot-accessor gx#local-binding::t 'phi))
    (define gx#local-binding-id-set!
      (__make-class-slot-mutator gx#local-binding::t 'id))
    (define gx#local-binding-key-set!
      (__make-class-slot-mutator gx#local-binding::t 'key))
    (define gx#local-binding-phi-set!
      (__make-class-slot-mutator gx#local-binding::t 'phi))
    (define gx#&local-binding-id
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'id))
    (define gx#&local-binding-key
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'key))
    (define gx#&local-binding-phi
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'phi))
    (define gx#&local-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'id))
    (define gx#&local-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'key))
    (define gx#&local-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'phi))
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
      (lambda _%$args121363%_
        (apply make-instance gx#top-binding::t _%$args121363%_)))
    (define gx#top-binding-id
      (__make-class-slot-accessor gx#top-binding::t 'id))
    (define gx#top-binding-key
      (__make-class-slot-accessor gx#top-binding::t 'key))
    (define gx#top-binding-phi
      (__make-class-slot-accessor gx#top-binding::t 'phi))
    (define gx#top-binding-id-set!
      (__make-class-slot-mutator gx#top-binding::t 'id))
    (define gx#top-binding-key-set!
      (__make-class-slot-mutator gx#top-binding::t 'key))
    (define gx#top-binding-phi-set!
      (__make-class-slot-mutator gx#top-binding::t 'phi))
    (define gx#&top-binding-id
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'id))
    (define gx#&top-binding-key
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'key))
    (define gx#&top-binding-phi
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'phi))
    (define gx#&top-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'id))
    (define gx#&top-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'key))
    (define gx#&top-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'phi))
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
      (lambda _%$args121360%_
        (apply make-instance gx#module-binding::t _%$args121360%_)))
    (define gx#module-binding-context
      (__make-class-slot-accessor gx#module-binding::t 'context))
    (define gx#module-binding-id
      (__make-class-slot-accessor gx#module-binding::t 'id))
    (define gx#module-binding-key
      (__make-class-slot-accessor gx#module-binding::t 'key))
    (define gx#module-binding-phi
      (__make-class-slot-accessor gx#module-binding::t 'phi))
    (define gx#module-binding-context-set!
      (__make-class-slot-mutator gx#module-binding::t 'context))
    (define gx#module-binding-id-set!
      (__make-class-slot-mutator gx#module-binding::t 'id))
    (define gx#module-binding-key-set!
      (__make-class-slot-mutator gx#module-binding::t 'key))
    (define gx#module-binding-phi-set!
      (__make-class-slot-mutator gx#module-binding::t 'phi))
    (define gx#&module-binding-context
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'context))
    (define gx#&module-binding-id
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'id))
    (define gx#&module-binding-key
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'key))
    (define gx#&module-binding-phi
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'phi))
    (define gx#&module-binding-context-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'context))
    (define gx#&module-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'id))
    (define gx#&module-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'key))
    (define gx#&module-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'phi))
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
      (lambda _%$args121357%_
        (apply make-instance gx#extern-binding::t _%$args121357%_)))
    (define gx#extern-binding-id
      (__make-class-slot-accessor gx#extern-binding::t 'id))
    (define gx#extern-binding-key
      (__make-class-slot-accessor gx#extern-binding::t 'key))
    (define gx#extern-binding-phi
      (__make-class-slot-accessor gx#extern-binding::t 'phi))
    (define gx#extern-binding-id-set!
      (__make-class-slot-mutator gx#extern-binding::t 'id))
    (define gx#extern-binding-key-set!
      (__make-class-slot-mutator gx#extern-binding::t 'key))
    (define gx#extern-binding-phi-set!
      (__make-class-slot-mutator gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'id))
    (define gx#&extern-binding-key
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'phi))
    (define gx#&extern-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'id))
    (define gx#&extern-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'phi))
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
      (lambda _%$args121354%_
        (apply make-instance gx#syntax-binding::t _%$args121354%_)))
    (define gx#syntax-binding-e
      (__make-class-slot-accessor gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id
      (__make-class-slot-accessor gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key
      (__make-class-slot-accessor gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi
      (__make-class-slot-accessor gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-e-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'phi))
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
      (lambda _%$args121351%_
        (apply make-instance gx#import-binding::t _%$args121351%_)))
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
      (lambda _%$args121348%_
        (apply make-instance gx#alias-binding::t _%$args121348%_)))
    (define gx#alias-binding-e
      (__make-class-slot-accessor gx#alias-binding::t 'e))
    (define gx#alias-binding-id
      (__make-class-slot-accessor gx#alias-binding::t 'id))
    (define gx#alias-binding-key
      (__make-class-slot-accessor gx#alias-binding::t 'key))
    (define gx#alias-binding-phi
      (__make-class-slot-accessor gx#alias-binding::t 'phi))
    (define gx#alias-binding-e-set!
      (__make-class-slot-mutator gx#alias-binding::t 'e))
    (define gx#alias-binding-id-set!
      (__make-class-slot-mutator gx#alias-binding::t 'id))
    (define gx#alias-binding-key-set!
      (__make-class-slot-mutator gx#alias-binding::t 'key))
    (define gx#alias-binding-phi-set!
      (__make-class-slot-mutator gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'e))
    (define gx#&alias-binding-id
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'id))
    (define gx#&alias-binding-key
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'phi))
    (define gx#&alias-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'e))
    (define gx#&alias-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'id))
    (define gx#&alias-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'phi))
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
      (lambda _%$args121345%_
        (apply make-instance gx#expander::t _%$args121345%_)))
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
      (lambda _%$args121342%_
        (apply make-instance gx#core-expander::t _%$args121342%_)))
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
      (lambda _%$args121339%_
        (apply make-instance gx#expression-form::t _%$args121339%_)))
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
      (lambda _%$args121336%_
        (apply make-instance gx#special-form::t _%$args121336%_)))
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
      (lambda _%$args121333%_
        (apply make-instance gx#definition-form::t _%$args121333%_)))
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
      (lambda _%$args121330%_
        (apply make-instance gx#top-special-form::t _%$args121330%_)))
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
      (lambda _%$args121327%_
        (apply make-instance gx#module-special-form::t _%$args121327%_)))
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
      (lambda _%$args121324%_
        (apply make-instance gx#feature-expander::t _%$args121324%_)))
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
      (lambda _%$args121321%_
        (apply make-instance gx#private-feature-expander::t _%$args121321%_)))
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
      (lambda _%$args121318%_
        (apply make-instance gx#reserved-expander::t _%$args121318%_)))
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
      (lambda _%$args121315%_
        (apply make-instance gx#macro-expander::t _%$args121315%_)))
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
      (lambda _%$args121312%_
        (apply make-instance gx#rename-macro-expander::t _%$args121312%_)))
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
      (lambda _%$args121309%_
        (apply make-instance gx#user-expander::t _%$args121309%_)))
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
      (lambda _%$args121306%_
        (apply make-instance gx#expander-mark::t _%$args121306%_)))
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
      (lambda (_%ctx121290%_
               _%message121291%_
               _%stx121292%_
               .
               _%details121293%_)
        (let ((_%ctx121304%_
               (let ((_%$e121295%_ _%ctx121290%_))
                 (if _%$e121295%_
                     _%$e121295%_
                     (let ((_%$e121298%_ (gx#core-context-top__0)))
                       (if _%$e121298%_
                           ((lambda (_%ctx121301%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx121301%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e121298%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message121291%_
                  (cons _%stx121292%_ _%details121293%_)
                  _%ctx121304%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx121277%_ _%expression?121278%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx121277%_ _%expression?121278%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx121283%_)
        (let ((_%expression?121285%_ '#f))
          (gx#eval-syntax__% _%stx121283%_ _%expression?121285%_))))
    (define gx#eval-syntax
      (lambda _g121741_
        (let ((_g121740_ (##length _g121741_)))
          (cond ((##fx= _g121740_ 1) (apply gx#eval-syntax__0 _g121741_))
                ((##fx= _g121740_ 2) (apply gx#eval-syntax__% _g121741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g121741_))))))
    (define gx#eval-syntax*
      (lambda (_%stx121274%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx121274%_))))
    (define gx#core-expand__%
      (lambda (_%stx121261%_ _%expression?121262%_)
        (if _%expression?121262%_
            (gx#core-expand-expression _%stx121261%_)
            (gx#core-expand-top _%stx121261%_))))
    (define gx#core-expand__0
      (lambda (_%stx121267%_)
        (let ((_%expression?121269%_ '#f))
          (gx#core-expand__% _%stx121267%_ _%expression?121269%_))))
    (define gx#core-expand
      (lambda _g121743_
        (let ((_g121742_ (##length _g121743_)))
          (cond ((##fx= _g121742_ 1) (apply gx#core-expand__0 _g121743_))
                ((##fx= _g121742_ 2) (apply gx#core-expand__% _g121743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g121743_))))))
    (define gx#core-expand-top
      (lambda (_%stx121228%_)
        (let* ((_%stx121230%_ (gx#core-expand*__0 _%stx121228%_))
               (_%e121231121238%_ _%stx121230%_)
               (_%E121233121242%_
                (lambda () (gx#core-expand-expression _%stx121230%_)))
               (_%E121232121256%_
                (lambda ()
                  (if (gx#stx-pair? _%e121231121238%_)
                      (let ((_%e121234121246%_
                             (gx#syntax-e _%e121231121238%_)))
                        (let ((_%hd121235121249%_ (##car _%e121234121246%_))
                              (_%tl121236121251%_ (##cdr _%e121234121246%_)))
                          (let ((_%form121254%_ _%hd121235121249%_))
                            (if (gx#core-bound-identifier?__0 _%form121254%_)
                                _%stx121230%_
                                (_%E121233121242%_)))))
                      (_%E121233121242%_)))))
          (_%E121232121256%_))))
    (define gx#core-expand-expression
      (lambda (_%stx121160%_)
        (letrec ((_%sealed-expression?121162%_
                  (lambda (_%hd121198%_)
                    (if (gx#sealed-syntax? _%hd121198%_)
                        (let* ((_%e121199121206%_ _%hd121198%_)
                               (_%E121201121210%_ (lambda () '#f))
                               (_%E121200121224%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e121199121206%_)
                                      (let ((_%e121202121214%_
                                             (gx#syntax-e _%e121199121206%_)))
                                        (let ((_%hd121203121217%_
                                               (##car _%e121202121214%_))
                                              (_%tl121204121219%_
                                               (##cdr _%e121202121214%_)))
                                          (let ((_%form121222%_
                                                 _%hd121203121217%_))
                                            (gx#core-bound-identifier?__%
                                             _%form121222%_
                                             gx#expression-form-binding?))))
                                      (_%E121201121210%_)))))
                          (_%E121200121224%_))
                        '#f)))
                 (_%illegal-expression121163%_
                  (lambda (_%hd121195%_ . _%_121196%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx121160%_
                     _%hd121195%_)))
                 (_%expand-e121164%_
                  (lambda (_%form121187%_ _%hd121188%_)
                    (let ((_%bind121190%_
                           (if (##structure-instance-of?
                                _%form121187%_
                                'gx#binding::t)
                               _%form121187%_
                               (gx#resolve-identifier__0 _%form121187%_))))
                      (if (gx#core-expander-binding? _%bind121190%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind121190%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd121188%_
                            (gx#stx-source _%stx121160%_)))
                          (if (##structure-direct-instance-of?
                               _%bind121190%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind121190%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd121188%_
                                 (gx#stx-source _%stx121160%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx121160%_
                               _%form121187%_)))))))
          (let ((_%hd121166%_ (gx#core-expand-head _%stx121160%_)))
            (if (_%sealed-expression?121162%_ _%hd121166%_)
                _%hd121166%_
                (if (gx#stx-pair? _%hd121166%_)
                    (let* ((_%form121170%_ (gx#stx-car _%hd121166%_))
                           (_%bind121172%_
                            (if (gx#identifier? _%form121170%_)
                                (gx#resolve-identifier__0 _%form121170%_)
                                '#f)))
                      (if (or (not _%bind121172%_)
                              (not (gx#core-expander-binding? _%bind121172%_)))
                          (_%expand-e121164%_
                           '%%app
                           (cons '%%app _%hd121166%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind121172%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd121166%_
                               _%illegal-expression121163%_)
                              (if (gx#expression-form-binding? _%bind121172%_)
                                  (_%expand-e121164%_
                                   _%bind121172%_
                                   _%hd121166%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind121172%_)
                                      (gx#core-expand-expression
                                       (_%expand-e121164%_
                                        _%bind121172%_
                                        _%hd121166%_))
                                      (_%illegal-expression121163%_
                                       _%hd121166%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd121166%_)
                        (_%illegal-expression121163%_ _%hd121166%_)
                        (if (gx#identifier? _%hd121166%_)
                            (_%expand-e121164%_
                             '%%ref
                             (cons '%%ref (cons _%hd121166%_ '())))
                            (if (gx#stx-datum? _%hd121166%_)
                                (_%expand-e121164%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd121166%_ '())))
                                (_%illegal-expression121163%_
                                 _%hd121166%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx121155%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx121158%_ (gx#core-expand-expression _%stx121155%_)))
             (values _%stx121158%_ (gx#eval-syntax* _%stx121158%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx121136%_ _%stop?121137%_)
        (let _%lp121139%_ ((_%stx121141%_ _%stx121136%_))
          (if (_%stop?121137%_ _%stx121141%_)
              _%stx121141%_
              (let ((_%rstx121143%_ (gx#core-expand1 _%stx121141%_)))
                (if (eq? _%stx121141%_ _%rstx121143%_)
                    _%stx121141%_
                    (_%lp121139%_ _%rstx121143%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx121148%_)
        (let ((_%stop?121150%_ false))
          (gx#core-expand*__% _%stx121148%_ _%stop?121150%_))))
    (define gx#core-expand*
      (lambda _g121745_
        (let ((_g121744_ (##length _g121745_)))
          (cond ((##fx= _g121744_ 1) (apply gx#core-expand*__0 _g121745_))
                ((##fx= _g121744_ 2) (apply gx#core-expand*__% _g121745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g121745_))))))
    (define gx#core-expand1
      (lambda (_%stx121088%_)
        (letrec ((_%step121090%_
                  (lambda (_%hd121127%_)
                    (let ((_%bind121129%_
                           (gx#resolve-identifier__0 _%hd121127%_)))
                      (if (##structure-instance-of?
                           _%bind121129%_
                           'gx#runtime-binding::t)
                          _%stx121088%_
                          (if (##structure-direct-instance-of?
                               _%bind121129%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind121129%_
                                '4
                                '#f
                                '#f)
                               _%stx121088%_)
                              (if (not _%bind121129%_)
                                  _%stx121088%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx121088%_))))))))
          (let* ((_%e121091121099%_ _%stx121088%_)
                 (_%E121097121103%_ (lambda () _%stx121088%_))
                 (_%E121093121109%_
                  (lambda ()
                    (let ((_%hd121107%_ _%e121091121099%_))
                      (if (gx#identifier? _%hd121107%_)
                          (_%step121090%_ _%hd121107%_)
                          (_%E121097121103%_)))))
                 (_%E121092121123%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121091121099%_)
                        (let ((_%e121094121113%_
                               (gx#syntax-e _%e121091121099%_)))
                          (let ((_%hd121095121116%_ (##car _%e121094121113%_))
                                (_%tl121096121118%_ (##cdr _%e121094121113%_)))
                            (let ((_%hd121121%_ _%hd121095121116%_))
                              (if (gx#identifier? _%hd121121%_)
                                  (_%step121090%_ _%hd121121%_)
                                  (_%E121093121109%_)))))
                        (_%E121093121109%_)))))
            (_%E121092121123%_)))))
    (define gx#core-expand-head
      (lambda (_%stx121054%_)
        (letrec ((_%stop?121056%_
                  (lambda (_%stx121058%_)
                    (let* ((_%e121059121066%_ _%stx121058%_)
                           (_%E121061121070%_ (lambda () '#f))
                           (_%E121060121084%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121059121066%_)
                                  (let ((_%e121062121074%_
                                         (gx#syntax-e _%e121059121066%_)))
                                    (let ((_%hd121063121077%_
                                           (##car _%e121062121074%_))
                                          (_%tl121064121079%_
                                           (##cdr _%e121062121074%_)))
                                      (let ((_%hd121082%_ _%hd121063121077%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd121082%_))))
                                  (_%E121061121070%_)))))
                      (_%E121060121084%_)))))
          (gx#core-expand*__% _%stx121054%_ _%stop?121056%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx120860%_
               _%expand-special120861%_
               _%begin-form120862%_
               _%expand-e120863%_)
        (letrec ((_%expand-splice120865%_
                  (lambda (_%hd121028%_
                           _%body121029%_
                           _%rest121030%_
                           _%r121031%_)
                    (if (gx#stx-list? _%body121029%_)
                        (_%K120869%_
                         (gx#stx-foldr cons _%rest121030%_ _%body121029%_)
                         _%r121031%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx120860%_
                         _%hd121028%_))))
                 (_%expand-cond-expand120866%_
                  (lambda (_%hd121024%_ _%rest121025%_ _%r121026%_)
                    (_%K120869%_
                     (cons (gx#core-expand-cond-expand% _%hd121024%_)
                           _%rest121025%_)
                     _%r121026%_)))
                 (_%expand-include120867%_
                  (lambda (_%hd120973%_ _%rest120974%_ _%r120975%_)
                    (let* ((_%e120976120986%_ _%hd120973%_)
                           (_%E120978120990%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120976120986%_)))
                           (_%E120977121020%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120976120986%_)
                                  (let ((_%e120979120994%_
                                         (gx#syntax-e _%e120976120986%_)))
                                    (let ((_%hd120980120997%_
                                           (##car _%e120979120994%_))
                                          (_%tl120981120999%_
                                           (##cdr _%e120979120994%_)))
                                      (if (gx#stx-pair? _%tl120981120999%_)
                                          (let ((_%e120982121002%_
                                                 (gx#syntax-e
                                                  _%tl120981120999%_)))
                                            (let ((_%hd120983121005%_
                                                   (##car _%e120982121002%_))
                                                  (_%tl120984121007%_
                                                   (##cdr _%e120982121002%_)))
                                              (let ((_%path121010%_
                                                     _%hd120983121005%_))
                                                (if (gx#stx-null?
                                                     _%tl120984121007%_)
                                                    (if (gx#stx-string?
                                                         _%path121010%_)
                                                        (let* ((_%rpath121012%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path121010%_
                         (gx#stx-source _%hd120973%_)))
                       (_%block121014%_
                        (gx#core-expand-include%__%
                         _%hd120973%_
                         _%rpath121012%_))
                       (_%rbody121017%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block121014%_
                            _%expand-special120861%_
                            '#f
                            _%expand-e120863%_))
                         gx#current-expander-path
                         (cons _%rpath121012%_ (gx#current-expander-path)))))
                  (_%K120869%_
                   _%rest120974%_
                   (__foldr1 cons _%r120975%_ _%rbody121017%_)))
                (_%E120978120990%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120978120990%_)))))
                                          (_%E120978120990%_))))
                                  (_%E120978120990%_)))))
                      (_%E120977121020%_))))
                 (_%expand-expression120868%_
                  (lambda (_%hd120969%_ _%rest120970%_ _%r120971%_)
                    (_%K120869%_
                     _%rest120970%_
                     (cons (_%expand-e120863%_ _%hd120969%_) _%r120971%_))))
                 (_%K120869%_
                  (lambda (_%rest120899%_ _%r120900%_)
                    (let* ((_%e120901120908%_ _%rest120899%_)
                           (_%E120903120912%_
                            (lambda ()
                              (if _%begin-form120862%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form120862%_
                                    (reverse _%r120900%_))
                                   (gx#stx-source _%stx120860%_))
                                  _%r120900%_)))
                           (_%E120902120965%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120901120908%_)
                                  (let ((_%e120904120916%_
                                         (gx#syntax-e _%e120901120908%_)))
                                    (let ((_%hd120905120919%_
                                           (##car _%e120904120916%_))
                                          (_%tl120906120921%_
                                           (##cdr _%e120904120916%_)))
                                      (let* ((_%hd120924%_ _%hd120905120919%_)
                                             (_%rest120926%_
                                              _%tl120906120921%_)
                                             (_%hd120928%_
                                              (gx#core-expand-head
                                               _%hd120924%_))
                                             (_%e120929120936%_ _%hd120928%_)
                                             (_%E120931120940%_
                                              (lambda ()
                                                (_%expand-expression120868%_
                                                 _%hd120928%_
                                                 _%rest120926%_
                                                 _%r120900%_)))
                                             (_%E120930120961%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e120929120936%_)
                                                    (let ((_%e120932120944%_
                                                           (gx#syntax-e
                                                            _%e120929120936%_)))
                                                      (let ((_%hd120933120947%_
                                                             (##car _%e120932120944%_))
                                                            (_%tl120934120949%_
                                                             (##cdr _%e120932120944%_)))
                                                        (let* ((_%form120952%_
                                                                _%hd120933120947%_)
                                                               (_%body120954%_
                                                                _%tl120934120949%_)
                                                               (_%bind120956%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form120952%_)
                            (gx#resolve-identifier__0 _%form120952%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind120956%_)
                      (let ((_%$e120958%_
                             (##unchecked-structure-ref
                              _%bind120956%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e120958%_)
                            (_%expand-splice120865%_
                             _%hd120928%_
                             _%body120954%_
                             _%rest120926%_
                             _%r120900%_)
                            (if (eq? '%#cond-expand _%$e120958%_)
                                (_%expand-cond-expand120866%_
                                 _%hd120928%_
                                 _%rest120926%_
                                 _%r120900%_)
                                (if (eq? '%#include _%$e120958%_)
                                    (_%expand-include120867%_
                                     _%hd120928%_
                                     _%rest120926%_
                                     _%r120900%_)
                                    (_%expand-special120861%_
                                     _%hd120928%_
                                     _%K120869%_
                                     _%rest120926%_
                                     _%r120900%_)))))
                      (_%expand-expression120868%_
                       _%hd120928%_
                       _%rest120926%_
                       _%r120900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120931120940%_)))))
                                        (_%E120930120961%_))))
                                  (_%E120903120912%_)))))
                      (_%E120902120965%_)))))
          (let* ((_%e120870120877%_ _%stx120860%_)
                 (_%E120872120881%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120870120877%_)))
                 (_%E120871120895%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120870120877%_)
                        (let ((_%e120873120885%_
                               (gx#syntax-e _%e120870120877%_)))
                          (let ((_%hd120874120888%_ (##car _%e120873120885%_))
                                (_%tl120875120890%_ (##cdr _%e120873120885%_)))
                            (let ((_%body120893%_ _%tl120875120890%_))
                              (if (gx#stx-list? _%body120893%_)
                                  (_%K120869%_ _%body120893%_ '())
                                  (_%E120872120881%_)))))
                        (_%E120872120881%_)))))
            (_%E120871120895%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx121036%_ _%expand-special121037%_)
        (let* ((_%begin-form121039%_ '%#begin)
               (_%expand-e121041%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121036%_
           _%expand-special121037%_
           _%begin-form121039%_
           _%expand-e121041%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx121043%_ _%expand-special121044%_ _%begin-form121045%_)
        (let ((_%expand-e121047%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121043%_
           _%expand-special121044%_
           _%begin-form121045%_
           _%expand-e121047%_))))
    (define gx#core-expand-block
      (lambda _g121747_
        (let ((_g121746_ (##length _g121747_)))
          (cond ((##fx= _g121746_ 2) (apply gx#core-expand-block__0 _g121747_))
                ((##fx= _g121746_ 3) (apply gx#core-expand-block__1 _g121747_))
                ((##fx= _g121746_ 4) (apply gx#core-expand-block__% _g121747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g121747_))))))
    (define gx#core-expand-block*
      (lambda (_%stx120808%_ _%expand-special120809%_)
        (let* ((_%g120810120821%_
                (gx#core-expand-block__1
                 _%stx120808%_
                 _%expand-special120809%_
                 '#f))
               (_%E120814120825%_
                (lambda ()
                  (error '"No clause matching"
                         _%g120810120821%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K120819120856%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx120808%_)))
                (_%K120816120842%_ (lambda (_%expr120840%_) _%expr120840%_))
                (_%K120815120831%_
                 (lambda (_%body120829%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body120829%_))
                    (gx#stx-source _%stx120808%_)))))
            (let ((_%try-match120812120852%_
                   (lambda ()
                     (if (pair? _%g120810120821%_)
                         (let ((_%tl120818120847%_ (##cdr _%g120810120821%_))
                               (_%hd120817120845%_ (##car _%g120810120821%_)))
                           (if (null? _%tl120818120847%_)
                               (let ((_%expr120850%_ _%hd120817120845%_))
                                 (_%K120816120842%_ _%expr120850%_))
                               (let ((_%body120834%_ _%g120810120821%_))
                                 (_%K120815120831%_ _%body120834%_))))
                         (let ((_%body120834%_ _%g120810120821%_))
                           (_%K120815120831%_ _%body120834%_))))))
              (if (null? _%g120810120821%_)
                  (_%K120819120856%_)
                  (_%try-match120812120852%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx120633%_)
        (letrec ((_%satisfied?120635%_
                  (lambda (_%condition120736%_)
                    (let* ((_%e120737120752%_ _%condition120736%_)
                           (_%E120747120756%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120737120752%_)))
                           (_%E120740120775%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120737120752%_)
                                  (let ((_%e120748120760%_
                                         (gx#syntax-e _%e120737120752%_)))
                                    (let ((_%hd120749120763%_
                                           (##car _%e120748120760%_))
                                          (_%tl120750120765%_
                                           (##cdr _%e120748120760%_)))
                                      (let* ((_%combinator120768%_
                                              _%hd120749120763%_)
                                             (_%body120770%_
                                              _%tl120750120765%_))
                                        (if (gx#stx-list? _%body120770%_)
                                            (let ((_%$e120772%_
                                                   (gx#stx-e
                                                    _%combinator120768%_)))
                                              (if (eq? 'not _%$e120772%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?120635%_
                                                        _%body120770%_))
                                                  (if (eq? 'and _%$e120772%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?120635%_
                                                       _%body120770%_)
                                                      (if (eq? 'or
                                                               _%$e120772%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?120635%_
                                                           _%body120770%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e120772%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body120770%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx120633%_
                       _%combinator120768%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E120747120756%_)))))
                                  (_%E120747120756%_))))
                           (_%E120739120798%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120737120752%_)
                                  (let ((_%e120741120779%_
                                         (gx#syntax-e _%e120737120752%_)))
                                    (let ((_%hd120742120782%_
                                           (##car _%e120741120779%_))
                                          (_%tl120743120784%_
                                           (##cdr _%e120741120779%_)))
                                      (if (and (gx#identifier?
                                                _%hd120742120782%_)
                                               (gx#core-identifier=?
                                                _%hd120742120782%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl120743120784%_)
                                              (let ((_%e120744120787%_
                                                     (gx#syntax-e
                                                      _%tl120743120784%_)))
                                                (let ((_%hd120745120790%_
                                                       (##car _%e120744120787%_))
                                                      (_%tl120746120792%_
                                                       (##cdr _%e120744120787%_)))
                                                  (let ((_%expr120795%_
                                                         _%hd120745120790%_))
                                                    (if (gx#stx-null?
                                                         _%tl120746120792%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr120795%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E120740120775%_)))))
                                              (_%E120740120775%_))
                                          (_%E120740120775%_))))
                                  (_%E120740120775%_))))
                           (_%E120738120804%_
                            (lambda ()
                              (let ((_%id120802%_ _%e120737120752%_))
                                (if (gx#identifier? _%id120802%_)
                                    (gx#core-bound-identifier?__%
                                     _%id120802%_
                                     gx#feature-binding?)
                                    (_%E120739120798%_))))))
                      (_%E120738120804%_))))
                 (_%loop120636%_
                  (lambda (_%rest120666%_)
                    (let* ((_%e120667120675%_ _%rest120666%_)
                           (_%E120673120679%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120667120675%_)))
                           (_%E120669120683%_
                            (lambda ()
                              (if (gx#stx-null? _%e120667120675%_)
                                  '()
                                  (_%E120673120679%_))))
                           (_%E120668120732%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120667120675%_)
                                  (let ((_%e120670120687%_
                                         (gx#syntax-e _%e120667120675%_)))
                                    (let ((_%hd120671120690%_
                                           (##car _%e120670120687%_))
                                          (_%tl120672120692%_
                                           (##cdr _%e120670120687%_)))
                                      (let* ((_%hd120695%_ _%hd120671120690%_)
                                             (_%rest120697%_
                                              _%tl120672120692%_)
                                             (_%e120698120705%_ _%hd120695%_)
                                             (_%E120700120709%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e120698120705%_)))
                                             (_%E120699120728%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e120698120705%_)
                                                    (let ((_%e120701120713%_
                                                           (gx#syntax-e
                                                            _%e120698120705%_)))
                                                      (let ((_%hd120702120716%_
                                                             (##car _%e120701120713%_))
                                                            (_%tl120703120718%_
                                                             (##cdr _%e120701120713%_)))
                                                        (let* ((_%condition120721%_
                                                                _%hd120702120716%_)
                                                               (_%body120723%_
                                                                _%tl120703120718%_))
                                                          (if (gx#stx-eq?
                                                               _%condition120721%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest120697%_)
                          _%body120723%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx120633%_
                           _%hd120695%_))
                      (if (_%satisfied?120635%_ _%condition120721%_)
                          _%body120723%_
                          (_%loop120636%_ _%rest120697%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120700120709%_)))))
                                        (_%E120699120728%_))))
                                  (_%E120669120683%_)))))
                      (_%E120668120732%_)))))
          (let* ((_%e120637120644%_ _%stx120633%_)
                 (_%E120639120648%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120637120644%_)))
                 (_%E120638120662%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120637120644%_)
                        (let ((_%e120640120652%_
                               (gx#syntax-e _%e120637120644%_)))
                          (let ((_%hd120641120655%_ (##car _%e120640120652%_))
                                (_%tl120642120657%_ (##cdr _%e120640120652%_)))
                            (let ((_%clauses120660%_ _%tl120642120657%_))
                              (if (gx#stx-list? _%clauses120660%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop120636%_ _%clauses120660%_))
                                  (_%E120639120648%_)))))
                        (_%E120639120648%_)))))
            (_%E120638120662%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx120576%_ _%rpath120577%_)
        (let* ((_%e120578120588%_ _%stx120576%_)
               (_%E120580120592%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120578120588%_)))
               (_%E120579120619%_
                (lambda ()
                  (if (gx#stx-pair? _%e120578120588%_)
                      (let ((_%e120581120596%_
                             (gx#syntax-e _%e120578120588%_)))
                        (let ((_%hd120582120599%_ (##car _%e120581120596%_))
                              (_%tl120583120601%_ (##cdr _%e120581120596%_)))
                          (if (gx#stx-pair? _%tl120583120601%_)
                              (let ((_%e120584120604%_
                                     (gx#syntax-e _%tl120583120601%_)))
                                (let ((_%hd120585120607%_
                                       (##car _%e120584120604%_))
                                      (_%tl120586120609%_
                                       (##cdr _%e120584120604%_)))
                                  (let ((_%path120612%_ _%hd120585120607%_))
                                    (if (gx#stx-null? _%tl120586120609%_)
                                        (if (gx#stx-string? _%path120612%_)
                                            (let ((_%rpath120617%_
                                                   (let ((_%$e120614%_
                                                          _%rpath120577%_))
                                                     (if _%$e120614%_
                                                         _%$e120614%_
                                                         (gx#core-resolve-path__%
                                                          _%path120612%_
                                                          (gx#stx-source
                                                           _%stx120576%_))))))
                                              (if (member _%rpath120617%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx120576%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath120617%_))
                                                    (gx#stx-source
                                                     _%stx120576%_)))))
                                            (_%E120580120592%_))
                                        (_%E120580120592%_)))))
                              (_%E120580120592%_))))
                      (_%E120580120592%_)))))
          (_%E120579120619%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx120626%_)
        (let ((_%rpath120628%_ '#f))
          (gx#core-expand-include%__% _%stx120626%_ _%rpath120628%_))))
    (define gx#core-expand-include%
      (lambda _g121749_
        (let ((_g121748_ (##length _g121749_)))
          (cond ((##fx= _g121748_ 1)
                 (apply gx#core-expand-include%__0 _g121749_))
                ((##fx= _g121748_ 2)
                 (apply gx#core-expand-include%__% _g121749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g121749_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K120542%_ _%stx120543%_ _%method120544%_)
        (if (procedure? _%K120542%_)
            (let ((_%$e120547%_ (gx#stx-source _%stx120543%_)))
              (if _%$e120547%_
                  ((lambda (_%g120549120551%_)
                     (gx#stx-wrap-source
                      (_%K120542%_ _%stx120543%_)
                      _%g120549120551%_))
                   _%$e120547%_)
                  (_%K120542%_ _%stx120543%_)))
            (let ((_%$e120555%_
                   (bound-method-ref _%K120542%_ _%method120544%_)))
              (if _%$e120555%_
                  ((lambda (_%g120557120559%_)
                     (gx#core-apply-expander__%
                      _%g120557120559%_
                      _%stx120543%_
                      _%method120544%_))
                   _%$e120555%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx120543%_
                   _%method120544%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K120566%_ _%stx120567%_)
        (let ((_%method120569%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K120566%_
           _%stx120567%_
           _%method120569%_))))
    (define gx#core-apply-expander
      (lambda _g121751_
        (let ((_g121750_ (##length _g121751_)))
          (cond ((##fx= _g121750_ 2)
                 (apply gx#core-apply-expander__0 _g121751_))
                ((##fx= _g121750_ 3)
                 (apply gx#core-apply-expander__% _g121751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g121751_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self118584120525%_ _%stx120527%_)
        (let* ((_%self120529%_ _%self118584120525%_)
               (_%self120531%_ _%self120529%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx120527%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self118585120365%_ _%stx120367%_)
        (let* ((_%self120369%_ _%self118585120365%_)
               (_%self120371%_ _%self120369%_)
               (_%self120380120386%_ _%self120371%_)
               (_%E120382120390%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120380120386%_
                         '((macro-expander K)))
                  '#!void))
               (_%K120383120395%_
                (lambda (_%K120393%_)
                  (gx#core-apply-expander__0 _%K120393%_ _%stx120367%_)))
               (_%e120384120398%_
                (##unchecked-structure-ref _%self120380120386%_ '1 '#f '#f))
               (_%K120401%_ _%e120384120398%_))
          (_%K120383120395%_ _%K120401%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self118586120205%_ _%stx120207%_)
        (let* ((_%self120209%_ _%self118586120205%_)
               (_%self120211%_ _%self120209%_))
          (if (gx#sealed-syntax? _%stx120207%_)
              _%stx120207%_
              (let* ((_%self120220120226%_ _%self120211%_)
                     (_%E120222120230%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self120220120226%_
                               '((core-expander K)))
                        '#!void))
                     (_%K120223120235%_
                      (lambda (_%K120233%_)
                        (gx#core-apply-expander__0 _%K120233%_ _%stx120207%_)))
                     (_%e120224120238%_
                      (##unchecked-structure-ref
                       _%self120220120226%_
                       '1
                       '#f
                       '#f))
                     (_%K120241%_ _%e120224120238%_))
                (_%K120223120235%_ _%K120241%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self118587120054%_ _%stx120056%_ _%top?120057%_)
        (let* ((_%self120059%_ _%self118587120054%_)
               (_%self120061%_ _%self120059%_))
          (if (_%top?120057%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self120061%_
               _%stx120056%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx120056%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self118587120074%_ _%stx120075%_)
        (let ((_%top?120077%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self118587120074%_
           _%stx120075%_
           _%top?120077%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g121753_
        (let ((_g121752_ (##length _g121753_)))
          (cond ((##fx= _g121752_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g121753_))
                ((##fx= _g121752_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g121753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g121753_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self118588119915%_ _%stx119917%_)
        (let* ((_%self119919%_ _%self118588119915%_)
               (_%self119921%_ _%self119919%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self119921%_
           _%stx119917%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self118589119727%_ _%stx119729%_)
        (let* ((_%self119731%_ _%self118589119727%_)
               (_%self119733%_ _%self119731%_)
               (_%self119742119748%_ _%self119733%_)
               (_%E119744119752%_
                (lambda ()
                  (error '"No clause matching"
                         _%self119742119748%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K119745119785%_
                (lambda (_%id119755%_)
                  (let* ((_%e119756119763%_ _%stx119729%_)
                         (_%E119758119767%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e119756119763%_)))
                         (_%E119757119781%_
                          (lambda ()
                            (if (gx#stx-pair? _%e119756119763%_)
                                (let ((_%e119759119771%_
                                       (gx#syntax-e _%e119756119763%_)))
                                  (let ((_%hd119760119774%_
                                         (##car _%e119759119771%_))
                                        (_%tl119761119776%_
                                         (##cdr _%e119759119771%_)))
                                    (let ((_%body119779%_ _%tl119761119776%_))
                                      (gx#core-cons
                                       _%id119755%_
                                       _%body119779%_))))
                                (_%E119758119767%_)))))
                    (_%E119757119781%_))))
               (_%e119746119788%_
                (##unchecked-structure-ref _%self119742119748%_ '1 '#f '#f))
               (_%id119791%_ _%e119746119788%_))
          (_%K119745119785%_ _%id119791%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self119553%_ _%stx119554%_ _%method119555%_)
        (let* ((_%self119556119564%_ _%self119553%_)
               (_%E119558119568%_
                (lambda ()
                  (error '"No clause matching"
                         _%self119556119564%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K119559119575%_
                (lambda (_%phi119571%_ _%ctx119572%_ _%K119573%_)
                  (gx#core-apply-user-macro
                   _%K119573%_
                   _%stx119554%_
                   _%ctx119572%_
                   _%phi119571%_
                   _%method119555%_))))
          (if (##structure-instance-of?
               _%self119556119564%_
               'gx#user-expander::t)
              (let* ((_%e119560119578%_
                      (##unchecked-structure-ref
                       _%self119556119564%_
                       '1
                       '#f
                       '#f))
                     (_%K119581%_ _%e119560119578%_)
                     (_%e119561119583%_
                      (##unchecked-structure-ref
                       _%self119556119564%_
                       '2
                       '#f
                       '#f))
                     (_%ctx119586%_ _%e119561119583%_)
                     (_%e119562119588%_
                      (##unchecked-structure-ref
                       _%self119556119564%_
                       '3
                       '#f
                       '#f))
                     (_%phi119591%_ _%e119562119588%_))
                (_%K119559119575%_ _%phi119591%_ _%ctx119586%_ _%K119581%_))
              (_%E119558119568%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self119596%_ _%stx119597%_)
        (let ((_%method119599%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self119596%_
           _%stx119597%_
           _%method119599%_))))
    (define gx#core-apply-user-expander
      (lambda _g121755_
        (let ((_g121754_ (##length _g121755_)))
          (cond ((##fx= _g121754_ 2)
                 (apply gx#core-apply-user-expander__0 _g121755_))
                ((##fx= _g121754_ 3)
                 (apply gx#core-apply-user-expander__% _g121755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g121755_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K119543%_
               _%stx119544%_
               _%ctx119545%_
               _%phi119546%_
               _%method119547%_)
        (let ((_%mark119549%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx119545%_
                _%phi119546%_
                _%stx119544%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K119543%_
               (gx#stx-apply-mark _%stx119544%_ _%mark119549%_)
               _%method119547%_)
              _%mark119549%_))
           gx#current-expander-marks
           (cons _%mark119549%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx119391%_ _%phi119392%_ _%ctx119393%_)
        (let _%lp119395%_ ((_%bind119397%_
                            (gx#core-resolve-identifier__%
                             _%stx119391%_
                             _%phi119392%_
                             _%ctx119393%_)))
          (if (##structure-direct-instance-of?
               _%bind119397%_
               'gx#import-binding::t)
              (_%lp119395%_
               (##unchecked-structure-ref _%bind119397%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind119397%_
                   'gx#alias-binding::t)
                  (_%lp119395%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind119397%_ '4 '#f '#f)
                    _%phi119392%_
                    _%ctx119393%_))
                  _%bind119397%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx119405%_)
        (let* ((_%phi119407%_ (gx#current-expander-phi))
               (_%ctx119409%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx119405%_
           _%phi119407%_
           _%ctx119409%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx119411%_ _%phi119412%_)
        (let ((_%ctx119414%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx119411%_
           _%phi119412%_
           _%ctx119414%_))))
    (define gx#resolve-identifier
      (lambda _g121757_
        (let ((_g121756_ (##length _g121757_)))
          (cond ((##fx= _g121756_ 1)
                 (apply gx#resolve-identifier__0 _g121757_))
                ((##fx= _g121756_ 2)
                 (apply gx#resolve-identifier__1 _g121757_))
                ((##fx= _g121756_ 3)
                 (apply gx#resolve-identifier__% _g121757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g121757_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx119346%_
               _%val119347%_
               _%rebind?119348%_
               _%phi119349%_
               _%ctx119350%_)
        (let ((_%rebind?119355%_
               (if (not _%rebind?119348%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?119348%_)
                       _%rebind?119348%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx119346%_)
           _%val119347%_
           _%rebind?119355%_
           _%phi119349%_
           _%ctx119350%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx119360%_ _%val119361%_)
        (let* ((_%rebind?119363%_ '#f)
               (_%phi119365%_ (gx#current-expander-phi))
               (_%ctx119367%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx119360%_
           _%val119361%_
           _%rebind?119363%_
           _%phi119365%_
           _%ctx119367%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx119369%_ _%val119370%_ _%rebind?119371%_)
        (let* ((_%phi119373%_ (gx#current-expander-phi))
               (_%ctx119375%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx119369%_
           _%val119370%_
           _%rebind?119371%_
           _%phi119373%_
           _%ctx119375%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx119377%_ _%val119378%_ _%rebind?119379%_ _%phi119380%_)
        (let ((_%ctx119382%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx119377%_
           _%val119378%_
           _%rebind?119379%_
           _%phi119380%_
           _%ctx119382%_))))
    (define gx#bind-identifier!
      (lambda _g121759_
        (let ((_g121758_ (##length _g121759_)))
          (cond ((##fx= _g121758_ 2) (apply gx#bind-identifier!__0 _g121759_))
                ((##fx= _g121758_ 3) (apply gx#bind-identifier!__1 _g121759_))
                ((##fx= _g121758_ 4) (apply gx#bind-identifier!__2 _g121759_))
                ((##fx= _g121758_ 5) (apply gx#bind-identifier!__% _g121759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g121759_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx119312%_ _%phi119313%_ _%ctx119314%_)
        (let _%lp119316%_ ((_%e119318%_ _%stx119312%_)
                           (_%marks119319%_ (gx#current-expander-marks)))
          (if (symbol? _%e119318%_)
              (gx#core-resolve-binding
               _%e119318%_
               _%phi119313%_
               _%phi119313%_
               _%ctx119314%_
               (reverse _%marks119319%_))
              (if (gx#identifier-quote? _%e119318%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e119318%_ '1 '#f '#f)
                   _%phi119313%_
                   '0
                   (##unchecked-structure-ref _%e119318%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e119318%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e119318%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e119318%_ '1 '#f '#f)
                       _%phi119313%_
                       _%phi119313%_
                       _%ctx119314%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e119318%_ '3 '#f '#f)
                        _%marks119319%_))
                      (if (##structure-direct-instance-of?
                           _%e119318%_
                           'gx#syntax-wrap::t)
                          (_%lp119316%_
                           (##unchecked-structure-ref _%e119318%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e119318%_ '3 '#f '#f)
                            _%marks119319%_))
                          (if (##structure-instance-of?
                               _%e119318%_
                               'gerbil#AST::t)
                              (_%lp119316%_
                               (##unchecked-structure-ref
                                _%e119318%_
                                '1
                                '#f
                                '#f)
                               _%marks119319%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx119312%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx119330%_)
        (let* ((_%phi119332%_ (gx#current-expander-phi))
               (_%ctx119334%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx119330%_
           _%phi119332%_
           _%ctx119334%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx119336%_ _%phi119337%_)
        (let ((_%ctx119339%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx119336%_
           _%phi119337%_
           _%ctx119339%_))))
    (define gx#core-resolve-identifier
      (lambda _g121761_
        (let ((_g121760_ (##length _g121761_)))
          (cond ((##fx= _g121760_ 1)
                 (apply gx#core-resolve-identifier__0 _g121761_))
                ((##fx= _g121760_ 2)
                 (apply gx#core-resolve-identifier__1 _g121761_))
                ((##fx= _g121760_ 3)
                 (apply gx#core-resolve-identifier__% _g121761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g121761_))))))
    (define gx#core-resolve-binding
      (lambda (_%id119222%_
               _%phi119223%_
               _%src-phi119224%_
               _%ctx119225%_
               _%marks119226%_)
        (letrec ((_%resolve119228%_
                  (lambda (_%ctx119296%_ _%src-phi119297%_ _%key119298%_)
                    (let _%lp119300%_ ((_%ctx119302%_
                                        (gx#core-context-shift
                                         _%ctx119296%_
                                         _%phi119223%_))
                                       (_%dphi119303%_
                                        (fx- _%phi119223%_ _%src-phi119297%_)))
                      (let ((_%$e119305%_
                             (gx#core-context-resolve
                              _%ctx119302%_
                              _%key119298%_)))
                        (if _%$e119305%_
                            _%$e119305%_
                            (if (fxzero? _%dphi119303%_)
                                '#f
                                (if (fxpositive? _%dphi119303%_)
                                    (_%lp119300%_
                                     (gx#core-context-shift _%ctx119302%_ '-1)
                                     (##fx- _%dphi119303%_ '1))
                                    (_%lp119300%_
                                     (gx#core-context-shift _%ctx119302%_ '1)
                                     (##fx+ _%dphi119303%_ '1))))))))))
          (let _%lp119230%_ ((_%ctx119232%_ _%ctx119225%_)
                             (_%src-phi119233%_ _%src-phi119224%_)
                             (_%rest119234%_ _%marks119226%_))
            (let* ((_%rest119235119243%_ _%rest119234%_)
                   (_%else119237119251%_
                    (lambda ()
                      (_%resolve119228%_
                       _%ctx119232%_
                       _%src-phi119233%_
                       _%id119222%_)))
                   (_%K119239119284%_
                    (lambda (_%rest119254%_ _%hd119255%_)
                      (let* ((_%hd119256119262%_ _%hd119255%_)
                             (_%E119258119266%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd119256119262%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K119259119276%_
                              (lambda (_%subst119269%_)
                                (let ((_%$e119273%_
                                       (let ((_%key119271%_
                                              (if _%subst119269%_
                                                  (hash-get
                                                   _%subst119269%_
                                                   _%id119222%_)
                                                  '#f)))
                                         (if _%key119271%_
                                             (_%resolve119228%_
                                              _%ctx119232%_
                                              _%src-phi119233%_
                                              _%key119271%_)
                                             '#f))))
                                  (if _%$e119273%_
                                      _%$e119273%_
                                      (_%lp119230%_
                                       (##unchecked-structure-ref
                                        _%hd119255%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd119255%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest119254%_))))))
                        (if (##structure-instance-of?
                             _%hd119256119262%_
                             'gx#expander-mark::t)
                            (let* ((_%e119260119279%_
                                    (##unchecked-structure-ref
                                     _%hd119256119262%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst119282%_ _%e119260119279%_))
                              (_%K119259119276%_ _%subst119282%_))
                            (_%E119258119266%_))))))
              (if (pair? _%rest119235119243%_)
                  (let ((_%hd119240119287%_ (##car _%rest119235119243%_))
                        (_%tl119241119289%_ (##cdr _%rest119235119243%_)))
                    (let* ((_%hd119292%_ _%hd119240119287%_)
                           (_%rest119294%_ _%tl119241119289%_))
                      (_%K119239119284%_ _%rest119294%_ _%hd119292%_)))
                  (_%else119237119251%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key119092%_
               _%val119093%_
               _%rebind?119094%_
               _%phi119095%_
               _%ctx119096%_)
        (letrec ((_%update-binding119098%_
                  (lambda (_%xval119171%_)
                    (if (or (_%rebind?119094%_
                             _%ctx119096%_
                             _%xval119171%_
                             _%val119093%_)
                            (and (##structure-direct-instance-of?
                                  _%xval119171%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval119171%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val119093%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val119093%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval119171%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val119093%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val119093%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval119171%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val119093%_
                        (if (and (##structure-direct-instance-of?
                                  _%val119093%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val119093%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval119171%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val119093%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval119171%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval119171%_
                            (if (and (##structure-direct-instance-of?
                                      _%val119093%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval119171%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key119092%_
                                 (cons (##unchecked-structure-ref
                                        _%val119093%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val119093%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval119171%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval119171%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval119171%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval119171%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key119092%_
                                 _%val119093%_
                                 _%xval119171%_))))))
                 (_%gensubst119099%_
                  (lambda (_%subst119166%_ _%id119167%_)
                    (let ((_%eid119169%_
                           (gensym (if (uninterned-symbol? _%id119167%_)
                                       '%
                                       _%id119167%_))))
                      (hash-put! _%subst119166%_ _%id119167%_ _%eid119169%_)
                      _%eid119169%_)))
                 (_%subst!119100%_
                  (lambda (_%key119102%_)
                    (let* ((_%key119103119111%_ _%key119102%_)
                           (_%else119105119119%_ (lambda () _%key119102%_))
                           (_%K119107119154%_
                            (lambda (_%mark119122%_ _%id119123%_)
                              (let* ((_%mark119124119130%_ _%mark119122%_)
                                     (_%E119126119134%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark119124119130%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K119127119146%_
                                      (lambda (_%subst119137%_)
                                        (if (not _%subst119137%_)
                                            (let ((_%subst119140%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark119122%_
                                               _%subst119140%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst119099%_
                                               _%subst119140%_
                                               _%id119123%_))
                                            (let ((_%$e119142%_
                                                   (hash-get
                                                    _%subst119137%_
                                                    _%id119123%_)))
                                              (if _%$e119142%_
                                                  _%$e119142%_
                                                  (_%gensubst119099%_
                                                   _%subst119137%_
                                                   _%id119123%_)))))))
                                (if (##structure-instance-of?
                                     _%mark119124119130%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e119128119149%_
                                            (##unchecked-structure-ref
                                             _%mark119124119130%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst119152%_ _%e119128119149%_))
                                      (_%K119127119146%_ _%subst119152%_))
                                    (_%E119126119134%_))))))
                      (if (pair? _%key119103119111%_)
                          (let ((_%hd119108119157%_
                                 (##car _%key119103119111%_))
                                (_%tl119109119159%_
                                 (##cdr _%key119103119111%_)))
                            (let* ((_%id119162%_ _%hd119108119157%_)
                                   (_%mark119164%_ _%tl119109119159%_))
                              (_%K119107119154%_ _%mark119164%_ _%id119162%_)))
                          (_%else119105119119%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx119096%_ _%phi119095%_)
           (_%subst!119100%_ _%key119092%_)
           _%val119093%_
           _%update-binding119098%_))))
    (define gx#core-bind!__0
      (lambda (_%key119192%_ _%val119193%_)
        (let* ((_%rebind?119195%_ false)
               (_%phi119197%_ (gx#current-expander-phi))
               (_%ctx119199%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119192%_
           _%val119193%_
           _%rebind?119195%_
           _%phi119197%_
           _%ctx119199%_))))
    (define gx#core-bind!__1
      (lambda (_%key119201%_ _%val119202%_ _%rebind?119203%_)
        (let* ((_%phi119205%_ (gx#current-expander-phi))
               (_%ctx119207%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119201%_
           _%val119202%_
           _%rebind?119203%_
           _%phi119205%_
           _%ctx119207%_))))
    (define gx#core-bind!__2
      (lambda (_%key119209%_ _%val119210%_ _%rebind?119211%_ _%phi119212%_)
        (let ((_%ctx119214%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119209%_
           _%val119210%_
           _%rebind?119211%_
           _%phi119212%_
           _%ctx119214%_))))
    (define gx#core-bind!
      (lambda _g121763_
        (let ((_g121762_ (##length _g121763_)))
          (cond ((##fx= _g121762_ 2) (apply gx#core-bind!__0 _g121763_))
                ((##fx= _g121762_ 3) (apply gx#core-bind!__1 _g121763_))
                ((##fx= _g121762_ 4) (apply gx#core-bind!__2 _g121763_))
                ((##fx= _g121762_ 5) (apply gx#core-bind!__% _g121763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g121763_))))))
    (define gx#core-identifier-key
      (lambda (_%stx119023%_)
        (if (symbol? _%stx119023%_)
            (let* ((_%g119025119033%_ (gx#current-expander-marks))
                   (_%else119027119041%_ (lambda () _%stx119023%_))
                   (_%K119029119046%_
                    (lambda (_%hd119044%_) (cons _%stx119023%_ _%hd119044%_))))
              (if (pair? _%g119025119033%_)
                  (let* ((_%hd119030119049%_ (##car _%g119025119033%_))
                         (_%hd119052%_ _%hd119030119049%_))
                    (_%K119029119046%_ _%hd119052%_))
                  (_%else119027119041%_)))
            (if (gx#identifier? _%stx119023%_)
                (let* ((_%id119055%_ (gx#syntax-local-unwrap _%stx119023%_))
                       (_%eid119057%_ (gx#stx-e _%id119055%_))
                       (_%marks119059%_
                        (gx#stx-identifier-marks* _%id119055%_))
                       (_%marks119061119069%_ _%marks119059%_)
                       (_%else119063119077%_ (lambda () _%eid119057%_))
                       (_%K119065119082%_
                        (lambda (_%hd119080%_)
                          (cons _%eid119057%_ _%hd119080%_))))
                  (if (pair? _%marks119061119069%_)
                      (let* ((_%hd119066119085%_ (##car _%marks119061119069%_))
                             (_%hd119088%_ _%hd119066119085%_))
                        (_%K119065119082%_ _%hd119088%_))
                      (_%else119063119077%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx119023%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx118962%_ _%phi118963%_)
        (letrec ((_%make-phi118965%_
                  (lambda (_%super119021%_)
                    (let ((__obj121735
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj121735
                       (##gensym 'phi)
                       _%super119021%_)
                      __obj121735)))
                 (_%make-phi/up118966%_
                  (lambda (_%ctx119016%_ _%super119017%_)
                    (let ((_%ctx+1119019%_
                           (_%make-phi118965%_ _%super119017%_)))
                      (##unchecked-structure-set!
                       _%ctx119016%_
                       _%ctx+1119019%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1119019%_
                       _%ctx119016%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1119019%_)))
                 (_%make-phi/down118967%_
                  (lambda (_%ctx119011%_ _%super119012%_)
                    (let ((_%ctx-1119014%_
                           (_%make-phi118965%_ _%super119012%_)))
                      (##unchecked-structure-set!
                       _%ctx-1119014%_
                       _%ctx119011%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx119011%_
                       _%ctx-1119014%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1119014%_)))
                 (_%shift118968%_
                  (lambda (_%ctx118994%_
                           _%delta118995%_
                           _%make-delta-context118996%_
                           _%phi118997%_
                           _%K118998%_)
                    (let ((_%$e119000%_
                           (##unchecked-structure-ref
                            _%ctx118994%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e119000%_
                          ((lambda (_%super119003%_)
                             (let* ((_%super119005%_
                                     (_%K118998%_
                                      _%super119003%_
                                      _%delta118995%_))
                                    (_%ctx+d119007%_
                                     (_%make-delta-context118996%_
                                      _%ctx118994%_
                                      _%super119005%_)))
                               (_%K118998%_
                                _%ctx+d119007%_
                                (fx- _%phi118997%_ _%delta118995%_))))
                           _%$e119000%_)
                          (error '"Bad context" _%ctx118994%_))))))
          (let _%K118970%_ ((_%ctx118972%_ _%ctx118962%_)
                            (_%phi118973%_ _%phi118963%_))
            (if (fxzero? _%phi118973%_)
                _%ctx118972%_
                (if (##structure-instance-of? _%ctx118972%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi118973%_)
                        (let ((_%$e118977%_
                               (##unchecked-structure-ref
                                _%ctx118972%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e118977%_
                              ((lambda (_%g118979118981%_)
                                 (_%K118970%_
                                  _%g118979118981%_
                                  (##fx- _%phi118973%_ '1)))
                               _%$e118977%_)
                              (_%shift118968%_
                               _%ctx118972%_
                               '1
                               _%make-phi/up118966%_
                               _%phi118973%_
                               _%K118970%_)))
                        (let ((_%$e118985%_
                               (##unchecked-structure-ref
                                _%ctx118972%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e118985%_
                              ((lambda (_%g118987118989%_)
                                 (_%K118970%_
                                  _%g118987118989%_
                                  (##fx+ _%phi118973%_ '1)))
                               _%$e118985%_)
                              (_%shift118968%_
                               _%ctx118972%_
                               '-1
                               _%make-phi/down118967%_
                               _%phi118973%_
                               _%K118970%_))))
                    _%ctx118972%_))))))
    (define gx#core-context-get
      (lambda (_%ctx118959%_ _%key118960%_)
        (hash-get
         (##unchecked-structure-ref _%ctx118959%_ '2 '#f '#f)
         _%key118960%_)))
    (define gx#core-context-put!
      (lambda (_%ctx118955%_ _%key118956%_ _%val118957%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx118955%_ '2 '#f '#f)
         _%key118956%_
         _%val118957%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx118941%_ _%key118942%_)
        (let _%lp118944%_ ((_%ctx118946%_ _%ctx118941%_))
          (let ((_%$e118948%_
                 (gx#core-context-get _%ctx118946%_ _%key118942%_)))
            (if _%$e118948%_
                _%$e118948%_
                (let ((_%$e118951%_
                       (if (##structure-instance-of?
                            _%ctx118946%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx118946%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e118951%_ (_%lp118944%_ _%$e118951%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx118930%_ _%key118931%_ _%val118932%_ _%rebind118933%_)
        (let ((_%$e118935%_ (gx#core-context-get _%ctx118930%_ _%key118931%_)))
          (if _%$e118935%_
              ((lambda (_%xval118938%_)
                 (gx#core-context-put!
                  _%ctx118930%_
                  _%key118931%_
                  (_%rebind118933%_ _%xval118938%_)))
               _%$e118935%_)
              (gx#core-context-put!
               _%ctx118930%_
               _%key118931%_
               _%val118932%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx118905%_ _%stop?118906%_)
        (let _%lp118908%_ ((_%ctx118910%_ _%ctx118905%_))
          (if (_%stop?118906%_ _%ctx118910%_)
              _%ctx118910%_
              (if (##structure-instance-of? _%ctx118910%_ 'gx#phi-context::t)
                  (_%lp118908%_
                   (##unchecked-structure-ref _%ctx118910%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx118919%_ (gx#current-expander-context))
               (_%stop?118921%_ gx#top-context?))
          (gx#core-context-top__% _%ctx118919%_ _%stop?118921%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx118923%_)
        (let ((_%stop?118925%_ gx#top-context?))
          (gx#core-context-top__% _%ctx118923%_ _%stop?118925%_))))
    (define gx#core-context-top
      (lambda _g121765_
        (let ((_g121764_ (##length _g121765_)))
          (cond ((##fx= _g121764_ 0) (apply gx#core-context-top__0 _g121765_))
                ((##fx= _g121764_ 1) (apply gx#core-context-top__1 _g121765_))
                ((##fx= _g121764_ 2) (apply gx#core-context-top__% _g121765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g121765_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx118890%_)
        (let _%lp118892%_ ((_%ctx118894%_ _%ctx118890%_))
          (if (##structure-instance-of? _%ctx118894%_ 'gx#phi-context::t)
              (_%lp118892%_
               (##unchecked-structure-ref _%ctx118894%_ '3 '#f '#f))
              _%ctx118894%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx118900%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx118900%_))))
    (define gx#core-context-root
      (lambda _g121767_
        (let ((_g121766_ (##length _g121767_)))
          (cond ((##fx= _g121766_ 0) (apply gx#core-context-root__0 _g121767_))
                ((##fx= _g121766_ 1) (apply gx#core-context-root__% _g121767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g121767_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx118872%_ . _%ignore118873%_)
        (let ((_%$e118875%_ (gx#current-expander-allow-rebind?)))
          (if _%$e118875%_
              _%$e118875%_
              (if (##structure-instance-of? _%ctx118872%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx118872%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx118872%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx118882%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx118882%_))))
    (define gx#core-context-rebind?
      (lambda _g121769_
        (let ((_g121768_ (##length _g121769_)))
          (cond ((##fx= _g121768_ 0)
                 (apply gx#core-context-rebind?__0 _g121769_))
                ((##fx= _g121768_ 1)
                 (apply gx#core-context-rebind?__% _g121769_))
                ((##fx>= _g121768_ 1)
                 (apply gx#core-context-rebind?__% _g121769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g121769_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx118855%_)
        (let ((_%$e118857%_ (gx#core-context-top__1 _%ctx118855%_)))
          (if _%$e118857%_
              ((lambda (_%ctx118860%_)
                 (if (##structure-instance-of?
                      _%ctx118860%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx118860%_ '6 '#f '#f)
                     '#f))
               _%$e118857%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx118867%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx118867%_))))
    (define gx#core-context-namespace
      (lambda _g121771_
        (let ((_g121770_ (##length _g121771_)))
          (cond ((##fx= _g121770_ 0)
                 (apply gx#core-context-namespace__0 _g121771_))
                ((##fx= _g121770_ 1)
                 (apply gx#core-context-namespace__% _g121771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g121771_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind118841%_ _%is?118842%_)
        (if (##structure-direct-instance-of?
             _%bind118841%_
             'gx#syntax-binding::t)
            (_%is?118842%_
             (##unchecked-structure-ref _%bind118841%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind118847%_)
        (let ((_%is?118849%_ gx#expander?))
          (gx#expander-binding?__% _%bind118847%_ _%is?118849%_))))
    (define gx#expander-binding?
      (lambda _g121773_
        (let ((_g121772_ (##length _g121773_)))
          (cond ((##fx= _g121772_ 1) (apply gx#expander-binding?__0 _g121773_))
                ((##fx= _g121772_ 2) (apply gx#expander-binding?__% _g121773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g121773_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind118838%_)
        (gx#expander-binding?__% _%bind118838%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind118836%_)
        (gx#expander-binding?__% _%bind118836%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind118830%_)
        (letrec ((_%direct-special-form?118832%_
                  (lambda (_%obj118834%_)
                    (##structure-direct-instance-of?
                     _%obj118834%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind118830%_
           _%direct-special-form?118832%_))))
    (define gx#special-form-binding?
      (lambda (_%bind118828%_)
        (gx#expander-binding?__% _%bind118828%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind118819%_)
        (letrec ((_%feature?118821%_
                  (lambda (_%e118823%_)
                    (let ((_%$e118825%_
                           (##structure-instance-of?
                            _%e118823%_
                            'gx#feature-expander::t)))
                      (if _%$e118825%_
                          _%$e118825%_
                          (##structure-instance-of?
                           _%e118823%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind118819%_ _%feature?118821%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind118817%_)
        (gx#expander-binding?__% _%bind118817%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id118804%_ _%bound?118805%_)
        (if (gx#identifier? _%id118804%_)
            (_%bound?118805%_ (gx#resolve-identifier__0 _%id118804%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id118810%_)
        (let ((_%bound?118812%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id118810%_ _%bound?118812%_))))
    (define gx#core-bound-identifier?
      (lambda _g121775_
        (let ((_g121774_ (##length _g121775_)))
          (cond ((##fx= _g121774_ 1)
                 (apply gx#core-bound-identifier?__0 _g121775_))
                ((##fx= _g121774_ 2)
                 (apply gx#core-bound-identifier?__% _g121775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g121775_))))))
    (define gx#core-identifier=?
      (lambda (_%x118794%_ _%y118795%_)
        (letrec ((_%y=?118797%_
                  (lambda (_%xid118801%_)
                    ((if (list? _%y118795%_) memq eq?)
                     _%xid118801%_
                     _%y118795%_))))
          (let ((_%bind118799%_ (gx#resolve-identifier__0 _%x118794%_)))
            (if (##structure-instance-of? _%bind118799%_ 'gx#binding::t)
                (_%y=?118797%_
                 (##unchecked-structure-ref _%bind118799%_ '1 '#f '#f))
                (_%y=?118797%_ (gx#stx-e _%x118794%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e118792%_)
        (if (interned-symbol? _%e118792%_)
            (string-index__0 (symbol->string _%e118792%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx118745%_ _%src118746%_ _%ctx118747%_ _%marks118748%_)
        (if (##structure? _%stx118745%_)
            (let ((_%$e118750%_ (gx#sealed-syntax-unwrap _%stx118745%_)))
              (if _%$e118750%_
                  _%$e118750%_
                  (if (gx#identifier? _%stx118745%_)
                      (let ((_%id118754%_
                             (gx#stx-unwrap__% _%stx118745%_ _%marks118748%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id118754%_ '1 '#f '#f)
                         (let ((_%$e118756%_
                                (##unchecked-structure-ref
                                 _%id118754%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e118756%_ _%$e118756%_ _%src118746%_))
                         _%ctx118747%_
                         (##unchecked-structure-ref _%id118754%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx118745%_)
                       (let ((_%$e118760%_ (gx#stx-source _%stx118745%_)))
                         (if _%$e118760%_ _%$e118760%_ _%src118746%_))
                       _%ctx118747%_
                       (reverse _%marks118748%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx118745%_
             _%src118746%_
             _%ctx118747%_
             (reverse _%marks118748%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx118766%_)
        (let* ((_%src118768%_ '#f)
               (_%ctx118770%_ (gx#current-expander-context))
               (_%marks118772%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118766%_
           _%src118768%_
           _%ctx118770%_
           _%marks118772%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx118774%_ _%src118775%_)
        (let* ((_%ctx118777%_ (gx#current-expander-context))
               (_%marks118779%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118774%_
           _%src118775%_
           _%ctx118777%_
           _%marks118779%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx118781%_ _%src118782%_ _%ctx118783%_)
        (let ((_%marks118785%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118781%_
           _%src118782%_
           _%ctx118783%_
           _%marks118785%_))))
    (define gx#core-quote-syntax
      (lambda _g121777_
        (let ((_g121776_ (##length _g121777_)))
          (cond ((##fx= _g121776_ 1) (apply gx#core-quote-syntax__0 _g121777_))
                ((##fx= _g121776_ 2) (apply gx#core-quote-syntax__1 _g121777_))
                ((##fx= _g121776_ 3) (apply gx#core-quote-syntax__2 _g121777_))
                ((##fx= _g121776_ 4) (apply gx#core-quote-syntax__% _g121777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g121777_))))))
    (define gx#core-cons
      (lambda (_%hd118741%_ _%tl118742%_)
        (cons (gx#core-quote-syntax__0 _%hd118741%_) _%tl118742%_)))
    (define gx#core-list
      (lambda (_%hd118738%_ . _%rest118739%_)
        (cons (gx#core-quote-syntax__0 _%hd118738%_) _%rest118739%_)))
    (define gx#core-cons*
      (lambda (_%hd118735%_ . _%rest118736%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd118735%_) _%rest118736%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path118704%_ _%rel118705%_)
        (let ((_%path118722%_ (gx#stx-e _%stx-path118704%_))
              (_%reldir118723%_
               (let _%lp118707%_ ((_%relsrc118709%_
                                   (let ((_%$e118719%_
                                          (gx#stx-source _%stx-path118704%_)))
                                     (if _%$e118719%_
                                         _%$e118719%_
                                         _%rel118705%_))))
                 (if (##structure-instance-of? _%relsrc118709%_ 'gerbil#AST::t)
                     (_%lp118707%_
                      (let ((_%$e118712%_ (gx#stx-source _%relsrc118709%_)))
                        (if _%$e118712%_
                            _%$e118712%_
                            (gx#stx-e _%relsrc118709%_))))
                     (if (source-location-path? _%relsrc118709%_)
                         (path-directory
                          (source-location-path _%relsrc118709%_))
                         (if (string? _%relsrc118709%_)
                             (path-directory _%relsrc118709%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path118722%_ (path-normalize _%reldir118723%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path118728%_)
        (let ((_%rel118730%_ '#f))
          (gx#core-resolve-path__% _%stx-path118728%_ _%rel118730%_))))
    (define gx#core-resolve-path
      (lambda _g121779_
        (let ((_g121778_ (##length _g121779_)))
          (cond ((##fx= _g121778_ 1) (apply gx#core-resolve-path__0 _g121779_))
                ((##fx= _g121778_ 2) (apply gx#core-resolve-path__% _g121779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g121779_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr118660%_ _%ctx118661%_)
        (let* ((_%repr118662118669%_ _%repr118660%_)
               (_%E118664118673%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr118662118669%_
                         '([phi . subs]))
                  '#!void))
               (_%K118665118681%_
                (lambda (_%subs118676%_ _%phi118677%_)
                  (let ((_%subst118679%_
                         (if (null? _%subs118676%_)
                             '#f
                             (list->hash-table-eq _%subs118676%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst118679%_
                     _%ctx118661%_
                     _%phi118677%_
                     '#f)))))
          (if (pair? _%repr118662118669%_)
              (let ((_%hd118666118684%_ (##car _%repr118662118669%_))
                    (_%tl118667118686%_ (##cdr _%repr118662118669%_)))
                (let* ((_%phi118689%_ _%hd118666118684%_)
                       (_%subs118691%_ _%tl118667118686%_))
                  (_%K118665118681%_ _%subs118691%_ _%phi118689%_)))
              (_%E118664118673%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr118696%_)
        (let ((_%ctx118698%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr118696%_ _%ctx118698%_))))
    (define gx#core-deserialize-mark
      (lambda _g121781_
        (let ((_g121780_ (##length _g121781_)))
          (cond ((##fx= _g121780_ 1)
                 (apply gx#core-deserialize-mark__0 _g121781_))
                ((##fx= _g121780_ 2)
                 (apply gx#core-deserialize-mark__% _g121781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g121781_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx118657%_)
        (gx#stx-rewrap _%stx118657%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx118655%_)
        (gx#stx-unwrap__% _%stx118655%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx118625%_)
        (let* ((_%g118626118634%_ (gx#current-expander-marks))
               (_%else118628118642%_ (lambda () _%stx118625%_))
               (_%K118630118647%_
                (lambda (_%hd118645%_)
                  (gx#stx-apply-mark _%stx118625%_ _%hd118645%_))))
          (if (pair? _%g118626118634%_)
              (let* ((_%hd118631118650%_ (##car _%g118626118634%_))
                     (_%hd118653%_ _%hd118631118650%_))
                (_%K118630118647%_ _%hd118653%_))
              (_%else118628118642%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx118610%_ _%E118611%_)
        (let ((_%bind118613%_ (gx#resolve-identifier__0 _%stx118610%_)))
          (if (##structure-direct-instance-of?
               _%bind118613%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind118613%_ '4 '#f '#f)
              (_%E118611%_ _%stx118610%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx118618%_)
        (let ((_%E118620%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx118618%_ _%E118620%_))))
    (define gx#syntax-local-e
      (lambda _g121783_
        (let ((_g121782_ (##length _g121783_)))
          (cond ((##fx= _g121782_ 1) (apply gx#syntax-local-e__0 _g121783_))
                ((##fx= _g121782_ 2) (apply gx#syntax-local-e__% _g121783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g121783_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx118594%_ _%E118595%_)
        (let ((_%e118597%_ (gx#syntax-local-e__% _%stx118594%_ _%E118595%_)))
          (if (##structure-instance-of? _%e118597%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e118597%_ '1 '#f '#f)
              _%e118597%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx118602%_)
        (let ((_%E118604%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx118602%_ _%E118604%_))))
    (define gx#syntax-local-value
      (lambda _g121785_
        (let ((_g121784_ (##length _g121785_)))
          (cond ((##fx= _g121784_ 1)
                 (apply gx#syntax-local-value__0 _g121785_))
                ((##fx= _g121784_ 2)
                 (apply gx#syntax-local-value__% _g121785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g121785_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx118591%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx118591%_)))))
