(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712702630)
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
      (lambda _%$args117485%_
        (apply make-instance gx#expander-context::t _%$args117485%_)))
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
      (lambda _%$args117482%_
        (apply make-instance gx#root-context::t _%$args117482%_)))
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
      (lambda _%$args117479%_
        (apply make-instance gx#phi-context::t _%$args117479%_)))
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
      (lambda _%$args117476%_
        (apply make-instance gx#top-context::t _%$args117476%_)))
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
      (lambda _%$args117473%_
        (apply make-instance gx#module-context::t _%$args117473%_)))
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
      (lambda _%$args117470%_
        (apply make-instance gx#prelude-context::t _%$args117470%_)))
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
      (lambda _%$args117467%_
        (apply make-instance gx#local-context::t _%$args117467%_)))
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
      (lambda (_%self117440%_ _%id117441%_ _%super117442%_)
        (let ((_%self117445%_ _%self117440%_))
          (if (##fx< '3 (##structure-length _%self117445%_))
              (begin
                (##unchecked-structure-set!
                 _%self117445%_
                 _%id117441%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117445%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117445%_
                 _%super117442%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self117445%_
                     '3
                     (##vector-length _%self117445%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self117458%_ _%id117459%_)
        (let ((_%super117461%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self117458%_
           _%id117459%_
           _%super117461%_))))
    (define gx#phi-context:::init!
      (lambda _g117528_
        (let ((_g117527_ (##length _g117528_)))
          (cond ((##fx= _g117527_ 2)
                 (apply gx#phi-context:::init!__0 _g117528_))
                ((##fx= _g117527_ 3)
                 (apply gx#phi-context:::init!__% _g117528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g117528_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117293%_ _%super117294%_)
        (let ((_%self117297%_ _%self117293%_))
          (if (##fx< '3 (##structure-length _%self117297%_))
              (begin
                (##unchecked-structure-set!
                 _%self117297%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117297%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117297%_
                 _%super117294%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self117297%_
                     '3
                     (##vector-length _%self117297%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self117310%_)
        (let ((_%super117312%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self117310%_ _%super117312%_))))
    (define gx#local-context:::init!
      (lambda _g117530_
        (let ((_g117529_ (##length _g117530_)))
          (cond ((##fx= _g117529_ 1)
                 (apply gx#local-context:::init!__0 _g117530_))
                ((##fx= _g117529_ 2)
                 (apply gx#local-context:::init!__% _g117530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g117530_))))))
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
      (lambda _%$args117167%_
        (apply make-instance gx#binding::t _%$args117167%_)))
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
      (lambda _%$args117164%_
        (apply make-instance gx#runtime-binding::t _%$args117164%_)))
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
      (lambda _%$args117161%_
        (apply make-instance gx#local-binding::t _%$args117161%_)))
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
      (lambda _%$args117158%_
        (apply make-instance gx#top-binding::t _%$args117158%_)))
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
      (lambda _%$args117155%_
        (apply make-instance gx#module-binding::t _%$args117155%_)))
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
      (lambda _%$args117152%_
        (apply make-instance gx#extern-binding::t _%$args117152%_)))
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
      (lambda _%$args117149%_
        (apply make-instance gx#syntax-binding::t _%$args117149%_)))
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
      (lambda _%$args117146%_
        (apply make-instance gx#import-binding::t _%$args117146%_)))
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
      (lambda _%$args117143%_
        (apply make-instance gx#alias-binding::t _%$args117143%_)))
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
      (lambda _%$args117140%_
        (apply make-instance gx#expander::t _%$args117140%_)))
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
      (lambda _%$args117137%_
        (apply make-instance gx#core-expander::t _%$args117137%_)))
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
      (lambda _%$args117134%_
        (apply make-instance gx#expression-form::t _%$args117134%_)))
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
      (lambda _%$args117131%_
        (apply make-instance gx#special-form::t _%$args117131%_)))
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
      (lambda _%$args117128%_
        (apply make-instance gx#definition-form::t _%$args117128%_)))
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
      (lambda _%$args117125%_
        (apply make-instance gx#top-special-form::t _%$args117125%_)))
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
      (lambda _%$args117122%_
        (apply make-instance gx#module-special-form::t _%$args117122%_)))
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
      (lambda _%$args117119%_
        (apply make-instance gx#feature-expander::t _%$args117119%_)))
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
      (lambda _%$args117116%_
        (apply make-instance gx#private-feature-expander::t _%$args117116%_)))
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
      (lambda _%$args117113%_
        (apply make-instance gx#reserved-expander::t _%$args117113%_)))
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
      (lambda _%$args117110%_
        (apply make-instance gx#macro-expander::t _%$args117110%_)))
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
      (lambda _%$args117107%_
        (apply make-instance gx#rename-macro-expander::t _%$args117107%_)))
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
      (lambda _%$args117104%_
        (apply make-instance gx#user-expander::t _%$args117104%_)))
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
      (lambda _%$args117101%_
        (apply make-instance gx#expander-mark::t _%$args117101%_)))
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
      (lambda (_%ctx117085%_
               _%message117086%_
               _%stx117087%_
               .
               _%details117088%_)
        (let ((_%ctx117099%_
               (let ((_%$e117090%_ _%ctx117085%_))
                 (if _%$e117090%_
                     _%$e117090%_
                     (let ((_%$e117093%_ (gx#core-context-top__0)))
                       (if _%$e117093%_
                           ((lambda (_%ctx117096%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117096%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117093%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message117086%_
                  (cons _%stx117087%_ _%details117088%_)
                  _%ctx117099%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117072%_ _%expression?117073%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117072%_ _%expression?117073%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117078%_)
        (let ((_%expression?117080%_ '#f))
          (gx#eval-syntax__% _%stx117078%_ _%expression?117080%_))))
    (define gx#eval-syntax
      (lambda _g117532_
        (let ((_g117531_ (##length _g117532_)))
          (cond ((##fx= _g117531_ 1) (apply gx#eval-syntax__0 _g117532_))
                ((##fx= _g117531_ 2) (apply gx#eval-syntax__% _g117532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g117532_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117069%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117069%_))))
    (define gx#core-expand__%
      (lambda (_%stx117056%_ _%expression?117057%_)
        (if _%expression?117057%_
            (gx#core-expand-expression _%stx117056%_)
            (gx#core-expand-top _%stx117056%_))))
    (define gx#core-expand__0
      (lambda (_%stx117062%_)
        (let ((_%expression?117064%_ '#f))
          (gx#core-expand__% _%stx117062%_ _%expression?117064%_))))
    (define gx#core-expand
      (lambda _g117534_
        (let ((_g117533_ (##length _g117534_)))
          (cond ((##fx= _g117533_ 1) (apply gx#core-expand__0 _g117534_))
                ((##fx= _g117533_ 2) (apply gx#core-expand__% _g117534_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g117534_))))))
    (define gx#core-expand-top
      (lambda (_%stx117023%_)
        (let* ((_%stx117025%_ (gx#core-expand*__0 _%stx117023%_))
               (_%e117026117033%_ _%stx117025%_)
               (_%E117028117037%_
                (lambda () (gx#core-expand-expression _%stx117025%_)))
               (_%E117027117051%_
                (lambda ()
                  (if (gx#stx-pair? _%e117026117033%_)
                      (let ((_%e117029117041%_
                             (gx#syntax-e _%e117026117033%_)))
                        (let ((_%hd117030117044%_ (##car _%e117029117041%_))
                              (_%tl117031117046%_ (##cdr _%e117029117041%_)))
                          (let ((_%form117049%_ _%hd117030117044%_))
                            (if (gx#core-bound-identifier?__0 _%form117049%_)
                                _%stx117025%_
                                (_%E117028117037%_)))))
                      (_%E117028117037%_)))))
          (_%E117027117051%_))))
    (define gx#core-expand-expression
      (lambda (_%stx116955%_)
        (letrec ((_%sealed-expression?116957%_
                  (lambda (_%hd116993%_)
                    (if (gx#sealed-syntax? _%hd116993%_)
                        (let* ((_%e116994117001%_ _%hd116993%_)
                               (_%E116996117005%_ (lambda () '#f))
                               (_%E116995117019%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e116994117001%_)
                                      (let ((_%e116997117009%_
                                             (gx#syntax-e _%e116994117001%_)))
                                        (let ((_%hd116998117012%_
                                               (##car _%e116997117009%_))
                                              (_%tl116999117014%_
                                               (##cdr _%e116997117009%_)))
                                          (let ((_%form117017%_
                                                 _%hd116998117012%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117017%_
                                                 gx#expression-form-binding?)
                                                (_%E116996117005%_)))))
                                      (_%E116996117005%_)))))
                          (_%E116995117019%_))
                        '#f)))
                 (_%illegal-expression116958%_
                  (lambda (_%hd116990%_ . _%_116991%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx116955%_
                     _%hd116990%_)))
                 (_%expand-e116959%_
                  (lambda (_%form116982%_ _%hd116983%_)
                    (let ((_%bind116985%_
                           (if (##structure-instance-of?
                                _%form116982%_
                                'gx#binding::t)
                               _%form116982%_
                               (gx#resolve-identifier__0 _%form116982%_))))
                      (if (gx#core-expander-binding? _%bind116985%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind116985%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd116983%_
                            (gx#stx-source _%stx116955%_)))
                          (if (##structure-direct-instance-of?
                               _%bind116985%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind116985%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd116983%_
                                 (gx#stx-source _%stx116955%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx116955%_
                               _%form116982%_)))))))
          (let ((_%hd116961%_ (gx#core-expand-head _%stx116955%_)))
            (if (_%sealed-expression?116957%_ _%hd116961%_)
                _%hd116961%_
                (if (gx#stx-pair? _%hd116961%_)
                    (let* ((_%form116965%_ (gx#stx-car _%hd116961%_))
                           (_%bind116967%_
                            (if (gx#identifier? _%form116965%_)
                                (gx#resolve-identifier__0 _%form116965%_)
                                '#f)))
                      (if (or (not _%bind116967%_)
                              (not (gx#core-expander-binding? _%bind116967%_)))
                          (_%expand-e116959%_
                           '%%app
                           (cons '%%app _%hd116961%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind116967%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd116961%_
                               _%illegal-expression116958%_)
                              (if (gx#expression-form-binding? _%bind116967%_)
                                  (_%expand-e116959%_
                                   _%bind116967%_
                                   _%hd116961%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind116967%_)
                                      (gx#core-expand-expression
                                       (_%expand-e116959%_
                                        _%bind116967%_
                                        _%hd116961%_))
                                      (_%illegal-expression116958%_
                                       _%hd116961%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd116961%_)
                        (_%illegal-expression116958%_ _%hd116961%_)
                        (if (gx#identifier? _%hd116961%_)
                            (_%expand-e116959%_
                             '%%ref
                             (cons '%%ref (cons _%hd116961%_ '())))
                            (if (gx#stx-datum? _%hd116961%_)
                                (_%expand-e116959%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd116961%_ '())))
                                (_%illegal-expression116958%_
                                 _%hd116961%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx116950%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx116953%_ (gx#core-expand-expression _%stx116950%_)))
             (values _%stx116953%_ (gx#eval-syntax* _%stx116953%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx116931%_ _%stop?116932%_)
        (let _%lp116934%_ ((_%stx116936%_ _%stx116931%_))
          (if (_%stop?116932%_ _%stx116936%_)
              _%stx116936%_
              (let ((_%rstx116938%_ (gx#core-expand1 _%stx116936%_)))
                (if (eq? _%stx116936%_ _%rstx116938%_)
                    _%stx116936%_
                    (_%lp116934%_ _%rstx116938%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx116943%_)
        (let ((_%stop?116945%_ false))
          (gx#core-expand*__% _%stx116943%_ _%stop?116945%_))))
    (define gx#core-expand*
      (lambda _g117536_
        (let ((_g117535_ (##length _g117536_)))
          (cond ((##fx= _g117535_ 1) (apply gx#core-expand*__0 _g117536_))
                ((##fx= _g117535_ 2) (apply gx#core-expand*__% _g117536_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g117536_))))))
    (define gx#core-expand1
      (lambda (_%stx116883%_)
        (letrec ((_%step116885%_
                  (lambda (_%hd116922%_)
                    (let ((_%bind116924%_
                           (gx#resolve-identifier__0 _%hd116922%_)))
                      (if (##structure-instance-of?
                           _%bind116924%_
                           'gx#runtime-binding::t)
                          _%stx116883%_
                          (if (##structure-direct-instance-of?
                               _%bind116924%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind116924%_
                                '4
                                '#f
                                '#f)
                               _%stx116883%_)
                              (if (not _%bind116924%_)
                                  _%stx116883%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx116883%_))))))))
          (let* ((_%e116886116894%_ _%stx116883%_)
                 (_%E116892116898%_ (lambda () _%stx116883%_))
                 (_%E116888116904%_
                  (lambda ()
                    (let ((_%hd116902%_ _%e116886116894%_))
                      (if (gx#identifier? _%hd116902%_)
                          (_%step116885%_ _%hd116902%_)
                          (_%E116892116898%_)))))
                 (_%E116887116918%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116886116894%_)
                        (let ((_%e116889116908%_
                               (gx#syntax-e _%e116886116894%_)))
                          (let ((_%hd116890116911%_ (##car _%e116889116908%_))
                                (_%tl116891116913%_ (##cdr _%e116889116908%_)))
                            (let ((_%hd116916%_ _%hd116890116911%_))
                              (if (gx#identifier? _%hd116916%_)
                                  (_%step116885%_ _%hd116916%_)
                                  (_%E116888116904%_)))))
                        (_%E116888116904%_)))))
            (_%E116887116918%_)))))
    (define gx#core-expand-head
      (lambda (_%stx116849%_)
        (letrec ((_%stop?116851%_
                  (lambda (_%stx116853%_)
                    (let* ((_%e116854116861%_ _%stx116853%_)
                           (_%E116856116865%_ (lambda () '#f))
                           (_%E116855116879%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116854116861%_)
                                  (let ((_%e116857116869%_
                                         (gx#syntax-e _%e116854116861%_)))
                                    (let ((_%hd116858116872%_
                                           (##car _%e116857116869%_))
                                          (_%tl116859116874%_
                                           (##cdr _%e116857116869%_)))
                                      (let ((_%hd116877%_ _%hd116858116872%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd116877%_)
                                            (_%E116856116865%_)))))
                                  (_%E116856116865%_)))))
                      (_%E116855116879%_)))))
          (gx#core-expand*__% _%stx116849%_ _%stop?116851%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx116655%_
               _%expand-special116656%_
               _%begin-form116657%_
               _%expand-e116658%_)
        (letrec ((_%expand-splice116660%_
                  (lambda (_%hd116823%_
                           _%body116824%_
                           _%rest116825%_
                           _%r116826%_)
                    (if (gx#stx-list? _%body116824%_)
                        (_%K116664%_
                         (gx#stx-foldr cons _%rest116825%_ _%body116824%_)
                         _%r116826%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx116655%_
                         _%hd116823%_))))
                 (_%expand-cond-expand116661%_
                  (lambda (_%hd116819%_ _%rest116820%_ _%r116821%_)
                    (_%K116664%_
                     (cons (gx#core-expand-cond-expand% _%hd116819%_)
                           _%rest116820%_)
                     _%r116821%_)))
                 (_%expand-include116662%_
                  (lambda (_%hd116768%_ _%rest116769%_ _%r116770%_)
                    (let* ((_%e116771116781%_ _%hd116768%_)
                           (_%E116773116785%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116771116781%_)))
                           (_%E116772116815%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116771116781%_)
                                  (let ((_%e116774116789%_
                                         (gx#syntax-e _%e116771116781%_)))
                                    (let ((_%hd116775116792%_
                                           (##car _%e116774116789%_))
                                          (_%tl116776116794%_
                                           (##cdr _%e116774116789%_)))
                                      (if (gx#stx-pair? _%tl116776116794%_)
                                          (let ((_%e116777116797%_
                                                 (gx#syntax-e
                                                  _%tl116776116794%_)))
                                            (let ((_%hd116778116800%_
                                                   (##car _%e116777116797%_))
                                                  (_%tl116779116802%_
                                                   (##cdr _%e116777116797%_)))
                                              (let ((_%path116805%_
                                                     _%hd116778116800%_))
                                                (if (gx#stx-null?
                                                     _%tl116779116802%_)
                                                    (if (gx#stx-string?
                                                         _%path116805%_)
                                                        (let* ((_%rpath116807%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path116805%_
                         (gx#stx-source _%hd116768%_)))
                       (_%block116809%_
                        (gx#core-expand-include%__%
                         _%hd116768%_
                         _%rpath116807%_))
                       (_%rbody116812%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block116809%_
                            _%expand-special116656%_
                            '#f
                            _%expand-e116658%_))
                         gx#current-expander-path
                         (cons _%rpath116807%_ (gx#current-expander-path)))))
                  (_%K116664%_
                   _%rest116769%_
                   (__foldr1 cons _%r116770%_ _%rbody116812%_)))
                (_%E116773116785%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E116773116785%_)))))
                                          (_%E116773116785%_))))
                                  (_%E116773116785%_)))))
                      (_%E116772116815%_))))
                 (_%expand-expression116663%_
                  (lambda (_%hd116764%_ _%rest116765%_ _%r116766%_)
                    (_%K116664%_
                     _%rest116765%_
                     (cons (_%expand-e116658%_ _%hd116764%_) _%r116766%_))))
                 (_%K116664%_
                  (lambda (_%rest116694%_ _%r116695%_)
                    (let* ((_%e116696116703%_ _%rest116694%_)
                           (_%E116698116707%_
                            (lambda ()
                              (if _%begin-form116657%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form116657%_
                                    (reverse _%r116695%_))
                                   (gx#stx-source _%stx116655%_))
                                  _%r116695%_)))
                           (_%E116697116760%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116696116703%_)
                                  (let ((_%e116699116711%_
                                         (gx#syntax-e _%e116696116703%_)))
                                    (let ((_%hd116700116714%_
                                           (##car _%e116699116711%_))
                                          (_%tl116701116716%_
                                           (##cdr _%e116699116711%_)))
                                      (let* ((_%hd116719%_ _%hd116700116714%_)
                                             (_%rest116721%_
                                              _%tl116701116716%_))
                                        (if '#t
                                            (let* ((_%hd116723%_
                                                    (gx#core-expand-head
                                                     _%hd116719%_))
                                                   (_%e116724116731%_
                                                    _%hd116723%_)
                                                   (_%E116726116735%_
                                                    (lambda ()
                                                      (_%expand-expression116663%_
                                                       _%hd116723%_
                                                       _%rest116721%_
                                                       _%r116695%_)))
                                                   (_%E116725116756%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116724116731%_)
                                                          (let ((_%e116727116739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116724116731%_)))
                    (let ((_%hd116728116742%_ (##car _%e116727116739%_))
                          (_%tl116729116744%_ (##cdr _%e116727116739%_)))
                      (let* ((_%form116747%_ _%hd116728116742%_)
                             (_%body116749%_ _%tl116729116744%_))
                        (if '#t
                            (let ((_%bind116751%_
                                   (if (gx#identifier? _%form116747%_)
                                       (gx#resolve-identifier__0
                                        _%form116747%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind116751%_)
                                  (let ((_%$e116753%_
                                         (##unchecked-structure-ref
                                          _%bind116751%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e116753%_)
                                        (_%expand-splice116660%_
                                         _%hd116723%_
                                         _%body116749%_
                                         _%rest116721%_
                                         _%r116695%_)
                                        (if (eq? '%#cond-expand _%$e116753%_)
                                            (_%expand-cond-expand116661%_
                                             _%hd116723%_
                                             _%rest116721%_
                                             _%r116695%_)
                                            (if (eq? '%#include _%$e116753%_)
                                                (_%expand-include116662%_
                                                 _%hd116723%_
                                                 _%rest116721%_
                                                 _%r116695%_)
                                                (_%expand-special116656%_
                                                 _%hd116723%_
                                                 _%K116664%_
                                                 _%rest116721%_
                                                 _%r116695%_)))))
                                  (_%expand-expression116663%_
                                   _%hd116723%_
                                   _%rest116721%_
                                   _%r116695%_)))
                            (_%E116726116735%_)))))
                  (_%E116726116735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116725116756%_))
                                            (_%E116698116707%_)))))
                                  (_%E116698116707%_)))))
                      (_%E116697116760%_)))))
          (let* ((_%e116665116672%_ _%stx116655%_)
                 (_%E116667116676%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116665116672%_)))
                 (_%E116666116690%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116665116672%_)
                        (let ((_%e116668116680%_
                               (gx#syntax-e _%e116665116672%_)))
                          (let ((_%hd116669116683%_ (##car _%e116668116680%_))
                                (_%tl116670116685%_ (##cdr _%e116668116680%_)))
                            (let ((_%body116688%_ _%tl116670116685%_))
                              (if (gx#stx-list? _%body116688%_)
                                  (_%K116664%_ _%body116688%_ '())
                                  (_%E116667116676%_)))))
                        (_%E116667116676%_)))))
            (_%E116666116690%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx116831%_ _%expand-special116832%_)
        (let* ((_%begin-form116834%_ '%#begin)
               (_%expand-e116836%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx116831%_
           _%expand-special116832%_
           _%begin-form116834%_
           _%expand-e116836%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx116838%_ _%expand-special116839%_ _%begin-form116840%_)
        (let ((_%expand-e116842%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx116838%_
           _%expand-special116839%_
           _%begin-form116840%_
           _%expand-e116842%_))))
    (define gx#core-expand-block
      (lambda _g117538_
        (let ((_g117537_ (##length _g117538_)))
          (cond ((##fx= _g117537_ 2) (apply gx#core-expand-block__0 _g117538_))
                ((##fx= _g117537_ 3) (apply gx#core-expand-block__1 _g117538_))
                ((##fx= _g117537_ 4) (apply gx#core-expand-block__% _g117538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g117538_))))))
    (define gx#core-expand-block*
      (lambda (_%stx116603%_ _%expand-special116604%_)
        (let* ((_%g116605116616%_
                (gx#core-expand-block__1
                 _%stx116603%_
                 _%expand-special116604%_
                 '#f))
               (_%E116609116620%_
                (lambda ()
                  (error '"No clause matching"
                         _%g116605116616%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K116614116651%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx116603%_)))
                (_%K116611116637%_ (lambda (_%expr116635%_) _%expr116635%_))
                (_%K116610116626%_
                 (lambda (_%body116624%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body116624%_))
                    (gx#stx-source _%stx116603%_)))))
            (let ((_%try-match116607116647%_
                   (lambda ()
                     (if (##pair? _%g116605116616%_)
                         (let ((_%tl116613116642%_ (##cdr _%g116605116616%_))
                               (_%hd116612116640%_ (##car _%g116605116616%_)))
                           (if (##null? _%tl116613116642%_)
                               (let ((_%expr116645%_ _%hd116612116640%_))
                                 (_%K116611116637%_ _%expr116645%_))
                               (let ((_%body116629%_ _%g116605116616%_))
                                 (_%K116610116626%_ _%body116629%_))))
                         (let ((_%body116629%_ _%g116605116616%_))
                           (_%K116610116626%_ _%body116629%_))))))
              (if (##null? _%g116605116616%_)
                  (_%K116614116651%_)
                  (_%try-match116607116647%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx116428%_)
        (letrec ((_%satisfied?116430%_
                  (lambda (_%condition116531%_)
                    (let* ((_%e116532116547%_ _%condition116531%_)
                           (_%E116542116551%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116532116547%_)))
                           (_%E116535116570%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116532116547%_)
                                  (let ((_%e116543116555%_
                                         (gx#syntax-e _%e116532116547%_)))
                                    (let ((_%hd116544116558%_
                                           (##car _%e116543116555%_))
                                          (_%tl116545116560%_
                                           (##cdr _%e116543116555%_)))
                                      (let* ((_%combinator116563%_
                                              _%hd116544116558%_)
                                             (_%body116565%_
                                              _%tl116545116560%_))
                                        (if (gx#stx-list? _%body116565%_)
                                            (let ((_%$e116567%_
                                                   (gx#stx-e
                                                    _%combinator116563%_)))
                                              (if (eq? 'not _%$e116567%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?116430%_
                                                        _%body116565%_))
                                                  (if (eq? 'and _%$e116567%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?116430%_
                                                       _%body116565%_)
                                                      (if (eq? 'or
                                                               _%$e116567%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?116430%_
                                                           _%body116565%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e116567%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body116565%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx116428%_
                       _%combinator116563%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E116542116551%_)))))
                                  (_%E116542116551%_))))
                           (_%E116534116593%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116532116547%_)
                                  (let ((_%e116536116574%_
                                         (gx#syntax-e _%e116532116547%_)))
                                    (let ((_%hd116537116577%_
                                           (##car _%e116536116574%_))
                                          (_%tl116538116579%_
                                           (##cdr _%e116536116574%_)))
                                      (if (and (gx#identifier?
                                                _%hd116537116577%_)
                                               (gx#core-identifier=?
                                                _%hd116537116577%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl116538116579%_)
                                              (let ((_%e116539116582%_
                                                     (gx#syntax-e
                                                      _%tl116538116579%_)))
                                                (let ((_%hd116540116585%_
                                                       (##car _%e116539116582%_))
                                                      (_%tl116541116587%_
                                                       (##cdr _%e116539116582%_)))
                                                  (let ((_%expr116590%_
                                                         _%hd116540116585%_))
                                                    (if (gx#stx-null?
                                                         _%tl116541116587%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr116590%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E116535116570%_))
                (_%E116535116570%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116535116570%_))
                                          (_%E116535116570%_))))
                                  (_%E116535116570%_))))
                           (_%E116533116599%_
                            (lambda ()
                              (let ((_%id116597%_ _%e116532116547%_))
                                (if (gx#identifier? _%id116597%_)
                                    (gx#core-bound-identifier?__%
                                     _%id116597%_
                                     gx#feature-binding?)
                                    (_%E116534116593%_))))))
                      (_%E116533116599%_))))
                 (_%loop116431%_
                  (lambda (_%rest116461%_)
                    (let* ((_%e116462116470%_ _%rest116461%_)
                           (_%E116468116474%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116462116470%_)))
                           (_%E116464116478%_
                            (lambda ()
                              (if (gx#stx-null? _%e116462116470%_)
                                  (if '#t '() (_%E116468116474%_))
                                  (_%E116468116474%_))))
                           (_%E116463116527%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116462116470%_)
                                  (let ((_%e116465116482%_
                                         (gx#syntax-e _%e116462116470%_)))
                                    (let ((_%hd116466116485%_
                                           (##car _%e116465116482%_))
                                          (_%tl116467116487%_
                                           (##cdr _%e116465116482%_)))
                                      (let* ((_%hd116490%_ _%hd116466116485%_)
                                             (_%rest116492%_
                                              _%tl116467116487%_))
                                        (if '#t
                                            (let* ((_%e116493116500%_
                                                    _%hd116490%_)
                                                   (_%E116495116504%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e116493116500%_)))
                                                   (_%E116494116523%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116493116500%_)
                                                          (let ((_%e116496116508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116493116500%_)))
                    (let ((_%hd116497116511%_ (##car _%e116496116508%_))
                          (_%tl116498116513%_ (##cdr _%e116496116508%_)))
                      (let* ((_%condition116516%_ _%hd116497116511%_)
                             (_%body116518%_ _%tl116498116513%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition116516%_ 'else)
                                (if (gx#stx-null? _%rest116492%_)
                                    _%body116518%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _%stx116428%_
                                     _%hd116490%_))
                                (if (_%satisfied?116430%_ _%condition116516%_)
                                    _%body116518%_
                                    (_%loop116431%_ _%rest116492%_)))
                            (_%E116495116504%_)))))
                  (_%E116495116504%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116494116523%_))
                                            (_%E116464116478%_)))))
                                  (_%E116464116478%_)))))
                      (_%E116463116527%_)))))
          (let* ((_%e116432116439%_ _%stx116428%_)
                 (_%E116434116443%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116432116439%_)))
                 (_%E116433116457%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116432116439%_)
                        (let ((_%e116435116447%_
                               (gx#syntax-e _%e116432116439%_)))
                          (let ((_%hd116436116450%_ (##car _%e116435116447%_))
                                (_%tl116437116452%_ (##cdr _%e116435116447%_)))
                            (let ((_%clauses116455%_ _%tl116437116452%_))
                              (if (gx#stx-list? _%clauses116455%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop116431%_ _%clauses116455%_))
                                  (_%E116434116443%_)))))
                        (_%E116434116443%_)))))
            (_%E116433116457%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx116371%_ _%rpath116372%_)
        (let* ((_%e116373116383%_ _%stx116371%_)
               (_%E116375116387%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e116373116383%_)))
               (_%E116374116414%_
                (lambda ()
                  (if (gx#stx-pair? _%e116373116383%_)
                      (let ((_%e116376116391%_
                             (gx#syntax-e _%e116373116383%_)))
                        (let ((_%hd116377116394%_ (##car _%e116376116391%_))
                              (_%tl116378116396%_ (##cdr _%e116376116391%_)))
                          (if (gx#stx-pair? _%tl116378116396%_)
                              (let ((_%e116379116399%_
                                     (gx#syntax-e _%tl116378116396%_)))
                                (let ((_%hd116380116402%_
                                       (##car _%e116379116399%_))
                                      (_%tl116381116404%_
                                       (##cdr _%e116379116399%_)))
                                  (let ((_%path116407%_ _%hd116380116402%_))
                                    (if (gx#stx-null? _%tl116381116404%_)
                                        (if (gx#stx-string? _%path116407%_)
                                            (let ((_%rpath116412%_
                                                   (let ((_%$e116409%_
                                                          _%rpath116372%_))
                                                     (if _%$e116409%_
                                                         _%$e116409%_
                                                         (gx#core-resolve-path__%
                                                          _%path116407%_
                                                          (gx#stx-source
                                                           _%stx116371%_))))))
                                              (if (member _%rpath116412%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx116371%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath116412%_))
                                                    (gx#stx-source
                                                     _%stx116371%_)))))
                                            (_%E116375116387%_))
                                        (_%E116375116387%_)))))
                              (_%E116375116387%_))))
                      (_%E116375116387%_)))))
          (_%E116374116414%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx116421%_)
        (let ((_%rpath116423%_ '#f))
          (gx#core-expand-include%__% _%stx116421%_ _%rpath116423%_))))
    (define gx#core-expand-include%
      (lambda _g117540_
        (let ((_g117539_ (##length _g117540_)))
          (cond ((##fx= _g117539_ 1)
                 (apply gx#core-expand-include%__0 _g117540_))
                ((##fx= _g117539_ 2)
                 (apply gx#core-expand-include%__% _g117540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g117540_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K116337%_ _%stx116338%_ _%method116339%_)
        (if (procedure? _%K116337%_)
            (let ((_%$e116342%_ (gx#stx-source _%stx116338%_)))
              (if _%$e116342%_
                  ((lambda (_%g116344116346%_)
                     (gx#stx-wrap-source
                      (_%K116337%_ _%stx116338%_)
                      _%g116344116346%_))
                   _%$e116342%_)
                  (_%K116337%_ _%stx116338%_)))
            (let ((_%$e116350%_
                   (bound-method-ref _%K116337%_ _%method116339%_)))
              (if _%$e116350%_
                  ((lambda (_%g116352116354%_)
                     (gx#core-apply-expander__%
                      _%g116352116354%_
                      _%stx116338%_
                      _%method116339%_))
                   _%$e116350%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx116338%_
                   _%method116339%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K116361%_ _%stx116362%_)
        (let ((_%method116364%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K116361%_
           _%stx116362%_
           _%method116364%_))))
    (define gx#core-apply-expander
      (lambda _g117542_
        (let ((_g117541_ (##length _g117542_)))
          (cond ((##fx= _g117541_ 2)
                 (apply gx#core-apply-expander__0 _g117542_))
                ((##fx= _g117541_ 3)
                 (apply gx#core-apply-expander__% _g117542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g117542_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116322%_ _%stx116323%_)
        (let ((_%self116326%_ _%self116322%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx116323%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116164%_ _%stx116165%_)
        (let* ((_%self116168%_ _%self116164%_)
               (_%self116177116183%_ _%self116168%_)
               (_%E116179116187%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116177116183%_
                         '((macro-expander K)))
                  '#!void))
               (_%K116180116192%_
                (lambda (_%K116190%_)
                  (gx#core-apply-expander__0 _%K116190%_ _%stx116165%_))))
          (if '#t
              (let* ((_%e116181116195%_
                      (##unchecked-structure-ref
                       _%self116177116183%_
                       '1
                       '#f
                       '#f))
                     (_%K116198%_ _%e116181116195%_))
                (_%K116180116192%_ _%K116198%_))
              (_%E116179116187%_)))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116006%_ _%stx116007%_)
        (let ((_%self116010%_ _%self116006%_))
          (if (gx#sealed-syntax? _%stx116007%_)
              _%stx116007%_
              (let* ((_%self116019116025%_ _%self116010%_)
                     (_%E116021116029%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116019116025%_
                               '((core-expander K)))
                        '#!void))
                     (_%K116022116034%_
                      (lambda (_%K116032%_)
                        (gx#core-apply-expander__0
                         _%K116032%_
                         _%stx116007%_))))
                (if '#t
                    (let* ((_%e116023116037%_
                            (##unchecked-structure-ref
                             _%self116019116025%_
                             '1
                             '#f
                             '#f))
                           (_%K116040%_ _%e116023116037%_))
                      (_%K116022116034%_ _%K116040%_))
                    (_%E116021116029%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self115857%_ _%stx115858%_ _%top?115859%_)
        (let ((_%self115862%_ _%self115857%_))
          (if (_%top?115859%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self115862%_
               _%stx115858%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx115858%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self115875%_ _%stx115876%_)
        (let ((_%top?115878%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self115875%_
           _%stx115876%_
           _%top?115878%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g117544_
        (let ((_g117543_ (##length _g117544_)))
          (cond ((##fx= _g117543_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g117544_))
                ((##fx= _g117543_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g117544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g117544_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self115720%_ _%stx115721%_)
        (let ((_%self115724%_ _%self115720%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self115724%_
           _%stx115721%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self115534%_ _%stx115535%_)
        (let* ((_%self115538%_ _%self115534%_)
               (_%self115547115553%_ _%self115538%_)
               (_%E115549115557%_
                (lambda ()
                  (error '"No clause matching"
                         _%self115547115553%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K115550115590%_
                (lambda (_%id115560%_)
                  (let* ((_%e115561115568%_ _%stx115535%_)
                         (_%E115563115572%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e115561115568%_)))
                         (_%E115562115586%_
                          (lambda ()
                            (if (gx#stx-pair? _%e115561115568%_)
                                (let ((_%e115564115576%_
                                       (gx#syntax-e _%e115561115568%_)))
                                  (let ((_%hd115565115579%_
                                         (##car _%e115564115576%_))
                                        (_%tl115566115581%_
                                         (##cdr _%e115564115576%_)))
                                    (let ((_%body115584%_ _%tl115566115581%_))
                                      (if '#t
                                          (gx#core-cons
                                           _%id115560%_
                                           _%body115584%_)
                                          (_%E115563115572%_)))))
                                (_%E115563115572%_)))))
                    (_%E115562115586%_)))))
          (if '#t
              (let* ((_%e115551115593%_
                      (##unchecked-structure-ref
                       _%self115547115553%_
                       '1
                       '#f
                       '#f))
                     (_%id115596%_ _%e115551115593%_))
                (_%K115550115590%_ _%id115596%_))
              (_%E115549115557%_)))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self115360%_ _%stx115361%_ _%method115362%_)
        (let* ((_%self115363115371%_ _%self115360%_)
               (_%E115365115375%_
                (lambda ()
                  (error '"No clause matching"
                         _%self115363115371%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K115366115382%_
                (lambda (_%phi115378%_ _%ctx115379%_ _%K115380%_)
                  (gx#core-apply-user-macro
                   _%K115380%_
                   _%stx115361%_
                   _%ctx115379%_
                   _%phi115378%_
                   _%method115362%_))))
          (if (##structure-instance-of?
               _%self115363115371%_
               'gx#user-expander::t)
              (let* ((_%e115367115385%_
                      (##unchecked-structure-ref
                       _%self115363115371%_
                       '1
                       '#f
                       '#f))
                     (_%K115388%_ _%e115367115385%_)
                     (_%e115368115390%_
                      (##unchecked-structure-ref
                       _%self115363115371%_
                       '2
                       '#f
                       '#f))
                     (_%ctx115393%_ _%e115368115390%_)
                     (_%e115369115395%_
                      (##unchecked-structure-ref
                       _%self115363115371%_
                       '3
                       '#f
                       '#f))
                     (_%phi115398%_ _%e115369115395%_))
                (_%K115366115382%_ _%phi115398%_ _%ctx115393%_ _%K115388%_))
              (_%E115365115375%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self115403%_ _%stx115404%_)
        (let ((_%method115406%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self115403%_
           _%stx115404%_
           _%method115406%_))))
    (define gx#core-apply-user-expander
      (lambda _g117546_
        (let ((_g117545_ (##length _g117546_)))
          (cond ((##fx= _g117545_ 2)
                 (apply gx#core-apply-user-expander__0 _g117546_))
                ((##fx= _g117545_ 3)
                 (apply gx#core-apply-user-expander__% _g117546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g117546_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K115350%_
               _%stx115351%_
               _%ctx115352%_
               _%phi115353%_
               _%method115354%_)
        (let ((_%mark115356%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx115352%_
                _%phi115353%_
                _%stx115351%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K115350%_
               (gx#stx-apply-mark _%stx115351%_ _%mark115356%_)
               _%method115354%_)
              _%mark115356%_))
           gx#current-expander-marks
           (cons _%mark115356%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115198%_ _%phi115199%_ _%ctx115200%_)
        (let _%lp115202%_ ((_%bind115204%_
                            (gx#core-resolve-identifier__%
                             _%stx115198%_
                             _%phi115199%_
                             _%ctx115200%_)))
          (if (##structure-direct-instance-of?
               _%bind115204%_
               'gx#import-binding::t)
              (_%lp115202%_
               (##unchecked-structure-ref _%bind115204%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind115204%_
                   'gx#alias-binding::t)
                  (_%lp115202%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind115204%_ '4 '#f '#f)
                    _%phi115199%_
                    _%ctx115200%_))
                  _%bind115204%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115212%_)
        (let* ((_%phi115214%_ (gx#current-expander-phi))
               (_%ctx115216%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115212%_
           _%phi115214%_
           _%ctx115216%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115218%_ _%phi115219%_)
        (let ((_%ctx115221%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115218%_
           _%phi115219%_
           _%ctx115221%_))))
    (define gx#resolve-identifier
      (lambda _g117548_
        (let ((_g117547_ (##length _g117548_)))
          (cond ((##fx= _g117547_ 1)
                 (apply gx#resolve-identifier__0 _g117548_))
                ((##fx= _g117547_ 2)
                 (apply gx#resolve-identifier__1 _g117548_))
                ((##fx= _g117547_ 3)
                 (apply gx#resolve-identifier__% _g117548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g117548_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115153%_
               _%val115154%_
               _%rebind?115155%_
               _%phi115156%_
               _%ctx115157%_)
        (let ((_%rebind?115162%_
               (if (not _%rebind?115155%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?115155%_)
                       _%rebind?115155%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115153%_)
           _%val115154%_
           _%rebind?115162%_
           _%phi115156%_
           _%ctx115157%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115167%_ _%val115168%_)
        (let* ((_%rebind?115170%_ '#f)
               (_%phi115172%_ (gx#current-expander-phi))
               (_%ctx115174%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115167%_
           _%val115168%_
           _%rebind?115170%_
           _%phi115172%_
           _%ctx115174%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115176%_ _%val115177%_ _%rebind?115178%_)
        (let* ((_%phi115180%_ (gx#current-expander-phi))
               (_%ctx115182%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115176%_
           _%val115177%_
           _%rebind?115178%_
           _%phi115180%_
           _%ctx115182%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115184%_ _%val115185%_ _%rebind?115186%_ _%phi115187%_)
        (let ((_%ctx115189%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115184%_
           _%val115185%_
           _%rebind?115186%_
           _%phi115187%_
           _%ctx115189%_))))
    (define gx#bind-identifier!
      (lambda _g117550_
        (let ((_g117549_ (##length _g117550_)))
          (cond ((##fx= _g117549_ 2) (apply gx#bind-identifier!__0 _g117550_))
                ((##fx= _g117549_ 3) (apply gx#bind-identifier!__1 _g117550_))
                ((##fx= _g117549_ 4) (apply gx#bind-identifier!__2 _g117550_))
                ((##fx= _g117549_ 5) (apply gx#bind-identifier!__% _g117550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g117550_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115119%_ _%phi115120%_ _%ctx115121%_)
        (let _%lp115123%_ ((_%e115125%_ _%stx115119%_)
                           (_%marks115126%_ (gx#current-expander-marks)))
          (if (symbol? _%e115125%_)
              (gx#core-resolve-binding
               _%e115125%_
               _%phi115120%_
               _%phi115120%_
               _%ctx115121%_
               (reverse _%marks115126%_))
              (if (gx#identifier-quote? _%e115125%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e115125%_ '1 '#f '#f)
                   _%phi115120%_
                   '0
                   (##unchecked-structure-ref _%e115125%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e115125%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e115125%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e115125%_ '1 '#f '#f)
                       _%phi115120%_
                       _%phi115120%_
                       _%ctx115121%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e115125%_ '3 '#f '#f)
                        _%marks115126%_))
                      (if (##structure-direct-instance-of?
                           _%e115125%_
                           'gx#syntax-wrap::t)
                          (_%lp115123%_
                           (##unchecked-structure-ref _%e115125%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e115125%_ '3 '#f '#f)
                            _%marks115126%_))
                          (if (##structure-instance-of?
                               _%e115125%_
                               'gerbil#AST::t)
                              (_%lp115123%_
                               (##unchecked-structure-ref
                                _%e115125%_
                                '1
                                '#f
                                '#f)
                               _%marks115126%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx115119%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115137%_)
        (let* ((_%phi115139%_ (gx#current-expander-phi))
               (_%ctx115141%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115137%_
           _%phi115139%_
           _%ctx115141%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115143%_ _%phi115144%_)
        (let ((_%ctx115146%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115143%_
           _%phi115144%_
           _%ctx115146%_))))
    (define gx#core-resolve-identifier
      (lambda _g117552_
        (let ((_g117551_ (##length _g117552_)))
          (cond ((##fx= _g117551_ 1)
                 (apply gx#core-resolve-identifier__0 _g117552_))
                ((##fx= _g117551_ 2)
                 (apply gx#core-resolve-identifier__1 _g117552_))
                ((##fx= _g117551_ 3)
                 (apply gx#core-resolve-identifier__% _g117552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g117552_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115029%_
               _%phi115030%_
               _%src-phi115031%_
               _%ctx115032%_
               _%marks115033%_)
        (letrec ((_%resolve115035%_
                  (lambda (_%ctx115103%_ _%src-phi115104%_ _%key115105%_)
                    (let _%lp115107%_ ((_%ctx115109%_
                                        (gx#core-context-shift
                                         _%ctx115103%_
                                         _%phi115030%_))
                                       (_%dphi115110%_
                                        (fx- _%phi115030%_ _%src-phi115104%_)))
                      (let ((_%$e115112%_
                             (gx#core-context-resolve
                              _%ctx115109%_
                              _%key115105%_)))
                        (if _%$e115112%_
                            (values _%$e115112%_)
                            (if (fxzero? _%dphi115110%_)
                                '#f
                                (if (fxpositive? _%dphi115110%_)
                                    (_%lp115107%_
                                     (gx#core-context-shift _%ctx115109%_ '-1)
                                     (##fx- _%dphi115110%_ '1))
                                    (_%lp115107%_
                                     (gx#core-context-shift _%ctx115109%_ '1)
                                     (##fx+ _%dphi115110%_ '1))))))))))
          (let _%lp115037%_ ((_%ctx115039%_ _%ctx115032%_)
                             (_%src-phi115040%_ _%src-phi115031%_)
                             (_%rest115041%_ _%marks115033%_))
            (let* ((_%rest115042115050%_ _%rest115041%_)
                   (_%else115044115058%_
                    (lambda ()
                      (_%resolve115035%_
                       _%ctx115039%_
                       _%src-phi115040%_
                       _%id115029%_)))
                   (_%K115046115091%_
                    (lambda (_%rest115061%_ _%hd115062%_)
                      (let* ((_%hd115063115069%_ _%hd115062%_)
                             (_%E115065115073%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115063115069%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115066115083%_
                              (lambda (_%subst115076%_)
                                (let ((_%$e115080%_
                                       (let ((_%key115078%_
                                              (if _%subst115076%_
                                                  (hash-get
                                                   _%subst115076%_
                                                   _%id115029%_)
                                                  '#f)))
                                         (if _%key115078%_
                                             (_%resolve115035%_
                                              _%ctx115039%_
                                              _%src-phi115040%_
                                              _%key115078%_)
                                             '#f))))
                                  (if _%$e115080%_
                                      _%$e115080%_
                                      (_%lp115037%_
                                       (##unchecked-structure-ref
                                        _%hd115062%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115062%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115061%_))))))
                        (if (##structure-instance-of?
                             _%hd115063115069%_
                             'gx#expander-mark::t)
                            (let* ((_%e115067115086%_
                                    (##unchecked-structure-ref
                                     _%hd115063115069%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115089%_ _%e115067115086%_))
                              (_%K115066115083%_ _%subst115089%_))
                            (_%E115065115073%_))))))
              (if (##pair? _%rest115042115050%_)
                  (let ((_%hd115047115094%_ (##car _%rest115042115050%_))
                        (_%tl115048115096%_ (##cdr _%rest115042115050%_)))
                    (let* ((_%hd115099%_ _%hd115047115094%_)
                           (_%rest115101%_ _%tl115048115096%_))
                      (_%K115046115091%_ _%rest115101%_ _%hd115099%_)))
                  (_%else115044115058%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key114899%_
               _%val114900%_
               _%rebind?114901%_
               _%phi114902%_
               _%ctx114903%_)
        (letrec ((_%update-binding114905%_
                  (lambda (_%xval114978%_)
                    (if (or (_%rebind?114901%_
                             _%ctx114903%_
                             _%xval114978%_
                             _%val114900%_)
                            (and (##structure-direct-instance-of?
                                  _%xval114978%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval114978%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val114900%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val114900%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval114978%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val114900%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val114900%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval114978%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val114900%_
                        (if (and (##structure-direct-instance-of?
                                  _%val114900%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val114900%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval114978%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val114900%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval114978%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval114978%_
                            (if (and (##structure-direct-instance-of?
                                      _%val114900%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval114978%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key114899%_
                                 (cons (##unchecked-structure-ref
                                        _%val114900%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val114900%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval114978%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval114978%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval114978%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval114978%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key114899%_
                                 _%val114900%_
                                 _%xval114978%_))))))
                 (_%gensubst114906%_
                  (lambda (_%subst114973%_ _%id114974%_)
                    (let ((_%eid114976%_
                           (gensym (if (uninterned-symbol? _%id114974%_)
                                       '%
                                       _%id114974%_))))
                      (hash-put! _%subst114973%_ _%id114974%_ _%eid114976%_)
                      _%eid114976%_)))
                 (_%subst!114907%_
                  (lambda (_%key114909%_)
                    (let* ((_%key114910114918%_ _%key114909%_)
                           (_%else114912114926%_ (lambda () _%key114909%_))
                           (_%K114914114961%_
                            (lambda (_%mark114929%_ _%id114930%_)
                              (let* ((_%mark114931114937%_ _%mark114929%_)
                                     (_%E114933114941%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark114931114937%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K114934114953%_
                                      (lambda (_%subst114944%_)
                                        (if (not _%subst114944%_)
                                            (let ((_%subst114947%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark114929%_
                                               _%subst114947%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst114906%_
                                               _%subst114947%_
                                               _%id114930%_))
                                            (let ((_%$e114949%_
                                                   (hash-get
                                                    _%subst114944%_
                                                    _%id114930%_)))
                                              (if _%$e114949%_
                                                  (values _%$e114949%_)
                                                  (_%gensubst114906%_
                                                   _%subst114944%_
                                                   _%id114930%_)))))))
                                (if (##structure-instance-of?
                                     _%mark114931114937%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e114935114956%_
                                            (##unchecked-structure-ref
                                             _%mark114931114937%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst114959%_ _%e114935114956%_))
                                      (_%K114934114953%_ _%subst114959%_))
                                    (_%E114933114941%_))))))
                      (if (##pair? _%key114910114918%_)
                          (let ((_%hd114915114964%_
                                 (##car _%key114910114918%_))
                                (_%tl114916114966%_
                                 (##cdr _%key114910114918%_)))
                            (let* ((_%id114969%_ _%hd114915114964%_)
                                   (_%mark114971%_ _%tl114916114966%_))
                              (_%K114914114961%_ _%mark114971%_ _%id114969%_)))
                          (_%else114912114926%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx114903%_ _%phi114902%_)
           (_%subst!114907%_ _%key114899%_)
           _%val114900%_
           _%update-binding114905%_))))
    (define gx#core-bind!__0
      (lambda (_%key114999%_ _%val115000%_)
        (let* ((_%rebind?115002%_ false)
               (_%phi115004%_ (gx#current-expander-phi))
               (_%ctx115006%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key114999%_
           _%val115000%_
           _%rebind?115002%_
           _%phi115004%_
           _%ctx115006%_))))
    (define gx#core-bind!__1
      (lambda (_%key115008%_ _%val115009%_ _%rebind?115010%_)
        (let* ((_%phi115012%_ (gx#current-expander-phi))
               (_%ctx115014%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115008%_
           _%val115009%_
           _%rebind?115010%_
           _%phi115012%_
           _%ctx115014%_))))
    (define gx#core-bind!__2
      (lambda (_%key115016%_ _%val115017%_ _%rebind?115018%_ _%phi115019%_)
        (let ((_%ctx115021%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115016%_
           _%val115017%_
           _%rebind?115018%_
           _%phi115019%_
           _%ctx115021%_))))
    (define gx#core-bind!
      (lambda _g117554_
        (let ((_g117553_ (##length _g117554_)))
          (cond ((##fx= _g117553_ 2) (apply gx#core-bind!__0 _g117554_))
                ((##fx= _g117553_ 3) (apply gx#core-bind!__1 _g117554_))
                ((##fx= _g117553_ 4) (apply gx#core-bind!__2 _g117554_))
                ((##fx= _g117553_ 5) (apply gx#core-bind!__% _g117554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g117554_))))))
    (define gx#core-identifier-key
      (lambda (_%stx114830%_)
        (if (symbol? _%stx114830%_)
            (let* ((_%g114832114840%_ (gx#current-expander-marks))
                   (_%else114834114848%_ (lambda () _%stx114830%_))
                   (_%K114836114853%_
                    (lambda (_%hd114851%_) (cons _%stx114830%_ _%hd114851%_))))
              (if (##pair? _%g114832114840%_)
                  (let* ((_%hd114837114856%_ (##car _%g114832114840%_))
                         (_%hd114859%_ _%hd114837114856%_))
                    (_%K114836114853%_ _%hd114859%_))
                  (_%else114834114848%_)))
            (if (gx#identifier? _%stx114830%_)
                (let* ((_%id114862%_ (gx#syntax-local-unwrap _%stx114830%_))
                       (_%eid114864%_ (gx#stx-e _%id114862%_))
                       (_%marks114866%_
                        (gx#stx-identifier-marks* _%id114862%_))
                       (_%marks114868114876%_ _%marks114866%_)
                       (_%else114870114884%_ (lambda () _%eid114864%_))
                       (_%K114872114889%_
                        (lambda (_%hd114887%_)
                          (cons _%eid114864%_ _%hd114887%_))))
                  (if (##pair? _%marks114868114876%_)
                      (let* ((_%hd114873114892%_ (##car _%marks114868114876%_))
                             (_%hd114895%_ _%hd114873114892%_))
                        (_%K114872114889%_ _%hd114895%_))
                      (_%else114870114884%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx114830%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx114769%_ _%phi114770%_)
        (letrec ((_%make-phi114772%_
                  (lambda (_%super114828%_)
                    (let ((__obj117526
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj117526
                       (##gensym 'phi)
                       _%super114828%_)
                      __obj117526)))
                 (_%make-phi/up114773%_
                  (lambda (_%ctx114823%_ _%super114824%_)
                    (let ((_%ctx+1114826%_
                           (_%make-phi114772%_ _%super114824%_)))
                      (##unchecked-structure-set!
                       _%ctx114823%_
                       _%ctx+1114826%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1114826%_
                       _%ctx114823%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1114826%_)))
                 (_%make-phi/down114774%_
                  (lambda (_%ctx114818%_ _%super114819%_)
                    (let ((_%ctx-1114821%_
                           (_%make-phi114772%_ _%super114819%_)))
                      (##unchecked-structure-set!
                       _%ctx-1114821%_
                       _%ctx114818%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx114818%_
                       _%ctx-1114821%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1114821%_)))
                 (_%shift114775%_
                  (lambda (_%ctx114801%_
                           _%delta114802%_
                           _%make-delta-context114803%_
                           _%phi114804%_
                           _%K114805%_)
                    (let ((_%$e114807%_
                           (##unchecked-structure-ref
                            _%ctx114801%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e114807%_
                          ((lambda (_%super114810%_)
                             (let* ((_%super114812%_
                                     (_%K114805%_
                                      _%super114810%_
                                      _%delta114802%_))
                                    (_%ctx+d114814%_
                                     (_%make-delta-context114803%_
                                      _%ctx114801%_
                                      _%super114812%_)))
                               (_%K114805%_
                                _%ctx+d114814%_
                                (fx- _%phi114804%_ _%delta114802%_))))
                           _%$e114807%_)
                          (error '"Bad context" _%ctx114801%_))))))
          (let _%K114777%_ ((_%ctx114779%_ _%ctx114769%_)
                            (_%phi114780%_ _%phi114770%_))
            (if (fxzero? _%phi114780%_)
                _%ctx114779%_
                (if (##structure-instance-of? _%ctx114779%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi114780%_)
                        (let ((_%$e114784%_
                               (##unchecked-structure-ref
                                _%ctx114779%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e114784%_
                              ((lambda (_%g114786114788%_)
                                 (_%K114777%_
                                  _%g114786114788%_
                                  (##fx- _%phi114780%_ '1)))
                               _%$e114784%_)
                              (_%shift114775%_
                               _%ctx114779%_
                               '1
                               _%make-phi/up114773%_
                               _%phi114780%_
                               _%K114777%_)))
                        (let ((_%$e114792%_
                               (##unchecked-structure-ref
                                _%ctx114779%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e114792%_
                              ((lambda (_%g114794114796%_)
                                 (_%K114777%_
                                  _%g114794114796%_
                                  (##fx+ _%phi114780%_ '1)))
                               _%$e114792%_)
                              (_%shift114775%_
                               _%ctx114779%_
                               '-1
                               _%make-phi/down114774%_
                               _%phi114780%_
                               _%K114777%_))))
                    _%ctx114779%_))))))
    (define gx#core-context-get
      (lambda (_%ctx114766%_ _%key114767%_)
        (hash-get
         (##unchecked-structure-ref _%ctx114766%_ '2 '#f '#f)
         _%key114767%_)))
    (define gx#core-context-put!
      (lambda (_%ctx114762%_ _%key114763%_ _%val114764%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx114762%_ '2 '#f '#f)
         _%key114763%_
         _%val114764%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx114748%_ _%key114749%_)
        (let _%lp114751%_ ((_%ctx114753%_ _%ctx114748%_))
          (let ((_%$e114755%_
                 (gx#core-context-get _%ctx114753%_ _%key114749%_)))
            (if _%$e114755%_
                (values _%$e114755%_)
                (let ((_%$e114758%_
                       (if (##structure-instance-of?
                            _%ctx114753%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx114753%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e114758%_ (_%lp114751%_ _%$e114758%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx114737%_ _%key114738%_ _%val114739%_ _%rebind114740%_)
        (let ((_%$e114742%_ (gx#core-context-get _%ctx114737%_ _%key114738%_)))
          (if _%$e114742%_
              ((lambda (_%xval114745%_)
                 (gx#core-context-put!
                  _%ctx114737%_
                  _%key114738%_
                  (_%rebind114740%_ _%xval114745%_)))
               _%$e114742%_)
              (gx#core-context-put!
               _%ctx114737%_
               _%key114738%_
               _%val114739%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx114712%_ _%stop?114713%_)
        (let _%lp114715%_ ((_%ctx114717%_ _%ctx114712%_))
          (if (_%stop?114713%_ _%ctx114717%_)
              _%ctx114717%_
              (if (##structure-instance-of? _%ctx114717%_ 'gx#phi-context::t)
                  (_%lp114715%_
                   (##unchecked-structure-ref _%ctx114717%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx114726%_ (gx#current-expander-context))
               (_%stop?114728%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114726%_ _%stop?114728%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx114730%_)
        (let ((_%stop?114732%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114730%_ _%stop?114732%_))))
    (define gx#core-context-top
      (lambda _g117556_
        (let ((_g117555_ (##length _g117556_)))
          (cond ((##fx= _g117555_ 0) (apply gx#core-context-top__0 _g117556_))
                ((##fx= _g117555_ 1) (apply gx#core-context-top__1 _g117556_))
                ((##fx= _g117555_ 2) (apply gx#core-context-top__% _g117556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g117556_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx114697%_)
        (let _%lp114699%_ ((_%ctx114701%_ _%ctx114697%_))
          (if (##structure-instance-of? _%ctx114701%_ 'gx#phi-context::t)
              (_%lp114699%_
               (##unchecked-structure-ref _%ctx114701%_ '3 '#f '#f))
              _%ctx114701%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx114707%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx114707%_))))
    (define gx#core-context-root
      (lambda _g117558_
        (let ((_g117557_ (##length _g117558_)))
          (cond ((##fx= _g117557_ 0) (apply gx#core-context-root__0 _g117558_))
                ((##fx= _g117557_ 1) (apply gx#core-context-root__% _g117558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g117558_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx114679%_ . _%ignore114680%_)
        (let ((_%$e114682%_ (gx#current-expander-allow-rebind?)))
          (if _%$e114682%_
              _%$e114682%_
              (if (##structure-instance-of? _%ctx114679%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx114679%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx114679%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx114689%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx114689%_))))
    (define gx#core-context-rebind?
      (lambda _g117560_
        (let ((_g117559_ (##length _g117560_)))
          (cond ((##fx= _g117559_ 0)
                 (apply gx#core-context-rebind?__0 _g117560_))
                ((##fx= _g117559_ 1)
                 (apply gx#core-context-rebind?__% _g117560_))
                ((##fx>= _g117559_ 1)
                 (apply gx#core-context-rebind?__% _g117560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g117560_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx114662%_)
        (let ((_%$e114664%_ (gx#core-context-top__1 _%ctx114662%_)))
          (if _%$e114664%_
              ((lambda (_%ctx114667%_)
                 (if (##structure-instance-of?
                      _%ctx114667%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx114667%_ '6 '#f '#f)
                     '#f))
               _%$e114664%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx114674%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx114674%_))))
    (define gx#core-context-namespace
      (lambda _g117562_
        (let ((_g117561_ (##length _g117562_)))
          (cond ((##fx= _g117561_ 0)
                 (apply gx#core-context-namespace__0 _g117562_))
                ((##fx= _g117561_ 1)
                 (apply gx#core-context-namespace__% _g117562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g117562_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind114648%_ _%is?114649%_)
        (if (##structure-direct-instance-of?
             _%bind114648%_
             'gx#syntax-binding::t)
            (_%is?114649%_
             (##unchecked-structure-ref _%bind114648%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind114654%_)
        (let ((_%is?114656%_ gx#expander?))
          (gx#expander-binding?__% _%bind114654%_ _%is?114656%_))))
    (define gx#expander-binding?
      (lambda _g117564_
        (let ((_g117563_ (##length _g117564_)))
          (cond ((##fx= _g117563_ 1) (apply gx#expander-binding?__0 _g117564_))
                ((##fx= _g117563_ 2) (apply gx#expander-binding?__% _g117564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g117564_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind114645%_)
        (gx#expander-binding?__% _%bind114645%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind114643%_)
        (gx#expander-binding?__% _%bind114643%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind114637%_)
        (letrec ((_%direct-special-form?114639%_
                  (lambda (_%obj114641%_)
                    (##structure-direct-instance-of?
                     _%obj114641%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind114637%_
           _%direct-special-form?114639%_))))
    (define gx#special-form-binding?
      (lambda (_%bind114635%_)
        (gx#expander-binding?__% _%bind114635%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind114626%_)
        (letrec ((_%feature?114628%_
                  (lambda (_%e114630%_)
                    (let ((_%$e114632%_
                           (##structure-instance-of?
                            _%e114630%_
                            'gx#feature-expander::t)))
                      (if _%$e114632%_
                          _%$e114632%_
                          (##structure-instance-of?
                           _%e114630%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind114626%_ _%feature?114628%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind114624%_)
        (gx#expander-binding?__% _%bind114624%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id114611%_ _%bound?114612%_)
        (if (gx#identifier? _%id114611%_)
            (_%bound?114612%_ (gx#resolve-identifier__0 _%id114611%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id114617%_)
        (let ((_%bound?114619%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id114617%_ _%bound?114619%_))))
    (define gx#core-bound-identifier?
      (lambda _g117566_
        (let ((_g117565_ (##length _g117566_)))
          (cond ((##fx= _g117565_ 1)
                 (apply gx#core-bound-identifier?__0 _g117566_))
                ((##fx= _g117565_ 2)
                 (apply gx#core-bound-identifier?__% _g117566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g117566_))))))
    (define gx#core-identifier=?
      (lambda (_%x114601%_ _%y114602%_)
        (letrec ((_%y=?114604%_
                  (lambda (_%xid114608%_)
                    ((if (list? _%y114602%_) memq eq?)
                     _%xid114608%_
                     _%y114602%_))))
          (let ((_%bind114606%_ (gx#resolve-identifier__0 _%x114601%_)))
            (if (##structure-instance-of? _%bind114606%_ 'gx#binding::t)
                (_%y=?114604%_
                 (##unchecked-structure-ref _%bind114606%_ '1 '#f '#f))
                (_%y=?114604%_ (gx#stx-e _%x114601%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e114599%_)
        (if (interned-symbol? _%e114599%_)
            (string-index__0 (symbol->string _%e114599%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx114552%_ _%src114553%_ _%ctx114554%_ _%marks114555%_)
        (if (##structure? _%stx114552%_)
            (let ((_%$e114557%_ (gx#sealed-syntax-unwrap _%stx114552%_)))
              (if _%$e114557%_
                  (values _%$e114557%_)
                  (if (gx#identifier? _%stx114552%_)
                      (let ((_%id114561%_
                             (gx#stx-unwrap__% _%stx114552%_ _%marks114555%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id114561%_ '1 '#f '#f)
                         (let ((_%$e114563%_
                                (##unchecked-structure-ref
                                 _%id114561%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e114563%_ _%$e114563%_ _%src114553%_))
                         _%ctx114554%_
                         (##unchecked-structure-ref _%id114561%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx114552%_)
                       (let ((_%$e114567%_ (gx#stx-source _%stx114552%_)))
                         (if _%$e114567%_ _%$e114567%_ _%src114553%_))
                       _%ctx114554%_
                       (reverse _%marks114555%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx114552%_
             _%src114553%_
             _%ctx114554%_
             (reverse _%marks114555%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx114573%_)
        (let* ((_%src114575%_ '#f)
               (_%ctx114577%_ (gx#current-expander-context))
               (_%marks114579%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114573%_
           _%src114575%_
           _%ctx114577%_
           _%marks114579%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx114581%_ _%src114582%_)
        (let* ((_%ctx114584%_ (gx#current-expander-context))
               (_%marks114586%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114581%_
           _%src114582%_
           _%ctx114584%_
           _%marks114586%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx114588%_ _%src114589%_ _%ctx114590%_)
        (let ((_%marks114592%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114588%_
           _%src114589%_
           _%ctx114590%_
           _%marks114592%_))))
    (define gx#core-quote-syntax
      (lambda _g117568_
        (let ((_g117567_ (##length _g117568_)))
          (cond ((##fx= _g117567_ 1) (apply gx#core-quote-syntax__0 _g117568_))
                ((##fx= _g117567_ 2) (apply gx#core-quote-syntax__1 _g117568_))
                ((##fx= _g117567_ 3) (apply gx#core-quote-syntax__2 _g117568_))
                ((##fx= _g117567_ 4) (apply gx#core-quote-syntax__% _g117568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g117568_))))))
    (define gx#core-cons
      (lambda (_%hd114548%_ _%tl114549%_)
        (cons (gx#core-quote-syntax__0 _%hd114548%_) _%tl114549%_)))
    (define gx#core-list
      (lambda (_%hd114545%_ . _%rest114546%_)
        (cons (gx#core-quote-syntax__0 _%hd114545%_) _%rest114546%_)))
    (define gx#core-cons*
      (lambda (_%hd114542%_ . _%rest114543%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd114542%_) _%rest114543%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path114511%_ _%rel114512%_)
        (let ((_%path114529%_ (gx#stx-e _%stx-path114511%_))
              (_%reldir114530%_
               (let _%lp114514%_ ((_%relsrc114516%_
                                   (let ((_%$e114526%_
                                          (gx#stx-source _%stx-path114511%_)))
                                     (if _%$e114526%_
                                         _%$e114526%_
                                         _%rel114512%_))))
                 (if (##structure-instance-of? _%relsrc114516%_ 'gerbil#AST::t)
                     (_%lp114514%_
                      (let ((_%$e114519%_ (gx#stx-source _%relsrc114516%_)))
                        (if _%$e114519%_
                            _%$e114519%_
                            (gx#stx-e _%relsrc114516%_))))
                     (if (source-location-path? _%relsrc114516%_)
                         (path-directory
                          (source-location-path _%relsrc114516%_))
                         (if (string? _%relsrc114516%_)
                             (path-directory _%relsrc114516%_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _%path114529%_ (path-normalize _%reldir114530%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path114535%_)
        (let ((_%rel114537%_ '#f))
          (gx#core-resolve-path__% _%stx-path114535%_ _%rel114537%_))))
    (define gx#core-resolve-path
      (lambda _g117570_
        (let ((_g117569_ (##length _g117570_)))
          (cond ((##fx= _g117569_ 1) (apply gx#core-resolve-path__0 _g117570_))
                ((##fx= _g117569_ 2) (apply gx#core-resolve-path__% _g117570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g117570_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr114467%_ _%ctx114468%_)
        (let* ((_%repr114469114476%_ _%repr114467%_)
               (_%E114471114480%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr114469114476%_
                         '([phi . subs]))
                  '#!void))
               (_%K114472114488%_
                (lambda (_%subs114483%_ _%phi114484%_)
                  (let ((_%subst114486%_
                         (if (not (null? _%subs114483%_))
                             (list->hash-table-eq _%subs114483%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst114486%_
                     _%ctx114468%_
                     _%phi114484%_
                     '#f)))))
          (if (##pair? _%repr114469114476%_)
              (let ((_%hd114473114491%_ (##car _%repr114469114476%_))
                    (_%tl114474114493%_ (##cdr _%repr114469114476%_)))
                (let* ((_%phi114496%_ _%hd114473114491%_)
                       (_%subs114498%_ _%tl114474114493%_))
                  (_%K114472114488%_ _%subs114498%_ _%phi114496%_)))
              (_%E114471114480%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr114503%_)
        (let ((_%ctx114505%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr114503%_ _%ctx114505%_))))
    (define gx#core-deserialize-mark
      (lambda _g117572_
        (let ((_g117571_ (##length _g117572_)))
          (cond ((##fx= _g117571_ 1)
                 (apply gx#core-deserialize-mark__0 _g117572_))
                ((##fx= _g117571_ 2)
                 (apply gx#core-deserialize-mark__% _g117572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g117572_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx114464%_)
        (gx#stx-rewrap _%stx114464%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx114462%_)
        (gx#stx-unwrap__% _%stx114462%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx114432%_)
        (let* ((_%g114433114441%_ (gx#current-expander-marks))
               (_%else114435114449%_ (lambda () _%stx114432%_))
               (_%K114437114454%_
                (lambda (_%hd114452%_)
                  (gx#stx-apply-mark _%stx114432%_ _%hd114452%_))))
          (if (##pair? _%g114433114441%_)
              (let* ((_%hd114438114457%_ (##car _%g114433114441%_))
                     (_%hd114460%_ _%hd114438114457%_))
                (_%K114437114454%_ _%hd114460%_))
              (_%else114435114449%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx114417%_ _%E114418%_)
        (let ((_%bind114420%_ (gx#resolve-identifier__0 _%stx114417%_)))
          (if (##structure-direct-instance-of?
               _%bind114420%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind114420%_ '4 '#f '#f)
              (_%E114418%_ _%stx114417%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx114425%_)
        (let ((_%E114427%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx114425%_ _%E114427%_))))
    (define gx#syntax-local-e
      (lambda _g117574_
        (let ((_g117573_ (##length _g117574_)))
          (cond ((##fx= _g117573_ 1) (apply gx#syntax-local-e__0 _g117574_))
                ((##fx= _g117573_ 2) (apply gx#syntax-local-e__% _g117574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g117574_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx114401%_ _%E114402%_)
        (let ((_%e114404%_ (gx#syntax-local-e__% _%stx114401%_ _%E114402%_)))
          (if (##structure-instance-of? _%e114404%_ 'gx#expander::t)
              (##structure-ref _%e114404%_ '1 gx#expander::t '#f)
              _%e114404%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx114409%_)
        (let ((_%E114411%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx114409%_ _%E114411%_))))
    (define gx#syntax-local-value
      (lambda _g117576_
        (let ((_g117575_ (##length _g117576_)))
          (cond ((##fx= _g117575_ 1)
                 (apply gx#syntax-local-value__0 _g117576_))
                ((##fx= _g117575_ 2)
                 (apply gx#syntax-local-value__% _g117576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g117576_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx114398%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx114398%_)))))
