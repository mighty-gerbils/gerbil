(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712602655)
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
      (lambda _%$args117423%_
        (apply make-instance gx#expander-context::t _%$args117423%_)))
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
      (lambda _%$args117420%_
        (apply make-instance gx#root-context::t _%$args117420%_)))
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
      (lambda _%$args117417%_
        (apply make-instance gx#phi-context::t _%$args117417%_)))
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
      (lambda _%$args117414%_
        (apply make-instance gx#top-context::t _%$args117414%_)))
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
      (lambda _%$args117411%_
        (apply make-instance gx#module-context::t _%$args117411%_)))
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
      (lambda _%$args117408%_
        (apply make-instance gx#prelude-context::t _%$args117408%_)))
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
      (lambda _%$args117405%_
        (apply make-instance gx#local-context::t _%$args117405%_)))
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
      (lambda (_%self117378%_ _%id117379%_ _%super117380%_)
        (let ((_%self117383%_ _%self117378%_))
          (if (##fx< '3 (##structure-length _%self117383%_))
              (begin
                (##unchecked-structure-set!
                 _%self117383%_
                 _%id117379%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117383%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117383%_
                 _%super117380%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self117383%_
                     '3
                     (##vector-length _%self117383%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self117396%_ _%id117397%_)
        (let ((_%super117399%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self117396%_
           _%id117397%_
           _%super117399%_))))
    (define gx#phi-context:::init!
      (lambda _g117466_
        (let ((_g117465_ (##length _g117466_)))
          (cond ((##fx= _g117465_ 2)
                 (apply gx#phi-context:::init!__0 _g117466_))
                ((##fx= _g117465_ 3)
                 (apply gx#phi-context:::init!__% _g117466_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g117466_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117231%_ _%super117232%_)
        (let ((_%self117235%_ _%self117231%_))
          (if (##fx< '3 (##structure-length _%self117235%_))
              (begin
                (##unchecked-structure-set!
                 _%self117235%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117235%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117235%_
                 _%super117232%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self117235%_
                     '3
                     (##vector-length _%self117235%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self117248%_)
        (let ((_%super117250%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self117248%_ _%super117250%_))))
    (define gx#local-context:::init!
      (lambda _g117468_
        (let ((_g117467_ (##length _g117468_)))
          (cond ((##fx= _g117467_ 1)
                 (apply gx#local-context:::init!__0 _g117468_))
                ((##fx= _g117467_ 2)
                 (apply gx#local-context:::init!__% _g117468_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g117468_))))))
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
      (lambda _%$args117105%_
        (apply make-instance gx#binding::t _%$args117105%_)))
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
      (lambda _%$args117102%_
        (apply make-instance gx#runtime-binding::t _%$args117102%_)))
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
      (lambda _%$args117099%_
        (apply make-instance gx#local-binding::t _%$args117099%_)))
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
      (lambda _%$args117096%_
        (apply make-instance gx#top-binding::t _%$args117096%_)))
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
      (lambda _%$args117093%_
        (apply make-instance gx#module-binding::t _%$args117093%_)))
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
      (lambda _%$args117090%_
        (apply make-instance gx#extern-binding::t _%$args117090%_)))
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
      (lambda _%$args117087%_
        (apply make-instance gx#syntax-binding::t _%$args117087%_)))
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
      (lambda _%$args117084%_
        (apply make-instance gx#import-binding::t _%$args117084%_)))
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
      (lambda _%$args117081%_
        (apply make-instance gx#alias-binding::t _%$args117081%_)))
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
      (lambda _%$args117078%_
        (apply make-instance gx#expander::t _%$args117078%_)))
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
      (lambda _%$args117075%_
        (apply make-instance gx#core-expander::t _%$args117075%_)))
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
      (lambda _%$args117072%_
        (apply make-instance gx#expression-form::t _%$args117072%_)))
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
      (lambda _%$args117069%_
        (apply make-instance gx#special-form::t _%$args117069%_)))
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
      (lambda _%$args117066%_
        (apply make-instance gx#definition-form::t _%$args117066%_)))
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
      (lambda _%$args117063%_
        (apply make-instance gx#top-special-form::t _%$args117063%_)))
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
      (lambda _%$args117060%_
        (apply make-instance gx#module-special-form::t _%$args117060%_)))
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
      (lambda _%$args117057%_
        (apply make-instance gx#feature-expander::t _%$args117057%_)))
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
      (lambda _%$args117054%_
        (apply make-instance gx#private-feature-expander::t _%$args117054%_)))
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
      (lambda _%$args117051%_
        (apply make-instance gx#reserved-expander::t _%$args117051%_)))
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
      (lambda _%$args117048%_
        (apply make-instance gx#macro-expander::t _%$args117048%_)))
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
      (lambda _%$args117045%_
        (apply make-instance gx#rename-macro-expander::t _%$args117045%_)))
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
      (lambda _%$args117042%_
        (apply make-instance gx#user-expander::t _%$args117042%_)))
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
      (lambda _%$args117039%_
        (apply make-instance gx#expander-mark::t _%$args117039%_)))
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
      (lambda (_%ctx117023%_
               _%message117024%_
               _%stx117025%_
               .
               _%details117026%_)
        (let ((_%ctx117037%_
               (let ((_%$e117028%_ _%ctx117023%_))
                 (if _%$e117028%_
                     _%$e117028%_
                     (let ((_%$e117031%_ (gx#core-context-top__0)))
                       (if _%$e117031%_
                           ((lambda (_%ctx117034%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117034%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117031%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message117024%_
                  (cons _%stx117025%_ _%details117026%_)
                  _%ctx117037%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117010%_ _%expression?117011%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117010%_ _%expression?117011%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117016%_)
        (let ((_%expression?117018%_ '#f))
          (gx#eval-syntax__% _%stx117016%_ _%expression?117018%_))))
    (define gx#eval-syntax
      (lambda _g117470_
        (let ((_g117469_ (##length _g117470_)))
          (cond ((##fx= _g117469_ 1) (apply gx#eval-syntax__0 _g117470_))
                ((##fx= _g117469_ 2) (apply gx#eval-syntax__% _g117470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g117470_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117007%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117007%_))))
    (define gx#core-expand__%
      (lambda (_%stx116994%_ _%expression?116995%_)
        (if _%expression?116995%_
            (gx#core-expand-expression _%stx116994%_)
            (gx#core-expand-top _%stx116994%_))))
    (define gx#core-expand__0
      (lambda (_%stx117000%_)
        (let ((_%expression?117002%_ '#f))
          (gx#core-expand__% _%stx117000%_ _%expression?117002%_))))
    (define gx#core-expand
      (lambda _g117472_
        (let ((_g117471_ (##length _g117472_)))
          (cond ((##fx= _g117471_ 1) (apply gx#core-expand__0 _g117472_))
                ((##fx= _g117471_ 2) (apply gx#core-expand__% _g117472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g117472_))))))
    (define gx#core-expand-top
      (lambda (_%stx116961%_)
        (let* ((_%stx116963%_ (gx#core-expand*__0 _%stx116961%_))
               (_%e116964116971%_ _%stx116963%_)
               (_%E116966116975%_
                (lambda () (gx#core-expand-expression _%stx116963%_)))
               (_%E116965116989%_
                (lambda ()
                  (if (gx#stx-pair? _%e116964116971%_)
                      (let ((_%e116967116979%_
                             (gx#syntax-e _%e116964116971%_)))
                        (let ((_%hd116968116982%_ (##car _%e116967116979%_))
                              (_%tl116969116984%_ (##cdr _%e116967116979%_)))
                          (let ((_%form116987%_ _%hd116968116982%_))
                            (if (gx#core-bound-identifier?__0 _%form116987%_)
                                _%stx116963%_
                                (_%E116966116975%_)))))
                      (_%E116966116975%_)))))
          (_%E116965116989%_))))
    (define gx#core-expand-expression
      (lambda (_%stx116893%_)
        (letrec ((_%sealed-expression?116895%_
                  (lambda (_%hd116931%_)
                    (if (gx#sealed-syntax? _%hd116931%_)
                        (let* ((_%e116932116939%_ _%hd116931%_)
                               (_%E116934116943%_ (lambda () '#f))
                               (_%E116933116957%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e116932116939%_)
                                      (let ((_%e116935116947%_
                                             (gx#syntax-e _%e116932116939%_)))
                                        (let ((_%hd116936116950%_
                                               (##car _%e116935116947%_))
                                              (_%tl116937116952%_
                                               (##cdr _%e116935116947%_)))
                                          (let ((_%form116955%_
                                                 _%hd116936116950%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form116955%_
                                                 gx#expression-form-binding?)
                                                (_%E116934116943%_)))))
                                      (_%E116934116943%_)))))
                          (_%E116933116957%_))
                        '#f)))
                 (_%illegal-expression116896%_
                  (lambda (_%hd116928%_ . _%_116929%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx116893%_
                     _%hd116928%_)))
                 (_%expand-e116897%_
                  (lambda (_%form116920%_ _%hd116921%_)
                    (let ((_%bind116923%_
                           (if (##structure-instance-of?
                                _%form116920%_
                                'gx#binding::t)
                               _%form116920%_
                               (gx#resolve-identifier__0 _%form116920%_))))
                      (if (gx#core-expander-binding? _%bind116923%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind116923%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd116921%_
                            (gx#stx-source _%stx116893%_)))
                          (if (##structure-direct-instance-of?
                               _%bind116923%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind116923%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd116921%_
                                 (gx#stx-source _%stx116893%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx116893%_
                               _%form116920%_)))))))
          (let ((_%hd116899%_ (gx#core-expand-head _%stx116893%_)))
            (if (_%sealed-expression?116895%_ _%hd116899%_)
                _%hd116899%_
                (if (gx#stx-pair? _%hd116899%_)
                    (let* ((_%form116903%_ (gx#stx-car _%hd116899%_))
                           (_%bind116905%_
                            (if (gx#identifier? _%form116903%_)
                                (gx#resolve-identifier__0 _%form116903%_)
                                '#f)))
                      (if (or (not _%bind116905%_)
                              (not (gx#core-expander-binding? _%bind116905%_)))
                          (_%expand-e116897%_
                           '%%app
                           (cons '%%app _%hd116899%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind116905%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd116899%_
                               _%illegal-expression116896%_)
                              (if (gx#expression-form-binding? _%bind116905%_)
                                  (_%expand-e116897%_
                                   _%bind116905%_
                                   _%hd116899%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind116905%_)
                                      (gx#core-expand-expression
                                       (_%expand-e116897%_
                                        _%bind116905%_
                                        _%hd116899%_))
                                      (_%illegal-expression116896%_
                                       _%hd116899%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd116899%_)
                        (_%illegal-expression116896%_ _%hd116899%_)
                        (if (gx#identifier? _%hd116899%_)
                            (_%expand-e116897%_
                             '%%ref
                             (cons '%%ref (cons _%hd116899%_ '())))
                            (if (gx#stx-datum? _%hd116899%_)
                                (_%expand-e116897%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd116899%_ '())))
                                (_%illegal-expression116896%_
                                 _%hd116899%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx116888%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx116891%_ (gx#core-expand-expression _%stx116888%_)))
             (values _%stx116891%_ (gx#eval-syntax* _%stx116891%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx116869%_ _%stop?116870%_)
        (let _%lp116872%_ ((_%stx116874%_ _%stx116869%_))
          (if (_%stop?116870%_ _%stx116874%_)
              _%stx116874%_
              (let ((_%rstx116876%_ (gx#core-expand1 _%stx116874%_)))
                (if (eq? _%stx116874%_ _%rstx116876%_)
                    _%stx116874%_
                    (_%lp116872%_ _%rstx116876%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx116881%_)
        (let ((_%stop?116883%_ false))
          (gx#core-expand*__% _%stx116881%_ _%stop?116883%_))))
    (define gx#core-expand*
      (lambda _g117474_
        (let ((_g117473_ (##length _g117474_)))
          (cond ((##fx= _g117473_ 1) (apply gx#core-expand*__0 _g117474_))
                ((##fx= _g117473_ 2) (apply gx#core-expand*__% _g117474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g117474_))))))
    (define gx#core-expand1
      (lambda (_%stx116821%_)
        (letrec ((_%step116823%_
                  (lambda (_%hd116860%_)
                    (let ((_%bind116862%_
                           (gx#resolve-identifier__0 _%hd116860%_)))
                      (if (##structure-instance-of?
                           _%bind116862%_
                           'gx#runtime-binding::t)
                          _%stx116821%_
                          (if (##structure-direct-instance-of?
                               _%bind116862%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind116862%_
                                '4
                                '#f
                                '#f)
                               _%stx116821%_)
                              (if (not _%bind116862%_)
                                  _%stx116821%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx116821%_))))))))
          (let* ((_%e116824116832%_ _%stx116821%_)
                 (_%E116830116836%_ (lambda () _%stx116821%_))
                 (_%E116826116842%_
                  (lambda ()
                    (let ((_%hd116840%_ _%e116824116832%_))
                      (if (gx#identifier? _%hd116840%_)
                          (_%step116823%_ _%hd116840%_)
                          (_%E116830116836%_)))))
                 (_%E116825116856%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116824116832%_)
                        (let ((_%e116827116846%_
                               (gx#syntax-e _%e116824116832%_)))
                          (let ((_%hd116828116849%_ (##car _%e116827116846%_))
                                (_%tl116829116851%_ (##cdr _%e116827116846%_)))
                            (let ((_%hd116854%_ _%hd116828116849%_))
                              (if (gx#identifier? _%hd116854%_)
                                  (_%step116823%_ _%hd116854%_)
                                  (_%E116826116842%_)))))
                        (_%E116826116842%_)))))
            (_%E116825116856%_)))))
    (define gx#core-expand-head
      (lambda (_%stx116787%_)
        (letrec ((_%stop?116789%_
                  (lambda (_%stx116791%_)
                    (let* ((_%e116792116799%_ _%stx116791%_)
                           (_%E116794116803%_ (lambda () '#f))
                           (_%E116793116817%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116792116799%_)
                                  (let ((_%e116795116807%_
                                         (gx#syntax-e _%e116792116799%_)))
                                    (let ((_%hd116796116810%_
                                           (##car _%e116795116807%_))
                                          (_%tl116797116812%_
                                           (##cdr _%e116795116807%_)))
                                      (let ((_%hd116815%_ _%hd116796116810%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd116815%_)
                                            (_%E116794116803%_)))))
                                  (_%E116794116803%_)))))
                      (_%E116793116817%_)))))
          (gx#core-expand*__% _%stx116787%_ _%stop?116789%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx116593%_
               _%expand-special116594%_
               _%begin-form116595%_
               _%expand-e116596%_)
        (letrec ((_%expand-splice116598%_
                  (lambda (_%hd116761%_
                           _%body116762%_
                           _%rest116763%_
                           _%r116764%_)
                    (if (gx#stx-list? _%body116762%_)
                        (_%K116602%_
                         (gx#stx-foldr cons _%rest116763%_ _%body116762%_)
                         _%r116764%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx116593%_
                         _%hd116761%_))))
                 (_%expand-cond-expand116599%_
                  (lambda (_%hd116757%_ _%rest116758%_ _%r116759%_)
                    (_%K116602%_
                     (cons (gx#core-expand-cond-expand% _%hd116757%_)
                           _%rest116758%_)
                     _%r116759%_)))
                 (_%expand-include116600%_
                  (lambda (_%hd116706%_ _%rest116707%_ _%r116708%_)
                    (let* ((_%e116709116719%_ _%hd116706%_)
                           (_%E116711116723%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116709116719%_)))
                           (_%E116710116753%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116709116719%_)
                                  (let ((_%e116712116727%_
                                         (gx#syntax-e _%e116709116719%_)))
                                    (let ((_%hd116713116730%_
                                           (##car _%e116712116727%_))
                                          (_%tl116714116732%_
                                           (##cdr _%e116712116727%_)))
                                      (if (gx#stx-pair? _%tl116714116732%_)
                                          (let ((_%e116715116735%_
                                                 (gx#syntax-e
                                                  _%tl116714116732%_)))
                                            (let ((_%hd116716116738%_
                                                   (##car _%e116715116735%_))
                                                  (_%tl116717116740%_
                                                   (##cdr _%e116715116735%_)))
                                              (let ((_%path116743%_
                                                     _%hd116716116738%_))
                                                (if (gx#stx-null?
                                                     _%tl116717116740%_)
                                                    (if (gx#stx-string?
                                                         _%path116743%_)
                                                        (let* ((_%rpath116745%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path116743%_
                         (gx#stx-source _%hd116706%_)))
                       (_%block116747%_
                        (gx#core-expand-include%__%
                         _%hd116706%_
                         _%rpath116745%_))
                       (_%rbody116750%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block116747%_
                            _%expand-special116594%_
                            '#f
                            _%expand-e116596%_))
                         gx#current-expander-path
                         (cons _%rpath116745%_ (gx#current-expander-path)))))
                  (_%K116602%_
                   _%rest116707%_
                   (__foldr1 cons _%r116708%_ _%rbody116750%_)))
                (_%E116711116723%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E116711116723%_)))))
                                          (_%E116711116723%_))))
                                  (_%E116711116723%_)))))
                      (_%E116710116753%_))))
                 (_%expand-expression116601%_
                  (lambda (_%hd116702%_ _%rest116703%_ _%r116704%_)
                    (_%K116602%_
                     _%rest116703%_
                     (cons (_%expand-e116596%_ _%hd116702%_) _%r116704%_))))
                 (_%K116602%_
                  (lambda (_%rest116632%_ _%r116633%_)
                    (let* ((_%e116634116641%_ _%rest116632%_)
                           (_%E116636116645%_
                            (lambda ()
                              (if _%begin-form116595%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form116595%_
                                    (reverse _%r116633%_))
                                   (gx#stx-source _%stx116593%_))
                                  _%r116633%_)))
                           (_%E116635116698%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116634116641%_)
                                  (let ((_%e116637116649%_
                                         (gx#syntax-e _%e116634116641%_)))
                                    (let ((_%hd116638116652%_
                                           (##car _%e116637116649%_))
                                          (_%tl116639116654%_
                                           (##cdr _%e116637116649%_)))
                                      (let* ((_%hd116657%_ _%hd116638116652%_)
                                             (_%rest116659%_
                                              _%tl116639116654%_))
                                        (if '#t
                                            (let* ((_%hd116661%_
                                                    (gx#core-expand-head
                                                     _%hd116657%_))
                                                   (_%e116662116669%_
                                                    _%hd116661%_)
                                                   (_%E116664116673%_
                                                    (lambda ()
                                                      (_%expand-expression116601%_
                                                       _%hd116661%_
                                                       _%rest116659%_
                                                       _%r116633%_)))
                                                   (_%E116663116694%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116662116669%_)
                                                          (let ((_%e116665116677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116662116669%_)))
                    (let ((_%hd116666116680%_ (##car _%e116665116677%_))
                          (_%tl116667116682%_ (##cdr _%e116665116677%_)))
                      (let* ((_%form116685%_ _%hd116666116680%_)
                             (_%body116687%_ _%tl116667116682%_))
                        (if '#t
                            (let ((_%bind116689%_
                                   (if (gx#identifier? _%form116685%_)
                                       (gx#resolve-identifier__0
                                        _%form116685%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind116689%_)
                                  (let ((_%$e116691%_
                                         (##unchecked-structure-ref
                                          _%bind116689%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e116691%_)
                                        (_%expand-splice116598%_
                                         _%hd116661%_
                                         _%body116687%_
                                         _%rest116659%_
                                         _%r116633%_)
                                        (if (eq? '%#cond-expand _%$e116691%_)
                                            (_%expand-cond-expand116599%_
                                             _%hd116661%_
                                             _%rest116659%_
                                             _%r116633%_)
                                            (if (eq? '%#include _%$e116691%_)
                                                (_%expand-include116600%_
                                                 _%hd116661%_
                                                 _%rest116659%_
                                                 _%r116633%_)
                                                (_%expand-special116594%_
                                                 _%hd116661%_
                                                 _%K116602%_
                                                 _%rest116659%_
                                                 _%r116633%_)))))
                                  (_%expand-expression116601%_
                                   _%hd116661%_
                                   _%rest116659%_
                                   _%r116633%_)))
                            (_%E116664116673%_)))))
                  (_%E116664116673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116663116694%_))
                                            (_%E116636116645%_)))))
                                  (_%E116636116645%_)))))
                      (_%E116635116698%_)))))
          (let* ((_%e116603116610%_ _%stx116593%_)
                 (_%E116605116614%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116603116610%_)))
                 (_%E116604116628%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116603116610%_)
                        (let ((_%e116606116618%_
                               (gx#syntax-e _%e116603116610%_)))
                          (let ((_%hd116607116621%_ (##car _%e116606116618%_))
                                (_%tl116608116623%_ (##cdr _%e116606116618%_)))
                            (let ((_%body116626%_ _%tl116608116623%_))
                              (if (gx#stx-list? _%body116626%_)
                                  (_%K116602%_ _%body116626%_ '())
                                  (_%E116605116614%_)))))
                        (_%E116605116614%_)))))
            (_%E116604116628%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx116769%_ _%expand-special116770%_)
        (let* ((_%begin-form116772%_ '%#begin)
               (_%expand-e116774%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx116769%_
           _%expand-special116770%_
           _%begin-form116772%_
           _%expand-e116774%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx116776%_ _%expand-special116777%_ _%begin-form116778%_)
        (let ((_%expand-e116780%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx116776%_
           _%expand-special116777%_
           _%begin-form116778%_
           _%expand-e116780%_))))
    (define gx#core-expand-block
      (lambda _g117476_
        (let ((_g117475_ (##length _g117476_)))
          (cond ((##fx= _g117475_ 2) (apply gx#core-expand-block__0 _g117476_))
                ((##fx= _g117475_ 3) (apply gx#core-expand-block__1 _g117476_))
                ((##fx= _g117475_ 4) (apply gx#core-expand-block__% _g117476_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g117476_))))))
    (define gx#core-expand-block*
      (lambda (_%stx116541%_ _%expand-special116542%_)
        (let* ((_%g116543116554%_
                (gx#core-expand-block__1
                 _%stx116541%_
                 _%expand-special116542%_
                 '#f))
               (_%E116547116558%_
                (lambda ()
                  (error '"No clause matching"
                         _%g116543116554%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K116552116589%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx116541%_)))
                (_%K116549116575%_ (lambda (_%expr116573%_) _%expr116573%_))
                (_%K116548116564%_
                 (lambda (_%body116562%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body116562%_))
                    (gx#stx-source _%stx116541%_)))))
            (let ((_%try-match116545116585%_
                   (lambda ()
                     (if (##pair? _%g116543116554%_)
                         (let ((_%tl116551116580%_ (##cdr _%g116543116554%_))
                               (_%hd116550116578%_ (##car _%g116543116554%_)))
                           (if (##null? _%tl116551116580%_)
                               (let ((_%expr116583%_ _%hd116550116578%_))
                                 (_%K116549116575%_ _%expr116583%_))
                               (let ((_%body116567%_ _%g116543116554%_))
                                 (_%K116548116564%_ _%body116567%_))))
                         (let ((_%body116567%_ _%g116543116554%_))
                           (_%K116548116564%_ _%body116567%_))))))
              (if (##null? _%g116543116554%_)
                  (_%K116552116589%_)
                  (_%try-match116545116585%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx116366%_)
        (letrec ((_%satisfied?116368%_
                  (lambda (_%condition116469%_)
                    (let* ((_%e116470116485%_ _%condition116469%_)
                           (_%E116480116489%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116470116485%_)))
                           (_%E116473116508%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116470116485%_)
                                  (let ((_%e116481116493%_
                                         (gx#syntax-e _%e116470116485%_)))
                                    (let ((_%hd116482116496%_
                                           (##car _%e116481116493%_))
                                          (_%tl116483116498%_
                                           (##cdr _%e116481116493%_)))
                                      (let* ((_%combinator116501%_
                                              _%hd116482116496%_)
                                             (_%body116503%_
                                              _%tl116483116498%_))
                                        (if (gx#stx-list? _%body116503%_)
                                            (let ((_%$e116505%_
                                                   (gx#stx-e
                                                    _%combinator116501%_)))
                                              (if (eq? 'not _%$e116505%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?116368%_
                                                        _%body116503%_))
                                                  (if (eq? 'and _%$e116505%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?116368%_
                                                       _%body116503%_)
                                                      (if (eq? 'or
                                                               _%$e116505%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?116368%_
                                                           _%body116503%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e116505%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body116503%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx116366%_
                       _%combinator116501%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E116480116489%_)))))
                                  (_%E116480116489%_))))
                           (_%E116472116531%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116470116485%_)
                                  (let ((_%e116474116512%_
                                         (gx#syntax-e _%e116470116485%_)))
                                    (let ((_%hd116475116515%_
                                           (##car _%e116474116512%_))
                                          (_%tl116476116517%_
                                           (##cdr _%e116474116512%_)))
                                      (if (and (gx#identifier?
                                                _%hd116475116515%_)
                                               (gx#core-identifier=?
                                                _%hd116475116515%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl116476116517%_)
                                              (let ((_%e116477116520%_
                                                     (gx#syntax-e
                                                      _%tl116476116517%_)))
                                                (let ((_%hd116478116523%_
                                                       (##car _%e116477116520%_))
                                                      (_%tl116479116525%_
                                                       (##cdr _%e116477116520%_)))
                                                  (let ((_%expr116528%_
                                                         _%hd116478116523%_))
                                                    (if (gx#stx-null?
                                                         _%tl116479116525%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr116528%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E116473116508%_))
                (_%E116473116508%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116473116508%_))
                                          (_%E116473116508%_))))
                                  (_%E116473116508%_))))
                           (_%E116471116537%_
                            (lambda ()
                              (let ((_%id116535%_ _%e116470116485%_))
                                (if (gx#identifier? _%id116535%_)
                                    (gx#core-bound-identifier?__%
                                     _%id116535%_
                                     gx#feature-binding?)
                                    (_%E116472116531%_))))))
                      (_%E116471116537%_))))
                 (_%loop116369%_
                  (lambda (_%rest116399%_)
                    (let* ((_%e116400116408%_ _%rest116399%_)
                           (_%E116406116412%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116400116408%_)))
                           (_%E116402116416%_
                            (lambda ()
                              (if (gx#stx-null? _%e116400116408%_)
                                  (if '#t '() (_%E116406116412%_))
                                  (_%E116406116412%_))))
                           (_%E116401116465%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116400116408%_)
                                  (let ((_%e116403116420%_
                                         (gx#syntax-e _%e116400116408%_)))
                                    (let ((_%hd116404116423%_
                                           (##car _%e116403116420%_))
                                          (_%tl116405116425%_
                                           (##cdr _%e116403116420%_)))
                                      (let* ((_%hd116428%_ _%hd116404116423%_)
                                             (_%rest116430%_
                                              _%tl116405116425%_))
                                        (if '#t
                                            (let* ((_%e116431116438%_
                                                    _%hd116428%_)
                                                   (_%E116433116442%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e116431116438%_)))
                                                   (_%E116432116461%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116431116438%_)
                                                          (let ((_%e116434116446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116431116438%_)))
                    (let ((_%hd116435116449%_ (##car _%e116434116446%_))
                          (_%tl116436116451%_ (##cdr _%e116434116446%_)))
                      (let* ((_%condition116454%_ _%hd116435116449%_)
                             (_%body116456%_ _%tl116436116451%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition116454%_ 'else)
                                (if (gx#stx-null? _%rest116430%_)
                                    _%body116456%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _%stx116366%_
                                     _%hd116428%_))
                                (if (_%satisfied?116368%_ _%condition116454%_)
                                    _%body116456%_
                                    (_%loop116369%_ _%rest116430%_)))
                            (_%E116433116442%_)))))
                  (_%E116433116442%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116432116461%_))
                                            (_%E116402116416%_)))))
                                  (_%E116402116416%_)))))
                      (_%E116401116465%_)))))
          (let* ((_%e116370116377%_ _%stx116366%_)
                 (_%E116372116381%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116370116377%_)))
                 (_%E116371116395%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116370116377%_)
                        (let ((_%e116373116385%_
                               (gx#syntax-e _%e116370116377%_)))
                          (let ((_%hd116374116388%_ (##car _%e116373116385%_))
                                (_%tl116375116390%_ (##cdr _%e116373116385%_)))
                            (let ((_%clauses116393%_ _%tl116375116390%_))
                              (if (gx#stx-list? _%clauses116393%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop116369%_ _%clauses116393%_))
                                  (_%E116372116381%_)))))
                        (_%E116372116381%_)))))
            (_%E116371116395%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx116309%_ _%rpath116310%_)
        (let* ((_%e116311116321%_ _%stx116309%_)
               (_%E116313116325%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e116311116321%_)))
               (_%E116312116352%_
                (lambda ()
                  (if (gx#stx-pair? _%e116311116321%_)
                      (let ((_%e116314116329%_
                             (gx#syntax-e _%e116311116321%_)))
                        (let ((_%hd116315116332%_ (##car _%e116314116329%_))
                              (_%tl116316116334%_ (##cdr _%e116314116329%_)))
                          (if (gx#stx-pair? _%tl116316116334%_)
                              (let ((_%e116317116337%_
                                     (gx#syntax-e _%tl116316116334%_)))
                                (let ((_%hd116318116340%_
                                       (##car _%e116317116337%_))
                                      (_%tl116319116342%_
                                       (##cdr _%e116317116337%_)))
                                  (let ((_%path116345%_ _%hd116318116340%_))
                                    (if (gx#stx-null? _%tl116319116342%_)
                                        (if (gx#stx-string? _%path116345%_)
                                            (let ((_%rpath116350%_
                                                   (let ((_%$e116347%_
                                                          _%rpath116310%_))
                                                     (if _%$e116347%_
                                                         _%$e116347%_
                                                         (gx#core-resolve-path__%
                                                          _%path116345%_
                                                          (gx#stx-source
                                                           _%stx116309%_))))))
                                              (if (member _%rpath116350%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx116309%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath116350%_))
                                                    (gx#stx-source
                                                     _%stx116309%_)))))
                                            (_%E116313116325%_))
                                        (_%E116313116325%_)))))
                              (_%E116313116325%_))))
                      (_%E116313116325%_)))))
          (_%E116312116352%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx116359%_)
        (let ((_%rpath116361%_ '#f))
          (gx#core-expand-include%__% _%stx116359%_ _%rpath116361%_))))
    (define gx#core-expand-include%
      (lambda _g117478_
        (let ((_g117477_ (##length _g117478_)))
          (cond ((##fx= _g117477_ 1)
                 (apply gx#core-expand-include%__0 _g117478_))
                ((##fx= _g117477_ 2)
                 (apply gx#core-expand-include%__% _g117478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g117478_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K116275%_ _%stx116276%_ _%method116277%_)
        (if (procedure? _%K116275%_)
            (let ((_%$e116280%_ (gx#stx-source _%stx116276%_)))
              (if _%$e116280%_
                  ((lambda (_%g116282116284%_)
                     (gx#stx-wrap-source
                      (_%K116275%_ _%stx116276%_)
                      _%g116282116284%_))
                   _%$e116280%_)
                  (_%K116275%_ _%stx116276%_)))
            (let ((_%$e116288%_
                   (bound-method-ref _%K116275%_ _%method116277%_)))
              (if _%$e116288%_
                  ((lambda (_%g116290116292%_)
                     (gx#core-apply-expander__%
                      _%g116290116292%_
                      _%stx116276%_
                      _%method116277%_))
                   _%$e116288%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx116276%_
                   _%method116277%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K116299%_ _%stx116300%_)
        (let ((_%method116302%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K116299%_
           _%stx116300%_
           _%method116302%_))))
    (define gx#core-apply-expander
      (lambda _g117480_
        (let ((_g117479_ (##length _g117480_)))
          (cond ((##fx= _g117479_ 2)
                 (apply gx#core-apply-expander__0 _g117480_))
                ((##fx= _g117479_ 3)
                 (apply gx#core-apply-expander__% _g117480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g117480_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116260%_ _%stx116261%_)
        (let ((_%self116264%_ _%self116260%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx116261%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116102%_ _%stx116103%_)
        (let* ((_%self116106%_ _%self116102%_)
               (_%self116115116121%_ _%self116106%_)
               (_%E116117116125%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116115116121%_
                         '((macro-expander K)))
                  '#!void))
               (_%K116118116130%_
                (lambda (_%K116128%_)
                  (gx#core-apply-expander__0 _%K116128%_ _%stx116103%_))))
          (if '#t
              (let* ((_%e116119116133%_
                      (##unchecked-structure-ref
                       _%self116115116121%_
                       '1
                       '#f
                       '#f))
                     (_%K116136%_ _%e116119116133%_))
                (_%K116118116130%_ _%K116136%_))
              (_%E116117116125%_)))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self115944%_ _%stx115945%_)
        (let ((_%self115948%_ _%self115944%_))
          (if (gx#sealed-syntax? _%stx115945%_)
              _%stx115945%_
              (let* ((_%self115957115963%_ _%self115948%_)
                     (_%E115959115967%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self115957115963%_
                               '((core-expander K)))
                        '#!void))
                     (_%K115960115972%_
                      (lambda (_%K115970%_)
                        (gx#core-apply-expander__0
                         _%K115970%_
                         _%stx115945%_))))
                (if '#t
                    (let* ((_%e115961115975%_
                            (##unchecked-structure-ref
                             _%self115957115963%_
                             '1
                             '#f
                             '#f))
                           (_%K115978%_ _%e115961115975%_))
                      (_%K115960115972%_ _%K115978%_))
                    (_%E115959115967%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self115795%_ _%stx115796%_ _%top?115797%_)
        (let ((_%self115800%_ _%self115795%_))
          (if (_%top?115797%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self115800%_
               _%stx115796%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx115796%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self115813%_ _%stx115814%_)
        (let ((_%top?115816%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self115813%_
           _%stx115814%_
           _%top?115816%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g117482_
        (let ((_g117481_ (##length _g117482_)))
          (cond ((##fx= _g117481_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g117482_))
                ((##fx= _g117481_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g117482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g117482_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self115658%_ _%stx115659%_)
        (let ((_%self115662%_ _%self115658%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self115662%_
           _%stx115659%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self115472%_ _%stx115473%_)
        (let* ((_%self115476%_ _%self115472%_)
               (_%self115485115491%_ _%self115476%_)
               (_%E115487115495%_
                (lambda ()
                  (error '"No clause matching"
                         _%self115485115491%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K115488115528%_
                (lambda (_%id115498%_)
                  (let* ((_%e115499115506%_ _%stx115473%_)
                         (_%E115501115510%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e115499115506%_)))
                         (_%E115500115524%_
                          (lambda ()
                            (if (gx#stx-pair? _%e115499115506%_)
                                (let ((_%e115502115514%_
                                       (gx#syntax-e _%e115499115506%_)))
                                  (let ((_%hd115503115517%_
                                         (##car _%e115502115514%_))
                                        (_%tl115504115519%_
                                         (##cdr _%e115502115514%_)))
                                    (let ((_%body115522%_ _%tl115504115519%_))
                                      (if '#t
                                          (gx#core-cons
                                           _%id115498%_
                                           _%body115522%_)
                                          (_%E115501115510%_)))))
                                (_%E115501115510%_)))))
                    (_%E115500115524%_)))))
          (if '#t
              (let* ((_%e115489115531%_
                      (##unchecked-structure-ref
                       _%self115485115491%_
                       '1
                       '#f
                       '#f))
                     (_%id115534%_ _%e115489115531%_))
                (_%K115488115528%_ _%id115534%_))
              (_%E115487115495%_)))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self115298%_ _%stx115299%_ _%method115300%_)
        (let* ((_%self115301115309%_ _%self115298%_)
               (_%E115303115313%_
                (lambda ()
                  (error '"No clause matching"
                         _%self115301115309%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K115304115320%_
                (lambda (_%phi115316%_ _%ctx115317%_ _%K115318%_)
                  (gx#core-apply-user-macro
                   _%K115318%_
                   _%stx115299%_
                   _%ctx115317%_
                   _%phi115316%_
                   _%method115300%_))))
          (if (##structure-instance-of?
               _%self115301115309%_
               'gx#user-expander::t)
              (let* ((_%e115305115323%_
                      (##unchecked-structure-ref
                       _%self115301115309%_
                       '1
                       '#f
                       '#f))
                     (_%K115326%_ _%e115305115323%_)
                     (_%e115306115328%_
                      (##unchecked-structure-ref
                       _%self115301115309%_
                       '2
                       '#f
                       '#f))
                     (_%ctx115331%_ _%e115306115328%_)
                     (_%e115307115333%_
                      (##unchecked-structure-ref
                       _%self115301115309%_
                       '3
                       '#f
                       '#f))
                     (_%phi115336%_ _%e115307115333%_))
                (_%K115304115320%_ _%phi115336%_ _%ctx115331%_ _%K115326%_))
              (_%E115303115313%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self115341%_ _%stx115342%_)
        (let ((_%method115344%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self115341%_
           _%stx115342%_
           _%method115344%_))))
    (define gx#core-apply-user-expander
      (lambda _g117484_
        (let ((_g117483_ (##length _g117484_)))
          (cond ((##fx= _g117483_ 2)
                 (apply gx#core-apply-user-expander__0 _g117484_))
                ((##fx= _g117483_ 3)
                 (apply gx#core-apply-user-expander__% _g117484_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g117484_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K115288%_
               _%stx115289%_
               _%ctx115290%_
               _%phi115291%_
               _%method115292%_)
        (let ((_%mark115294%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx115290%_
                _%phi115291%_
                _%stx115289%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K115288%_
               (gx#stx-apply-mark _%stx115289%_ _%mark115294%_)
               _%method115292%_)
              _%mark115294%_))
           gx#current-expander-marks
           (cons _%mark115294%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115136%_ _%phi115137%_ _%ctx115138%_)
        (let _%lp115140%_ ((_%bind115142%_
                            (gx#core-resolve-identifier__%
                             _%stx115136%_
                             _%phi115137%_
                             _%ctx115138%_)))
          (if (##structure-direct-instance-of?
               _%bind115142%_
               'gx#import-binding::t)
              (_%lp115140%_
               (##unchecked-structure-ref _%bind115142%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind115142%_
                   'gx#alias-binding::t)
                  (_%lp115140%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind115142%_ '4 '#f '#f)
                    _%phi115137%_
                    _%ctx115138%_))
                  _%bind115142%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115150%_)
        (let* ((_%phi115152%_ (gx#current-expander-phi))
               (_%ctx115154%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115150%_
           _%phi115152%_
           _%ctx115154%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115156%_ _%phi115157%_)
        (let ((_%ctx115159%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115156%_
           _%phi115157%_
           _%ctx115159%_))))
    (define gx#resolve-identifier
      (lambda _g117486_
        (let ((_g117485_ (##length _g117486_)))
          (cond ((##fx= _g117485_ 1)
                 (apply gx#resolve-identifier__0 _g117486_))
                ((##fx= _g117485_ 2)
                 (apply gx#resolve-identifier__1 _g117486_))
                ((##fx= _g117485_ 3)
                 (apply gx#resolve-identifier__% _g117486_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g117486_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115091%_
               _%val115092%_
               _%rebind?115093%_
               _%phi115094%_
               _%ctx115095%_)
        (let ((_%rebind?115100%_
               (if (not _%rebind?115093%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?115093%_)
                       _%rebind?115093%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115091%_)
           _%val115092%_
           _%rebind?115100%_
           _%phi115094%_
           _%ctx115095%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115105%_ _%val115106%_)
        (let* ((_%rebind?115108%_ '#f)
               (_%phi115110%_ (gx#current-expander-phi))
               (_%ctx115112%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115105%_
           _%val115106%_
           _%rebind?115108%_
           _%phi115110%_
           _%ctx115112%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115114%_ _%val115115%_ _%rebind?115116%_)
        (let* ((_%phi115118%_ (gx#current-expander-phi))
               (_%ctx115120%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115114%_
           _%val115115%_
           _%rebind?115116%_
           _%phi115118%_
           _%ctx115120%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115122%_ _%val115123%_ _%rebind?115124%_ _%phi115125%_)
        (let ((_%ctx115127%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115122%_
           _%val115123%_
           _%rebind?115124%_
           _%phi115125%_
           _%ctx115127%_))))
    (define gx#bind-identifier!
      (lambda _g117488_
        (let ((_g117487_ (##length _g117488_)))
          (cond ((##fx= _g117487_ 2) (apply gx#bind-identifier!__0 _g117488_))
                ((##fx= _g117487_ 3) (apply gx#bind-identifier!__1 _g117488_))
                ((##fx= _g117487_ 4) (apply gx#bind-identifier!__2 _g117488_))
                ((##fx= _g117487_ 5) (apply gx#bind-identifier!__% _g117488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g117488_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115057%_ _%phi115058%_ _%ctx115059%_)
        (let _%lp115061%_ ((_%e115063%_ _%stx115057%_)
                           (_%marks115064%_ (gx#current-expander-marks)))
          (if (symbol? _%e115063%_)
              (gx#core-resolve-binding
               _%e115063%_
               _%phi115058%_
               _%phi115058%_
               _%ctx115059%_
               (reverse _%marks115064%_))
              (if (gx#identifier-quote? _%e115063%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e115063%_ '1 '#f '#f)
                   _%phi115058%_
                   '0
                   (##unchecked-structure-ref _%e115063%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e115063%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e115063%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e115063%_ '1 '#f '#f)
                       _%phi115058%_
                       _%phi115058%_
                       _%ctx115059%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e115063%_ '3 '#f '#f)
                        _%marks115064%_))
                      (if (##structure-direct-instance-of?
                           _%e115063%_
                           'gx#syntax-wrap::t)
                          (_%lp115061%_
                           (##unchecked-structure-ref _%e115063%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e115063%_ '3 '#f '#f)
                            _%marks115064%_))
                          (if (##structure-instance-of?
                               _%e115063%_
                               'gerbil#AST::t)
                              (_%lp115061%_
                               (##unchecked-structure-ref
                                _%e115063%_
                                '1
                                '#f
                                '#f)
                               _%marks115064%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx115057%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115075%_)
        (let* ((_%phi115077%_ (gx#current-expander-phi))
               (_%ctx115079%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115075%_
           _%phi115077%_
           _%ctx115079%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115081%_ _%phi115082%_)
        (let ((_%ctx115084%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115081%_
           _%phi115082%_
           _%ctx115084%_))))
    (define gx#core-resolve-identifier
      (lambda _g117490_
        (let ((_g117489_ (##length _g117490_)))
          (cond ((##fx= _g117489_ 1)
                 (apply gx#core-resolve-identifier__0 _g117490_))
                ((##fx= _g117489_ 2)
                 (apply gx#core-resolve-identifier__1 _g117490_))
                ((##fx= _g117489_ 3)
                 (apply gx#core-resolve-identifier__% _g117490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g117490_))))))
    (define gx#core-resolve-binding
      (lambda (_%id114967%_
               _%phi114968%_
               _%src-phi114969%_
               _%ctx114970%_
               _%marks114971%_)
        (letrec ((_%resolve114973%_
                  (lambda (_%ctx115041%_ _%src-phi115042%_ _%key115043%_)
                    (let _%lp115045%_ ((_%ctx115047%_
                                        (gx#core-context-shift
                                         _%ctx115041%_
                                         _%phi114968%_))
                                       (_%dphi115048%_
                                        (fx- _%phi114968%_ _%src-phi115042%_)))
                      (let ((_%$e115050%_
                             (gx#core-context-resolve
                              _%ctx115047%_
                              _%key115043%_)))
                        (if _%$e115050%_
                            (values _%$e115050%_)
                            (if (fxzero? _%dphi115048%_)
                                '#f
                                (if (fxpositive? _%dphi115048%_)
                                    (_%lp115045%_
                                     (gx#core-context-shift _%ctx115047%_ '-1)
                                     (##fx- _%dphi115048%_ '1))
                                    (_%lp115045%_
                                     (gx#core-context-shift _%ctx115047%_ '1)
                                     (##fx+ _%dphi115048%_ '1))))))))))
          (let _%lp114975%_ ((_%ctx114977%_ _%ctx114970%_)
                             (_%src-phi114978%_ _%src-phi114969%_)
                             (_%rest114979%_ _%marks114971%_))
            (let* ((_%rest114980114988%_ _%rest114979%_)
                   (_%else114982114996%_
                    (lambda ()
                      (_%resolve114973%_
                       _%ctx114977%_
                       _%src-phi114978%_
                       _%id114967%_)))
                   (_%K114984115029%_
                    (lambda (_%rest114999%_ _%hd115000%_)
                      (let* ((_%hd115001115007%_ _%hd115000%_)
                             (_%E115003115011%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115001115007%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115004115021%_
                              (lambda (_%subst115014%_)
                                (let ((_%$e115018%_
                                       (let ((_%key115016%_
                                              (if _%subst115014%_
                                                  (hash-get
                                                   _%subst115014%_
                                                   _%id114967%_)
                                                  '#f)))
                                         (if _%key115016%_
                                             (_%resolve114973%_
                                              _%ctx114977%_
                                              _%src-phi114978%_
                                              _%key115016%_)
                                             '#f))))
                                  (if _%$e115018%_
                                      _%$e115018%_
                                      (_%lp114975%_
                                       (##unchecked-structure-ref
                                        _%hd115000%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115000%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest114999%_))))))
                        (if (##structure-instance-of?
                             _%hd115001115007%_
                             'gx#expander-mark::t)
                            (let* ((_%e115005115024%_
                                    (##unchecked-structure-ref
                                     _%hd115001115007%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115027%_ _%e115005115024%_))
                              (_%K115004115021%_ _%subst115027%_))
                            (_%E115003115011%_))))))
              (if (##pair? _%rest114980114988%_)
                  (let ((_%hd114985115032%_ (##car _%rest114980114988%_))
                        (_%tl114986115034%_ (##cdr _%rest114980114988%_)))
                    (let* ((_%hd115037%_ _%hd114985115032%_)
                           (_%rest115039%_ _%tl114986115034%_))
                      (_%K114984115029%_ _%rest115039%_ _%hd115037%_)))
                  (_%else114982114996%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key114837%_
               _%val114838%_
               _%rebind?114839%_
               _%phi114840%_
               _%ctx114841%_)
        (letrec ((_%update-binding114843%_
                  (lambda (_%xval114916%_)
                    (if (or (_%rebind?114839%_
                             _%ctx114841%_
                             _%xval114916%_
                             _%val114838%_)
                            (and (##structure-direct-instance-of?
                                  _%xval114916%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval114916%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val114838%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val114838%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval114916%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val114838%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val114838%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval114916%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val114838%_
                        (if (and (##structure-direct-instance-of?
                                  _%val114838%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val114838%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval114916%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val114838%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval114916%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval114916%_
                            (if (and (##structure-direct-instance-of?
                                      _%val114838%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval114916%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key114837%_
                                 (cons (##unchecked-structure-ref
                                        _%val114838%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val114838%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval114916%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval114916%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval114916%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval114916%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key114837%_
                                 _%val114838%_
                                 _%xval114916%_))))))
                 (_%gensubst114844%_
                  (lambda (_%subst114911%_ _%id114912%_)
                    (let ((_%eid114914%_
                           (gensym (if (uninterned-symbol? _%id114912%_)
                                       '%
                                       _%id114912%_))))
                      (hash-put! _%subst114911%_ _%id114912%_ _%eid114914%_)
                      _%eid114914%_)))
                 (_%subst!114845%_
                  (lambda (_%key114847%_)
                    (let* ((_%key114848114856%_ _%key114847%_)
                           (_%else114850114864%_ (lambda () _%key114847%_))
                           (_%K114852114899%_
                            (lambda (_%mark114867%_ _%id114868%_)
                              (let* ((_%mark114869114875%_ _%mark114867%_)
                                     (_%E114871114879%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark114869114875%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K114872114891%_
                                      (lambda (_%subst114882%_)
                                        (if (not _%subst114882%_)
                                            (let ((_%subst114885%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark114867%_
                                               _%subst114885%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst114844%_
                                               _%subst114885%_
                                               _%id114868%_))
                                            (let ((_%$e114887%_
                                                   (hash-get
                                                    _%subst114882%_
                                                    _%id114868%_)))
                                              (if _%$e114887%_
                                                  (values _%$e114887%_)
                                                  (_%gensubst114844%_
                                                   _%subst114882%_
                                                   _%id114868%_)))))))
                                (if (##structure-instance-of?
                                     _%mark114869114875%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e114873114894%_
                                            (##unchecked-structure-ref
                                             _%mark114869114875%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst114897%_ _%e114873114894%_))
                                      (_%K114872114891%_ _%subst114897%_))
                                    (_%E114871114879%_))))))
                      (if (##pair? _%key114848114856%_)
                          (let ((_%hd114853114902%_
                                 (##car _%key114848114856%_))
                                (_%tl114854114904%_
                                 (##cdr _%key114848114856%_)))
                            (let* ((_%id114907%_ _%hd114853114902%_)
                                   (_%mark114909%_ _%tl114854114904%_))
                              (_%K114852114899%_ _%mark114909%_ _%id114907%_)))
                          (_%else114850114864%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx114841%_ _%phi114840%_)
           (_%subst!114845%_ _%key114837%_)
           _%val114838%_
           _%update-binding114843%_))))
    (define gx#core-bind!__0
      (lambda (_%key114937%_ _%val114938%_)
        (let* ((_%rebind?114940%_ false)
               (_%phi114942%_ (gx#current-expander-phi))
               (_%ctx114944%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key114937%_
           _%val114938%_
           _%rebind?114940%_
           _%phi114942%_
           _%ctx114944%_))))
    (define gx#core-bind!__1
      (lambda (_%key114946%_ _%val114947%_ _%rebind?114948%_)
        (let* ((_%phi114950%_ (gx#current-expander-phi))
               (_%ctx114952%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key114946%_
           _%val114947%_
           _%rebind?114948%_
           _%phi114950%_
           _%ctx114952%_))))
    (define gx#core-bind!__2
      (lambda (_%key114954%_ _%val114955%_ _%rebind?114956%_ _%phi114957%_)
        (let ((_%ctx114959%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key114954%_
           _%val114955%_
           _%rebind?114956%_
           _%phi114957%_
           _%ctx114959%_))))
    (define gx#core-bind!
      (lambda _g117492_
        (let ((_g117491_ (##length _g117492_)))
          (cond ((##fx= _g117491_ 2) (apply gx#core-bind!__0 _g117492_))
                ((##fx= _g117491_ 3) (apply gx#core-bind!__1 _g117492_))
                ((##fx= _g117491_ 4) (apply gx#core-bind!__2 _g117492_))
                ((##fx= _g117491_ 5) (apply gx#core-bind!__% _g117492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g117492_))))))
    (define gx#core-identifier-key
      (lambda (_%stx114768%_)
        (if (symbol? _%stx114768%_)
            (let* ((_%g114770114778%_ (gx#current-expander-marks))
                   (_%else114772114786%_ (lambda () _%stx114768%_))
                   (_%K114774114791%_
                    (lambda (_%hd114789%_) (cons _%stx114768%_ _%hd114789%_))))
              (if (##pair? _%g114770114778%_)
                  (let* ((_%hd114775114794%_ (##car _%g114770114778%_))
                         (_%hd114797%_ _%hd114775114794%_))
                    (_%K114774114791%_ _%hd114797%_))
                  (_%else114772114786%_)))
            (if (gx#identifier? _%stx114768%_)
                (let* ((_%id114800%_ (gx#syntax-local-unwrap _%stx114768%_))
                       (_%eid114802%_ (gx#stx-e _%id114800%_))
                       (_%marks114804%_
                        (gx#stx-identifier-marks* _%id114800%_))
                       (_%marks114806114814%_ _%marks114804%_)
                       (_%else114808114822%_ (lambda () _%eid114802%_))
                       (_%K114810114827%_
                        (lambda (_%hd114825%_)
                          (cons _%eid114802%_ _%hd114825%_))))
                  (if (##pair? _%marks114806114814%_)
                      (let* ((_%hd114811114830%_ (##car _%marks114806114814%_))
                             (_%hd114833%_ _%hd114811114830%_))
                        (_%K114810114827%_ _%hd114833%_))
                      (_%else114808114822%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx114768%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx114707%_ _%phi114708%_)
        (letrec ((_%make-phi114710%_
                  (lambda (_%super114766%_)
                    (let ((__obj117464
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj117464
                       (##gensym 'phi)
                       _%super114766%_)
                      __obj117464)))
                 (_%make-phi/up114711%_
                  (lambda (_%ctx114761%_ _%super114762%_)
                    (let ((_%ctx+1114764%_
                           (_%make-phi114710%_ _%super114762%_)))
                      (##unchecked-structure-set!
                       _%ctx114761%_
                       _%ctx+1114764%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1114764%_
                       _%ctx114761%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1114764%_)))
                 (_%make-phi/down114712%_
                  (lambda (_%ctx114756%_ _%super114757%_)
                    (let ((_%ctx-1114759%_
                           (_%make-phi114710%_ _%super114757%_)))
                      (##unchecked-structure-set!
                       _%ctx-1114759%_
                       _%ctx114756%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx114756%_
                       _%ctx-1114759%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1114759%_)))
                 (_%shift114713%_
                  (lambda (_%ctx114739%_
                           _%delta114740%_
                           _%make-delta-context114741%_
                           _%phi114742%_
                           _%K114743%_)
                    (let ((_%$e114745%_
                           (##unchecked-structure-ref
                            _%ctx114739%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e114745%_
                          ((lambda (_%super114748%_)
                             (let* ((_%super114750%_
                                     (_%K114743%_
                                      _%super114748%_
                                      _%delta114740%_))
                                    (_%ctx+d114752%_
                                     (_%make-delta-context114741%_
                                      _%ctx114739%_
                                      _%super114750%_)))
                               (_%K114743%_
                                _%ctx+d114752%_
                                (fx- _%phi114742%_ _%delta114740%_))))
                           _%$e114745%_)
                          (error '"Bad context" _%ctx114739%_))))))
          (let _%K114715%_ ((_%ctx114717%_ _%ctx114707%_)
                            (_%phi114718%_ _%phi114708%_))
            (if (fxzero? _%phi114718%_)
                _%ctx114717%_
                (if (##structure-instance-of? _%ctx114717%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi114718%_)
                        (let ((_%$e114722%_
                               (##unchecked-structure-ref
                                _%ctx114717%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e114722%_
                              ((lambda (_%g114724114726%_)
                                 (_%K114715%_
                                  _%g114724114726%_
                                  (##fx- _%phi114718%_ '1)))
                               _%$e114722%_)
                              (_%shift114713%_
                               _%ctx114717%_
                               '1
                               _%make-phi/up114711%_
                               _%phi114718%_
                               _%K114715%_)))
                        (let ((_%$e114730%_
                               (##unchecked-structure-ref
                                _%ctx114717%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e114730%_
                              ((lambda (_%g114732114734%_)
                                 (_%K114715%_
                                  _%g114732114734%_
                                  (##fx+ _%phi114718%_ '1)))
                               _%$e114730%_)
                              (_%shift114713%_
                               _%ctx114717%_
                               '-1
                               _%make-phi/down114712%_
                               _%phi114718%_
                               _%K114715%_))))
                    _%ctx114717%_))))))
    (define gx#core-context-get
      (lambda (_%ctx114704%_ _%key114705%_)
        (hash-get
         (##unchecked-structure-ref _%ctx114704%_ '2 '#f '#f)
         _%key114705%_)))
    (define gx#core-context-put!
      (lambda (_%ctx114700%_ _%key114701%_ _%val114702%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx114700%_ '2 '#f '#f)
         _%key114701%_
         _%val114702%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx114686%_ _%key114687%_)
        (let _%lp114689%_ ((_%ctx114691%_ _%ctx114686%_))
          (let ((_%$e114693%_
                 (gx#core-context-get _%ctx114691%_ _%key114687%_)))
            (if _%$e114693%_
                (values _%$e114693%_)
                (let ((_%$e114696%_
                       (if (##structure-instance-of?
                            _%ctx114691%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx114691%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e114696%_ (_%lp114689%_ _%$e114696%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx114675%_ _%key114676%_ _%val114677%_ _%rebind114678%_)
        (let ((_%$e114680%_ (gx#core-context-get _%ctx114675%_ _%key114676%_)))
          (if _%$e114680%_
              ((lambda (_%xval114683%_)
                 (gx#core-context-put!
                  _%ctx114675%_
                  _%key114676%_
                  (_%rebind114678%_ _%xval114683%_)))
               _%$e114680%_)
              (gx#core-context-put!
               _%ctx114675%_
               _%key114676%_
               _%val114677%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx114650%_ _%stop?114651%_)
        (let _%lp114653%_ ((_%ctx114655%_ _%ctx114650%_))
          (if (_%stop?114651%_ _%ctx114655%_)
              _%ctx114655%_
              (if (##structure-instance-of? _%ctx114655%_ 'gx#phi-context::t)
                  (_%lp114653%_
                   (##unchecked-structure-ref _%ctx114655%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx114664%_ (gx#current-expander-context))
               (_%stop?114666%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114664%_ _%stop?114666%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx114668%_)
        (let ((_%stop?114670%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114668%_ _%stop?114670%_))))
    (define gx#core-context-top
      (lambda _g117494_
        (let ((_g117493_ (##length _g117494_)))
          (cond ((##fx= _g117493_ 0) (apply gx#core-context-top__0 _g117494_))
                ((##fx= _g117493_ 1) (apply gx#core-context-top__1 _g117494_))
                ((##fx= _g117493_ 2) (apply gx#core-context-top__% _g117494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g117494_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx114635%_)
        (let _%lp114637%_ ((_%ctx114639%_ _%ctx114635%_))
          (if (##structure-instance-of? _%ctx114639%_ 'gx#phi-context::t)
              (_%lp114637%_
               (##unchecked-structure-ref _%ctx114639%_ '3 '#f '#f))
              _%ctx114639%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx114645%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx114645%_))))
    (define gx#core-context-root
      (lambda _g117496_
        (let ((_g117495_ (##length _g117496_)))
          (cond ((##fx= _g117495_ 0) (apply gx#core-context-root__0 _g117496_))
                ((##fx= _g117495_ 1) (apply gx#core-context-root__% _g117496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g117496_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx114617%_ . _%ignore114618%_)
        (let ((_%$e114620%_ (gx#current-expander-allow-rebind?)))
          (if _%$e114620%_
              _%$e114620%_
              (if (##structure-instance-of? _%ctx114617%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx114617%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx114617%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx114627%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx114627%_))))
    (define gx#core-context-rebind?
      (lambda _g117498_
        (let ((_g117497_ (##length _g117498_)))
          (cond ((##fx= _g117497_ 0)
                 (apply gx#core-context-rebind?__0 _g117498_))
                ((##fx= _g117497_ 1)
                 (apply gx#core-context-rebind?__% _g117498_))
                ((##fx>= _g117497_ 1)
                 (apply gx#core-context-rebind?__% _g117498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g117498_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx114600%_)
        (let ((_%$e114602%_ (gx#core-context-top__1 _%ctx114600%_)))
          (if _%$e114602%_
              ((lambda (_%ctx114605%_)
                 (if (##structure-instance-of?
                      _%ctx114605%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx114605%_ '6 '#f '#f)
                     '#f))
               _%$e114602%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx114612%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx114612%_))))
    (define gx#core-context-namespace
      (lambda _g117500_
        (let ((_g117499_ (##length _g117500_)))
          (cond ((##fx= _g117499_ 0)
                 (apply gx#core-context-namespace__0 _g117500_))
                ((##fx= _g117499_ 1)
                 (apply gx#core-context-namespace__% _g117500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g117500_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind114586%_ _%is?114587%_)
        (if (##structure-direct-instance-of?
             _%bind114586%_
             'gx#syntax-binding::t)
            (_%is?114587%_
             (##unchecked-structure-ref _%bind114586%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind114592%_)
        (let ((_%is?114594%_ gx#expander?))
          (gx#expander-binding?__% _%bind114592%_ _%is?114594%_))))
    (define gx#expander-binding?
      (lambda _g117502_
        (let ((_g117501_ (##length _g117502_)))
          (cond ((##fx= _g117501_ 1) (apply gx#expander-binding?__0 _g117502_))
                ((##fx= _g117501_ 2) (apply gx#expander-binding?__% _g117502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g117502_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind114583%_)
        (gx#expander-binding?__% _%bind114583%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind114581%_)
        (gx#expander-binding?__% _%bind114581%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind114575%_)
        (letrec ((_%direct-special-form?114577%_
                  (lambda (_%obj114579%_)
                    (##structure-direct-instance-of?
                     _%obj114579%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind114575%_
           _%direct-special-form?114577%_))))
    (define gx#special-form-binding?
      (lambda (_%bind114573%_)
        (gx#expander-binding?__% _%bind114573%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind114564%_)
        (letrec ((_%feature?114566%_
                  (lambda (_%e114568%_)
                    (let ((_%$e114570%_
                           (##structure-instance-of?
                            _%e114568%_
                            'gx#feature-expander::t)))
                      (if _%$e114570%_
                          _%$e114570%_
                          (##structure-instance-of?
                           _%e114568%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind114564%_ _%feature?114566%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind114562%_)
        (gx#expander-binding?__% _%bind114562%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id114549%_ _%bound?114550%_)
        (if (gx#identifier? _%id114549%_)
            (_%bound?114550%_ (gx#resolve-identifier__0 _%id114549%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id114555%_)
        (let ((_%bound?114557%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id114555%_ _%bound?114557%_))))
    (define gx#core-bound-identifier?
      (lambda _g117504_
        (let ((_g117503_ (##length _g117504_)))
          (cond ((##fx= _g117503_ 1)
                 (apply gx#core-bound-identifier?__0 _g117504_))
                ((##fx= _g117503_ 2)
                 (apply gx#core-bound-identifier?__% _g117504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g117504_))))))
    (define gx#core-identifier=?
      (lambda (_%x114539%_ _%y114540%_)
        (letrec ((_%y=?114542%_
                  (lambda (_%xid114546%_)
                    ((if (list? _%y114540%_) memq eq?)
                     _%xid114546%_
                     _%y114540%_))))
          (let ((_%bind114544%_ (gx#resolve-identifier__0 _%x114539%_)))
            (if (##structure-instance-of? _%bind114544%_ 'gx#binding::t)
                (_%y=?114542%_
                 (##unchecked-structure-ref _%bind114544%_ '1 '#f '#f))
                (_%y=?114542%_ (gx#stx-e _%x114539%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e114537%_)
        (if (interned-symbol? _%e114537%_)
            (string-index__0 (symbol->string _%e114537%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx114490%_ _%src114491%_ _%ctx114492%_ _%marks114493%_)
        (if (##structure? _%stx114490%_)
            (let ((_%$e114495%_ (gx#sealed-syntax-unwrap _%stx114490%_)))
              (if _%$e114495%_
                  (values _%$e114495%_)
                  (if (gx#identifier? _%stx114490%_)
                      (let ((_%id114499%_
                             (gx#stx-unwrap__% _%stx114490%_ _%marks114493%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id114499%_ '1 '#f '#f)
                         (let ((_%$e114501%_
                                (##unchecked-structure-ref
                                 _%id114499%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e114501%_ _%$e114501%_ _%src114491%_))
                         _%ctx114492%_
                         (##unchecked-structure-ref _%id114499%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx114490%_)
                       (let ((_%$e114505%_ (gx#stx-source _%stx114490%_)))
                         (if _%$e114505%_ _%$e114505%_ _%src114491%_))
                       _%ctx114492%_
                       (reverse _%marks114493%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx114490%_
             _%src114491%_
             _%ctx114492%_
             (reverse _%marks114493%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx114511%_)
        (let* ((_%src114513%_ '#f)
               (_%ctx114515%_ (gx#current-expander-context))
               (_%marks114517%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114511%_
           _%src114513%_
           _%ctx114515%_
           _%marks114517%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx114519%_ _%src114520%_)
        (let* ((_%ctx114522%_ (gx#current-expander-context))
               (_%marks114524%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114519%_
           _%src114520%_
           _%ctx114522%_
           _%marks114524%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx114526%_ _%src114527%_ _%ctx114528%_)
        (let ((_%marks114530%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114526%_
           _%src114527%_
           _%ctx114528%_
           _%marks114530%_))))
    (define gx#core-quote-syntax
      (lambda _g117506_
        (let ((_g117505_ (##length _g117506_)))
          (cond ((##fx= _g117505_ 1) (apply gx#core-quote-syntax__0 _g117506_))
                ((##fx= _g117505_ 2) (apply gx#core-quote-syntax__1 _g117506_))
                ((##fx= _g117505_ 3) (apply gx#core-quote-syntax__2 _g117506_))
                ((##fx= _g117505_ 4) (apply gx#core-quote-syntax__% _g117506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g117506_))))))
    (define gx#core-cons
      (lambda (_%hd114486%_ _%tl114487%_)
        (cons (gx#core-quote-syntax__0 _%hd114486%_) _%tl114487%_)))
    (define gx#core-list
      (lambda (_%hd114483%_ . _%rest114484%_)
        (cons (gx#core-quote-syntax__0 _%hd114483%_) _%rest114484%_)))
    (define gx#core-cons*
      (lambda (_%hd114480%_ . _%rest114481%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd114480%_) _%rest114481%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path114449%_ _%rel114450%_)
        (let ((_%path114467%_ (gx#stx-e _%stx-path114449%_))
              (_%reldir114468%_
               (let _%lp114452%_ ((_%relsrc114454%_
                                   (let ((_%$e114464%_
                                          (gx#stx-source _%stx-path114449%_)))
                                     (if _%$e114464%_
                                         _%$e114464%_
                                         _%rel114450%_))))
                 (if (##structure-instance-of? _%relsrc114454%_ 'gerbil#AST::t)
                     (_%lp114452%_
                      (let ((_%$e114457%_ (gx#stx-source _%relsrc114454%_)))
                        (if _%$e114457%_
                            _%$e114457%_
                            (gx#stx-e _%relsrc114454%_))))
                     (if (source-location-path? _%relsrc114454%_)
                         (path-directory
                          (source-location-path _%relsrc114454%_))
                         (if (string? _%relsrc114454%_)
                             (path-directory _%relsrc114454%_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _%path114467%_ (path-normalize _%reldir114468%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path114473%_)
        (let ((_%rel114475%_ '#f))
          (gx#core-resolve-path__% _%stx-path114473%_ _%rel114475%_))))
    (define gx#core-resolve-path
      (lambda _g117508_
        (let ((_g117507_ (##length _g117508_)))
          (cond ((##fx= _g117507_ 1) (apply gx#core-resolve-path__0 _g117508_))
                ((##fx= _g117507_ 2) (apply gx#core-resolve-path__% _g117508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g117508_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr114405%_ _%ctx114406%_)
        (let* ((_%repr114407114414%_ _%repr114405%_)
               (_%E114409114418%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr114407114414%_
                         '([phi . subs]))
                  '#!void))
               (_%K114410114426%_
                (lambda (_%subs114421%_ _%phi114422%_)
                  (let ((_%subst114424%_
                         (if (not (null? _%subs114421%_))
                             (list->hash-table-eq _%subs114421%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst114424%_
                     _%ctx114406%_
                     _%phi114422%_
                     '#f)))))
          (if (##pair? _%repr114407114414%_)
              (let ((_%hd114411114429%_ (##car _%repr114407114414%_))
                    (_%tl114412114431%_ (##cdr _%repr114407114414%_)))
                (let* ((_%phi114434%_ _%hd114411114429%_)
                       (_%subs114436%_ _%tl114412114431%_))
                  (_%K114410114426%_ _%subs114436%_ _%phi114434%_)))
              (_%E114409114418%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr114441%_)
        (let ((_%ctx114443%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr114441%_ _%ctx114443%_))))
    (define gx#core-deserialize-mark
      (lambda _g117510_
        (let ((_g117509_ (##length _g117510_)))
          (cond ((##fx= _g117509_ 1)
                 (apply gx#core-deserialize-mark__0 _g117510_))
                ((##fx= _g117509_ 2)
                 (apply gx#core-deserialize-mark__% _g117510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g117510_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx114402%_)
        (gx#stx-rewrap _%stx114402%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx114400%_)
        (gx#stx-unwrap__% _%stx114400%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx114370%_)
        (let* ((_%g114371114379%_ (gx#current-expander-marks))
               (_%else114373114387%_ (lambda () _%stx114370%_))
               (_%K114375114392%_
                (lambda (_%hd114390%_)
                  (gx#stx-apply-mark _%stx114370%_ _%hd114390%_))))
          (if (##pair? _%g114371114379%_)
              (let* ((_%hd114376114395%_ (##car _%g114371114379%_))
                     (_%hd114398%_ _%hd114376114395%_))
                (_%K114375114392%_ _%hd114398%_))
              (_%else114373114387%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx114355%_ _%E114356%_)
        (let ((_%bind114358%_ (gx#resolve-identifier__0 _%stx114355%_)))
          (if (##structure-direct-instance-of?
               _%bind114358%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind114358%_ '4 '#f '#f)
              (_%E114356%_ _%stx114355%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx114363%_)
        (let ((_%E114365%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx114363%_ _%E114365%_))))
    (define gx#syntax-local-e
      (lambda _g117512_
        (let ((_g117511_ (##length _g117512_)))
          (cond ((##fx= _g117511_ 1) (apply gx#syntax-local-e__0 _g117512_))
                ((##fx= _g117511_ 2) (apply gx#syntax-local-e__% _g117512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g117512_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx114339%_ _%E114340%_)
        (let ((_%e114342%_ (gx#syntax-local-e__% _%stx114339%_ _%E114340%_)))
          (if (##structure-instance-of? _%e114342%_ 'gx#expander::t)
              (##structure-ref _%e114342%_ '1 gx#expander::t '#f)
              _%e114342%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx114347%_)
        (let ((_%E114349%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx114347%_ _%E114349%_))))
    (define gx#syntax-local-value
      (lambda _g117514_
        (let ((_g117513_ (##length _g117514_)))
          (cond ((##fx= _g117513_ 1)
                 (apply gx#syntax-local-value__0 _g117514_))
                ((##fx= _g117513_ 2)
                 (apply gx#syntax-local-value__% _g117514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g117514_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx114336%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx114336%_)))))
