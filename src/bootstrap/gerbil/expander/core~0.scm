(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712697255)
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
      (lambda _%$args117448%_
        (apply make-instance gx#expander-context::t _%$args117448%_)))
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
      (lambda _%$args117445%_
        (apply make-instance gx#root-context::t _%$args117445%_)))
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
      (lambda _%$args117442%_
        (apply make-instance gx#phi-context::t _%$args117442%_)))
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
      (lambda _%$args117439%_
        (apply make-instance gx#top-context::t _%$args117439%_)))
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
      (lambda _%$args117436%_
        (apply make-instance gx#module-context::t _%$args117436%_)))
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
      (lambda _%$args117433%_
        (apply make-instance gx#prelude-context::t _%$args117433%_)))
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
      (lambda _%$args117430%_
        (apply make-instance gx#local-context::t _%$args117430%_)))
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
      (lambda (_%self117403%_ _%id117404%_ _%super117405%_)
        (let ((_%self117408%_ _%self117403%_))
          (if (##fx< '3 (##structure-length _%self117408%_))
              (begin
                (##unchecked-structure-set!
                 _%self117408%_
                 _%id117404%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117408%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117408%_
                 _%super117405%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self117408%_
                     '3
                     (##vector-length _%self117408%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self117421%_ _%id117422%_)
        (let ((_%super117424%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self117421%_
           _%id117422%_
           _%super117424%_))))
    (define gx#phi-context:::init!
      (lambda _g117491_
        (let ((_g117490_ (##length _g117491_)))
          (cond ((##fx= _g117490_ 2)
                 (apply gx#phi-context:::init!__0 _g117491_))
                ((##fx= _g117490_ 3)
                 (apply gx#phi-context:::init!__% _g117491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g117491_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117256%_ _%super117257%_)
        (let ((_%self117260%_ _%self117256%_))
          (if (##fx< '3 (##structure-length _%self117260%_))
              (begin
                (##unchecked-structure-set!
                 _%self117260%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117260%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117260%_
                 _%super117257%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self117260%_
                     '3
                     (##vector-length _%self117260%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self117273%_)
        (let ((_%super117275%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self117273%_ _%super117275%_))))
    (define gx#local-context:::init!
      (lambda _g117493_
        (let ((_g117492_ (##length _g117493_)))
          (cond ((##fx= _g117492_ 1)
                 (apply gx#local-context:::init!__0 _g117493_))
                ((##fx= _g117492_ 2)
                 (apply gx#local-context:::init!__% _g117493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g117493_))))))
    (__bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
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
      (lambda _%$args117130%_
        (apply make-instance gx#binding::t _%$args117130%_)))
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
      (lambda _%$args117127%_
        (apply make-instance gx#runtime-binding::t _%$args117127%_)))
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
      (lambda _%$args117124%_
        (apply make-instance gx#local-binding::t _%$args117124%_)))
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
      (lambda _%$args117121%_
        (apply make-instance gx#top-binding::t _%$args117121%_)))
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
      (lambda _%$args117118%_
        (apply make-instance gx#module-binding::t _%$args117118%_)))
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
      (lambda _%$args117115%_
        (apply make-instance gx#extern-binding::t _%$args117115%_)))
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
      (lambda _%$args117112%_
        (apply make-instance gx#syntax-binding::t _%$args117112%_)))
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
      (lambda _%$args117109%_
        (apply make-instance gx#import-binding::t _%$args117109%_)))
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
      (lambda _%$args117106%_
        (apply make-instance gx#alias-binding::t _%$args117106%_)))
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
      (lambda _%$args117103%_
        (apply make-instance gx#expander::t _%$args117103%_)))
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
      (lambda _%$args117100%_
        (apply make-instance gx#core-expander::t _%$args117100%_)))
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
      (lambda _%$args117097%_
        (apply make-instance gx#expression-form::t _%$args117097%_)))
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
      (lambda _%$args117094%_
        (apply make-instance gx#special-form::t _%$args117094%_)))
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
      (lambda _%$args117091%_
        (apply make-instance gx#definition-form::t _%$args117091%_)))
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
      (lambda _%$args117088%_
        (apply make-instance gx#top-special-form::t _%$args117088%_)))
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
      (lambda _%$args117085%_
        (apply make-instance gx#module-special-form::t _%$args117085%_)))
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
      (lambda _%$args117082%_
        (apply make-instance gx#feature-expander::t _%$args117082%_)))
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
      (lambda _%$args117079%_
        (apply make-instance gx#private-feature-expander::t _%$args117079%_)))
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
      (lambda _%$args117076%_
        (apply make-instance gx#reserved-expander::t _%$args117076%_)))
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
      (lambda _%$args117073%_
        (apply make-instance gx#macro-expander::t _%$args117073%_)))
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
      (lambda _%$args117070%_
        (apply make-instance gx#rename-macro-expander::t _%$args117070%_)))
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
      (lambda _%$args117067%_
        (apply make-instance gx#user-expander::t _%$args117067%_)))
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
      (lambda _%$args117064%_
        (apply make-instance gx#expander-mark::t _%$args117064%_)))
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
      (lambda (_%ctx117048%_
               _%message117049%_
               _%stx117050%_
               .
               _%details117051%_)
        (let ((_%ctx117062%_
               (let ((_%$e117053%_ _%ctx117048%_))
                 (if _%$e117053%_
                     _%$e117053%_
                     (let ((_%$e117056%_ (gx#core-context-top__0)))
                       (if _%$e117056%_
                           ((lambda (_%ctx117059%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117059%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117056%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message117049%_
                  (cons _%stx117050%_ _%details117051%_)
                  _%ctx117062%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117035%_ _%expression?117036%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117035%_ _%expression?117036%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117041%_)
        (let ((_%expression?117043%_ '#f))
          (gx#eval-syntax__% _%stx117041%_ _%expression?117043%_))))
    (define gx#eval-syntax
      (lambda _g117495_
        (let ((_g117494_ (##length _g117495_)))
          (cond ((##fx= _g117494_ 1) (apply gx#eval-syntax__0 _g117495_))
                ((##fx= _g117494_ 2) (apply gx#eval-syntax__% _g117495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g117495_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117032%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117032%_))))
    (define gx#core-expand__%
      (lambda (_%stx117019%_ _%expression?117020%_)
        (if _%expression?117020%_
            (gx#core-expand-expression _%stx117019%_)
            (gx#core-expand-top _%stx117019%_))))
    (define gx#core-expand__0
      (lambda (_%stx117025%_)
        (let ((_%expression?117027%_ '#f))
          (gx#core-expand__% _%stx117025%_ _%expression?117027%_))))
    (define gx#core-expand
      (lambda _g117497_
        (let ((_g117496_ (##length _g117497_)))
          (cond ((##fx= _g117496_ 1) (apply gx#core-expand__0 _g117497_))
                ((##fx= _g117496_ 2) (apply gx#core-expand__% _g117497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g117497_))))))
    (define gx#core-expand-top
      (lambda (_%stx116986%_)
        (let* ((_%stx116988%_ (gx#core-expand*__0 _%stx116986%_))
               (_%e116989116996%_ _%stx116988%_)
               (_%E116991117000%_
                (lambda () (gx#core-expand-expression _%stx116988%_)))
               (_%E116990117014%_
                (lambda ()
                  (if (gx#stx-pair? _%e116989116996%_)
                      (let ((_%e116992117004%_
                             (gx#syntax-e _%e116989116996%_)))
                        (let ((_%hd116993117007%_ (##car _%e116992117004%_))
                              (_%tl116994117009%_ (##cdr _%e116992117004%_)))
                          (let ((_%form117012%_ _%hd116993117007%_))
                            (if (gx#core-bound-identifier?__0 _%form117012%_)
                                _%stx116988%_
                                (_%E116991117000%_)))))
                      (_%E116991117000%_)))))
          (_%E116990117014%_))))
    (define gx#core-expand-expression
      (lambda (_%stx116918%_)
        (letrec ((_%sealed-expression?116920%_
                  (lambda (_%hd116956%_)
                    (if (gx#sealed-syntax? _%hd116956%_)
                        (let* ((_%e116957116964%_ _%hd116956%_)
                               (_%E116959116968%_ (lambda () '#f))
                               (_%E116958116982%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e116957116964%_)
                                      (let ((_%e116960116972%_
                                             (gx#syntax-e _%e116957116964%_)))
                                        (let ((_%hd116961116975%_
                                               (##car _%e116960116972%_))
                                              (_%tl116962116977%_
                                               (##cdr _%e116960116972%_)))
                                          (let ((_%form116980%_
                                                 _%hd116961116975%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form116980%_
                                                 gx#expression-form-binding?)
                                                (_%E116959116968%_)))))
                                      (_%E116959116968%_)))))
                          (_%E116958116982%_))
                        '#f)))
                 (_%illegal-expression116921%_
                  (lambda (_%hd116953%_ . _%_116954%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx116918%_
                     _%hd116953%_)))
                 (_%expand-e116922%_
                  (lambda (_%form116945%_ _%hd116946%_)
                    (let ((_%bind116948%_
                           (if (##structure-instance-of?
                                _%form116945%_
                                'gx#binding::t)
                               _%form116945%_
                               (gx#resolve-identifier__0 _%form116945%_))))
                      (if (gx#core-expander-binding? _%bind116948%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind116948%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd116946%_
                            (gx#stx-source _%stx116918%_)))
                          (if (##structure-direct-instance-of?
                               _%bind116948%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind116948%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd116946%_
                                 (gx#stx-source _%stx116918%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx116918%_
                               _%form116945%_)))))))
          (let ((_%hd116924%_ (gx#core-expand-head _%stx116918%_)))
            (if (_%sealed-expression?116920%_ _%hd116924%_)
                _%hd116924%_
                (if (gx#stx-pair? _%hd116924%_)
                    (let* ((_%form116928%_ (gx#stx-car _%hd116924%_))
                           (_%bind116930%_
                            (if (gx#identifier? _%form116928%_)
                                (gx#resolve-identifier__0 _%form116928%_)
                                '#f)))
                      (if (or (not _%bind116930%_)
                              (not (gx#core-expander-binding? _%bind116930%_)))
                          (_%expand-e116922%_
                           '%%app
                           (cons '%%app _%hd116924%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind116930%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd116924%_
                               _%illegal-expression116921%_)
                              (if (gx#expression-form-binding? _%bind116930%_)
                                  (_%expand-e116922%_
                                   _%bind116930%_
                                   _%hd116924%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind116930%_)
                                      (gx#core-expand-expression
                                       (_%expand-e116922%_
                                        _%bind116930%_
                                        _%hd116924%_))
                                      (_%illegal-expression116921%_
                                       _%hd116924%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd116924%_)
                        (_%illegal-expression116921%_ _%hd116924%_)
                        (if (gx#identifier? _%hd116924%_)
                            (_%expand-e116922%_
                             '%%ref
                             (cons '%%ref (cons _%hd116924%_ '())))
                            (if (gx#stx-datum? _%hd116924%_)
                                (_%expand-e116922%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd116924%_ '())))
                                (_%illegal-expression116921%_
                                 _%hd116924%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx116913%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx116916%_ (gx#core-expand-expression _%stx116913%_)))
             (values _%stx116916%_ (gx#eval-syntax* _%stx116916%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx116894%_ _%stop?116895%_)
        (let _%lp116897%_ ((_%stx116899%_ _%stx116894%_))
          (if (_%stop?116895%_ _%stx116899%_)
              _%stx116899%_
              (let ((_%rstx116901%_ (gx#core-expand1 _%stx116899%_)))
                (if (eq? _%stx116899%_ _%rstx116901%_)
                    _%stx116899%_
                    (_%lp116897%_ _%rstx116901%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx116906%_)
        (let ((_%stop?116908%_ false))
          (gx#core-expand*__% _%stx116906%_ _%stop?116908%_))))
    (define gx#core-expand*
      (lambda _g117499_
        (let ((_g117498_ (##length _g117499_)))
          (cond ((##fx= _g117498_ 1) (apply gx#core-expand*__0 _g117499_))
                ((##fx= _g117498_ 2) (apply gx#core-expand*__% _g117499_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g117499_))))))
    (define gx#core-expand1
      (lambda (_%stx116846%_)
        (letrec ((_%step116848%_
                  (lambda (_%hd116885%_)
                    (let ((_%bind116887%_
                           (gx#resolve-identifier__0 _%hd116885%_)))
                      (if (##structure-instance-of?
                           _%bind116887%_
                           'gx#runtime-binding::t)
                          _%stx116846%_
                          (if (##structure-direct-instance-of?
                               _%bind116887%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind116887%_
                                '4
                                '#f
                                '#f)
                               _%stx116846%_)
                              (if (not _%bind116887%_)
                                  _%stx116846%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx116846%_))))))))
          (let* ((_%e116849116857%_ _%stx116846%_)
                 (_%E116855116861%_ (lambda () _%stx116846%_))
                 (_%E116851116867%_
                  (lambda ()
                    (let ((_%hd116865%_ _%e116849116857%_))
                      (if (gx#identifier? _%hd116865%_)
                          (_%step116848%_ _%hd116865%_)
                          (_%E116855116861%_)))))
                 (_%E116850116881%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116849116857%_)
                        (let ((_%e116852116871%_
                               (gx#syntax-e _%e116849116857%_)))
                          (let ((_%hd116853116874%_ (##car _%e116852116871%_))
                                (_%tl116854116876%_ (##cdr _%e116852116871%_)))
                            (let ((_%hd116879%_ _%hd116853116874%_))
                              (if (gx#identifier? _%hd116879%_)
                                  (_%step116848%_ _%hd116879%_)
                                  (_%E116851116867%_)))))
                        (_%E116851116867%_)))))
            (_%E116850116881%_)))))
    (define gx#core-expand-head
      (lambda (_%stx116812%_)
        (letrec ((_%stop?116814%_
                  (lambda (_%stx116816%_)
                    (let* ((_%e116817116824%_ _%stx116816%_)
                           (_%E116819116828%_ (lambda () '#f))
                           (_%E116818116842%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116817116824%_)
                                  (let ((_%e116820116832%_
                                         (gx#syntax-e _%e116817116824%_)))
                                    (let ((_%hd116821116835%_
                                           (##car _%e116820116832%_))
                                          (_%tl116822116837%_
                                           (##cdr _%e116820116832%_)))
                                      (let ((_%hd116840%_ _%hd116821116835%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd116840%_)
                                            (_%E116819116828%_)))))
                                  (_%E116819116828%_)))))
                      (_%E116818116842%_)))))
          (gx#core-expand*__% _%stx116812%_ _%stop?116814%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx116618%_
               _%expand-special116619%_
               _%begin-form116620%_
               _%expand-e116621%_)
        (letrec ((_%expand-splice116623%_
                  (lambda (_%hd116786%_
                           _%body116787%_
                           _%rest116788%_
                           _%r116789%_)
                    (if (gx#stx-list? _%body116787%_)
                        (_%K116627%_
                         (gx#stx-foldr cons _%rest116788%_ _%body116787%_)
                         _%r116789%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx116618%_
                         _%hd116786%_))))
                 (_%expand-cond-expand116624%_
                  (lambda (_%hd116782%_ _%rest116783%_ _%r116784%_)
                    (_%K116627%_
                     (cons (gx#core-expand-cond-expand% _%hd116782%_)
                           _%rest116783%_)
                     _%r116784%_)))
                 (_%expand-include116625%_
                  (lambda (_%hd116731%_ _%rest116732%_ _%r116733%_)
                    (let* ((_%e116734116744%_ _%hd116731%_)
                           (_%E116736116748%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116734116744%_)))
                           (_%E116735116778%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116734116744%_)
                                  (let ((_%e116737116752%_
                                         (gx#syntax-e _%e116734116744%_)))
                                    (let ((_%hd116738116755%_
                                           (##car _%e116737116752%_))
                                          (_%tl116739116757%_
                                           (##cdr _%e116737116752%_)))
                                      (if (gx#stx-pair? _%tl116739116757%_)
                                          (let ((_%e116740116760%_
                                                 (gx#syntax-e
                                                  _%tl116739116757%_)))
                                            (let ((_%hd116741116763%_
                                                   (##car _%e116740116760%_))
                                                  (_%tl116742116765%_
                                                   (##cdr _%e116740116760%_)))
                                              (let ((_%path116768%_
                                                     _%hd116741116763%_))
                                                (if (gx#stx-null?
                                                     _%tl116742116765%_)
                                                    (if (gx#stx-string?
                                                         _%path116768%_)
                                                        (let* ((_%rpath116770%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path116768%_
                         (gx#stx-source _%hd116731%_)))
                       (_%block116772%_
                        (gx#core-expand-include%__%
                         _%hd116731%_
                         _%rpath116770%_))
                       (_%rbody116775%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block116772%_
                            _%expand-special116619%_
                            '#f
                            _%expand-e116621%_))
                         gx#current-expander-path
                         (cons _%rpath116770%_ (gx#current-expander-path)))))
                  (_%K116627%_
                   _%rest116732%_
                   (__foldr1 cons _%r116733%_ _%rbody116775%_)))
                (_%E116736116748%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E116736116748%_)))))
                                          (_%E116736116748%_))))
                                  (_%E116736116748%_)))))
                      (_%E116735116778%_))))
                 (_%expand-expression116626%_
                  (lambda (_%hd116727%_ _%rest116728%_ _%r116729%_)
                    (_%K116627%_
                     _%rest116728%_
                     (cons (_%expand-e116621%_ _%hd116727%_) _%r116729%_))))
                 (_%K116627%_
                  (lambda (_%rest116657%_ _%r116658%_)
                    (let* ((_%e116659116666%_ _%rest116657%_)
                           (_%E116661116670%_
                            (lambda ()
                              (if _%begin-form116620%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form116620%_
                                    (reverse _%r116658%_))
                                   (gx#stx-source _%stx116618%_))
                                  _%r116658%_)))
                           (_%E116660116723%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116659116666%_)
                                  (let ((_%e116662116674%_
                                         (gx#syntax-e _%e116659116666%_)))
                                    (let ((_%hd116663116677%_
                                           (##car _%e116662116674%_))
                                          (_%tl116664116679%_
                                           (##cdr _%e116662116674%_)))
                                      (let* ((_%hd116682%_ _%hd116663116677%_)
                                             (_%rest116684%_
                                              _%tl116664116679%_))
                                        (if '#t
                                            (let* ((_%hd116686%_
                                                    (gx#core-expand-head
                                                     _%hd116682%_))
                                                   (_%e116687116694%_
                                                    _%hd116686%_)
                                                   (_%E116689116698%_
                                                    (lambda ()
                                                      (_%expand-expression116626%_
                                                       _%hd116686%_
                                                       _%rest116684%_
                                                       _%r116658%_)))
                                                   (_%E116688116719%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116687116694%_)
                                                          (let ((_%e116690116702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116687116694%_)))
                    (let ((_%hd116691116705%_ (##car _%e116690116702%_))
                          (_%tl116692116707%_ (##cdr _%e116690116702%_)))
                      (let* ((_%form116710%_ _%hd116691116705%_)
                             (_%body116712%_ _%tl116692116707%_))
                        (if '#t
                            (let ((_%bind116714%_
                                   (if (gx#identifier? _%form116710%_)
                                       (gx#resolve-identifier__0
                                        _%form116710%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind116714%_)
                                  (let ((_%$e116716%_
                                         (##unchecked-structure-ref
                                          _%bind116714%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e116716%_)
                                        (_%expand-splice116623%_
                                         _%hd116686%_
                                         _%body116712%_
                                         _%rest116684%_
                                         _%r116658%_)
                                        (if (eq? '%#cond-expand _%$e116716%_)
                                            (_%expand-cond-expand116624%_
                                             _%hd116686%_
                                             _%rest116684%_
                                             _%r116658%_)
                                            (if (eq? '%#include _%$e116716%_)
                                                (_%expand-include116625%_
                                                 _%hd116686%_
                                                 _%rest116684%_
                                                 _%r116658%_)
                                                (_%expand-special116619%_
                                                 _%hd116686%_
                                                 _%K116627%_
                                                 _%rest116684%_
                                                 _%r116658%_)))))
                                  (_%expand-expression116626%_
                                   _%hd116686%_
                                   _%rest116684%_
                                   _%r116658%_)))
                            (_%E116689116698%_)))))
                  (_%E116689116698%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116688116719%_))
                                            (_%E116661116670%_)))))
                                  (_%E116661116670%_)))))
                      (_%E116660116723%_)))))
          (let* ((_%e116628116635%_ _%stx116618%_)
                 (_%E116630116639%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116628116635%_)))
                 (_%E116629116653%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116628116635%_)
                        (let ((_%e116631116643%_
                               (gx#syntax-e _%e116628116635%_)))
                          (let ((_%hd116632116646%_ (##car _%e116631116643%_))
                                (_%tl116633116648%_ (##cdr _%e116631116643%_)))
                            (let ((_%body116651%_ _%tl116633116648%_))
                              (if (gx#stx-list? _%body116651%_)
                                  (_%K116627%_ _%body116651%_ '())
                                  (_%E116630116639%_)))))
                        (_%E116630116639%_)))))
            (_%E116629116653%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx116794%_ _%expand-special116795%_)
        (let* ((_%begin-form116797%_ '%#begin)
               (_%expand-e116799%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx116794%_
           _%expand-special116795%_
           _%begin-form116797%_
           _%expand-e116799%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx116801%_ _%expand-special116802%_ _%begin-form116803%_)
        (let ((_%expand-e116805%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx116801%_
           _%expand-special116802%_
           _%begin-form116803%_
           _%expand-e116805%_))))
    (define gx#core-expand-block
      (lambda _g117501_
        (let ((_g117500_ (##length _g117501_)))
          (cond ((##fx= _g117500_ 2) (apply gx#core-expand-block__0 _g117501_))
                ((##fx= _g117500_ 3) (apply gx#core-expand-block__1 _g117501_))
                ((##fx= _g117500_ 4) (apply gx#core-expand-block__% _g117501_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g117501_))))))
    (define gx#core-expand-block*
      (lambda (_%stx116566%_ _%expand-special116567%_)
        (let* ((_%g116568116579%_
                (gx#core-expand-block__1
                 _%stx116566%_
                 _%expand-special116567%_
                 '#f))
               (_%E116572116583%_
                (lambda ()
                  (error '"No clause matching"
                         _%g116568116579%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K116577116614%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx116566%_)))
                (_%K116574116600%_ (lambda (_%expr116598%_) _%expr116598%_))
                (_%K116573116589%_
                 (lambda (_%body116587%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body116587%_))
                    (gx#stx-source _%stx116566%_)))))
            (let ((_%try-match116570116610%_
                   (lambda ()
                     (if (##pair? _%g116568116579%_)
                         (let ((_%tl116576116605%_ (##cdr _%g116568116579%_))
                               (_%hd116575116603%_ (##car _%g116568116579%_)))
                           (if (##null? _%tl116576116605%_)
                               (let ((_%expr116608%_ _%hd116575116603%_))
                                 (_%K116574116600%_ _%expr116608%_))
                               (let ((_%body116592%_ _%g116568116579%_))
                                 (_%K116573116589%_ _%body116592%_))))
                         (let ((_%body116592%_ _%g116568116579%_))
                           (_%K116573116589%_ _%body116592%_))))))
              (if (##null? _%g116568116579%_)
                  (_%K116577116614%_)
                  (_%try-match116570116610%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx116391%_)
        (letrec ((_%satisfied?116393%_
                  (lambda (_%condition116494%_)
                    (let* ((_%e116495116510%_ _%condition116494%_)
                           (_%E116505116514%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116495116510%_)))
                           (_%E116498116533%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116495116510%_)
                                  (let ((_%e116506116518%_
                                         (gx#syntax-e _%e116495116510%_)))
                                    (let ((_%hd116507116521%_
                                           (##car _%e116506116518%_))
                                          (_%tl116508116523%_
                                           (##cdr _%e116506116518%_)))
                                      (let* ((_%combinator116526%_
                                              _%hd116507116521%_)
                                             (_%body116528%_
                                              _%tl116508116523%_))
                                        (if (gx#stx-list? _%body116528%_)
                                            (let ((_%$e116530%_
                                                   (gx#stx-e
                                                    _%combinator116526%_)))
                                              (if (eq? 'not _%$e116530%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?116393%_
                                                        _%body116528%_))
                                                  (if (eq? 'and _%$e116530%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?116393%_
                                                       _%body116528%_)
                                                      (if (eq? 'or
                                                               _%$e116530%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?116393%_
                                                           _%body116528%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e116530%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body116528%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx116391%_
                       _%combinator116526%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E116505116514%_)))))
                                  (_%E116505116514%_))))
                           (_%E116497116556%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116495116510%_)
                                  (let ((_%e116499116537%_
                                         (gx#syntax-e _%e116495116510%_)))
                                    (let ((_%hd116500116540%_
                                           (##car _%e116499116537%_))
                                          (_%tl116501116542%_
                                           (##cdr _%e116499116537%_)))
                                      (if (and (gx#identifier?
                                                _%hd116500116540%_)
                                               (gx#core-identifier=?
                                                _%hd116500116540%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl116501116542%_)
                                              (let ((_%e116502116545%_
                                                     (gx#syntax-e
                                                      _%tl116501116542%_)))
                                                (let ((_%hd116503116548%_
                                                       (##car _%e116502116545%_))
                                                      (_%tl116504116550%_
                                                       (##cdr _%e116502116545%_)))
                                                  (let ((_%expr116553%_
                                                         _%hd116503116548%_))
                                                    (if (gx#stx-null?
                                                         _%tl116504116550%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr116553%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E116498116533%_))
                (_%E116498116533%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116498116533%_))
                                          (_%E116498116533%_))))
                                  (_%E116498116533%_))))
                           (_%E116496116562%_
                            (lambda ()
                              (let ((_%id116560%_ _%e116495116510%_))
                                (if (gx#identifier? _%id116560%_)
                                    (gx#core-bound-identifier?__%
                                     _%id116560%_
                                     gx#feature-binding?)
                                    (_%E116497116556%_))))))
                      (_%E116496116562%_))))
                 (_%loop116394%_
                  (lambda (_%rest116424%_)
                    (let* ((_%e116425116433%_ _%rest116424%_)
                           (_%E116431116437%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116425116433%_)))
                           (_%E116427116441%_
                            (lambda ()
                              (if (gx#stx-null? _%e116425116433%_)
                                  (if '#t '() (_%E116431116437%_))
                                  (_%E116431116437%_))))
                           (_%E116426116490%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116425116433%_)
                                  (let ((_%e116428116445%_
                                         (gx#syntax-e _%e116425116433%_)))
                                    (let ((_%hd116429116448%_
                                           (##car _%e116428116445%_))
                                          (_%tl116430116450%_
                                           (##cdr _%e116428116445%_)))
                                      (let* ((_%hd116453%_ _%hd116429116448%_)
                                             (_%rest116455%_
                                              _%tl116430116450%_))
                                        (if '#t
                                            (let* ((_%e116456116463%_
                                                    _%hd116453%_)
                                                   (_%E116458116467%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e116456116463%_)))
                                                   (_%E116457116486%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116456116463%_)
                                                          (let ((_%e116459116471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116456116463%_)))
                    (let ((_%hd116460116474%_ (##car _%e116459116471%_))
                          (_%tl116461116476%_ (##cdr _%e116459116471%_)))
                      (let* ((_%condition116479%_ _%hd116460116474%_)
                             (_%body116481%_ _%tl116461116476%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition116479%_ 'else)
                                (if (gx#stx-null? _%rest116455%_)
                                    _%body116481%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _%stx116391%_
                                     _%hd116453%_))
                                (if (_%satisfied?116393%_ _%condition116479%_)
                                    _%body116481%_
                                    (_%loop116394%_ _%rest116455%_)))
                            (_%E116458116467%_)))))
                  (_%E116458116467%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116457116486%_))
                                            (_%E116427116441%_)))))
                                  (_%E116427116441%_)))))
                      (_%E116426116490%_)))))
          (let* ((_%e116395116402%_ _%stx116391%_)
                 (_%E116397116406%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116395116402%_)))
                 (_%E116396116420%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116395116402%_)
                        (let ((_%e116398116410%_
                               (gx#syntax-e _%e116395116402%_)))
                          (let ((_%hd116399116413%_ (##car _%e116398116410%_))
                                (_%tl116400116415%_ (##cdr _%e116398116410%_)))
                            (let ((_%clauses116418%_ _%tl116400116415%_))
                              (if (gx#stx-list? _%clauses116418%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop116394%_ _%clauses116418%_))
                                  (_%E116397116406%_)))))
                        (_%E116397116406%_)))))
            (_%E116396116420%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx116334%_ _%rpath116335%_)
        (let* ((_%e116336116346%_ _%stx116334%_)
               (_%E116338116350%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e116336116346%_)))
               (_%E116337116377%_
                (lambda ()
                  (if (gx#stx-pair? _%e116336116346%_)
                      (let ((_%e116339116354%_
                             (gx#syntax-e _%e116336116346%_)))
                        (let ((_%hd116340116357%_ (##car _%e116339116354%_))
                              (_%tl116341116359%_ (##cdr _%e116339116354%_)))
                          (if (gx#stx-pair? _%tl116341116359%_)
                              (let ((_%e116342116362%_
                                     (gx#syntax-e _%tl116341116359%_)))
                                (let ((_%hd116343116365%_
                                       (##car _%e116342116362%_))
                                      (_%tl116344116367%_
                                       (##cdr _%e116342116362%_)))
                                  (let ((_%path116370%_ _%hd116343116365%_))
                                    (if (gx#stx-null? _%tl116344116367%_)
                                        (if (gx#stx-string? _%path116370%_)
                                            (let ((_%rpath116375%_
                                                   (let ((_%$e116372%_
                                                          _%rpath116335%_))
                                                     (if _%$e116372%_
                                                         _%$e116372%_
                                                         (gx#core-resolve-path__%
                                                          _%path116370%_
                                                          (gx#stx-source
                                                           _%stx116334%_))))))
                                              (if (member _%rpath116375%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx116334%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath116375%_))
                                                    (gx#stx-source
                                                     _%stx116334%_)))))
                                            (_%E116338116350%_))
                                        (_%E116338116350%_)))))
                              (_%E116338116350%_))))
                      (_%E116338116350%_)))))
          (_%E116337116377%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx116384%_)
        (let ((_%rpath116386%_ '#f))
          (gx#core-expand-include%__% _%stx116384%_ _%rpath116386%_))))
    (define gx#core-expand-include%
      (lambda _g117503_
        (let ((_g117502_ (##length _g117503_)))
          (cond ((##fx= _g117502_ 1)
                 (apply gx#core-expand-include%__0 _g117503_))
                ((##fx= _g117502_ 2)
                 (apply gx#core-expand-include%__% _g117503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g117503_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K116300%_ _%stx116301%_ _%method116302%_)
        (if (procedure? _%K116300%_)
            (let ((_%$e116305%_ (gx#stx-source _%stx116301%_)))
              (if _%$e116305%_
                  ((lambda (_%g116307116309%_)
                     (gx#stx-wrap-source
                      (_%K116300%_ _%stx116301%_)
                      _%g116307116309%_))
                   _%$e116305%_)
                  (_%K116300%_ _%stx116301%_)))
            (let ((_%$e116313%_
                   (bound-method-ref _%K116300%_ _%method116302%_)))
              (if _%$e116313%_
                  ((lambda (_%g116315116317%_)
                     (gx#core-apply-expander__%
                      _%g116315116317%_
                      _%stx116301%_
                      _%method116302%_))
                   _%$e116313%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx116301%_
                   _%method116302%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K116324%_ _%stx116325%_)
        (let ((_%method116327%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K116324%_
           _%stx116325%_
           _%method116327%_))))
    (define gx#core-apply-expander
      (lambda _g117505_
        (let ((_g117504_ (##length _g117505_)))
          (cond ((##fx= _g117504_ 2)
                 (apply gx#core-apply-expander__0 _g117505_))
                ((##fx= _g117504_ 3)
                 (apply gx#core-apply-expander__% _g117505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g117505_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116285%_ _%stx116286%_)
        (let ((_%self116289%_ _%self116285%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx116286%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116127%_ _%stx116128%_)
        (let* ((_%self116131%_ _%self116127%_)
               (_%self116140116146%_ _%self116131%_)
               (_%E116142116150%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116140116146%_
                         '((macro-expander K)))
                  '#!void))
               (_%K116143116155%_
                (lambda (_%K116153%_)
                  (gx#core-apply-expander__0 _%K116153%_ _%stx116128%_))))
          (if '#t
              (let* ((_%e116144116158%_
                      (##unchecked-structure-ref
                       _%self116140116146%_
                       '1
                       '#f
                       '#f))
                     (_%K116161%_ _%e116144116158%_))
                (_%K116143116155%_ _%K116161%_))
              (_%E116142116150%_)))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self115969%_ _%stx115970%_)
        (let ((_%self115973%_ _%self115969%_))
          (if (gx#sealed-syntax? _%stx115970%_)
              _%stx115970%_
              (let* ((_%self115982115988%_ _%self115973%_)
                     (_%E115984115992%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self115982115988%_
                               '((core-expander K)))
                        '#!void))
                     (_%K115985115997%_
                      (lambda (_%K115995%_)
                        (gx#core-apply-expander__0
                         _%K115995%_
                         _%stx115970%_))))
                (if '#t
                    (let* ((_%e115986116000%_
                            (##unchecked-structure-ref
                             _%self115982115988%_
                             '1
                             '#f
                             '#f))
                           (_%K116003%_ _%e115986116000%_))
                      (_%K115985115997%_ _%K116003%_))
                    (_%E115984115992%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self115820%_ _%stx115821%_ _%top?115822%_)
        (let ((_%self115825%_ _%self115820%_))
          (if (_%top?115822%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self115825%_
               _%stx115821%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx115821%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self115838%_ _%stx115839%_)
        (let ((_%top?115841%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self115838%_
           _%stx115839%_
           _%top?115841%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g117507_
        (let ((_g117506_ (##length _g117507_)))
          (cond ((##fx= _g117506_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g117507_))
                ((##fx= _g117506_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g117507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g117507_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self115683%_ _%stx115684%_)
        (let ((_%self115687%_ _%self115683%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self115687%_
           _%stx115684%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self115497%_ _%stx115498%_)
        (let* ((_%self115501%_ _%self115497%_)
               (_%self115510115516%_ _%self115501%_)
               (_%E115512115520%_
                (lambda ()
                  (error '"No clause matching"
                         _%self115510115516%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K115513115553%_
                (lambda (_%id115523%_)
                  (let* ((_%e115524115531%_ _%stx115498%_)
                         (_%E115526115535%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e115524115531%_)))
                         (_%E115525115549%_
                          (lambda ()
                            (if (gx#stx-pair? _%e115524115531%_)
                                (let ((_%e115527115539%_
                                       (gx#syntax-e _%e115524115531%_)))
                                  (let ((_%hd115528115542%_
                                         (##car _%e115527115539%_))
                                        (_%tl115529115544%_
                                         (##cdr _%e115527115539%_)))
                                    (let ((_%body115547%_ _%tl115529115544%_))
                                      (if '#t
                                          (gx#core-cons
                                           _%id115523%_
                                           _%body115547%_)
                                          (_%E115526115535%_)))))
                                (_%E115526115535%_)))))
                    (_%E115525115549%_)))))
          (if '#t
              (let* ((_%e115514115556%_
                      (##unchecked-structure-ref
                       _%self115510115516%_
                       '1
                       '#f
                       '#f))
                     (_%id115559%_ _%e115514115556%_))
                (_%K115513115553%_ _%id115559%_))
              (_%E115512115520%_)))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self115323%_ _%stx115324%_ _%method115325%_)
        (let* ((_%self115326115334%_ _%self115323%_)
               (_%E115328115338%_
                (lambda ()
                  (error '"No clause matching"
                         _%self115326115334%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K115329115345%_
                (lambda (_%phi115341%_ _%ctx115342%_ _%K115343%_)
                  (gx#core-apply-user-macro
                   _%K115343%_
                   _%stx115324%_
                   _%ctx115342%_
                   _%phi115341%_
                   _%method115325%_))))
          (if (##structure-instance-of?
               _%self115326115334%_
               'gx#user-expander::t)
              (let* ((_%e115330115348%_
                      (##unchecked-structure-ref
                       _%self115326115334%_
                       '1
                       '#f
                       '#f))
                     (_%K115351%_ _%e115330115348%_)
                     (_%e115331115353%_
                      (##unchecked-structure-ref
                       _%self115326115334%_
                       '2
                       '#f
                       '#f))
                     (_%ctx115356%_ _%e115331115353%_)
                     (_%e115332115358%_
                      (##unchecked-structure-ref
                       _%self115326115334%_
                       '3
                       '#f
                       '#f))
                     (_%phi115361%_ _%e115332115358%_))
                (_%K115329115345%_ _%phi115361%_ _%ctx115356%_ _%K115351%_))
              (_%E115328115338%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self115366%_ _%stx115367%_)
        (let ((_%method115369%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self115366%_
           _%stx115367%_
           _%method115369%_))))
    (define gx#core-apply-user-expander
      (lambda _g117509_
        (let ((_g117508_ (##length _g117509_)))
          (cond ((##fx= _g117508_ 2)
                 (apply gx#core-apply-user-expander__0 _g117509_))
                ((##fx= _g117508_ 3)
                 (apply gx#core-apply-user-expander__% _g117509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g117509_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K115313%_
               _%stx115314%_
               _%ctx115315%_
               _%phi115316%_
               _%method115317%_)
        (let ((_%mark115319%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx115315%_
                _%phi115316%_
                _%stx115314%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K115313%_
               (gx#stx-apply-mark _%stx115314%_ _%mark115319%_)
               _%method115317%_)
              _%mark115319%_))
           gx#current-expander-marks
           (cons _%mark115319%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115161%_ _%phi115162%_ _%ctx115163%_)
        (let _%lp115165%_ ((_%bind115167%_
                            (gx#core-resolve-identifier__%
                             _%stx115161%_
                             _%phi115162%_
                             _%ctx115163%_)))
          (if (##structure-direct-instance-of?
               _%bind115167%_
               'gx#import-binding::t)
              (_%lp115165%_
               (##unchecked-structure-ref _%bind115167%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind115167%_
                   'gx#alias-binding::t)
                  (_%lp115165%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind115167%_ '4 '#f '#f)
                    _%phi115162%_
                    _%ctx115163%_))
                  _%bind115167%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115175%_)
        (let* ((_%phi115177%_ (gx#current-expander-phi))
               (_%ctx115179%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115175%_
           _%phi115177%_
           _%ctx115179%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115181%_ _%phi115182%_)
        (let ((_%ctx115184%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115181%_
           _%phi115182%_
           _%ctx115184%_))))
    (define gx#resolve-identifier
      (lambda _g117511_
        (let ((_g117510_ (##length _g117511_)))
          (cond ((##fx= _g117510_ 1)
                 (apply gx#resolve-identifier__0 _g117511_))
                ((##fx= _g117510_ 2)
                 (apply gx#resolve-identifier__1 _g117511_))
                ((##fx= _g117510_ 3)
                 (apply gx#resolve-identifier__% _g117511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g117511_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115116%_
               _%val115117%_
               _%rebind?115118%_
               _%phi115119%_
               _%ctx115120%_)
        (let ((_%rebind?115125%_
               (if (not _%rebind?115118%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?115118%_)
                       _%rebind?115118%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115116%_)
           _%val115117%_
           _%rebind?115125%_
           _%phi115119%_
           _%ctx115120%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115130%_ _%val115131%_)
        (let* ((_%rebind?115133%_ '#f)
               (_%phi115135%_ (gx#current-expander-phi))
               (_%ctx115137%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115130%_
           _%val115131%_
           _%rebind?115133%_
           _%phi115135%_
           _%ctx115137%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115139%_ _%val115140%_ _%rebind?115141%_)
        (let* ((_%phi115143%_ (gx#current-expander-phi))
               (_%ctx115145%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115139%_
           _%val115140%_
           _%rebind?115141%_
           _%phi115143%_
           _%ctx115145%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115147%_ _%val115148%_ _%rebind?115149%_ _%phi115150%_)
        (let ((_%ctx115152%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115147%_
           _%val115148%_
           _%rebind?115149%_
           _%phi115150%_
           _%ctx115152%_))))
    (define gx#bind-identifier!
      (lambda _g117513_
        (let ((_g117512_ (##length _g117513_)))
          (cond ((##fx= _g117512_ 2) (apply gx#bind-identifier!__0 _g117513_))
                ((##fx= _g117512_ 3) (apply gx#bind-identifier!__1 _g117513_))
                ((##fx= _g117512_ 4) (apply gx#bind-identifier!__2 _g117513_))
                ((##fx= _g117512_ 5) (apply gx#bind-identifier!__% _g117513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g117513_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115082%_ _%phi115083%_ _%ctx115084%_)
        (let _%lp115086%_ ((_%e115088%_ _%stx115082%_)
                           (_%marks115089%_ (gx#current-expander-marks)))
          (if (symbol? _%e115088%_)
              (gx#core-resolve-binding
               _%e115088%_
               _%phi115083%_
               _%phi115083%_
               _%ctx115084%_
               (reverse _%marks115089%_))
              (if (gx#identifier-quote? _%e115088%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e115088%_ '1 '#f '#f)
                   _%phi115083%_
                   '0
                   (##unchecked-structure-ref _%e115088%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e115088%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e115088%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e115088%_ '1 '#f '#f)
                       _%phi115083%_
                       _%phi115083%_
                       _%ctx115084%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e115088%_ '3 '#f '#f)
                        _%marks115089%_))
                      (if (##structure-direct-instance-of?
                           _%e115088%_
                           'gx#syntax-wrap::t)
                          (_%lp115086%_
                           (##unchecked-structure-ref _%e115088%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e115088%_ '3 '#f '#f)
                            _%marks115089%_))
                          (if (##structure-instance-of?
                               _%e115088%_
                               'gerbil#AST::t)
                              (_%lp115086%_
                               (##unchecked-structure-ref
                                _%e115088%_
                                '1
                                '#f
                                '#f)
                               _%marks115089%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx115082%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115100%_)
        (let* ((_%phi115102%_ (gx#current-expander-phi))
               (_%ctx115104%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115100%_
           _%phi115102%_
           _%ctx115104%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115106%_ _%phi115107%_)
        (let ((_%ctx115109%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115106%_
           _%phi115107%_
           _%ctx115109%_))))
    (define gx#core-resolve-identifier
      (lambda _g117515_
        (let ((_g117514_ (##length _g117515_)))
          (cond ((##fx= _g117514_ 1)
                 (apply gx#core-resolve-identifier__0 _g117515_))
                ((##fx= _g117514_ 2)
                 (apply gx#core-resolve-identifier__1 _g117515_))
                ((##fx= _g117514_ 3)
                 (apply gx#core-resolve-identifier__% _g117515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g117515_))))))
    (define gx#core-resolve-binding
      (lambda (_%id114992%_
               _%phi114993%_
               _%src-phi114994%_
               _%ctx114995%_
               _%marks114996%_)
        (letrec ((_%resolve114998%_
                  (lambda (_%ctx115066%_ _%src-phi115067%_ _%key115068%_)
                    (let _%lp115070%_ ((_%ctx115072%_
                                        (gx#core-context-shift
                                         _%ctx115066%_
                                         _%phi114993%_))
                                       (_%dphi115073%_
                                        (fx- _%phi114993%_ _%src-phi115067%_)))
                      (let ((_%$e115075%_
                             (gx#core-context-resolve
                              _%ctx115072%_
                              _%key115068%_)))
                        (if _%$e115075%_
                            (values _%$e115075%_)
                            (if (fxzero? _%dphi115073%_)
                                '#f
                                (if (fxpositive? _%dphi115073%_)
                                    (_%lp115070%_
                                     (gx#core-context-shift _%ctx115072%_ '-1)
                                     (##fx- _%dphi115073%_ '1))
                                    (_%lp115070%_
                                     (gx#core-context-shift _%ctx115072%_ '1)
                                     (##fx+ _%dphi115073%_ '1))))))))))
          (let _%lp115000%_ ((_%ctx115002%_ _%ctx114995%_)
                             (_%src-phi115003%_ _%src-phi114994%_)
                             (_%rest115004%_ _%marks114996%_))
            (let* ((_%rest115005115013%_ _%rest115004%_)
                   (_%else115007115021%_
                    (lambda ()
                      (_%resolve114998%_
                       _%ctx115002%_
                       _%src-phi115003%_
                       _%id114992%_)))
                   (_%K115009115054%_
                    (lambda (_%rest115024%_ _%hd115025%_)
                      (let* ((_%hd115026115032%_ _%hd115025%_)
                             (_%E115028115036%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115026115032%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115029115046%_
                              (lambda (_%subst115039%_)
                                (let ((_%$e115043%_
                                       (let ((_%key115041%_
                                              (if _%subst115039%_
                                                  (hash-get
                                                   _%subst115039%_
                                                   _%id114992%_)
                                                  '#f)))
                                         (if _%key115041%_
                                             (_%resolve114998%_
                                              _%ctx115002%_
                                              _%src-phi115003%_
                                              _%key115041%_)
                                             '#f))))
                                  (if _%$e115043%_
                                      _%$e115043%_
                                      (_%lp115000%_
                                       (##unchecked-structure-ref
                                        _%hd115025%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115025%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115024%_))))))
                        (if (##structure-instance-of?
                             _%hd115026115032%_
                             'gx#expander-mark::t)
                            (let* ((_%e115030115049%_
                                    (##unchecked-structure-ref
                                     _%hd115026115032%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115052%_ _%e115030115049%_))
                              (_%K115029115046%_ _%subst115052%_))
                            (_%E115028115036%_))))))
              (if (##pair? _%rest115005115013%_)
                  (let ((_%hd115010115057%_ (##car _%rest115005115013%_))
                        (_%tl115011115059%_ (##cdr _%rest115005115013%_)))
                    (let* ((_%hd115062%_ _%hd115010115057%_)
                           (_%rest115064%_ _%tl115011115059%_))
                      (_%K115009115054%_ _%rest115064%_ _%hd115062%_)))
                  (_%else115007115021%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key114862%_
               _%val114863%_
               _%rebind?114864%_
               _%phi114865%_
               _%ctx114866%_)
        (letrec ((_%update-binding114868%_
                  (lambda (_%xval114941%_)
                    (if (or (_%rebind?114864%_
                             _%ctx114866%_
                             _%xval114941%_
                             _%val114863%_)
                            (and (##structure-direct-instance-of?
                                  _%xval114941%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval114941%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val114863%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val114863%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval114941%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val114863%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val114863%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval114941%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val114863%_
                        (if (and (##structure-direct-instance-of?
                                  _%val114863%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val114863%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval114941%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val114863%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval114941%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval114941%_
                            (if (and (##structure-direct-instance-of?
                                      _%val114863%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval114941%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key114862%_
                                 (cons (##unchecked-structure-ref
                                        _%val114863%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val114863%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval114941%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval114941%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval114941%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval114941%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key114862%_
                                 _%val114863%_
                                 _%xval114941%_))))))
                 (_%gensubst114869%_
                  (lambda (_%subst114936%_ _%id114937%_)
                    (let ((_%eid114939%_
                           (gensym (if (uninterned-symbol? _%id114937%_)
                                       '%
                                       _%id114937%_))))
                      (hash-put! _%subst114936%_ _%id114937%_ _%eid114939%_)
                      _%eid114939%_)))
                 (_%subst!114870%_
                  (lambda (_%key114872%_)
                    (let* ((_%key114873114881%_ _%key114872%_)
                           (_%else114875114889%_ (lambda () _%key114872%_))
                           (_%K114877114924%_
                            (lambda (_%mark114892%_ _%id114893%_)
                              (let* ((_%mark114894114900%_ _%mark114892%_)
                                     (_%E114896114904%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark114894114900%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K114897114916%_
                                      (lambda (_%subst114907%_)
                                        (if (not _%subst114907%_)
                                            (let ((_%subst114910%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark114892%_
                                               _%subst114910%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst114869%_
                                               _%subst114910%_
                                               _%id114893%_))
                                            (let ((_%$e114912%_
                                                   (hash-get
                                                    _%subst114907%_
                                                    _%id114893%_)))
                                              (if _%$e114912%_
                                                  (values _%$e114912%_)
                                                  (_%gensubst114869%_
                                                   _%subst114907%_
                                                   _%id114893%_)))))))
                                (if (##structure-instance-of?
                                     _%mark114894114900%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e114898114919%_
                                            (##unchecked-structure-ref
                                             _%mark114894114900%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst114922%_ _%e114898114919%_))
                                      (_%K114897114916%_ _%subst114922%_))
                                    (_%E114896114904%_))))))
                      (if (##pair? _%key114873114881%_)
                          (let ((_%hd114878114927%_
                                 (##car _%key114873114881%_))
                                (_%tl114879114929%_
                                 (##cdr _%key114873114881%_)))
                            (let* ((_%id114932%_ _%hd114878114927%_)
                                   (_%mark114934%_ _%tl114879114929%_))
                              (_%K114877114924%_ _%mark114934%_ _%id114932%_)))
                          (_%else114875114889%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx114866%_ _%phi114865%_)
           (_%subst!114870%_ _%key114862%_)
           _%val114863%_
           _%update-binding114868%_))))
    (define gx#core-bind!__0
      (lambda (_%key114962%_ _%val114963%_)
        (let* ((_%rebind?114965%_ false)
               (_%phi114967%_ (gx#current-expander-phi))
               (_%ctx114969%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key114962%_
           _%val114963%_
           _%rebind?114965%_
           _%phi114967%_
           _%ctx114969%_))))
    (define gx#core-bind!__1
      (lambda (_%key114971%_ _%val114972%_ _%rebind?114973%_)
        (let* ((_%phi114975%_ (gx#current-expander-phi))
               (_%ctx114977%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key114971%_
           _%val114972%_
           _%rebind?114973%_
           _%phi114975%_
           _%ctx114977%_))))
    (define gx#core-bind!__2
      (lambda (_%key114979%_ _%val114980%_ _%rebind?114981%_ _%phi114982%_)
        (let ((_%ctx114984%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key114979%_
           _%val114980%_
           _%rebind?114981%_
           _%phi114982%_
           _%ctx114984%_))))
    (define gx#core-bind!
      (lambda _g117517_
        (let ((_g117516_ (##length _g117517_)))
          (cond ((##fx= _g117516_ 2) (apply gx#core-bind!__0 _g117517_))
                ((##fx= _g117516_ 3) (apply gx#core-bind!__1 _g117517_))
                ((##fx= _g117516_ 4) (apply gx#core-bind!__2 _g117517_))
                ((##fx= _g117516_ 5) (apply gx#core-bind!__% _g117517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g117517_))))))
    (define gx#core-identifier-key
      (lambda (_%stx114793%_)
        (if (symbol? _%stx114793%_)
            (let* ((_%g114795114803%_ (gx#current-expander-marks))
                   (_%else114797114811%_ (lambda () _%stx114793%_))
                   (_%K114799114816%_
                    (lambda (_%hd114814%_) (cons _%stx114793%_ _%hd114814%_))))
              (if (##pair? _%g114795114803%_)
                  (let* ((_%hd114800114819%_ (##car _%g114795114803%_))
                         (_%hd114822%_ _%hd114800114819%_))
                    (_%K114799114816%_ _%hd114822%_))
                  (_%else114797114811%_)))
            (if (gx#identifier? _%stx114793%_)
                (let* ((_%id114825%_ (gx#syntax-local-unwrap _%stx114793%_))
                       (_%eid114827%_ (gx#stx-e _%id114825%_))
                       (_%marks114829%_
                        (gx#stx-identifier-marks* _%id114825%_))
                       (_%marks114831114839%_ _%marks114829%_)
                       (_%else114833114847%_ (lambda () _%eid114827%_))
                       (_%K114835114852%_
                        (lambda (_%hd114850%_)
                          (cons _%eid114827%_ _%hd114850%_))))
                  (if (##pair? _%marks114831114839%_)
                      (let* ((_%hd114836114855%_ (##car _%marks114831114839%_))
                             (_%hd114858%_ _%hd114836114855%_))
                        (_%K114835114852%_ _%hd114858%_))
                      (_%else114833114847%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx114793%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx114732%_ _%phi114733%_)
        (letrec ((_%make-phi114735%_
                  (lambda (_%super114791%_)
                    (let ((__obj117489
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj117489
                       (##gensym 'phi)
                       _%super114791%_)
                      __obj117489)))
                 (_%make-phi/up114736%_
                  (lambda (_%ctx114786%_ _%super114787%_)
                    (let ((_%ctx+1114789%_
                           (_%make-phi114735%_ _%super114787%_)))
                      (##unchecked-structure-set!
                       _%ctx114786%_
                       _%ctx+1114789%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1114789%_
                       _%ctx114786%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1114789%_)))
                 (_%make-phi/down114737%_
                  (lambda (_%ctx114781%_ _%super114782%_)
                    (let ((_%ctx-1114784%_
                           (_%make-phi114735%_ _%super114782%_)))
                      (##unchecked-structure-set!
                       _%ctx-1114784%_
                       _%ctx114781%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx114781%_
                       _%ctx-1114784%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1114784%_)))
                 (_%shift114738%_
                  (lambda (_%ctx114764%_
                           _%delta114765%_
                           _%make-delta-context114766%_
                           _%phi114767%_
                           _%K114768%_)
                    (let ((_%$e114770%_
                           (##unchecked-structure-ref
                            _%ctx114764%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e114770%_
                          ((lambda (_%super114773%_)
                             (let* ((_%super114775%_
                                     (_%K114768%_
                                      _%super114773%_
                                      _%delta114765%_))
                                    (_%ctx+d114777%_
                                     (_%make-delta-context114766%_
                                      _%ctx114764%_
                                      _%super114775%_)))
                               (_%K114768%_
                                _%ctx+d114777%_
                                (fx- _%phi114767%_ _%delta114765%_))))
                           _%$e114770%_)
                          (error '"Bad context" _%ctx114764%_))))))
          (let _%K114740%_ ((_%ctx114742%_ _%ctx114732%_)
                            (_%phi114743%_ _%phi114733%_))
            (if (fxzero? _%phi114743%_)
                _%ctx114742%_
                (if (##structure-instance-of? _%ctx114742%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi114743%_)
                        (let ((_%$e114747%_
                               (##unchecked-structure-ref
                                _%ctx114742%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e114747%_
                              ((lambda (_%g114749114751%_)
                                 (_%K114740%_
                                  _%g114749114751%_
                                  (##fx- _%phi114743%_ '1)))
                               _%$e114747%_)
                              (_%shift114738%_
                               _%ctx114742%_
                               '1
                               _%make-phi/up114736%_
                               _%phi114743%_
                               _%K114740%_)))
                        (let ((_%$e114755%_
                               (##unchecked-structure-ref
                                _%ctx114742%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e114755%_
                              ((lambda (_%g114757114759%_)
                                 (_%K114740%_
                                  _%g114757114759%_
                                  (##fx+ _%phi114743%_ '1)))
                               _%$e114755%_)
                              (_%shift114738%_
                               _%ctx114742%_
                               '-1
                               _%make-phi/down114737%_
                               _%phi114743%_
                               _%K114740%_))))
                    _%ctx114742%_))))))
    (define gx#core-context-get
      (lambda (_%ctx114729%_ _%key114730%_)
        (hash-get
         (##unchecked-structure-ref _%ctx114729%_ '2 '#f '#f)
         _%key114730%_)))
    (define gx#core-context-put!
      (lambda (_%ctx114725%_ _%key114726%_ _%val114727%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx114725%_ '2 '#f '#f)
         _%key114726%_
         _%val114727%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx114711%_ _%key114712%_)
        (let _%lp114714%_ ((_%ctx114716%_ _%ctx114711%_))
          (let ((_%$e114718%_
                 (gx#core-context-get _%ctx114716%_ _%key114712%_)))
            (if _%$e114718%_
                (values _%$e114718%_)
                (let ((_%$e114721%_
                       (if (##structure-instance-of?
                            _%ctx114716%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx114716%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e114721%_ (_%lp114714%_ _%$e114721%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx114700%_ _%key114701%_ _%val114702%_ _%rebind114703%_)
        (let ((_%$e114705%_ (gx#core-context-get _%ctx114700%_ _%key114701%_)))
          (if _%$e114705%_
              ((lambda (_%xval114708%_)
                 (gx#core-context-put!
                  _%ctx114700%_
                  _%key114701%_
                  (_%rebind114703%_ _%xval114708%_)))
               _%$e114705%_)
              (gx#core-context-put!
               _%ctx114700%_
               _%key114701%_
               _%val114702%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx114675%_ _%stop?114676%_)
        (let _%lp114678%_ ((_%ctx114680%_ _%ctx114675%_))
          (if (_%stop?114676%_ _%ctx114680%_)
              _%ctx114680%_
              (if (##structure-instance-of? _%ctx114680%_ 'gx#phi-context::t)
                  (_%lp114678%_
                   (##unchecked-structure-ref _%ctx114680%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx114689%_ (gx#current-expander-context))
               (_%stop?114691%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114689%_ _%stop?114691%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx114693%_)
        (let ((_%stop?114695%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114693%_ _%stop?114695%_))))
    (define gx#core-context-top
      (lambda _g117519_
        (let ((_g117518_ (##length _g117519_)))
          (cond ((##fx= _g117518_ 0) (apply gx#core-context-top__0 _g117519_))
                ((##fx= _g117518_ 1) (apply gx#core-context-top__1 _g117519_))
                ((##fx= _g117518_ 2) (apply gx#core-context-top__% _g117519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g117519_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx114660%_)
        (let _%lp114662%_ ((_%ctx114664%_ _%ctx114660%_))
          (if (##structure-instance-of? _%ctx114664%_ 'gx#phi-context::t)
              (_%lp114662%_
               (##unchecked-structure-ref _%ctx114664%_ '3 '#f '#f))
              _%ctx114664%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx114670%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx114670%_))))
    (define gx#core-context-root
      (lambda _g117521_
        (let ((_g117520_ (##length _g117521_)))
          (cond ((##fx= _g117520_ 0) (apply gx#core-context-root__0 _g117521_))
                ((##fx= _g117520_ 1) (apply gx#core-context-root__% _g117521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g117521_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx114642%_ . _%ignore114643%_)
        (let ((_%$e114645%_ (gx#current-expander-allow-rebind?)))
          (if _%$e114645%_
              _%$e114645%_
              (if (##structure-instance-of? _%ctx114642%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx114642%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx114642%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx114652%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx114652%_))))
    (define gx#core-context-rebind?
      (lambda _g117523_
        (let ((_g117522_ (##length _g117523_)))
          (cond ((##fx= _g117522_ 0)
                 (apply gx#core-context-rebind?__0 _g117523_))
                ((##fx= _g117522_ 1)
                 (apply gx#core-context-rebind?__% _g117523_))
                ((##fx>= _g117522_ 1)
                 (apply gx#core-context-rebind?__% _g117523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g117523_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx114625%_)
        (let ((_%$e114627%_ (gx#core-context-top__1 _%ctx114625%_)))
          (if _%$e114627%_
              ((lambda (_%ctx114630%_)
                 (if (##structure-instance-of?
                      _%ctx114630%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx114630%_ '6 '#f '#f)
                     '#f))
               _%$e114627%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx114637%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx114637%_))))
    (define gx#core-context-namespace
      (lambda _g117525_
        (let ((_g117524_ (##length _g117525_)))
          (cond ((##fx= _g117524_ 0)
                 (apply gx#core-context-namespace__0 _g117525_))
                ((##fx= _g117524_ 1)
                 (apply gx#core-context-namespace__% _g117525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g117525_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind114611%_ _%is?114612%_)
        (if (##structure-direct-instance-of?
             _%bind114611%_
             'gx#syntax-binding::t)
            (_%is?114612%_
             (##unchecked-structure-ref _%bind114611%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind114617%_)
        (let ((_%is?114619%_ gx#expander?))
          (gx#expander-binding?__% _%bind114617%_ _%is?114619%_))))
    (define gx#expander-binding?
      (lambda _g117527_
        (let ((_g117526_ (##length _g117527_)))
          (cond ((##fx= _g117526_ 1) (apply gx#expander-binding?__0 _g117527_))
                ((##fx= _g117526_ 2) (apply gx#expander-binding?__% _g117527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g117527_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind114608%_)
        (gx#expander-binding?__% _%bind114608%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind114606%_)
        (gx#expander-binding?__% _%bind114606%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind114600%_)
        (letrec ((_%direct-special-form?114602%_
                  (lambda (_%obj114604%_)
                    (##structure-direct-instance-of?
                     _%obj114604%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind114600%_
           _%direct-special-form?114602%_))))
    (define gx#special-form-binding?
      (lambda (_%bind114598%_)
        (gx#expander-binding?__% _%bind114598%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind114589%_)
        (letrec ((_%feature?114591%_
                  (lambda (_%e114593%_)
                    (let ((_%$e114595%_
                           (##structure-instance-of?
                            _%e114593%_
                            'gx#feature-expander::t)))
                      (if _%$e114595%_
                          _%$e114595%_
                          (##structure-instance-of?
                           _%e114593%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind114589%_ _%feature?114591%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind114587%_)
        (gx#expander-binding?__% _%bind114587%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id114574%_ _%bound?114575%_)
        (if (gx#identifier? _%id114574%_)
            (_%bound?114575%_ (gx#resolve-identifier__0 _%id114574%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id114580%_)
        (let ((_%bound?114582%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id114580%_ _%bound?114582%_))))
    (define gx#core-bound-identifier?
      (lambda _g117529_
        (let ((_g117528_ (##length _g117529_)))
          (cond ((##fx= _g117528_ 1)
                 (apply gx#core-bound-identifier?__0 _g117529_))
                ((##fx= _g117528_ 2)
                 (apply gx#core-bound-identifier?__% _g117529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g117529_))))))
    (define gx#core-identifier=?
      (lambda (_%x114564%_ _%y114565%_)
        (letrec ((_%y=?114567%_
                  (lambda (_%xid114571%_)
                    ((if (list? _%y114565%_) memq eq?)
                     _%xid114571%_
                     _%y114565%_))))
          (let ((_%bind114569%_ (gx#resolve-identifier__0 _%x114564%_)))
            (if (##structure-instance-of? _%bind114569%_ 'gx#binding::t)
                (_%y=?114567%_
                 (##unchecked-structure-ref _%bind114569%_ '1 '#f '#f))
                (_%y=?114567%_ (gx#stx-e _%x114564%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e114562%_)
        (if (interned-symbol? _%e114562%_)
            (string-index__0 (symbol->string _%e114562%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx114515%_ _%src114516%_ _%ctx114517%_ _%marks114518%_)
        (if (##structure? _%stx114515%_)
            (let ((_%$e114520%_ (gx#sealed-syntax-unwrap _%stx114515%_)))
              (if _%$e114520%_
                  (values _%$e114520%_)
                  (if (gx#identifier? _%stx114515%_)
                      (let ((_%id114524%_
                             (gx#stx-unwrap__% _%stx114515%_ _%marks114518%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id114524%_ '1 '#f '#f)
                         (let ((_%$e114526%_
                                (##unchecked-structure-ref
                                 _%id114524%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e114526%_ _%$e114526%_ _%src114516%_))
                         _%ctx114517%_
                         (##unchecked-structure-ref _%id114524%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx114515%_)
                       (let ((_%$e114530%_ (gx#stx-source _%stx114515%_)))
                         (if _%$e114530%_ _%$e114530%_ _%src114516%_))
                       _%ctx114517%_
                       (reverse _%marks114518%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx114515%_
             _%src114516%_
             _%ctx114517%_
             (reverse _%marks114518%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx114536%_)
        (let* ((_%src114538%_ '#f)
               (_%ctx114540%_ (gx#current-expander-context))
               (_%marks114542%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114536%_
           _%src114538%_
           _%ctx114540%_
           _%marks114542%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx114544%_ _%src114545%_)
        (let* ((_%ctx114547%_ (gx#current-expander-context))
               (_%marks114549%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114544%_
           _%src114545%_
           _%ctx114547%_
           _%marks114549%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx114551%_ _%src114552%_ _%ctx114553%_)
        (let ((_%marks114555%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114551%_
           _%src114552%_
           _%ctx114553%_
           _%marks114555%_))))
    (define gx#core-quote-syntax
      (lambda _g117531_
        (let ((_g117530_ (##length _g117531_)))
          (cond ((##fx= _g117530_ 1) (apply gx#core-quote-syntax__0 _g117531_))
                ((##fx= _g117530_ 2) (apply gx#core-quote-syntax__1 _g117531_))
                ((##fx= _g117530_ 3) (apply gx#core-quote-syntax__2 _g117531_))
                ((##fx= _g117530_ 4) (apply gx#core-quote-syntax__% _g117531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g117531_))))))
    (define gx#core-cons
      (lambda (_%hd114511%_ _%tl114512%_)
        (cons (gx#core-quote-syntax__0 _%hd114511%_) _%tl114512%_)))
    (define gx#core-list
      (lambda (_%hd114508%_ . _%rest114509%_)
        (cons (gx#core-quote-syntax__0 _%hd114508%_) _%rest114509%_)))
    (define gx#core-cons*
      (lambda (_%hd114505%_ . _%rest114506%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd114505%_) _%rest114506%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path114474%_ _%rel114475%_)
        (let ((_%path114492%_ (gx#stx-e _%stx-path114474%_))
              (_%reldir114493%_
               (let _%lp114477%_ ((_%relsrc114479%_
                                   (let ((_%$e114489%_
                                          (gx#stx-source _%stx-path114474%_)))
                                     (if _%$e114489%_
                                         _%$e114489%_
                                         _%rel114475%_))))
                 (if (##structure-instance-of? _%relsrc114479%_ 'gerbil#AST::t)
                     (_%lp114477%_
                      (let ((_%$e114482%_ (gx#stx-source _%relsrc114479%_)))
                        (if _%$e114482%_
                            _%$e114482%_
                            (gx#stx-e _%relsrc114479%_))))
                     (if (source-location-path? _%relsrc114479%_)
                         (path-directory
                          (source-location-path _%relsrc114479%_))
                         (if (string? _%relsrc114479%_)
                             (path-directory _%relsrc114479%_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _%path114492%_ (path-normalize _%reldir114493%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path114498%_)
        (let ((_%rel114500%_ '#f))
          (gx#core-resolve-path__% _%stx-path114498%_ _%rel114500%_))))
    (define gx#core-resolve-path
      (lambda _g117533_
        (let ((_g117532_ (##length _g117533_)))
          (cond ((##fx= _g117532_ 1) (apply gx#core-resolve-path__0 _g117533_))
                ((##fx= _g117532_ 2) (apply gx#core-resolve-path__% _g117533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g117533_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr114430%_ _%ctx114431%_)
        (let* ((_%repr114432114439%_ _%repr114430%_)
               (_%E114434114443%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr114432114439%_
                         '([phi . subs]))
                  '#!void))
               (_%K114435114451%_
                (lambda (_%subs114446%_ _%phi114447%_)
                  (let ((_%subst114449%_
                         (if (not (null? _%subs114446%_))
                             (list->hash-table-eq _%subs114446%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst114449%_
                     _%ctx114431%_
                     _%phi114447%_
                     '#f)))))
          (if (##pair? _%repr114432114439%_)
              (let ((_%hd114436114454%_ (##car _%repr114432114439%_))
                    (_%tl114437114456%_ (##cdr _%repr114432114439%_)))
                (let* ((_%phi114459%_ _%hd114436114454%_)
                       (_%subs114461%_ _%tl114437114456%_))
                  (_%K114435114451%_ _%subs114461%_ _%phi114459%_)))
              (_%E114434114443%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr114466%_)
        (let ((_%ctx114468%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr114466%_ _%ctx114468%_))))
    (define gx#core-deserialize-mark
      (lambda _g117535_
        (let ((_g117534_ (##length _g117535_)))
          (cond ((##fx= _g117534_ 1)
                 (apply gx#core-deserialize-mark__0 _g117535_))
                ((##fx= _g117534_ 2)
                 (apply gx#core-deserialize-mark__% _g117535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g117535_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx114427%_)
        (gx#stx-rewrap _%stx114427%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx114425%_)
        (gx#stx-unwrap__% _%stx114425%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx114395%_)
        (let* ((_%g114396114404%_ (gx#current-expander-marks))
               (_%else114398114412%_ (lambda () _%stx114395%_))
               (_%K114400114417%_
                (lambda (_%hd114415%_)
                  (gx#stx-apply-mark _%stx114395%_ _%hd114415%_))))
          (if (##pair? _%g114396114404%_)
              (let* ((_%hd114401114420%_ (##car _%g114396114404%_))
                     (_%hd114423%_ _%hd114401114420%_))
                (_%K114400114417%_ _%hd114423%_))
              (_%else114398114412%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx114380%_ _%E114381%_)
        (let ((_%bind114383%_ (gx#resolve-identifier__0 _%stx114380%_)))
          (if (##structure-direct-instance-of?
               _%bind114383%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind114383%_ '4 '#f '#f)
              (_%E114381%_ _%stx114380%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx114388%_)
        (let ((_%E114390%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx114388%_ _%E114390%_))))
    (define gx#syntax-local-e
      (lambda _g117537_
        (let ((_g117536_ (##length _g117537_)))
          (cond ((##fx= _g117536_ 1) (apply gx#syntax-local-e__0 _g117537_))
                ((##fx= _g117536_ 2) (apply gx#syntax-local-e__% _g117537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g117537_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx114364%_ _%E114365%_)
        (let ((_%e114367%_ (gx#syntax-local-e__% _%stx114364%_ _%E114365%_)))
          (if (##structure-instance-of? _%e114367%_ 'gx#expander::t)
              (##structure-ref _%e114367%_ '1 gx#expander::t '#f)
              _%e114367%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx114372%_)
        (let ((_%E114374%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx114372%_ _%E114374%_))))
    (define gx#syntax-local-value
      (lambda _g117539_
        (let ((_g117538_ (##length _g117539_)))
          (cond ((##fx= _g117538_ 1)
                 (apply gx#syntax-local-value__0 _g117539_))
                ((##fx= _g117538_ 2)
                 (apply gx#syntax-local-value__% _g117539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g117539_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx114361%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx114361%_)))))
