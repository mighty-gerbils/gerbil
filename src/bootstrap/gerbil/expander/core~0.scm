(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712526090)
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
      (lambda _%$args118187%_
        (apply make-instance gx#expander-context::t _%$args118187%_)))
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
      (lambda _%$args118184%_
        (apply make-instance gx#root-context::t _%$args118184%_)))
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
      (lambda _%$args118181%_
        (apply make-instance gx#phi-context::t _%$args118181%_)))
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
      (lambda _%$args118178%_
        (apply make-instance gx#top-context::t _%$args118178%_)))
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
      (lambda _%$args118175%_
        (apply make-instance gx#module-context::t _%$args118175%_)))
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
      (lambda _%$args118172%_
        (apply make-instance gx#prelude-context::t _%$args118172%_)))
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
      (lambda _%$args118169%_
        (apply make-instance gx#local-context::t _%$args118169%_)))
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
      (lambda (_%self118142%_ _%id118143%_ _%super118144%_)
        (let ((_%self118147%_ _%self118142%_))
          (if (##fx< '3 (##structure-length _%self118147%_))
              (begin
                (##unchecked-structure-set!
                 _%self118147%_
                 _%id118143%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118147%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118147%_
                 _%super118144%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118147%_
                     '3
                     (##vector-length _%self118147%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self118160%_ _%id118161%_)
        (let ((_%super118163%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self118160%_
           _%id118161%_
           _%super118163%_))))
    (define gx#phi-context:::init!
      (lambda _g118230_
        (let ((_g118229_ (##length _g118230_)))
          (cond ((##fx= _g118229_ 2)
                 (apply (lambda (_%self118160%_ _%id118161%_)
                          (gx#phi-context:::init!__0
                           _%self118160%_
                           _%id118161%_))
                        _g118230_))
                ((##fx= _g118229_ 3)
                 (apply (lambda (_%self118165%_ _%id118166%_ _%super118167%_)
                          (gx#phi-context:::init!__%
                           _%self118165%_
                           _%id118166%_
                           _%super118167%_))
                        _g118230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g118230_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117995%_ _%super117996%_)
        (let ((_%self117999%_ _%self117995%_))
          (if (##fx< '3 (##structure-length _%self117999%_))
              (begin
                (##unchecked-structure-set!
                 _%self117999%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117999%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self117999%_
                 _%super117996%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self117999%_
                     '3
                     (##vector-length _%self117999%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self118012%_)
        (let ((_%super118014%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self118012%_ _%super118014%_))))
    (define gx#local-context:::init!
      (lambda _g118232_
        (let ((_g118231_ (##length _g118232_)))
          (cond ((##fx= _g118231_ 1)
                 (apply (lambda (_%self118012%_)
                          (gx#local-context:::init!__0 _%self118012%_))
                        _g118232_))
                ((##fx= _g118231_ 2)
                 (apply (lambda (_%self118016%_ _%super118017%_)
                          (gx#local-context:::init!__%
                           _%self118016%_
                           _%super118017%_))
                        _g118232_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g118232_))))))
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
      (lambda _%$args117869%_
        (apply make-instance gx#binding::t _%$args117869%_)))
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
      (lambda _%$args117866%_
        (apply make-instance gx#runtime-binding::t _%$args117866%_)))
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
      (lambda _%$args117863%_
        (apply make-instance gx#local-binding::t _%$args117863%_)))
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
      (lambda _%$args117860%_
        (apply make-instance gx#top-binding::t _%$args117860%_)))
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
      (lambda _%$args117857%_
        (apply make-instance gx#module-binding::t _%$args117857%_)))
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
      (lambda _%$args117854%_
        (apply make-instance gx#extern-binding::t _%$args117854%_)))
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
      (lambda _%$args117851%_
        (apply make-instance gx#syntax-binding::t _%$args117851%_)))
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
      (lambda _%$args117848%_
        (apply make-instance gx#import-binding::t _%$args117848%_)))
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
      (lambda _%$args117845%_
        (apply make-instance gx#alias-binding::t _%$args117845%_)))
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
      (lambda _%$args117842%_
        (apply make-instance gx#expander::t _%$args117842%_)))
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
      (lambda _%$args117839%_
        (apply make-instance gx#core-expander::t _%$args117839%_)))
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
      (lambda _%$args117836%_
        (apply make-instance gx#expression-form::t _%$args117836%_)))
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
      (lambda _%$args117833%_
        (apply make-instance gx#special-form::t _%$args117833%_)))
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
      (lambda _%$args117830%_
        (apply make-instance gx#definition-form::t _%$args117830%_)))
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
      (lambda _%$args117827%_
        (apply make-instance gx#top-special-form::t _%$args117827%_)))
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
      (lambda _%$args117824%_
        (apply make-instance gx#module-special-form::t _%$args117824%_)))
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
      (lambda _%$args117821%_
        (apply make-instance gx#feature-expander::t _%$args117821%_)))
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
      (lambda _%$args117818%_
        (apply make-instance gx#private-feature-expander::t _%$args117818%_)))
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
      (lambda _%$args117815%_
        (apply make-instance gx#reserved-expander::t _%$args117815%_)))
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
      (lambda _%$args117812%_
        (apply make-instance gx#macro-expander::t _%$args117812%_)))
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
      (lambda _%$args117809%_
        (apply make-instance gx#rename-macro-expander::t _%$args117809%_)))
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
      (lambda _%$args117806%_
        (apply make-instance gx#user-expander::t _%$args117806%_)))
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
      (lambda _%$args117803%_
        (apply make-instance gx#expander-mark::t _%$args117803%_)))
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
      (lambda (_%ctx117787%_
               _%message117788%_
               _%stx117789%_
               .
               _%details117790%_)
        (let ((_%ctx117801%_
               (let ((_%$e117792%_ _%ctx117787%_))
                 (if _%$e117792%_
                     _%$e117792%_
                     (let ((_%$e117795%_ (gx#core-context-top__0)))
                       (if _%$e117795%_
                           ((lambda (_%ctx117798%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117798%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117795%_)
                           (let () '#f)))))))
          (raise (make-syntax-error
                  _%message117788%_
                  (cons _%stx117789%_ _%details117790%_)
                  _%ctx117801%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117774%_ _%expression?117775%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117774%_ _%expression?117775%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117780%_)
        (let ((_%expression?117782%_ '#f))
          (gx#eval-syntax__% _%stx117780%_ _%expression?117782%_))))
    (define gx#eval-syntax
      (lambda _g118234_
        (let ((_g118233_ (##length _g118234_)))
          (cond ((##fx= _g118233_ 1)
                 (apply (lambda (_%stx117780%_)
                          (gx#eval-syntax__0 _%stx117780%_))
                        _g118234_))
                ((##fx= _g118233_ 2)
                 (apply (lambda (_%stx117784%_ _%expression?117785%_)
                          (gx#eval-syntax__%
                           _%stx117784%_
                           _%expression?117785%_))
                        _g118234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g118234_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117771%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117771%_))))
    (define gx#core-expand__%
      (lambda (_%stx117758%_ _%expression?117759%_)
        (if _%expression?117759%_
            (gx#core-expand-expression _%stx117758%_)
            (gx#core-expand-top _%stx117758%_))))
    (define gx#core-expand__0
      (lambda (_%stx117764%_)
        (let ((_%expression?117766%_ '#f))
          (gx#core-expand__% _%stx117764%_ _%expression?117766%_))))
    (define gx#core-expand
      (lambda _g118236_
        (let ((_g118235_ (##length _g118236_)))
          (cond ((##fx= _g118235_ 1)
                 (apply (lambda (_%stx117764%_)
                          (gx#core-expand__0 _%stx117764%_))
                        _g118236_))
                ((##fx= _g118235_ 2)
                 (apply (lambda (_%stx117768%_ _%expression?117769%_)
                          (gx#core-expand__%
                           _%stx117768%_
                           _%expression?117769%_))
                        _g118236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g118236_))))))
    (define gx#core-expand-top
      (lambda (_%stx117725%_)
        (let* ((_%stx117727%_ (gx#core-expand*__0 _%stx117725%_))
               (_%e117728117735%_ _%stx117727%_)
               (_%E117730117739%_
                (lambda () (gx#core-expand-expression _%stx117727%_)))
               (_%E117729117753%_
                (lambda ()
                  (if (gx#stx-pair? _%e117728117735%_)
                      (let ((_%e117731117743%_
                             (gx#syntax-e _%e117728117735%_)))
                        (let ((_%hd117732117746%_ (##car _%e117731117743%_))
                              (_%tl117733117748%_ (##cdr _%e117731117743%_)))
                          (let ((_%form117751%_ _%hd117732117746%_))
                            (if (gx#core-bound-identifier?__0 _%form117751%_)
                                _%stx117727%_
                                (_%E117730117739%_)))))
                      (_%E117730117739%_)))))
          (_%E117729117753%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117657%_)
        (letrec ((_%sealed-expression?117659%_
                  (lambda (_%hd117695%_)
                    (if (gx#sealed-syntax? _%hd117695%_)
                        (let* ((_%e117696117703%_ _%hd117695%_)
                               (_%E117698117707%_ (lambda () '#f))
                               (_%E117697117721%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117696117703%_)
                                      (let ((_%e117699117711%_
                                             (gx#syntax-e _%e117696117703%_)))
                                        (let ((_%hd117700117714%_
                                               (##car _%e117699117711%_))
                                              (_%tl117701117716%_
                                               (##cdr _%e117699117711%_)))
                                          (let ((_%form117719%_
                                                 _%hd117700117714%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117719%_
                                                 gx#expression-form-binding?)
                                                (_%E117698117707%_)))))
                                      (_%E117698117707%_)))))
                          (_%E117697117721%_))
                        '#f)))
                 (_%illegal-expression117660%_
                  (lambda (_%hd117692%_ . _%_117693%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117657%_
                     _%hd117692%_)))
                 (_%expand-e117661%_
                  (lambda (_%form117684%_ _%hd117685%_)
                    (let ((_%bind117687%_
                           (if (##structure-instance-of?
                                _%form117684%_
                                'gx#binding::t)
                               _%form117684%_
                               (gx#resolve-identifier__0 _%form117684%_))))
                      (if (gx#core-expander-binding? _%bind117687%_)
                          (let ()
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _%bind117687%_
                              '4
                              '#f
                              '#f)
                             (gx#stx-wrap-source
                              _%hd117685%_
                              (gx#stx-source _%stx117657%_))))
                          (if (##structure-direct-instance-of?
                               _%bind117687%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-expand-expression
                                 (gx#core-apply-expander__0
                                  (##unchecked-structure-ref
                                   _%bind117687%_
                                   '4
                                   '#f
                                   '#f)
                                  (gx#stx-wrap-source
                                   _%hd117685%_
                                   (gx#stx-source _%stx117657%_)))))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; missing expander"
                                 _%stx117657%_
                                 _%form117684%_))))))))
          (let ((_%hd117663%_ (gx#core-expand-head _%stx117657%_)))
            (if (_%sealed-expression?117659%_ _%hd117663%_)
                (let () _%hd117663%_)
                (if (gx#stx-pair? _%hd117663%_)
                    (let ()
                      (let* ((_%form117667%_ (gx#stx-car _%hd117663%_))
                             (_%bind117669%_
                              (if (gx#identifier? _%form117667%_)
                                  (gx#resolve-identifier__0 _%form117667%_)
                                  '#f)))
                        (if (or (not _%bind117669%_)
                                (not (gx#core-expander-binding?
                                      _%bind117669%_)))
                            (let ()
                              (_%expand-e117661%_
                               '%%app
                               (cons '%%app _%hd117663%_)))
                            (if (eq? (##unchecked-structure-ref
                                      _%bind117669%_
                                      '1
                                      '#f
                                      '#f)
                                     '%#begin)
                                (let ()
                                  (gx#core-expand-block*
                                   _%hd117663%_
                                   _%illegal-expression117660%_))
                                (if (gx#expression-form-binding?
                                     _%bind117669%_)
                                    (let ()
                                      (_%expand-e117661%_
                                       _%bind117669%_
                                       _%hd117663%_))
                                    (if (gx#direct-special-form-binding?
                                         _%bind117669%_)
                                        (let ()
                                          (gx#core-expand-expression
                                           (_%expand-e117661%_
                                            _%bind117669%_
                                            _%hd117663%_)))
                                        (let ()
                                          (_%illegal-expression117660%_
                                           _%hd117663%_))))))))
                    (if (gx#core-bound-identifier?__0 _%hd117663%_)
                        (let () (_%illegal-expression117660%_ _%hd117663%_))
                        (if (gx#identifier? _%hd117663%_)
                            (let ()
                              (_%expand-e117661%_
                               '%%ref
                               (cons '%%ref (cons _%hd117663%_ '()))))
                            (if (gx#stx-datum? _%hd117663%_)
                                (let ()
                                  (_%expand-e117661%_
                                   '%#quote
                                   (cons '%#quote (cons _%hd117663%_ '()))))
                                (let ()
                                  (_%illegal-expression117660%_
                                   _%hd117663%_)))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117652%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117655%_ (gx#core-expand-expression _%stx117652%_)))
             (values _%stx117655%_ (gx#eval-syntax* _%stx117655%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx117633%_ _%stop?117634%_)
        (let _%lp117636%_ ((_%stx117638%_ _%stx117633%_))
          (if (_%stop?117634%_ _%stx117638%_)
              _%stx117638%_
              (let ((_%rstx117640%_ (gx#core-expand1 _%stx117638%_)))
                (if (eq? _%stx117638%_ _%rstx117640%_)
                    _%stx117638%_
                    (_%lp117636%_ _%rstx117640%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx117645%_)
        (let ((_%stop?117647%_ false))
          (gx#core-expand*__% _%stx117645%_ _%stop?117647%_))))
    (define gx#core-expand*
      (lambda _g118238_
        (let ((_g118237_ (##length _g118238_)))
          (cond ((##fx= _g118237_ 1)
                 (apply (lambda (_%stx117645%_)
                          (gx#core-expand*__0 _%stx117645%_))
                        _g118238_))
                ((##fx= _g118237_ 2)
                 (apply (lambda (_%stx117649%_ _%stop?117650%_)
                          (gx#core-expand*__% _%stx117649%_ _%stop?117650%_))
                        _g118238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g118238_))))))
    (define gx#core-expand1
      (lambda (_%stx117585%_)
        (letrec ((_%step117587%_
                  (lambda (_%hd117624%_)
                    (let ((_%bind117626%_
                           (gx#resolve-identifier__0 _%hd117624%_)))
                      (if (##structure-instance-of?
                           _%bind117626%_
                           'gx#runtime-binding::t)
                          (let () _%stx117585%_)
                          (if (##structure-direct-instance-of?
                               _%bind117626%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-apply-expander__0
                                 (##unchecked-structure-ref
                                  _%bind117626%_
                                  '4
                                  '#f
                                  '#f)
                                 _%stx117585%_))
                              (if (not _%bind117626%_)
                                  (let () _%stx117585%_)
                                  (let ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; no binding for head"
                                     _%stx117585%_)))))))))
          (let* ((_%e117588117596%_ _%stx117585%_)
                 (_%E117594117600%_ (lambda () _%stx117585%_))
                 (_%E117590117606%_
                  (lambda ()
                    (let ((_%hd117604%_ _%e117588117596%_))
                      (if (gx#identifier? _%hd117604%_)
                          (_%step117587%_ _%hd117604%_)
                          (_%E117594117600%_)))))
                 (_%E117589117620%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117588117596%_)
                        (let ((_%e117591117610%_
                               (gx#syntax-e _%e117588117596%_)))
                          (let ((_%hd117592117613%_ (##car _%e117591117610%_))
                                (_%tl117593117615%_ (##cdr _%e117591117610%_)))
                            (let ((_%hd117618%_ _%hd117592117613%_))
                              (if (gx#identifier? _%hd117618%_)
                                  (_%step117587%_ _%hd117618%_)
                                  (_%E117590117606%_)))))
                        (_%E117590117606%_)))))
            (_%E117589117620%_)))))
    (define gx#core-expand-head
      (lambda (_%stx117551%_)
        (letrec ((_%stop?117553%_
                  (lambda (_%stx117555%_)
                    (let* ((_%e117556117563%_ _%stx117555%_)
                           (_%E117558117567%_ (lambda () '#f))
                           (_%E117557117581%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117556117563%_)
                                  (let ((_%e117559117571%_
                                         (gx#syntax-e _%e117556117563%_)))
                                    (let ((_%hd117560117574%_
                                           (##car _%e117559117571%_))
                                          (_%tl117561117576%_
                                           (##cdr _%e117559117571%_)))
                                      (let ((_%hd117579%_ _%hd117560117574%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd117579%_)
                                            (_%E117558117567%_)))))
                                  (_%E117558117567%_)))))
                      (_%E117557117581%_)))))
          (gx#core-expand*__% _%stx117551%_ _%stop?117553%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx117357%_
               _%expand-special117358%_
               _%begin-form117359%_
               _%expand-e117360%_)
        (letrec ((_%expand-splice117362%_
                  (lambda (_%hd117525%_
                           _%body117526%_
                           _%rest117527%_
                           _%r117528%_)
                    (if (gx#stx-list? _%body117526%_)
                        (_%K117366%_
                         (gx#stx-foldr cons _%rest117527%_ _%body117526%_)
                         _%r117528%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx117357%_
                         _%hd117525%_))))
                 (_%expand-cond-expand117363%_
                  (lambda (_%hd117521%_ _%rest117522%_ _%r117523%_)
                    (_%K117366%_
                     (cons (gx#core-expand-cond-expand% _%hd117521%_)
                           _%rest117522%_)
                     _%r117523%_)))
                 (_%expand-include117364%_
                  (lambda (_%hd117470%_ _%rest117471%_ _%r117472%_)
                    (let* ((_%e117473117483%_ _%hd117470%_)
                           (_%E117475117487%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117473117483%_)))
                           (_%E117474117517%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117473117483%_)
                                  (let ((_%e117476117491%_
                                         (gx#syntax-e _%e117473117483%_)))
                                    (let ((_%hd117477117494%_
                                           (##car _%e117476117491%_))
                                          (_%tl117478117496%_
                                           (##cdr _%e117476117491%_)))
                                      (if (gx#stx-pair? _%tl117478117496%_)
                                          (let ((_%e117479117499%_
                                                 (gx#syntax-e
                                                  _%tl117478117496%_)))
                                            (let ((_%hd117480117502%_
                                                   (##car _%e117479117499%_))
                                                  (_%tl117481117504%_
                                                   (##cdr _%e117479117499%_)))
                                              (let ((_%path117507%_
                                                     _%hd117480117502%_))
                                                (if (gx#stx-null?
                                                     _%tl117481117504%_)
                                                    (if (gx#stx-string?
                                                         _%path117507%_)
                                                        (let* ((_%rpath117509%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path117507%_
                         (gx#stx-source _%hd117470%_)))
                       (_%block117511%_
                        (gx#core-expand-include%__%
                         _%hd117470%_
                         _%rpath117509%_))
                       (_%rbody117514%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block117511%_
                            _%expand-special117358%_
                            '#f
                            _%expand-e117360%_))
                         gx#current-expander-path
                         (cons _%rpath117509%_ (gx#current-expander-path)))))
                  (_%K117366%_
                   _%rest117471%_
                   (__foldr1 cons _%r117472%_ _%rbody117514%_)))
                (_%E117475117487%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E117475117487%_)))))
                                          (_%E117475117487%_))))
                                  (_%E117475117487%_)))))
                      (_%E117474117517%_))))
                 (_%expand-expression117365%_
                  (lambda (_%hd117466%_ _%rest117467%_ _%r117468%_)
                    (_%K117366%_
                     _%rest117467%_
                     (cons (_%expand-e117360%_ _%hd117466%_) _%r117468%_))))
                 (_%K117366%_
                  (lambda (_%rest117396%_ _%r117397%_)
                    (let* ((_%e117398117405%_ _%rest117396%_)
                           (_%E117400117409%_
                            (lambda ()
                              (if _%begin-form117359%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form117359%_
                                    (reverse _%r117397%_))
                                   (gx#stx-source _%stx117357%_))
                                  _%r117397%_)))
                           (_%E117399117462%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117398117405%_)
                                  (let ((_%e117401117413%_
                                         (gx#syntax-e _%e117398117405%_)))
                                    (let ((_%hd117402117416%_
                                           (##car _%e117401117413%_))
                                          (_%tl117403117418%_
                                           (##cdr _%e117401117413%_)))
                                      (let* ((_%hd117421%_ _%hd117402117416%_)
                                             (_%rest117423%_
                                              _%tl117403117418%_))
                                        (if '#t
                                            (let* ((_%hd117425%_
                                                    (gx#core-expand-head
                                                     _%hd117421%_))
                                                   (_%e117426117433%_
                                                    _%hd117425%_)
                                                   (_%E117428117437%_
                                                    (lambda ()
                                                      (_%expand-expression117365%_
                                                       _%hd117425%_
                                                       _%rest117423%_
                                                       _%r117397%_)))
                                                   (_%E117427117458%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117426117433%_)
                                                          (let ((_%e117429117441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117426117433%_)))
                    (let ((_%hd117430117444%_ (##car _%e117429117441%_))
                          (_%tl117431117446%_ (##cdr _%e117429117441%_)))
                      (let* ((_%form117449%_ _%hd117430117444%_)
                             (_%body117451%_ _%tl117431117446%_))
                        (if '#t
                            (let ((_%bind117453%_
                                   (if (gx#identifier? _%form117449%_)
                                       (gx#resolve-identifier__0
                                        _%form117449%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind117453%_)
                                  (let ((_%$e117455%_
                                         (##unchecked-structure-ref
                                          _%bind117453%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e117455%_)
                                        (_%expand-splice117362%_
                                         _%hd117425%_
                                         _%body117451%_
                                         _%rest117423%_
                                         _%r117397%_)
                                        (if (eq? '%#cond-expand _%$e117455%_)
                                            (_%expand-cond-expand117363%_
                                             _%hd117425%_
                                             _%rest117423%_
                                             _%r117397%_)
                                            (if (eq? '%#include _%$e117455%_)
                                                (_%expand-include117364%_
                                                 _%hd117425%_
                                                 _%rest117423%_
                                                 _%r117397%_)
                                                (_%expand-special117358%_
                                                 _%hd117425%_
                                                 _%K117366%_
                                                 _%rest117423%_
                                                 _%r117397%_)))))
                                  (_%expand-expression117365%_
                                   _%hd117425%_
                                   _%rest117423%_
                                   _%r117397%_)))
                            (_%E117428117437%_)))))
                  (_%E117428117437%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117427117458%_))
                                            (_%E117400117409%_)))))
                                  (_%E117400117409%_)))))
                      (_%E117399117462%_)))))
          (let* ((_%e117367117374%_ _%stx117357%_)
                 (_%E117369117378%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117367117374%_)))
                 (_%E117368117392%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117367117374%_)
                        (let ((_%e117370117382%_
                               (gx#syntax-e _%e117367117374%_)))
                          (let ((_%hd117371117385%_ (##car _%e117370117382%_))
                                (_%tl117372117387%_ (##cdr _%e117370117382%_)))
                            (let ((_%body117390%_ _%tl117372117387%_))
                              (if (gx#stx-list? _%body117390%_)
                                  (_%K117366%_ _%body117390%_ '())
                                  (_%E117369117378%_)))))
                        (_%E117369117378%_)))))
            (_%E117368117392%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx117533%_ _%expand-special117534%_)
        (let* ((_%begin-form117536%_ '%#begin)
               (_%expand-e117538%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117533%_
           _%expand-special117534%_
           _%begin-form117536%_
           _%expand-e117538%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx117540%_ _%expand-special117541%_ _%begin-form117542%_)
        (let ((_%expand-e117544%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117540%_
           _%expand-special117541%_
           _%begin-form117542%_
           _%expand-e117544%_))))
    (define gx#core-expand-block
      (lambda _g118240_
        (let ((_g118239_ (##length _g118240_)))
          (cond ((##fx= _g118239_ 2)
                 (apply (lambda (_%stx117533%_ _%expand-special117534%_)
                          (gx#core-expand-block__0
                           _%stx117533%_
                           _%expand-special117534%_))
                        _g118240_))
                ((##fx= _g118239_ 3)
                 (apply (lambda (_%stx117540%_
                                 _%expand-special117541%_
                                 _%begin-form117542%_)
                          (gx#core-expand-block__1
                           _%stx117540%_
                           _%expand-special117541%_
                           _%begin-form117542%_))
                        _g118240_))
                ((##fx= _g118239_ 4)
                 (apply (lambda (_%stx117546%_
                                 _%expand-special117547%_
                                 _%begin-form117548%_
                                 _%expand-e117549%_)
                          (gx#core-expand-block__%
                           _%stx117546%_
                           _%expand-special117547%_
                           _%begin-form117548%_
                           _%expand-e117549%_))
                        _g118240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g118240_))))))
    (define gx#core-expand-block*
      (lambda (_%stx117305%_ _%expand-special117306%_)
        (let* ((_%g117307117318%_
                (gx#core-expand-block__1
                 _%stx117305%_
                 _%expand-special117306%_
                 '#f))
               (_%E117311117322%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117307117318%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K117316117353%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx117305%_)))
                (_%K117313117339%_ (lambda (_%expr117337%_) _%expr117337%_))
                (_%K117312117328%_
                 (lambda (_%body117326%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body117326%_))
                    (gx#stx-source _%stx117305%_)))))
            (let ((_%try-match117309117349%_
                   (lambda ()
                     (if (##pair? _%g117307117318%_)
                         (let ((_%tl117315117344%_ (##cdr _%g117307117318%_))
                               (_%hd117314117342%_ (##car _%g117307117318%_)))
                           (if (##null? _%tl117315117344%_)
                               (let ((_%expr117347%_ _%hd117314117342%_))
                                 (_%K117313117339%_ _%expr117347%_))
                               (let ((_%body117331%_ _%g117307117318%_))
                                 (_%K117312117328%_ _%body117331%_))))
                         (let ((_%body117331%_ _%g117307117318%_))
                           (_%K117312117328%_ _%body117331%_))))))
              (if (##null? _%g117307117318%_)
                  (_%K117316117353%_)
                  (_%try-match117309117349%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx117130%_)
        (letrec ((_%satisfied?117132%_
                  (lambda (_%condition117233%_)
                    (let* ((_%e117234117249%_ _%condition117233%_)
                           (_%E117244117253%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117234117249%_)))
                           (_%E117237117272%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117234117249%_)
                                  (let ((_%e117245117257%_
                                         (gx#syntax-e _%e117234117249%_)))
                                    (let ((_%hd117246117260%_
                                           (##car _%e117245117257%_))
                                          (_%tl117247117262%_
                                           (##cdr _%e117245117257%_)))
                                      (let* ((_%combinator117265%_
                                              _%hd117246117260%_)
                                             (_%body117267%_
                                              _%tl117247117262%_))
                                        (if (gx#stx-list? _%body117267%_)
                                            (let ((_%$e117269%_
                                                   (gx#stx-e
                                                    _%combinator117265%_)))
                                              (if (eq? 'not _%$e117269%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?117132%_
                                                        _%body117267%_))
                                                  (if (eq? 'and _%$e117269%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?117132%_
                                                       _%body117267%_)
                                                      (if (eq? 'or
                                                               _%$e117269%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?117132%_
                                                           _%body117267%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e117269%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body117267%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx117130%_
                       _%combinator117265%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E117244117253%_)))))
                                  (_%E117244117253%_))))
                           (_%E117236117295%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117234117249%_)
                                  (let ((_%e117238117276%_
                                         (gx#syntax-e _%e117234117249%_)))
                                    (let ((_%hd117239117279%_
                                           (##car _%e117238117276%_))
                                          (_%tl117240117281%_
                                           (##cdr _%e117238117276%_)))
                                      (if (and (gx#identifier?
                                                _%hd117239117279%_)
                                               (gx#core-identifier=?
                                                _%hd117239117279%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl117240117281%_)
                                              (let ((_%e117241117284%_
                                                     (gx#syntax-e
                                                      _%tl117240117281%_)))
                                                (let ((_%hd117242117287%_
                                                       (##car _%e117241117284%_))
                                                      (_%tl117243117289%_
                                                       (##cdr _%e117241117284%_)))
                                                  (let ((_%expr117292%_
                                                         _%hd117242117287%_))
                                                    (if (gx#stx-null?
                                                         _%tl117243117289%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr117292%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E117237117272%_))
                (_%E117237117272%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117237117272%_))
                                          (_%E117237117272%_))))
                                  (_%E117237117272%_))))
                           (_%E117235117301%_
                            (lambda ()
                              (let ((_%id117299%_ _%e117234117249%_))
                                (if (gx#identifier? _%id117299%_)
                                    (gx#core-bound-identifier?__%
                                     _%id117299%_
                                     gx#feature-binding?)
                                    (_%E117236117295%_))))))
                      (_%E117235117301%_))))
                 (_%loop117133%_
                  (lambda (_%rest117163%_)
                    (let* ((_%e117164117172%_ _%rest117163%_)
                           (_%E117170117176%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117164117172%_)))
                           (_%E117166117180%_
                            (lambda ()
                              (if (gx#stx-null? _%e117164117172%_)
                                  (if '#t '() (_%E117170117176%_))
                                  (_%E117170117176%_))))
                           (_%E117165117229%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117164117172%_)
                                  (let ((_%e117167117184%_
                                         (gx#syntax-e _%e117164117172%_)))
                                    (let ((_%hd117168117187%_
                                           (##car _%e117167117184%_))
                                          (_%tl117169117189%_
                                           (##cdr _%e117167117184%_)))
                                      (let* ((_%hd117192%_ _%hd117168117187%_)
                                             (_%rest117194%_
                                              _%tl117169117189%_))
                                        (if '#t
                                            (let* ((_%e117195117202%_
                                                    _%hd117192%_)
                                                   (_%E117197117206%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e117195117202%_)))
                                                   (_%E117196117225%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117195117202%_)
                                                          (let ((_%e117198117210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117195117202%_)))
                    (let ((_%hd117199117213%_ (##car _%e117198117210%_))
                          (_%tl117200117215%_ (##cdr _%e117198117210%_)))
                      (let* ((_%condition117218%_ _%hd117199117213%_)
                             (_%body117220%_ _%tl117200117215%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition117218%_ 'else)
                                (let ()
                                  (if (gx#stx-null? _%rest117194%_)
                                      _%body117220%_
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; clauses after else"
                                       _%stx117130%_
                                       _%hd117192%_)))
                                (if (_%satisfied?117132%_ _%condition117218%_)
                                    (let () _%body117220%_)
                                    (let () (_%loop117133%_ _%rest117194%_))))
                            (_%E117197117206%_)))))
                  (_%E117197117206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117196117225%_))
                                            (_%E117166117180%_)))))
                                  (_%E117166117180%_)))))
                      (_%E117165117229%_)))))
          (let* ((_%e117134117141%_ _%stx117130%_)
                 (_%E117136117145%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117134117141%_)))
                 (_%E117135117159%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117134117141%_)
                        (let ((_%e117137117149%_
                               (gx#syntax-e _%e117134117141%_)))
                          (let ((_%hd117138117152%_ (##car _%e117137117149%_))
                                (_%tl117139117154%_ (##cdr _%e117137117149%_)))
                            (let ((_%clauses117157%_ _%tl117139117154%_))
                              (if (gx#stx-list? _%clauses117157%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop117133%_ _%clauses117157%_))
                                  (_%E117136117145%_)))))
                        (_%E117136117145%_)))))
            (_%E117135117159%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx117073%_ _%rpath117074%_)
        (let* ((_%e117075117085%_ _%stx117073%_)
               (_%E117077117089%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e117075117085%_)))
               (_%E117076117116%_
                (lambda ()
                  (if (gx#stx-pair? _%e117075117085%_)
                      (let ((_%e117078117093%_
                             (gx#syntax-e _%e117075117085%_)))
                        (let ((_%hd117079117096%_ (##car _%e117078117093%_))
                              (_%tl117080117098%_ (##cdr _%e117078117093%_)))
                          (if (gx#stx-pair? _%tl117080117098%_)
                              (let ((_%e117081117101%_
                                     (gx#syntax-e _%tl117080117098%_)))
                                (let ((_%hd117082117104%_
                                       (##car _%e117081117101%_))
                                      (_%tl117083117106%_
                                       (##cdr _%e117081117101%_)))
                                  (let ((_%path117109%_ _%hd117082117104%_))
                                    (if (gx#stx-null? _%tl117083117106%_)
                                        (if (gx#stx-string? _%path117109%_)
                                            (let ((_%rpath117114%_
                                                   (let ((_%$e117111%_
                                                          _%rpath117074%_))
                                                     (if _%$e117111%_
                                                         _%$e117111%_
                                                         (gx#core-resolve-path__%
                                                          _%path117109%_
                                                          (gx#stx-source
                                                           _%stx117073%_))))))
                                              (if (member _%rpath117114%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx117073%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath117114%_))
                                                    (gx#stx-source
                                                     _%stx117073%_)))))
                                            (_%E117077117089%_))
                                        (_%E117077117089%_)))))
                              (_%E117077117089%_))))
                      (_%E117077117089%_)))))
          (_%E117076117116%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx117123%_)
        (let ((_%rpath117125%_ '#f))
          (gx#core-expand-include%__% _%stx117123%_ _%rpath117125%_))))
    (define gx#core-expand-include%
      (lambda _g118242_
        (let ((_g118241_ (##length _g118242_)))
          (cond ((##fx= _g118241_ 1)
                 (apply (lambda (_%stx117123%_)
                          (gx#core-expand-include%__0 _%stx117123%_))
                        _g118242_))
                ((##fx= _g118241_ 2)
                 (apply (lambda (_%stx117127%_ _%rpath117128%_)
                          (gx#core-expand-include%__%
                           _%stx117127%_
                           _%rpath117128%_))
                        _g118242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g118242_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K117039%_ _%stx117040%_ _%method117041%_)
        (if (procedure? _%K117039%_)
            (let ((_%$e117044%_ (gx#stx-source _%stx117040%_)))
              (if _%$e117044%_
                  ((lambda (_%g117046117048%_)
                     (gx#stx-wrap-source
                      (_%K117039%_ _%stx117040%_)
                      _%g117046117048%_))
                   _%$e117044%_)
                  (let () (_%K117039%_ _%stx117040%_))))
            (let ((_%$e117052%_
                   (bound-method-ref _%K117039%_ _%method117041%_)))
              (if _%$e117052%_
                  ((lambda (_%g117054117056%_)
                     (gx#core-apply-expander__%
                      _%g117054117056%_
                      _%stx117040%_
                      _%method117041%_))
                   _%$e117052%_)
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; no expander method"
                     _%stx117040%_
                     _%method117041%_)))))))
    (define gx#core-apply-expander__0
      (lambda (_%K117063%_ _%stx117064%_)
        (let ((_%method117066%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K117063%_
           _%stx117064%_
           _%method117066%_))))
    (define gx#core-apply-expander
      (lambda _g118244_
        (let ((_g118243_ (##length _g118244_)))
          (cond ((##fx= _g118243_ 2)
                 (apply (lambda (_%K117063%_ _%stx117064%_)
                          (gx#core-apply-expander__0
                           _%K117063%_
                           _%stx117064%_))
                        _g118244_))
                ((##fx= _g118243_ 3)
                 (apply (lambda (_%K117068%_ _%stx117069%_ _%method117070%_)
                          (gx#core-apply-expander__%
                           _%K117068%_
                           _%stx117069%_
                           _%method117070%_))
                        _g118244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g118244_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self117024%_ _%stx117025%_)
        (let ((_%self117028%_ _%self117024%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx117025%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116866%_ _%stx116867%_)
        (let ((_%self116870%_ _%self116866%_))
          (let* ((_%self116879116885%_ _%self116870%_)
                 (_%E116881116889%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116879116885%_
                           '((macro-expander K)))
                    '#!void))
                 (_%K116882116894%_
                  (lambda (_%K116892%_)
                    (gx#core-apply-expander__0 _%K116892%_ _%stx116867%_))))
            (if '#t
                (let* ((_%e116883116897%_
                        (##unchecked-structure-ref
                         _%self116879116885%_
                         '1
                         '#f
                         '#f))
                       (_%K116900%_ _%e116883116897%_))
                  (_%K116882116894%_ _%K116900%_))
                (_%E116881116889%_))))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116708%_ _%stx116709%_)
        (let ((_%self116712%_ _%self116708%_))
          (if (gx#sealed-syntax? _%stx116709%_)
              _%stx116709%_
              (let* ((_%self116721116727%_ _%self116712%_)
                     (_%E116723116731%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116721116727%_
                               '((core-expander K)))
                        '#!void))
                     (_%K116724116736%_
                      (lambda (_%K116734%_)
                        (gx#core-apply-expander__0
                         _%K116734%_
                         _%stx116709%_))))
                (if '#t
                    (let* ((_%e116725116739%_
                            (##unchecked-structure-ref
                             _%self116721116727%_
                             '1
                             '#f
                             '#f))
                           (_%K116742%_ _%e116725116739%_))
                      (_%K116724116736%_ _%K116742%_))
                    (_%E116723116731%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116559%_ _%stx116560%_ _%top?116561%_)
        (let ((_%self116564%_ _%self116559%_))
          (if (_%top?116561%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self116564%_
               _%stx116560%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx116560%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116577%_ _%stx116578%_)
        (let ((_%top?116580%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116577%_
           _%stx116578%_
           _%top?116580%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g118246_
        (let ((_g118245_ (##length _g118246_)))
          (cond ((##fx= _g118245_ 2)
                 (apply (lambda (_%self116577%_ _%stx116578%_)
                          (gx#top-special-form::apply-macro-expander__0
                           _%self116577%_
                           _%stx116578%_))
                        _g118246_))
                ((##fx= _g118245_ 3)
                 (apply (lambda (_%self116582%_ _%stx116583%_ _%top?116584%_)
                          (gx#top-special-form::apply-macro-expander__%
                           _%self116582%_
                           _%stx116583%_
                           _%top?116584%_))
                        _g118246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g118246_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116422%_ _%stx116423%_)
        (let ((_%self116426%_ _%self116422%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self116426%_
           _%stx116423%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116236%_ _%stx116237%_)
        (let ((_%self116240%_ _%self116236%_))
          (let* ((_%self116249116255%_ _%self116240%_)
                 (_%E116251116259%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116249116255%_
                           '((rename-macro-expander id)))
                    '#!void))
                 (_%K116252116292%_
                  (lambda (_%id116262%_)
                    (let* ((_%e116263116270%_ _%stx116237%_)
                           (_%E116265116274%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116263116270%_)))
                           (_%E116264116288%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116263116270%_)
                                  (let ((_%e116266116278%_
                                         (gx#syntax-e _%e116263116270%_)))
                                    (let ((_%hd116267116281%_
                                           (##car _%e116266116278%_))
                                          (_%tl116268116283%_
                                           (##cdr _%e116266116278%_)))
                                      (let ((_%body116286%_
                                             _%tl116268116283%_))
                                        (if '#t
                                            (gx#core-cons
                                             _%id116262%_
                                             _%body116286%_)
                                            (_%E116265116274%_)))))
                                  (_%E116265116274%_)))))
                      (_%E116264116288%_)))))
            (if '#t
                (let* ((_%e116253116295%_
                        (##unchecked-structure-ref
                         _%self116249116255%_
                         '1
                         '#f
                         '#f))
                       (_%id116298%_ _%e116253116295%_))
                  (_%K116252116292%_ _%id116298%_))
                (_%E116251116259%_))))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self116062%_ _%stx116063%_ _%method116064%_)
        (let* ((_%self116065116073%_ _%self116062%_)
               (_%E116067116077%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116065116073%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K116068116084%_
                (lambda (_%phi116080%_ _%ctx116081%_ _%K116082%_)
                  (gx#core-apply-user-macro
                   _%K116082%_
                   _%stx116063%_
                   _%ctx116081%_
                   _%phi116080%_
                   _%method116064%_))))
          (if (##structure-instance-of?
               _%self116065116073%_
               'gx#user-expander::t)
              (let* ((_%e116069116087%_
                      (##unchecked-structure-ref
                       _%self116065116073%_
                       '1
                       '#f
                       '#f))
                     (_%K116090%_ _%e116069116087%_)
                     (_%e116070116092%_
                      (##unchecked-structure-ref
                       _%self116065116073%_
                       '2
                       '#f
                       '#f))
                     (_%ctx116095%_ _%e116070116092%_)
                     (_%e116071116097%_
                      (##unchecked-structure-ref
                       _%self116065116073%_
                       '3
                       '#f
                       '#f))
                     (_%phi116100%_ _%e116071116097%_))
                (_%K116068116084%_ _%phi116100%_ _%ctx116095%_ _%K116090%_))
              (_%E116067116077%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self116105%_ _%stx116106%_)
        (let ((_%method116108%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self116105%_
           _%stx116106%_
           _%method116108%_))))
    (define gx#core-apply-user-expander
      (lambda _g118248_
        (let ((_g118247_ (##length _g118248_)))
          (cond ((##fx= _g118247_ 2)
                 (apply (lambda (_%self116105%_ _%stx116106%_)
                          (gx#core-apply-user-expander__0
                           _%self116105%_
                           _%stx116106%_))
                        _g118248_))
                ((##fx= _g118247_ 3)
                 (apply (lambda (_%self116110%_ _%stx116111%_ _%method116112%_)
                          (gx#core-apply-user-expander__%
                           _%self116110%_
                           _%stx116111%_
                           _%method116112%_))
                        _g118248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g118248_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K116052%_
               _%stx116053%_
               _%ctx116054%_
               _%phi116055%_
               _%method116056%_)
        (let ((_%mark116058%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx116054%_
                _%phi116055%_
                _%stx116053%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K116052%_
               (gx#stx-apply-mark _%stx116053%_ _%mark116058%_)
               _%method116056%_)
              _%mark116058%_))
           gx#current-expander-marks
           (cons _%mark116058%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115900%_ _%phi115901%_ _%ctx115902%_)
        (let _%lp115904%_ ((_%bind115906%_
                            (gx#core-resolve-identifier__%
                             _%stx115900%_
                             _%phi115901%_
                             _%ctx115902%_)))
          (if (##structure-direct-instance-of?
               _%bind115906%_
               'gx#import-binding::t)
              (let ()
                (_%lp115904%_
                 (##unchecked-structure-ref _%bind115906%_ '4 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%bind115906%_
                   'gx#alias-binding::t)
                  (let ()
                    (_%lp115904%_
                     (gx#core-resolve-identifier__%
                      (##unchecked-structure-ref _%bind115906%_ '4 '#f '#f)
                      _%phi115901%_
                      _%ctx115902%_)))
                  (let () _%bind115906%_))))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115914%_)
        (let* ((_%phi115916%_ (gx#current-expander-phi))
               (_%ctx115918%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115914%_
           _%phi115916%_
           _%ctx115918%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115920%_ _%phi115921%_)
        (let ((_%ctx115923%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115920%_
           _%phi115921%_
           _%ctx115923%_))))
    (define gx#resolve-identifier
      (lambda _g118250_
        (let ((_g118249_ (##length _g118250_)))
          (cond ((##fx= _g118249_ 1)
                 (apply (lambda (_%stx115914%_)
                          (gx#resolve-identifier__0 _%stx115914%_))
                        _g118250_))
                ((##fx= _g118249_ 2)
                 (apply (lambda (_%stx115920%_ _%phi115921%_)
                          (gx#resolve-identifier__1
                           _%stx115920%_
                           _%phi115921%_))
                        _g118250_))
                ((##fx= _g118249_ 3)
                 (apply (lambda (_%stx115925%_ _%phi115926%_ _%ctx115927%_)
                          (gx#resolve-identifier__%
                           _%stx115925%_
                           _%phi115926%_
                           _%ctx115927%_))
                        _g118250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g118250_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115855%_
               _%val115856%_
               _%rebind?115857%_
               _%phi115858%_
               _%ctx115859%_)
        (let ((_%rebind?115864%_
               (if (not _%rebind?115857%_)
                   (let () gx#core-context-rebind?)
                   (if (procedure? _%rebind?115857%_)
                       (let () _%rebind?115857%_)
                       (let () true)))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115855%_)
           _%val115856%_
           _%rebind?115864%_
           _%phi115858%_
           _%ctx115859%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115869%_ _%val115870%_)
        (let* ((_%rebind?115872%_ '#f)
               (_%phi115874%_ (gx#current-expander-phi))
               (_%ctx115876%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115869%_
           _%val115870%_
           _%rebind?115872%_
           _%phi115874%_
           _%ctx115876%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115878%_ _%val115879%_ _%rebind?115880%_)
        (let* ((_%phi115882%_ (gx#current-expander-phi))
               (_%ctx115884%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115878%_
           _%val115879%_
           _%rebind?115880%_
           _%phi115882%_
           _%ctx115884%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115886%_ _%val115887%_ _%rebind?115888%_ _%phi115889%_)
        (let ((_%ctx115891%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115886%_
           _%val115887%_
           _%rebind?115888%_
           _%phi115889%_
           _%ctx115891%_))))
    (define gx#bind-identifier!
      (lambda _g118252_
        (let ((_g118251_ (##length _g118252_)))
          (cond ((##fx= _g118251_ 2)
                 (apply (lambda (_%stx115869%_ _%val115870%_)
                          (gx#bind-identifier!__0 _%stx115869%_ _%val115870%_))
                        _g118252_))
                ((##fx= _g118251_ 3)
                 (apply (lambda (_%stx115878%_ _%val115879%_ _%rebind?115880%_)
                          (gx#bind-identifier!__1
                           _%stx115878%_
                           _%val115879%_
                           _%rebind?115880%_))
                        _g118252_))
                ((##fx= _g118251_ 4)
                 (apply (lambda (_%stx115886%_
                                 _%val115887%_
                                 _%rebind?115888%_
                                 _%phi115889%_)
                          (gx#bind-identifier!__2
                           _%stx115886%_
                           _%val115887%_
                           _%rebind?115888%_
                           _%phi115889%_))
                        _g118252_))
                ((##fx= _g118251_ 5)
                 (apply (lambda (_%stx115893%_
                                 _%val115894%_
                                 _%rebind?115895%_
                                 _%phi115896%_
                                 _%ctx115897%_)
                          (gx#bind-identifier!__%
                           _%stx115893%_
                           _%val115894%_
                           _%rebind?115895%_
                           _%phi115896%_
                           _%ctx115897%_))
                        _g118252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g118252_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115821%_ _%phi115822%_ _%ctx115823%_)
        (let _%lp115825%_ ((_%e115827%_ _%stx115821%_)
                           (_%marks115828%_ (gx#current-expander-marks)))
          (if (symbol? _%e115827%_)
              (let ()
                (gx#core-resolve-binding
                 _%e115827%_
                 _%phi115822%_
                 _%phi115822%_
                 _%ctx115823%_
                 (reverse _%marks115828%_)))
              (if (gx#identifier-quote? _%e115827%_)
                  (let ()
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _%e115827%_ '1 '#f '#f)
                     _%phi115822%_
                     '0
                     (##unchecked-structure-ref _%e115827%_ '3 '#f '#f)
                     (##unchecked-structure-ref _%e115827%_ '4 '#f '#f)))
                  (if (##structure-direct-instance-of?
                       _%e115827%_
                       'gx#identifier-wrap::t)
                      (let ()
                        (gx#core-resolve-binding
                         (##unchecked-structure-ref _%e115827%_ '1 '#f '#f)
                         _%phi115822%_
                         _%phi115822%_
                         _%ctx115823%_
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e115827%_ '3 '#f '#f)
                          _%marks115828%_)))
                      (if (##structure-direct-instance-of?
                           _%e115827%_
                           'gx#syntax-wrap::t)
                          (let ()
                            (_%lp115825%_
                             (##unchecked-structure-ref _%e115827%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e115827%_
                               '3
                               '#f
                               '#f)
                              _%marks115828%_)))
                          (if (##structure-instance-of?
                               _%e115827%_
                               'gerbil#AST::t)
                              (let ()
                                (_%lp115825%_
                                 (##unchecked-structure-ref
                                  _%e115827%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115828%_))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad identifier"
                                 _%stx115821%_))))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115839%_)
        (let* ((_%phi115841%_ (gx#current-expander-phi))
               (_%ctx115843%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115839%_
           _%phi115841%_
           _%ctx115843%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115845%_ _%phi115846%_)
        (let ((_%ctx115848%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115845%_
           _%phi115846%_
           _%ctx115848%_))))
    (define gx#core-resolve-identifier
      (lambda _g118254_
        (let ((_g118253_ (##length _g118254_)))
          (cond ((##fx= _g118253_ 1)
                 (apply (lambda (_%stx115839%_)
                          (gx#core-resolve-identifier__0 _%stx115839%_))
                        _g118254_))
                ((##fx= _g118253_ 2)
                 (apply (lambda (_%stx115845%_ _%phi115846%_)
                          (gx#core-resolve-identifier__1
                           _%stx115845%_
                           _%phi115846%_))
                        _g118254_))
                ((##fx= _g118253_ 3)
                 (apply (lambda (_%stx115850%_ _%phi115851%_ _%ctx115852%_)
                          (gx#core-resolve-identifier__%
                           _%stx115850%_
                           _%phi115851%_
                           _%ctx115852%_))
                        _g118254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g118254_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115731%_
               _%phi115732%_
               _%src-phi115733%_
               _%ctx115734%_
               _%marks115735%_)
        (letrec ((_%resolve115737%_
                  (lambda (_%ctx115805%_ _%src-phi115806%_ _%key115807%_)
                    (let _%lp115809%_ ((_%ctx115811%_
                                        (gx#core-context-shift
                                         _%ctx115805%_
                                         _%phi115732%_))
                                       (_%dphi115812%_
                                        (fx- _%phi115732%_ _%src-phi115806%_)))
                      (let ((_%$e115814%_
                             (gx#core-context-resolve
                              _%ctx115811%_
                              _%key115807%_)))
                        (if _%$e115814%_
                            (values _%$e115814%_)
                            (if (fxzero? _%dphi115812%_)
                                (let () '#f)
                                (if (fxpositive? _%dphi115812%_)
                                    (let ()
                                      (_%lp115809%_
                                       (gx#core-context-shift
                                        _%ctx115811%_
                                        '-1)
                                       (##fx- _%dphi115812%_ '1)))
                                    (let ()
                                      (_%lp115809%_
                                       (gx#core-context-shift _%ctx115811%_ '1)
                                       (##fx+ _%dphi115812%_ '1)))))))))))
          (let _%lp115739%_ ((_%ctx115741%_ _%ctx115734%_)
                             (_%src-phi115742%_ _%src-phi115733%_)
                             (_%rest115743%_ _%marks115735%_))
            (let* ((_%rest115744115752%_ _%rest115743%_)
                   (_%else115746115760%_
                    (lambda ()
                      (_%resolve115737%_
                       _%ctx115741%_
                       _%src-phi115742%_
                       _%id115731%_)))
                   (_%K115748115793%_
                    (lambda (_%rest115763%_ _%hd115764%_)
                      (let* ((_%hd115765115771%_ _%hd115764%_)
                             (_%E115767115775%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115765115771%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115768115785%_
                              (lambda (_%subst115778%_)
                                (let ((_%$e115782%_
                                       (let ((_%key115780%_
                                              (if _%subst115778%_
                                                  (hash-get
                                                   _%subst115778%_
                                                   _%id115731%_)
                                                  '#f)))
                                         (if _%key115780%_
                                             (_%resolve115737%_
                                              _%ctx115741%_
                                              _%src-phi115742%_
                                              _%key115780%_)
                                             '#f))))
                                  (if _%$e115782%_
                                      _%$e115782%_
                                      (_%lp115739%_
                                       (##unchecked-structure-ref
                                        _%hd115764%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115764%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115763%_))))))
                        (if (##structure-instance-of?
                             _%hd115765115771%_
                             'gx#expander-mark::t)
                            (let* ((_%e115769115788%_
                                    (##unchecked-structure-ref
                                     _%hd115765115771%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115791%_ _%e115769115788%_))
                              (_%K115768115785%_ _%subst115791%_))
                            (_%E115767115775%_))))))
              (if (##pair? _%rest115744115752%_)
                  (let ((_%hd115749115796%_ (##car _%rest115744115752%_))
                        (_%tl115750115798%_ (##cdr _%rest115744115752%_)))
                    (let* ((_%hd115801%_ _%hd115749115796%_)
                           (_%rest115803%_ _%tl115750115798%_))
                      (_%K115748115793%_ _%rest115803%_ _%hd115801%_)))
                  (_%else115746115760%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key115601%_
               _%val115602%_
               _%rebind?115603%_
               _%phi115604%_
               _%ctx115605%_)
        (letrec ((_%update-binding115607%_
                  (lambda (_%xval115680%_)
                    (if (or (_%rebind?115603%_
                             _%ctx115605%_
                             _%xval115680%_
                             _%val115602%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115680%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115680%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val115602%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val115602%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115680%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val115602%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val115602%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115680%_
                                       '1
                                       '#f
                                       '#f))))
                        (let () _%val115602%_)
                        (if (and (##structure-direct-instance-of?
                                  _%val115602%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val115602%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115680%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val115602%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115680%_
                                                '1
                                                '#f
                                                '#f)))))
                            (let () _%xval115680%_)
                            (if (and (##structure-direct-instance-of?
                                      _%val115602%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115680%_
                                      'gx#binding::t))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; import conflict"
                                   _%key115601%_
                                   (cons (##unchecked-structure-ref
                                          _%val115602%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (##structure-ref
                                                (##unchecked-structure-ref
                                                 _%val115602%_
                                                 '5
                                                 '#f
                                                 '#f)
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '()))
                                   (cons (##unchecked-structure-ref
                                          _%xval115680%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (if (##structure-direct-instance-of?
                                                    _%xval115680%_
                                                    'gx#import-binding::t)
                                                   (##structure-ref
                                                    (##unchecked-structure-ref
                                                     _%xval115680%_
                                                     '5
                                                     '#f
                                                     '#f)
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   _%xval115680%_)
                                               '()))))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; rebind conflict"
                                   _%key115601%_
                                   _%val115602%_
                                   _%xval115680%_)))))))
                 (_%gensubst115608%_
                  (lambda (_%subst115675%_ _%id115676%_)
                    (let ((_%eid115678%_
                           (gensym (if (uninterned-symbol? _%id115676%_)
                                       '%
                                       _%id115676%_))))
                      (hash-put! _%subst115675%_ _%id115676%_ _%eid115678%_)
                      _%eid115678%_)))
                 (_%subst!115609%_
                  (lambda (_%key115611%_)
                    (let* ((_%key115612115620%_ _%key115611%_)
                           (_%else115614115628%_ (lambda () _%key115611%_))
                           (_%K115616115663%_
                            (lambda (_%mark115631%_ _%id115632%_)
                              (let* ((_%mark115633115639%_ _%mark115631%_)
                                     (_%E115635115643%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark115633115639%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K115636115655%_
                                      (lambda (_%subst115646%_)
                                        (if (not _%subst115646%_)
                                            (let ((_%subst115649%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark115631%_
                                               _%subst115649%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst115608%_
                                               _%subst115649%_
                                               _%id115632%_))
                                            (let ((_%$e115651%_
                                                   (hash-get
                                                    _%subst115646%_
                                                    _%id115632%_)))
                                              (if _%$e115651%_
                                                  (values _%$e115651%_)
                                                  (let ()
                                                    (_%gensubst115608%_
                                                     _%subst115646%_
                                                     _%id115632%_))))))))
                                (if (##structure-instance-of?
                                     _%mark115633115639%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e115637115658%_
                                            (##unchecked-structure-ref
                                             _%mark115633115639%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115661%_ _%e115637115658%_))
                                      (_%K115636115655%_ _%subst115661%_))
                                    (_%E115635115643%_))))))
                      (if (##pair? _%key115612115620%_)
                          (let ((_%hd115617115666%_
                                 (##car _%key115612115620%_))
                                (_%tl115618115668%_
                                 (##cdr _%key115612115620%_)))
                            (let* ((_%id115671%_ _%hd115617115666%_)
                                   (_%mark115673%_ _%tl115618115668%_))
                              (_%K115616115663%_ _%mark115673%_ _%id115671%_)))
                          (_%else115614115628%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx115605%_ _%phi115604%_)
           (_%subst!115609%_ _%key115601%_)
           _%val115602%_
           _%update-binding115607%_))))
    (define gx#core-bind!__0
      (lambda (_%key115701%_ _%val115702%_)
        (let* ((_%rebind?115704%_ false)
               (_%phi115706%_ (gx#current-expander-phi))
               (_%ctx115708%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115701%_
           _%val115702%_
           _%rebind?115704%_
           _%phi115706%_
           _%ctx115708%_))))
    (define gx#core-bind!__1
      (lambda (_%key115710%_ _%val115711%_ _%rebind?115712%_)
        (let* ((_%phi115714%_ (gx#current-expander-phi))
               (_%ctx115716%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115710%_
           _%val115711%_
           _%rebind?115712%_
           _%phi115714%_
           _%ctx115716%_))))
    (define gx#core-bind!__2
      (lambda (_%key115718%_ _%val115719%_ _%rebind?115720%_ _%phi115721%_)
        (let ((_%ctx115723%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115718%_
           _%val115719%_
           _%rebind?115720%_
           _%phi115721%_
           _%ctx115723%_))))
    (define gx#core-bind!
      (lambda _g118256_
        (let ((_g118255_ (##length _g118256_)))
          (cond ((##fx= _g118255_ 2)
                 (apply (lambda (_%key115701%_ _%val115702%_)
                          (gx#core-bind!__0 _%key115701%_ _%val115702%_))
                        _g118256_))
                ((##fx= _g118255_ 3)
                 (apply (lambda (_%key115710%_ _%val115711%_ _%rebind?115712%_)
                          (gx#core-bind!__1
                           _%key115710%_
                           _%val115711%_
                           _%rebind?115712%_))
                        _g118256_))
                ((##fx= _g118255_ 4)
                 (apply (lambda (_%key115718%_
                                 _%val115719%_
                                 _%rebind?115720%_
                                 _%phi115721%_)
                          (gx#core-bind!__2
                           _%key115718%_
                           _%val115719%_
                           _%rebind?115720%_
                           _%phi115721%_))
                        _g118256_))
                ((##fx= _g118255_ 5)
                 (apply (lambda (_%key115725%_
                                 _%val115726%_
                                 _%rebind?115727%_
                                 _%phi115728%_
                                 _%ctx115729%_)
                          (gx#core-bind!__%
                           _%key115725%_
                           _%val115726%_
                           _%rebind?115727%_
                           _%phi115728%_
                           _%ctx115729%_))
                        _g118256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g118256_))))))
    (define gx#core-identifier-key
      (lambda (_%stx115532%_)
        (if (symbol? _%stx115532%_)
            (let ()
              (let* ((_%g115534115542%_ (gx#current-expander-marks))
                     (_%else115536115550%_ (lambda () _%stx115532%_))
                     (_%K115538115555%_
                      (lambda (_%hd115553%_)
                        (cons _%stx115532%_ _%hd115553%_))))
                (if (##pair? _%g115534115542%_)
                    (let* ((_%hd115539115558%_ (##car _%g115534115542%_))
                           (_%hd115561%_ _%hd115539115558%_))
                      (_%K115538115555%_ _%hd115561%_))
                    (_%else115536115550%_))))
            (if (gx#identifier? _%stx115532%_)
                (let ()
                  (let* ((_%id115564%_ (gx#syntax-local-unwrap _%stx115532%_))
                         (_%eid115566%_ (gx#stx-e _%id115564%_))
                         (_%marks115568%_
                          (gx#stx-identifier-marks* _%id115564%_)))
                    (let* ((_%marks115570115578%_ _%marks115568%_)
                           (_%else115572115586%_ (lambda () _%eid115566%_))
                           (_%K115574115591%_
                            (lambda (_%hd115589%_)
                              (cons _%eid115566%_ _%hd115589%_))))
                      (if (##pair? _%marks115570115578%_)
                          (let* ((_%hd115575115594%_
                                  (##car _%marks115570115578%_))
                                 (_%hd115597%_ _%hd115575115594%_))
                            (_%K115574115591%_ _%hd115597%_))
                          (_%else115572115586%_)))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad identifier"
                   _%stx115532%_))))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx115471%_ _%phi115472%_)
        (letrec ((_%make-phi115474%_
                  (lambda (_%super115530%_)
                    (let ((__obj118228
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj118228
                       (##gensym 'phi)
                       _%super115530%_)
                      __obj118228)))
                 (_%make-phi/up115475%_
                  (lambda (_%ctx115525%_ _%super115526%_)
                    (let ((_%ctx+1115528%_
                           (_%make-phi115474%_ _%super115526%_)))
                      (##unchecked-structure-set!
                       _%ctx115525%_
                       _%ctx+1115528%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1115528%_
                       _%ctx115525%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1115528%_)))
                 (_%make-phi/down115476%_
                  (lambda (_%ctx115520%_ _%super115521%_)
                    (let ((_%ctx-1115523%_
                           (_%make-phi115474%_ _%super115521%_)))
                      (##unchecked-structure-set!
                       _%ctx-1115523%_
                       _%ctx115520%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx115520%_
                       _%ctx-1115523%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1115523%_)))
                 (_%shift115477%_
                  (lambda (_%ctx115503%_
                           _%delta115504%_
                           _%make-delta-context115505%_
                           _%phi115506%_
                           _%K115507%_)
                    (let ((_%$e115509%_
                           (##unchecked-structure-ref
                            _%ctx115503%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e115509%_
                          ((lambda (_%super115512%_)
                             (let* ((_%super115514%_
                                     (_%K115507%_
                                      _%super115512%_
                                      _%delta115504%_))
                                    (_%ctx+d115516%_
                                     (_%make-delta-context115505%_
                                      _%ctx115503%_
                                      _%super115514%_)))
                               (_%K115507%_
                                _%ctx+d115516%_
                                (fx- _%phi115506%_ _%delta115504%_))))
                           _%$e115509%_)
                          (let () (error '"Bad context" _%ctx115503%_)))))))
          (let _%K115479%_ ((_%ctx115481%_ _%ctx115471%_)
                            (_%phi115482%_ _%phi115472%_))
            (if (fxzero? _%phi115482%_)
                (let () _%ctx115481%_)
                (if (##structure-instance-of? _%ctx115481%_ 'gx#phi-context::t)
                    (let ()
                      (if (fxpositive? _%phi115482%_)
                          (let ((_%$e115486%_
                                 (##unchecked-structure-ref
                                  _%ctx115481%_
                                  '4
                                  '#f
                                  '#f)))
                            (if _%$e115486%_
                                ((lambda (_%g115488115490%_)
                                   (_%K115479%_
                                    _%g115488115490%_
                                    (##fx- _%phi115482%_ '1)))
                                 _%$e115486%_)
                                (let ()
                                  (_%shift115477%_
                                   _%ctx115481%_
                                   '1
                                   _%make-phi/up115475%_
                                   _%phi115482%_
                                   _%K115479%_))))
                          (let ((_%$e115494%_
                                 (##unchecked-structure-ref
                                  _%ctx115481%_
                                  '5
                                  '#f
                                  '#f)))
                            (if _%$e115494%_
                                ((lambda (_%g115496115498%_)
                                   (_%K115479%_
                                    _%g115496115498%_
                                    (##fx+ _%phi115482%_ '1)))
                                 _%$e115494%_)
                                (let ()
                                  (_%shift115477%_
                                   _%ctx115481%_
                                   '-1
                                   _%make-phi/down115476%_
                                   _%phi115482%_
                                   _%K115479%_))))))
                    (let () _%ctx115481%_)))))))
    (define gx#core-context-get
      (lambda (_%ctx115468%_ _%key115469%_)
        (hash-get
         (##unchecked-structure-ref _%ctx115468%_ '2 '#f '#f)
         _%key115469%_)))
    (define gx#core-context-put!
      (lambda (_%ctx115464%_ _%key115465%_ _%val115466%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx115464%_ '2 '#f '#f)
         _%key115465%_
         _%val115466%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx115450%_ _%key115451%_)
        (let _%lp115453%_ ((_%ctx115455%_ _%ctx115450%_))
          (let ((_%$e115457%_
                 (gx#core-context-get _%ctx115455%_ _%key115451%_)))
            (if _%$e115457%_
                (values _%$e115457%_)
                (let ((_%$e115460%_
                       (if (##structure-instance-of?
                            _%ctx115455%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx115455%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e115460%_
                      (_%lp115453%_ _%$e115460%_)
                      (let () '#f))))))))
    (define gx#core-context-bind!
      (lambda (_%ctx115439%_ _%key115440%_ _%val115441%_ _%rebind115442%_)
        (let ((_%$e115444%_ (gx#core-context-get _%ctx115439%_ _%key115440%_)))
          (if _%$e115444%_
              ((lambda (_%xval115447%_)
                 (gx#core-context-put!
                  _%ctx115439%_
                  _%key115440%_
                  (_%rebind115442%_ _%xval115447%_)))
               _%$e115444%_)
              (let ()
                (gx#core-context-put!
                 _%ctx115439%_
                 _%key115440%_
                 _%val115441%_))))))
    (define gx#core-context-top__%
      (lambda (_%ctx115414%_ _%stop?115415%_)
        (let _%lp115417%_ ((_%ctx115419%_ _%ctx115414%_))
          (if (_%stop?115415%_ _%ctx115419%_)
              (let () _%ctx115419%_)
              (if (##structure-instance-of? _%ctx115419%_ 'gx#phi-context::t)
                  (let ()
                    (_%lp115417%_
                     (##unchecked-structure-ref _%ctx115419%_ '3 '#f '#f)))
                  (let () '#f))))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx115428%_ (gx#current-expander-context))
               (_%stop?115430%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115428%_ _%stop?115430%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx115432%_)
        (let ((_%stop?115434%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115432%_ _%stop?115434%_))))
    (define gx#core-context-top
      (lambda _g118258_
        (let ((_g118257_ (##length _g118258_)))
          (cond ((##fx= _g118257_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g118258_))
                ((##fx= _g118257_ 1)
                 (apply (lambda (_%ctx115432%_)
                          (gx#core-context-top__1 _%ctx115432%_))
                        _g118258_))
                ((##fx= _g118257_ 2)
                 (apply (lambda (_%ctx115436%_ _%stop?115437%_)
                          (gx#core-context-top__%
                           _%ctx115436%_
                           _%stop?115437%_))
                        _g118258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g118258_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx115399%_)
        (let _%lp115401%_ ((_%ctx115403%_ _%ctx115399%_))
          (if (##structure-instance-of? _%ctx115403%_ 'gx#phi-context::t)
              (_%lp115401%_
               (##unchecked-structure-ref _%ctx115403%_ '3 '#f '#f))
              _%ctx115403%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx115409%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx115409%_))))
    (define gx#core-context-root
      (lambda _g118260_
        (let ((_g118259_ (##length _g118260_)))
          (cond ((##fx= _g118259_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g118260_))
                ((##fx= _g118259_ 1)
                 (apply (lambda (_%ctx115411%_)
                          (gx#core-context-root__% _%ctx115411%_))
                        _g118260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g118260_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx115381%_ . _%ignore115382%_)
        (let ((_%$e115384%_ (gx#current-expander-allow-rebind?)))
          (if _%$e115384%_
              _%$e115384%_
              (if (##structure-instance-of? _%ctx115381%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx115381%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx115381%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx115391%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx115391%_))))
    (define gx#core-context-rebind?
      (lambda _g118262_
        (let ((_g118261_ (##length _g118262_)))
          (cond ((##fx= _g118261_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g118262_))
                ((##fx= _g118261_ 1)
                 (apply (lambda (_%ctx115393%_)
                          (gx#core-context-rebind?__% _%ctx115393%_))
                        _g118262_))
                ((##fx>= _g118261_ 1)
                 (apply gx#core-context-rebind?__% _g118262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g118262_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx115364%_)
        (let ((_%$e115366%_ (gx#core-context-top__1 _%ctx115364%_)))
          (if _%$e115366%_
              ((lambda (_%ctx115369%_)
                 (if (##structure-instance-of?
                      _%ctx115369%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx115369%_ '6 '#f '#f)
                     '#f))
               _%$e115366%_)
              (let () '#f)))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx115376%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx115376%_))))
    (define gx#core-context-namespace
      (lambda _g118264_
        (let ((_g118263_ (##length _g118264_)))
          (cond ((##fx= _g118263_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g118264_))
                ((##fx= _g118263_ 1)
                 (apply (lambda (_%ctx115378%_)
                          (gx#core-context-namespace__% _%ctx115378%_))
                        _g118264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g118264_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind115350%_ _%is?115351%_)
        (if (##structure-direct-instance-of?
             _%bind115350%_
             'gx#syntax-binding::t)
            (_%is?115351%_
             (##unchecked-structure-ref _%bind115350%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind115356%_)
        (let ((_%is?115358%_ gx#expander?))
          (gx#expander-binding?__% _%bind115356%_ _%is?115358%_))))
    (define gx#expander-binding?
      (lambda _g118266_
        (let ((_g118265_ (##length _g118266_)))
          (cond ((##fx= _g118265_ 1)
                 (apply (lambda (_%bind115356%_)
                          (gx#expander-binding?__0 _%bind115356%_))
                        _g118266_))
                ((##fx= _g118265_ 2)
                 (apply (lambda (_%bind115360%_ _%is?115361%_)
                          (gx#expander-binding?__%
                           _%bind115360%_
                           _%is?115361%_))
                        _g118266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g118266_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind115347%_)
        (gx#expander-binding?__% _%bind115347%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind115345%_)
        (gx#expander-binding?__% _%bind115345%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind115339%_)
        (letrec ((_%direct-special-form?115341%_
                  (lambda (_%obj115343%_)
                    (##structure-direct-instance-of?
                     _%obj115343%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind115339%_
           _%direct-special-form?115341%_))))
    (define gx#special-form-binding?
      (lambda (_%bind115337%_)
        (gx#expander-binding?__% _%bind115337%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind115328%_)
        (letrec ((_%feature?115330%_
                  (lambda (_%e115332%_)
                    (let ((_%$e115334%_
                           (##structure-instance-of?
                            _%e115332%_
                            'gx#feature-expander::t)))
                      (if _%$e115334%_
                          _%$e115334%_
                          (##structure-instance-of?
                           _%e115332%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind115328%_ _%feature?115330%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind115326%_)
        (gx#expander-binding?__% _%bind115326%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id115313%_ _%bound?115314%_)
        (if (gx#identifier? _%id115313%_)
            (_%bound?115314%_ (gx#resolve-identifier__0 _%id115313%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id115319%_)
        (let ((_%bound?115321%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id115319%_ _%bound?115321%_))))
    (define gx#core-bound-identifier?
      (lambda _g118268_
        (let ((_g118267_ (##length _g118268_)))
          (cond ((##fx= _g118267_ 1)
                 (apply (lambda (_%id115319%_)
                          (gx#core-bound-identifier?__0 _%id115319%_))
                        _g118268_))
                ((##fx= _g118267_ 2)
                 (apply (lambda (_%id115323%_ _%bound?115324%_)
                          (gx#core-bound-identifier?__%
                           _%id115323%_
                           _%bound?115324%_))
                        _g118268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g118268_))))))
    (define gx#core-identifier=?
      (lambda (_%x115303%_ _%y115304%_)
        (letrec ((_%y=?115306%_
                  (lambda (_%xid115310%_)
                    ((if (list? _%y115304%_) memq eq?)
                     _%xid115310%_
                     _%y115304%_))))
          (let ((_%bind115308%_ (gx#resolve-identifier__0 _%x115303%_)))
            (if (##structure-instance-of? _%bind115308%_ 'gx#binding::t)
                (_%y=?115306%_
                 (##unchecked-structure-ref _%bind115308%_ '1 '#f '#f))
                (_%y=?115306%_ (gx#stx-e _%x115303%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e115301%_)
        (if (interned-symbol? _%e115301%_)
            (string-index__0 (symbol->string _%e115301%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx115254%_ _%src115255%_ _%ctx115256%_ _%marks115257%_)
        (if (##structure? _%stx115254%_)
            (let ((_%$e115259%_ (gx#sealed-syntax-unwrap _%stx115254%_)))
              (if _%$e115259%_
                  (values _%$e115259%_)
                  (if (gx#identifier? _%stx115254%_)
                      (let ((_%id115263%_
                             (gx#stx-unwrap__% _%stx115254%_ _%marks115257%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id115263%_ '1 '#f '#f)
                         (let ((_%$e115265%_
                                (##unchecked-structure-ref
                                 _%id115263%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e115265%_ _%$e115265%_ _%src115255%_))
                         _%ctx115256%_
                         (##unchecked-structure-ref _%id115263%_ '3 '#f '#f)))
                      (let ()
                        (##structure
                         gx#syntax-quote::t
                         (gx#stx-e _%stx115254%_)
                         (let ((_%$e115269%_ (gx#stx-source _%stx115254%_)))
                           (if _%$e115269%_ _%$e115269%_ _%src115255%_))
                         _%ctx115256%_
                         (reverse _%marks115257%_))))))
            (##structure
             gx#syntax-quote::t
             _%stx115254%_
             _%src115255%_
             _%ctx115256%_
             (reverse _%marks115257%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx115275%_)
        (let* ((_%src115277%_ '#f)
               (_%ctx115279%_ (gx#current-expander-context))
               (_%marks115281%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115275%_
           _%src115277%_
           _%ctx115279%_
           _%marks115281%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx115283%_ _%src115284%_)
        (let* ((_%ctx115286%_ (gx#current-expander-context))
               (_%marks115288%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115283%_
           _%src115284%_
           _%ctx115286%_
           _%marks115288%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx115290%_ _%src115291%_ _%ctx115292%_)
        (let ((_%marks115294%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115290%_
           _%src115291%_
           _%ctx115292%_
           _%marks115294%_))))
    (define gx#core-quote-syntax
      (lambda _g118270_
        (let ((_g118269_ (##length _g118270_)))
          (cond ((##fx= _g118269_ 1)
                 (apply (lambda (_%stx115275%_)
                          (gx#core-quote-syntax__0 _%stx115275%_))
                        _g118270_))
                ((##fx= _g118269_ 2)
                 (apply (lambda (_%stx115283%_ _%src115284%_)
                          (gx#core-quote-syntax__1
                           _%stx115283%_
                           _%src115284%_))
                        _g118270_))
                ((##fx= _g118269_ 3)
                 (apply (lambda (_%stx115290%_ _%src115291%_ _%ctx115292%_)
                          (gx#core-quote-syntax__2
                           _%stx115290%_
                           _%src115291%_
                           _%ctx115292%_))
                        _g118270_))
                ((##fx= _g118269_ 4)
                 (apply (lambda (_%stx115296%_
                                 _%src115297%_
                                 _%ctx115298%_
                                 _%marks115299%_)
                          (gx#core-quote-syntax__%
                           _%stx115296%_
                           _%src115297%_
                           _%ctx115298%_
                           _%marks115299%_))
                        _g118270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g118270_))))))
    (define gx#core-cons
      (lambda (_%hd115250%_ _%tl115251%_)
        (cons (gx#core-quote-syntax__0 _%hd115250%_) _%tl115251%_)))
    (define gx#core-list
      (lambda (_%hd115247%_ . _%rest115248%_)
        (cons (gx#core-quote-syntax__0 _%hd115247%_) _%rest115248%_)))
    (define gx#core-cons*
      (lambda (_%hd115244%_ . _%rest115245%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd115244%_) _%rest115245%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path115213%_ _%rel115214%_)
        (let ((_%path115231%_ (gx#stx-e _%stx-path115213%_))
              (_%reldir115232%_
               (let _%lp115216%_ ((_%relsrc115218%_
                                   (let ((_%$e115228%_
                                          (gx#stx-source _%stx-path115213%_)))
                                     (if _%$e115228%_
                                         _%$e115228%_
                                         _%rel115214%_))))
                 (if (##structure-instance-of? _%relsrc115218%_ 'gerbil#AST::t)
                     (let ()
                       (_%lp115216%_
                        (let ((_%$e115221%_ (gx#stx-source _%relsrc115218%_)))
                          (if _%$e115221%_
                              _%$e115221%_
                              (gx#stx-e _%relsrc115218%_)))))
                     (if (source-location-path? _%relsrc115218%_)
                         (let ()
                           (path-directory
                            (source-location-path _%relsrc115218%_)))
                         (if (string? _%relsrc115218%_)
                             (let () (path-directory _%relsrc115218%_))
                             (if (not (null? (gx#current-expander-path)))
                                 (let ()
                                   (path-directory
                                    (car (gx#current-expander-path))))
                                 (let () (current-directory)))))))))
          (path-expand _%path115231%_ (path-normalize _%reldir115232%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path115237%_)
        (let ((_%rel115239%_ '#f))
          (gx#core-resolve-path__% _%stx-path115237%_ _%rel115239%_))))
    (define gx#core-resolve-path
      (lambda _g118272_
        (let ((_g118271_ (##length _g118272_)))
          (cond ((##fx= _g118271_ 1)
                 (apply (lambda (_%stx-path115237%_)
                          (gx#core-resolve-path__0 _%stx-path115237%_))
                        _g118272_))
                ((##fx= _g118271_ 2)
                 (apply (lambda (_%stx-path115241%_ _%rel115242%_)
                          (gx#core-resolve-path__%
                           _%stx-path115241%_
                           _%rel115242%_))
                        _g118272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g118272_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr115169%_ _%ctx115170%_)
        (let* ((_%repr115171115178%_ _%repr115169%_)
               (_%E115173115182%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr115171115178%_
                         '([phi . subs]))
                  '#!void))
               (_%K115174115190%_
                (lambda (_%subs115185%_ _%phi115186%_)
                  (let ((_%subst115188%_
                         (if (not (null? _%subs115185%_))
                             (list->hash-table-eq _%subs115185%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst115188%_
                     _%ctx115170%_
                     _%phi115186%_
                     '#f)))))
          (if (##pair? _%repr115171115178%_)
              (let ((_%hd115175115193%_ (##car _%repr115171115178%_))
                    (_%tl115176115195%_ (##cdr _%repr115171115178%_)))
                (let* ((_%phi115198%_ _%hd115175115193%_)
                       (_%subs115200%_ _%tl115176115195%_))
                  (_%K115174115190%_ _%subs115200%_ _%phi115198%_)))
              (_%E115173115182%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr115205%_)
        (let ((_%ctx115207%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr115205%_ _%ctx115207%_))))
    (define gx#core-deserialize-mark
      (lambda _g118274_
        (let ((_g118273_ (##length _g118274_)))
          (cond ((##fx= _g118273_ 1)
                 (apply (lambda (_%repr115205%_)
                          (gx#core-deserialize-mark__0 _%repr115205%_))
                        _g118274_))
                ((##fx= _g118273_ 2)
                 (apply (lambda (_%repr115209%_ _%ctx115210%_)
                          (gx#core-deserialize-mark__%
                           _%repr115209%_
                           _%ctx115210%_))
                        _g118274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g118274_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx115166%_)
        (gx#stx-rewrap _%stx115166%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx115164%_)
        (gx#stx-unwrap__% _%stx115164%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx115134%_)
        (let* ((_%g115135115143%_ (gx#current-expander-marks))
               (_%else115137115151%_ (lambda () _%stx115134%_))
               (_%K115139115156%_
                (lambda (_%hd115154%_)
                  (gx#stx-apply-mark _%stx115134%_ _%hd115154%_))))
          (if (##pair? _%g115135115143%_)
              (let* ((_%hd115140115159%_ (##car _%g115135115143%_))
                     (_%hd115162%_ _%hd115140115159%_))
                (_%K115139115156%_ _%hd115162%_))
              (_%else115137115151%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx115119%_ _%E115120%_)
        (let ((_%bind115122%_ (gx#resolve-identifier__0 _%stx115119%_)))
          (if (##structure-direct-instance-of?
               _%bind115122%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind115122%_ '4 '#f '#f)
              (_%E115120%_ _%stx115119%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx115127%_)
        (let ((_%E115129%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx115127%_ _%E115129%_))))
    (define gx#syntax-local-e
      (lambda _g118276_
        (let ((_g118275_ (##length _g118276_)))
          (cond ((##fx= _g118275_ 1)
                 (apply (lambda (_%stx115127%_)
                          (gx#syntax-local-e__0 _%stx115127%_))
                        _g118276_))
                ((##fx= _g118275_ 2)
                 (apply (lambda (_%stx115131%_ _%E115132%_)
                          (gx#syntax-local-e__% _%stx115131%_ _%E115132%_))
                        _g118276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g118276_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx115103%_ _%E115104%_)
        (let ((_%e115106%_ (gx#syntax-local-e__% _%stx115103%_ _%E115104%_)))
          (if (##structure-instance-of? _%e115106%_ 'gx#expander::t)
              (##structure-ref _%e115106%_ '1 gx#expander::t '#f)
              _%e115106%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx115111%_)
        (let ((_%E115113%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx115111%_ _%E115113%_))))
    (define gx#syntax-local-value
      (lambda _g118278_
        (let ((_g118277_ (##length _g118278_)))
          (cond ((##fx= _g118277_ 1)
                 (apply (lambda (_%stx115111%_)
                          (gx#syntax-local-value__0 _%stx115111%_))
                        _g118278_))
                ((##fx= _g118277_ 2)
                 (apply (lambda (_%stx115115%_ _%E115116%_)
                          (gx#syntax-local-value__% _%stx115115%_ _%E115116%_))
                        _g118278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g118278_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx115100%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx115100%_)))))
