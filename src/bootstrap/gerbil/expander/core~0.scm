(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712696213)
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
      (lambda _%$args118212%_
        (apply make-instance gx#expander-context::t _%$args118212%_)))
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
      (lambda _%$args118209%_
        (apply make-instance gx#root-context::t _%$args118209%_)))
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
      (lambda _%$args118206%_
        (apply make-instance gx#phi-context::t _%$args118206%_)))
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
      (lambda _%$args118203%_
        (apply make-instance gx#top-context::t _%$args118203%_)))
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
      (lambda _%$args118200%_
        (apply make-instance gx#module-context::t _%$args118200%_)))
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
      (lambda _%$args118197%_
        (apply make-instance gx#prelude-context::t _%$args118197%_)))
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
      (lambda _%$args118194%_
        (apply make-instance gx#local-context::t _%$args118194%_)))
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
      (lambda (_%self118167%_ _%id118168%_ _%super118169%_)
        (let ((_%self118172%_ _%self118167%_))
          (if (##fx< '3 (##structure-length _%self118172%_))
              (begin
                (##unchecked-structure-set!
                 _%self118172%_
                 _%id118168%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118172%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118172%_
                 _%super118169%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118172%_
                     '3
                     (##vector-length _%self118172%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self118185%_ _%id118186%_)
        (let ((_%super118188%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self118185%_
           _%id118186%_
           _%super118188%_))))
    (define gx#phi-context:::init!
      (lambda _g118255_
        (let ((_g118254_ (##length _g118255_)))
          (cond ((##fx= _g118254_ 2)
                 (apply (lambda (_%self118185%_ _%id118186%_)
                          (gx#phi-context:::init!__0
                           _%self118185%_
                           _%id118186%_))
                        _g118255_))
                ((##fx= _g118254_ 3)
                 (apply (lambda (_%self118190%_ _%id118191%_ _%super118192%_)
                          (gx#phi-context:::init!__%
                           _%self118190%_
                           _%id118191%_
                           _%super118192%_))
                        _g118255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g118255_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self118020%_ _%super118021%_)
        (let ((_%self118024%_ _%self118020%_))
          (if (##fx< '3 (##structure-length _%self118024%_))
              (begin
                (##unchecked-structure-set!
                 _%self118024%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118024%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118024%_
                 _%super118021%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118024%_
                     '3
                     (##vector-length _%self118024%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self118037%_)
        (let ((_%super118039%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self118037%_ _%super118039%_))))
    (define gx#local-context:::init!
      (lambda _g118257_
        (let ((_g118256_ (##length _g118257_)))
          (cond ((##fx= _g118256_ 1)
                 (apply (lambda (_%self118037%_)
                          (gx#local-context:::init!__0 _%self118037%_))
                        _g118257_))
                ((##fx= _g118256_ 2)
                 (apply (lambda (_%self118041%_ _%super118042%_)
                          (gx#local-context:::init!__%
                           _%self118041%_
                           _%super118042%_))
                        _g118257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g118257_))))))
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
      (lambda _%$args117894%_
        (apply make-instance gx#binding::t _%$args117894%_)))
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
      (lambda _%$args117891%_
        (apply make-instance gx#runtime-binding::t _%$args117891%_)))
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
      (lambda _%$args117888%_
        (apply make-instance gx#local-binding::t _%$args117888%_)))
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
      (lambda _%$args117885%_
        (apply make-instance gx#top-binding::t _%$args117885%_)))
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
      (lambda _%$args117882%_
        (apply make-instance gx#module-binding::t _%$args117882%_)))
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
      (lambda _%$args117879%_
        (apply make-instance gx#extern-binding::t _%$args117879%_)))
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
      (lambda _%$args117876%_
        (apply make-instance gx#syntax-binding::t _%$args117876%_)))
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
      (lambda _%$args117873%_
        (apply make-instance gx#import-binding::t _%$args117873%_)))
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
      (lambda _%$args117870%_
        (apply make-instance gx#alias-binding::t _%$args117870%_)))
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
      (lambda _%$args117867%_
        (apply make-instance gx#expander::t _%$args117867%_)))
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
      (lambda _%$args117864%_
        (apply make-instance gx#core-expander::t _%$args117864%_)))
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
      (lambda _%$args117861%_
        (apply make-instance gx#expression-form::t _%$args117861%_)))
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
      (lambda _%$args117858%_
        (apply make-instance gx#special-form::t _%$args117858%_)))
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
      (lambda _%$args117855%_
        (apply make-instance gx#definition-form::t _%$args117855%_)))
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
      (lambda _%$args117852%_
        (apply make-instance gx#top-special-form::t _%$args117852%_)))
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
      (lambda _%$args117849%_
        (apply make-instance gx#module-special-form::t _%$args117849%_)))
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
      (lambda _%$args117846%_
        (apply make-instance gx#feature-expander::t _%$args117846%_)))
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
      (lambda _%$args117843%_
        (apply make-instance gx#private-feature-expander::t _%$args117843%_)))
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
      (lambda _%$args117840%_
        (apply make-instance gx#reserved-expander::t _%$args117840%_)))
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
      (lambda _%$args117837%_
        (apply make-instance gx#macro-expander::t _%$args117837%_)))
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
      (lambda _%$args117834%_
        (apply make-instance gx#rename-macro-expander::t _%$args117834%_)))
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
      (lambda _%$args117831%_
        (apply make-instance gx#user-expander::t _%$args117831%_)))
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
      (lambda _%$args117828%_
        (apply make-instance gx#expander-mark::t _%$args117828%_)))
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
      (lambda (_%ctx117812%_
               _%message117813%_
               _%stx117814%_
               .
               _%details117815%_)
        (let ((_%ctx117826%_
               (let ((_%$e117817%_ _%ctx117812%_))
                 (if _%$e117817%_
                     _%$e117817%_
                     (let ((_%$e117820%_ (gx#core-context-top__0)))
                       (if _%$e117820%_
                           ((lambda (_%ctx117823%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117823%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117820%_)
                           (let () '#f)))))))
          (raise (make-syntax-error
                  _%message117813%_
                  (cons _%stx117814%_ _%details117815%_)
                  _%ctx117826%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117799%_ _%expression?117800%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117799%_ _%expression?117800%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117805%_)
        (let ((_%expression?117807%_ '#f))
          (gx#eval-syntax__% _%stx117805%_ _%expression?117807%_))))
    (define gx#eval-syntax
      (lambda _g118259_
        (let ((_g118258_ (##length _g118259_)))
          (cond ((##fx= _g118258_ 1)
                 (apply (lambda (_%stx117805%_)
                          (gx#eval-syntax__0 _%stx117805%_))
                        _g118259_))
                ((##fx= _g118258_ 2)
                 (apply (lambda (_%stx117809%_ _%expression?117810%_)
                          (gx#eval-syntax__%
                           _%stx117809%_
                           _%expression?117810%_))
                        _g118259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g118259_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117796%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117796%_))))
    (define gx#core-expand__%
      (lambda (_%stx117783%_ _%expression?117784%_)
        (if _%expression?117784%_
            (gx#core-expand-expression _%stx117783%_)
            (gx#core-expand-top _%stx117783%_))))
    (define gx#core-expand__0
      (lambda (_%stx117789%_)
        (let ((_%expression?117791%_ '#f))
          (gx#core-expand__% _%stx117789%_ _%expression?117791%_))))
    (define gx#core-expand
      (lambda _g118261_
        (let ((_g118260_ (##length _g118261_)))
          (cond ((##fx= _g118260_ 1)
                 (apply (lambda (_%stx117789%_)
                          (gx#core-expand__0 _%stx117789%_))
                        _g118261_))
                ((##fx= _g118260_ 2)
                 (apply (lambda (_%stx117793%_ _%expression?117794%_)
                          (gx#core-expand__%
                           _%stx117793%_
                           _%expression?117794%_))
                        _g118261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g118261_))))))
    (define gx#core-expand-top
      (lambda (_%stx117750%_)
        (let* ((_%stx117752%_ (gx#core-expand*__0 _%stx117750%_))
               (_%e117753117760%_ _%stx117752%_)
               (_%E117755117764%_
                (lambda () (gx#core-expand-expression _%stx117752%_)))
               (_%E117754117778%_
                (lambda ()
                  (if (gx#stx-pair? _%e117753117760%_)
                      (let ((_%e117756117768%_
                             (gx#syntax-e _%e117753117760%_)))
                        (let ((_%hd117757117771%_ (##car _%e117756117768%_))
                              (_%tl117758117773%_ (##cdr _%e117756117768%_)))
                          (let ((_%form117776%_ _%hd117757117771%_))
                            (if (gx#core-bound-identifier?__0 _%form117776%_)
                                _%stx117752%_
                                (_%E117755117764%_)))))
                      (_%E117755117764%_)))))
          (_%E117754117778%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117682%_)
        (letrec ((_%sealed-expression?117684%_
                  (lambda (_%hd117720%_)
                    (if (gx#sealed-syntax? _%hd117720%_)
                        (let* ((_%e117721117728%_ _%hd117720%_)
                               (_%E117723117732%_ (lambda () '#f))
                               (_%E117722117746%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117721117728%_)
                                      (let ((_%e117724117736%_
                                             (gx#syntax-e _%e117721117728%_)))
                                        (let ((_%hd117725117739%_
                                               (##car _%e117724117736%_))
                                              (_%tl117726117741%_
                                               (##cdr _%e117724117736%_)))
                                          (let ((_%form117744%_
                                                 _%hd117725117739%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117744%_
                                                 gx#expression-form-binding?)
                                                (_%E117723117732%_)))))
                                      (_%E117723117732%_)))))
                          (_%E117722117746%_))
                        '#f)))
                 (_%illegal-expression117685%_
                  (lambda (_%hd117717%_ . _%_117718%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117682%_
                     _%hd117717%_)))
                 (_%expand-e117686%_
                  (lambda (_%form117709%_ _%hd117710%_)
                    (let ((_%bind117712%_
                           (if (##structure-instance-of?
                                _%form117709%_
                                'gx#binding::t)
                               _%form117709%_
                               (gx#resolve-identifier__0 _%form117709%_))))
                      (if (gx#core-expander-binding? _%bind117712%_)
                          (let ()
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _%bind117712%_
                              '4
                              '#f
                              '#f)
                             (gx#stx-wrap-source
                              _%hd117710%_
                              (gx#stx-source _%stx117682%_))))
                          (if (##structure-direct-instance-of?
                               _%bind117712%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-expand-expression
                                 (gx#core-apply-expander__0
                                  (##unchecked-structure-ref
                                   _%bind117712%_
                                   '4
                                   '#f
                                   '#f)
                                  (gx#stx-wrap-source
                                   _%hd117710%_
                                   (gx#stx-source _%stx117682%_)))))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; missing expander"
                                 _%stx117682%_
                                 _%form117709%_))))))))
          (let ((_%hd117688%_ (gx#core-expand-head _%stx117682%_)))
            (if (_%sealed-expression?117684%_ _%hd117688%_)
                (let () _%hd117688%_)
                (if (gx#stx-pair? _%hd117688%_)
                    (let ()
                      (let* ((_%form117692%_ (gx#stx-car _%hd117688%_))
                             (_%bind117694%_
                              (if (gx#identifier? _%form117692%_)
                                  (gx#resolve-identifier__0 _%form117692%_)
                                  '#f)))
                        (if (or (not _%bind117694%_)
                                (not (gx#core-expander-binding?
                                      _%bind117694%_)))
                            (let ()
                              (_%expand-e117686%_
                               '%%app
                               (cons '%%app _%hd117688%_)))
                            (if (eq? (##unchecked-structure-ref
                                      _%bind117694%_
                                      '1
                                      '#f
                                      '#f)
                                     '%#begin)
                                (let ()
                                  (gx#core-expand-block*
                                   _%hd117688%_
                                   _%illegal-expression117685%_))
                                (if (gx#expression-form-binding?
                                     _%bind117694%_)
                                    (let ()
                                      (_%expand-e117686%_
                                       _%bind117694%_
                                       _%hd117688%_))
                                    (if (gx#direct-special-form-binding?
                                         _%bind117694%_)
                                        (let ()
                                          (gx#core-expand-expression
                                           (_%expand-e117686%_
                                            _%bind117694%_
                                            _%hd117688%_)))
                                        (let ()
                                          (_%illegal-expression117685%_
                                           _%hd117688%_))))))))
                    (if (gx#core-bound-identifier?__0 _%hd117688%_)
                        (let () (_%illegal-expression117685%_ _%hd117688%_))
                        (if (gx#identifier? _%hd117688%_)
                            (let ()
                              (_%expand-e117686%_
                               '%%ref
                               (cons '%%ref (cons _%hd117688%_ '()))))
                            (if (gx#stx-datum? _%hd117688%_)
                                (let ()
                                  (_%expand-e117686%_
                                   '%#quote
                                   (cons '%#quote (cons _%hd117688%_ '()))))
                                (let ()
                                  (_%illegal-expression117685%_
                                   _%hd117688%_)))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117677%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117680%_ (gx#core-expand-expression _%stx117677%_)))
             (values _%stx117680%_ (gx#eval-syntax* _%stx117680%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx117658%_ _%stop?117659%_)
        (let _%lp117661%_ ((_%stx117663%_ _%stx117658%_))
          (if (_%stop?117659%_ _%stx117663%_)
              _%stx117663%_
              (let ((_%rstx117665%_ (gx#core-expand1 _%stx117663%_)))
                (if (eq? _%stx117663%_ _%rstx117665%_)
                    _%stx117663%_
                    (_%lp117661%_ _%rstx117665%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx117670%_)
        (let ((_%stop?117672%_ false))
          (gx#core-expand*__% _%stx117670%_ _%stop?117672%_))))
    (define gx#core-expand*
      (lambda _g118263_
        (let ((_g118262_ (##length _g118263_)))
          (cond ((##fx= _g118262_ 1)
                 (apply (lambda (_%stx117670%_)
                          (gx#core-expand*__0 _%stx117670%_))
                        _g118263_))
                ((##fx= _g118262_ 2)
                 (apply (lambda (_%stx117674%_ _%stop?117675%_)
                          (gx#core-expand*__% _%stx117674%_ _%stop?117675%_))
                        _g118263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g118263_))))))
    (define gx#core-expand1
      (lambda (_%stx117610%_)
        (letrec ((_%step117612%_
                  (lambda (_%hd117649%_)
                    (let ((_%bind117651%_
                           (gx#resolve-identifier__0 _%hd117649%_)))
                      (if (##structure-instance-of?
                           _%bind117651%_
                           'gx#runtime-binding::t)
                          (let () _%stx117610%_)
                          (if (##structure-direct-instance-of?
                               _%bind117651%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-apply-expander__0
                                 (##unchecked-structure-ref
                                  _%bind117651%_
                                  '4
                                  '#f
                                  '#f)
                                 _%stx117610%_))
                              (if (not _%bind117651%_)
                                  (let () _%stx117610%_)
                                  (let ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; no binding for head"
                                     _%stx117610%_)))))))))
          (let* ((_%e117613117621%_ _%stx117610%_)
                 (_%E117619117625%_ (lambda () _%stx117610%_))
                 (_%E117615117631%_
                  (lambda ()
                    (let ((_%hd117629%_ _%e117613117621%_))
                      (if (gx#identifier? _%hd117629%_)
                          (_%step117612%_ _%hd117629%_)
                          (_%E117619117625%_)))))
                 (_%E117614117645%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117613117621%_)
                        (let ((_%e117616117635%_
                               (gx#syntax-e _%e117613117621%_)))
                          (let ((_%hd117617117638%_ (##car _%e117616117635%_))
                                (_%tl117618117640%_ (##cdr _%e117616117635%_)))
                            (let ((_%hd117643%_ _%hd117617117638%_))
                              (if (gx#identifier? _%hd117643%_)
                                  (_%step117612%_ _%hd117643%_)
                                  (_%E117615117631%_)))))
                        (_%E117615117631%_)))))
            (_%E117614117645%_)))))
    (define gx#core-expand-head
      (lambda (_%stx117576%_)
        (letrec ((_%stop?117578%_
                  (lambda (_%stx117580%_)
                    (let* ((_%e117581117588%_ _%stx117580%_)
                           (_%E117583117592%_ (lambda () '#f))
                           (_%E117582117606%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117581117588%_)
                                  (let ((_%e117584117596%_
                                         (gx#syntax-e _%e117581117588%_)))
                                    (let ((_%hd117585117599%_
                                           (##car _%e117584117596%_))
                                          (_%tl117586117601%_
                                           (##cdr _%e117584117596%_)))
                                      (let ((_%hd117604%_ _%hd117585117599%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd117604%_)
                                            (_%E117583117592%_)))))
                                  (_%E117583117592%_)))))
                      (_%E117582117606%_)))))
          (gx#core-expand*__% _%stx117576%_ _%stop?117578%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx117382%_
               _%expand-special117383%_
               _%begin-form117384%_
               _%expand-e117385%_)
        (letrec ((_%expand-splice117387%_
                  (lambda (_%hd117550%_
                           _%body117551%_
                           _%rest117552%_
                           _%r117553%_)
                    (if (gx#stx-list? _%body117551%_)
                        (_%K117391%_
                         (gx#stx-foldr cons _%rest117552%_ _%body117551%_)
                         _%r117553%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx117382%_
                         _%hd117550%_))))
                 (_%expand-cond-expand117388%_
                  (lambda (_%hd117546%_ _%rest117547%_ _%r117548%_)
                    (_%K117391%_
                     (cons (gx#core-expand-cond-expand% _%hd117546%_)
                           _%rest117547%_)
                     _%r117548%_)))
                 (_%expand-include117389%_
                  (lambda (_%hd117495%_ _%rest117496%_ _%r117497%_)
                    (let* ((_%e117498117508%_ _%hd117495%_)
                           (_%E117500117512%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117498117508%_)))
                           (_%E117499117542%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117498117508%_)
                                  (let ((_%e117501117516%_
                                         (gx#syntax-e _%e117498117508%_)))
                                    (let ((_%hd117502117519%_
                                           (##car _%e117501117516%_))
                                          (_%tl117503117521%_
                                           (##cdr _%e117501117516%_)))
                                      (if (gx#stx-pair? _%tl117503117521%_)
                                          (let ((_%e117504117524%_
                                                 (gx#syntax-e
                                                  _%tl117503117521%_)))
                                            (let ((_%hd117505117527%_
                                                   (##car _%e117504117524%_))
                                                  (_%tl117506117529%_
                                                   (##cdr _%e117504117524%_)))
                                              (let ((_%path117532%_
                                                     _%hd117505117527%_))
                                                (if (gx#stx-null?
                                                     _%tl117506117529%_)
                                                    (if (gx#stx-string?
                                                         _%path117532%_)
                                                        (let* ((_%rpath117534%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path117532%_
                         (gx#stx-source _%hd117495%_)))
                       (_%block117536%_
                        (gx#core-expand-include%__%
                         _%hd117495%_
                         _%rpath117534%_))
                       (_%rbody117539%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block117536%_
                            _%expand-special117383%_
                            '#f
                            _%expand-e117385%_))
                         gx#current-expander-path
                         (cons _%rpath117534%_ (gx#current-expander-path)))))
                  (_%K117391%_
                   _%rest117496%_
                   (__foldr1 cons _%r117497%_ _%rbody117539%_)))
                (_%E117500117512%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E117500117512%_)))))
                                          (_%E117500117512%_))))
                                  (_%E117500117512%_)))))
                      (_%E117499117542%_))))
                 (_%expand-expression117390%_
                  (lambda (_%hd117491%_ _%rest117492%_ _%r117493%_)
                    (_%K117391%_
                     _%rest117492%_
                     (cons (_%expand-e117385%_ _%hd117491%_) _%r117493%_))))
                 (_%K117391%_
                  (lambda (_%rest117421%_ _%r117422%_)
                    (let* ((_%e117423117430%_ _%rest117421%_)
                           (_%E117425117434%_
                            (lambda ()
                              (if _%begin-form117384%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form117384%_
                                    (reverse _%r117422%_))
                                   (gx#stx-source _%stx117382%_))
                                  _%r117422%_)))
                           (_%E117424117487%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117423117430%_)
                                  (let ((_%e117426117438%_
                                         (gx#syntax-e _%e117423117430%_)))
                                    (let ((_%hd117427117441%_
                                           (##car _%e117426117438%_))
                                          (_%tl117428117443%_
                                           (##cdr _%e117426117438%_)))
                                      (let* ((_%hd117446%_ _%hd117427117441%_)
                                             (_%rest117448%_
                                              _%tl117428117443%_))
                                        (if '#t
                                            (let* ((_%hd117450%_
                                                    (gx#core-expand-head
                                                     _%hd117446%_))
                                                   (_%e117451117458%_
                                                    _%hd117450%_)
                                                   (_%E117453117462%_
                                                    (lambda ()
                                                      (_%expand-expression117390%_
                                                       _%hd117450%_
                                                       _%rest117448%_
                                                       _%r117422%_)))
                                                   (_%E117452117483%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117451117458%_)
                                                          (let ((_%e117454117466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117451117458%_)))
                    (let ((_%hd117455117469%_ (##car _%e117454117466%_))
                          (_%tl117456117471%_ (##cdr _%e117454117466%_)))
                      (let* ((_%form117474%_ _%hd117455117469%_)
                             (_%body117476%_ _%tl117456117471%_))
                        (if '#t
                            (let ((_%bind117478%_
                                   (if (gx#identifier? _%form117474%_)
                                       (gx#resolve-identifier__0
                                        _%form117474%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind117478%_)
                                  (let ((_%$e117480%_
                                         (##unchecked-structure-ref
                                          _%bind117478%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e117480%_)
                                        (_%expand-splice117387%_
                                         _%hd117450%_
                                         _%body117476%_
                                         _%rest117448%_
                                         _%r117422%_)
                                        (if (eq? '%#cond-expand _%$e117480%_)
                                            (_%expand-cond-expand117388%_
                                             _%hd117450%_
                                             _%rest117448%_
                                             _%r117422%_)
                                            (if (eq? '%#include _%$e117480%_)
                                                (_%expand-include117389%_
                                                 _%hd117450%_
                                                 _%rest117448%_
                                                 _%r117422%_)
                                                (_%expand-special117383%_
                                                 _%hd117450%_
                                                 _%K117391%_
                                                 _%rest117448%_
                                                 _%r117422%_)))))
                                  (_%expand-expression117390%_
                                   _%hd117450%_
                                   _%rest117448%_
                                   _%r117422%_)))
                            (_%E117453117462%_)))))
                  (_%E117453117462%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117452117483%_))
                                            (_%E117425117434%_)))))
                                  (_%E117425117434%_)))))
                      (_%E117424117487%_)))))
          (let* ((_%e117392117399%_ _%stx117382%_)
                 (_%E117394117403%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117392117399%_)))
                 (_%E117393117417%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117392117399%_)
                        (let ((_%e117395117407%_
                               (gx#syntax-e _%e117392117399%_)))
                          (let ((_%hd117396117410%_ (##car _%e117395117407%_))
                                (_%tl117397117412%_ (##cdr _%e117395117407%_)))
                            (let ((_%body117415%_ _%tl117397117412%_))
                              (if (gx#stx-list? _%body117415%_)
                                  (_%K117391%_ _%body117415%_ '())
                                  (_%E117394117403%_)))))
                        (_%E117394117403%_)))))
            (_%E117393117417%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx117558%_ _%expand-special117559%_)
        (let* ((_%begin-form117561%_ '%#begin)
               (_%expand-e117563%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117558%_
           _%expand-special117559%_
           _%begin-form117561%_
           _%expand-e117563%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx117565%_ _%expand-special117566%_ _%begin-form117567%_)
        (let ((_%expand-e117569%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117565%_
           _%expand-special117566%_
           _%begin-form117567%_
           _%expand-e117569%_))))
    (define gx#core-expand-block
      (lambda _g118265_
        (let ((_g118264_ (##length _g118265_)))
          (cond ((##fx= _g118264_ 2)
                 (apply (lambda (_%stx117558%_ _%expand-special117559%_)
                          (gx#core-expand-block__0
                           _%stx117558%_
                           _%expand-special117559%_))
                        _g118265_))
                ((##fx= _g118264_ 3)
                 (apply (lambda (_%stx117565%_
                                 _%expand-special117566%_
                                 _%begin-form117567%_)
                          (gx#core-expand-block__1
                           _%stx117565%_
                           _%expand-special117566%_
                           _%begin-form117567%_))
                        _g118265_))
                ((##fx= _g118264_ 4)
                 (apply (lambda (_%stx117571%_
                                 _%expand-special117572%_
                                 _%begin-form117573%_
                                 _%expand-e117574%_)
                          (gx#core-expand-block__%
                           _%stx117571%_
                           _%expand-special117572%_
                           _%begin-form117573%_
                           _%expand-e117574%_))
                        _g118265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g118265_))))))
    (define gx#core-expand-block*
      (lambda (_%stx117330%_ _%expand-special117331%_)
        (let* ((_%g117332117343%_
                (gx#core-expand-block__1
                 _%stx117330%_
                 _%expand-special117331%_
                 '#f))
               (_%E117336117347%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117332117343%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K117341117378%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx117330%_)))
                (_%K117338117364%_ (lambda (_%expr117362%_) _%expr117362%_))
                (_%K117337117353%_
                 (lambda (_%body117351%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body117351%_))
                    (gx#stx-source _%stx117330%_)))))
            (let ((_%try-match117334117374%_
                   (lambda ()
                     (if (##pair? _%g117332117343%_)
                         (let ((_%tl117340117369%_ (##cdr _%g117332117343%_))
                               (_%hd117339117367%_ (##car _%g117332117343%_)))
                           (if (##null? _%tl117340117369%_)
                               (let ((_%expr117372%_ _%hd117339117367%_))
                                 (_%K117338117364%_ _%expr117372%_))
                               (let ((_%body117356%_ _%g117332117343%_))
                                 (_%K117337117353%_ _%body117356%_))))
                         (let ((_%body117356%_ _%g117332117343%_))
                           (_%K117337117353%_ _%body117356%_))))))
              (if (##null? _%g117332117343%_)
                  (_%K117341117378%_)
                  (_%try-match117334117374%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx117155%_)
        (letrec ((_%satisfied?117157%_
                  (lambda (_%condition117258%_)
                    (let* ((_%e117259117274%_ _%condition117258%_)
                           (_%E117269117278%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117259117274%_)))
                           (_%E117262117297%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117259117274%_)
                                  (let ((_%e117270117282%_
                                         (gx#syntax-e _%e117259117274%_)))
                                    (let ((_%hd117271117285%_
                                           (##car _%e117270117282%_))
                                          (_%tl117272117287%_
                                           (##cdr _%e117270117282%_)))
                                      (let* ((_%combinator117290%_
                                              _%hd117271117285%_)
                                             (_%body117292%_
                                              _%tl117272117287%_))
                                        (if (gx#stx-list? _%body117292%_)
                                            (let ((_%$e117294%_
                                                   (gx#stx-e
                                                    _%combinator117290%_)))
                                              (if (eq? 'not _%$e117294%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?117157%_
                                                        _%body117292%_))
                                                  (if (eq? 'and _%$e117294%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?117157%_
                                                       _%body117292%_)
                                                      (if (eq? 'or
                                                               _%$e117294%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?117157%_
                                                           _%body117292%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e117294%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body117292%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx117155%_
                       _%combinator117290%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E117269117278%_)))))
                                  (_%E117269117278%_))))
                           (_%E117261117320%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117259117274%_)
                                  (let ((_%e117263117301%_
                                         (gx#syntax-e _%e117259117274%_)))
                                    (let ((_%hd117264117304%_
                                           (##car _%e117263117301%_))
                                          (_%tl117265117306%_
                                           (##cdr _%e117263117301%_)))
                                      (if (and (gx#identifier?
                                                _%hd117264117304%_)
                                               (gx#core-identifier=?
                                                _%hd117264117304%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl117265117306%_)
                                              (let ((_%e117266117309%_
                                                     (gx#syntax-e
                                                      _%tl117265117306%_)))
                                                (let ((_%hd117267117312%_
                                                       (##car _%e117266117309%_))
                                                      (_%tl117268117314%_
                                                       (##cdr _%e117266117309%_)))
                                                  (let ((_%expr117317%_
                                                         _%hd117267117312%_))
                                                    (if (gx#stx-null?
                                                         _%tl117268117314%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr117317%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E117262117297%_))
                (_%E117262117297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117262117297%_))
                                          (_%E117262117297%_))))
                                  (_%E117262117297%_))))
                           (_%E117260117326%_
                            (lambda ()
                              (let ((_%id117324%_ _%e117259117274%_))
                                (if (gx#identifier? _%id117324%_)
                                    (gx#core-bound-identifier?__%
                                     _%id117324%_
                                     gx#feature-binding?)
                                    (_%E117261117320%_))))))
                      (_%E117260117326%_))))
                 (_%loop117158%_
                  (lambda (_%rest117188%_)
                    (let* ((_%e117189117197%_ _%rest117188%_)
                           (_%E117195117201%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117189117197%_)))
                           (_%E117191117205%_
                            (lambda ()
                              (if (gx#stx-null? _%e117189117197%_)
                                  (if '#t '() (_%E117195117201%_))
                                  (_%E117195117201%_))))
                           (_%E117190117254%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117189117197%_)
                                  (let ((_%e117192117209%_
                                         (gx#syntax-e _%e117189117197%_)))
                                    (let ((_%hd117193117212%_
                                           (##car _%e117192117209%_))
                                          (_%tl117194117214%_
                                           (##cdr _%e117192117209%_)))
                                      (let* ((_%hd117217%_ _%hd117193117212%_)
                                             (_%rest117219%_
                                              _%tl117194117214%_))
                                        (if '#t
                                            (let* ((_%e117220117227%_
                                                    _%hd117217%_)
                                                   (_%E117222117231%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e117220117227%_)))
                                                   (_%E117221117250%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117220117227%_)
                                                          (let ((_%e117223117235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117220117227%_)))
                    (let ((_%hd117224117238%_ (##car _%e117223117235%_))
                          (_%tl117225117240%_ (##cdr _%e117223117235%_)))
                      (let* ((_%condition117243%_ _%hd117224117238%_)
                             (_%body117245%_ _%tl117225117240%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition117243%_ 'else)
                                (let ()
                                  (if (gx#stx-null? _%rest117219%_)
                                      _%body117245%_
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; clauses after else"
                                       _%stx117155%_
                                       _%hd117217%_)))
                                (if (_%satisfied?117157%_ _%condition117243%_)
                                    (let () _%body117245%_)
                                    (let () (_%loop117158%_ _%rest117219%_))))
                            (_%E117222117231%_)))))
                  (_%E117222117231%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117221117250%_))
                                            (_%E117191117205%_)))))
                                  (_%E117191117205%_)))))
                      (_%E117190117254%_)))))
          (let* ((_%e117159117166%_ _%stx117155%_)
                 (_%E117161117170%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117159117166%_)))
                 (_%E117160117184%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117159117166%_)
                        (let ((_%e117162117174%_
                               (gx#syntax-e _%e117159117166%_)))
                          (let ((_%hd117163117177%_ (##car _%e117162117174%_))
                                (_%tl117164117179%_ (##cdr _%e117162117174%_)))
                            (let ((_%clauses117182%_ _%tl117164117179%_))
                              (if (gx#stx-list? _%clauses117182%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop117158%_ _%clauses117182%_))
                                  (_%E117161117170%_)))))
                        (_%E117161117170%_)))))
            (_%E117160117184%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx117098%_ _%rpath117099%_)
        (let* ((_%e117100117110%_ _%stx117098%_)
               (_%E117102117114%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e117100117110%_)))
               (_%E117101117141%_
                (lambda ()
                  (if (gx#stx-pair? _%e117100117110%_)
                      (let ((_%e117103117118%_
                             (gx#syntax-e _%e117100117110%_)))
                        (let ((_%hd117104117121%_ (##car _%e117103117118%_))
                              (_%tl117105117123%_ (##cdr _%e117103117118%_)))
                          (if (gx#stx-pair? _%tl117105117123%_)
                              (let ((_%e117106117126%_
                                     (gx#syntax-e _%tl117105117123%_)))
                                (let ((_%hd117107117129%_
                                       (##car _%e117106117126%_))
                                      (_%tl117108117131%_
                                       (##cdr _%e117106117126%_)))
                                  (let ((_%path117134%_ _%hd117107117129%_))
                                    (if (gx#stx-null? _%tl117108117131%_)
                                        (if (gx#stx-string? _%path117134%_)
                                            (let ((_%rpath117139%_
                                                   (let ((_%$e117136%_
                                                          _%rpath117099%_))
                                                     (if _%$e117136%_
                                                         _%$e117136%_
                                                         (gx#core-resolve-path__%
                                                          _%path117134%_
                                                          (gx#stx-source
                                                           _%stx117098%_))))))
                                              (if (member _%rpath117139%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx117098%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath117139%_))
                                                    (gx#stx-source
                                                     _%stx117098%_)))))
                                            (_%E117102117114%_))
                                        (_%E117102117114%_)))))
                              (_%E117102117114%_))))
                      (_%E117102117114%_)))))
          (_%E117101117141%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx117148%_)
        (let ((_%rpath117150%_ '#f))
          (gx#core-expand-include%__% _%stx117148%_ _%rpath117150%_))))
    (define gx#core-expand-include%
      (lambda _g118267_
        (let ((_g118266_ (##length _g118267_)))
          (cond ((##fx= _g118266_ 1)
                 (apply (lambda (_%stx117148%_)
                          (gx#core-expand-include%__0 _%stx117148%_))
                        _g118267_))
                ((##fx= _g118266_ 2)
                 (apply (lambda (_%stx117152%_ _%rpath117153%_)
                          (gx#core-expand-include%__%
                           _%stx117152%_
                           _%rpath117153%_))
                        _g118267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g118267_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K117064%_ _%stx117065%_ _%method117066%_)
        (if (procedure? _%K117064%_)
            (let ((_%$e117069%_ (gx#stx-source _%stx117065%_)))
              (if _%$e117069%_
                  ((lambda (_%g117071117073%_)
                     (gx#stx-wrap-source
                      (_%K117064%_ _%stx117065%_)
                      _%g117071117073%_))
                   _%$e117069%_)
                  (let () (_%K117064%_ _%stx117065%_))))
            (let ((_%$e117077%_
                   (bound-method-ref _%K117064%_ _%method117066%_)))
              (if _%$e117077%_
                  ((lambda (_%g117079117081%_)
                     (gx#core-apply-expander__%
                      _%g117079117081%_
                      _%stx117065%_
                      _%method117066%_))
                   _%$e117077%_)
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; no expander method"
                     _%stx117065%_
                     _%method117066%_)))))))
    (define gx#core-apply-expander__0
      (lambda (_%K117088%_ _%stx117089%_)
        (let ((_%method117091%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K117088%_
           _%stx117089%_
           _%method117091%_))))
    (define gx#core-apply-expander
      (lambda _g118269_
        (let ((_g118268_ (##length _g118269_)))
          (cond ((##fx= _g118268_ 2)
                 (apply (lambda (_%K117088%_ _%stx117089%_)
                          (gx#core-apply-expander__0
                           _%K117088%_
                           _%stx117089%_))
                        _g118269_))
                ((##fx= _g118268_ 3)
                 (apply (lambda (_%K117093%_ _%stx117094%_ _%method117095%_)
                          (gx#core-apply-expander__%
                           _%K117093%_
                           _%stx117094%_
                           _%method117095%_))
                        _g118269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g118269_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self117049%_ _%stx117050%_)
        (let ((_%self117053%_ _%self117049%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx117050%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116891%_ _%stx116892%_)
        (let ((_%self116895%_ _%self116891%_))
          (let* ((_%self116904116910%_ _%self116895%_)
                 (_%E116906116914%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116904116910%_
                           '((macro-expander K)))
                    '#!void))
                 (_%K116907116919%_
                  (lambda (_%K116917%_)
                    (gx#core-apply-expander__0 _%K116917%_ _%stx116892%_))))
            (if '#t
                (let* ((_%e116908116922%_
                        (##unchecked-structure-ref
                         _%self116904116910%_
                         '1
                         '#f
                         '#f))
                       (_%K116925%_ _%e116908116922%_))
                  (_%K116907116919%_ _%K116925%_))
                (_%E116906116914%_))))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116733%_ _%stx116734%_)
        (let ((_%self116737%_ _%self116733%_))
          (if (gx#sealed-syntax? _%stx116734%_)
              _%stx116734%_
              (let* ((_%self116746116752%_ _%self116737%_)
                     (_%E116748116756%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116746116752%_
                               '((core-expander K)))
                        '#!void))
                     (_%K116749116761%_
                      (lambda (_%K116759%_)
                        (gx#core-apply-expander__0
                         _%K116759%_
                         _%stx116734%_))))
                (if '#t
                    (let* ((_%e116750116764%_
                            (##unchecked-structure-ref
                             _%self116746116752%_
                             '1
                             '#f
                             '#f))
                           (_%K116767%_ _%e116750116764%_))
                      (_%K116749116761%_ _%K116767%_))
                    (_%E116748116756%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116584%_ _%stx116585%_ _%top?116586%_)
        (let ((_%self116589%_ _%self116584%_))
          (if (_%top?116586%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self116589%_
               _%stx116585%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx116585%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116602%_ _%stx116603%_)
        (let ((_%top?116605%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116602%_
           _%stx116603%_
           _%top?116605%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g118271_
        (let ((_g118270_ (##length _g118271_)))
          (cond ((##fx= _g118270_ 2)
                 (apply (lambda (_%self116602%_ _%stx116603%_)
                          (gx#top-special-form::apply-macro-expander__0
                           _%self116602%_
                           _%stx116603%_))
                        _g118271_))
                ((##fx= _g118270_ 3)
                 (apply (lambda (_%self116607%_ _%stx116608%_ _%top?116609%_)
                          (gx#top-special-form::apply-macro-expander__%
                           _%self116607%_
                           _%stx116608%_
                           _%top?116609%_))
                        _g118271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g118271_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116447%_ _%stx116448%_)
        (let ((_%self116451%_ _%self116447%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self116451%_
           _%stx116448%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116261%_ _%stx116262%_)
        (let ((_%self116265%_ _%self116261%_))
          (let* ((_%self116274116280%_ _%self116265%_)
                 (_%E116276116284%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116274116280%_
                           '((rename-macro-expander id)))
                    '#!void))
                 (_%K116277116317%_
                  (lambda (_%id116287%_)
                    (let* ((_%e116288116295%_ _%stx116262%_)
                           (_%E116290116299%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116288116295%_)))
                           (_%E116289116313%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116288116295%_)
                                  (let ((_%e116291116303%_
                                         (gx#syntax-e _%e116288116295%_)))
                                    (let ((_%hd116292116306%_
                                           (##car _%e116291116303%_))
                                          (_%tl116293116308%_
                                           (##cdr _%e116291116303%_)))
                                      (let ((_%body116311%_
                                             _%tl116293116308%_))
                                        (if '#t
                                            (gx#core-cons
                                             _%id116287%_
                                             _%body116311%_)
                                            (_%E116290116299%_)))))
                                  (_%E116290116299%_)))))
                      (_%E116289116313%_)))))
            (if '#t
                (let* ((_%e116278116320%_
                        (##unchecked-structure-ref
                         _%self116274116280%_
                         '1
                         '#f
                         '#f))
                       (_%id116323%_ _%e116278116320%_))
                  (_%K116277116317%_ _%id116323%_))
                (_%E116276116284%_))))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self116087%_ _%stx116088%_ _%method116089%_)
        (let* ((_%self116090116098%_ _%self116087%_)
               (_%E116092116102%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116090116098%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K116093116109%_
                (lambda (_%phi116105%_ _%ctx116106%_ _%K116107%_)
                  (gx#core-apply-user-macro
                   _%K116107%_
                   _%stx116088%_
                   _%ctx116106%_
                   _%phi116105%_
                   _%method116089%_))))
          (if (##structure-instance-of?
               _%self116090116098%_
               'gx#user-expander::t)
              (let* ((_%e116094116112%_
                      (##unchecked-structure-ref
                       _%self116090116098%_
                       '1
                       '#f
                       '#f))
                     (_%K116115%_ _%e116094116112%_)
                     (_%e116095116117%_
                      (##unchecked-structure-ref
                       _%self116090116098%_
                       '2
                       '#f
                       '#f))
                     (_%ctx116120%_ _%e116095116117%_)
                     (_%e116096116122%_
                      (##unchecked-structure-ref
                       _%self116090116098%_
                       '3
                       '#f
                       '#f))
                     (_%phi116125%_ _%e116096116122%_))
                (_%K116093116109%_ _%phi116125%_ _%ctx116120%_ _%K116115%_))
              (_%E116092116102%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self116130%_ _%stx116131%_)
        (let ((_%method116133%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self116130%_
           _%stx116131%_
           _%method116133%_))))
    (define gx#core-apply-user-expander
      (lambda _g118273_
        (let ((_g118272_ (##length _g118273_)))
          (cond ((##fx= _g118272_ 2)
                 (apply (lambda (_%self116130%_ _%stx116131%_)
                          (gx#core-apply-user-expander__0
                           _%self116130%_
                           _%stx116131%_))
                        _g118273_))
                ((##fx= _g118272_ 3)
                 (apply (lambda (_%self116135%_ _%stx116136%_ _%method116137%_)
                          (gx#core-apply-user-expander__%
                           _%self116135%_
                           _%stx116136%_
                           _%method116137%_))
                        _g118273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g118273_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K116077%_
               _%stx116078%_
               _%ctx116079%_
               _%phi116080%_
               _%method116081%_)
        (let ((_%mark116083%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx116079%_
                _%phi116080%_
                _%stx116078%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K116077%_
               (gx#stx-apply-mark _%stx116078%_ _%mark116083%_)
               _%method116081%_)
              _%mark116083%_))
           gx#current-expander-marks
           (cons _%mark116083%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115925%_ _%phi115926%_ _%ctx115927%_)
        (let _%lp115929%_ ((_%bind115931%_
                            (gx#core-resolve-identifier__%
                             _%stx115925%_
                             _%phi115926%_
                             _%ctx115927%_)))
          (if (##structure-direct-instance-of?
               _%bind115931%_
               'gx#import-binding::t)
              (let ()
                (_%lp115929%_
                 (##unchecked-structure-ref _%bind115931%_ '4 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%bind115931%_
                   'gx#alias-binding::t)
                  (let ()
                    (_%lp115929%_
                     (gx#core-resolve-identifier__%
                      (##unchecked-structure-ref _%bind115931%_ '4 '#f '#f)
                      _%phi115926%_
                      _%ctx115927%_)))
                  (let () _%bind115931%_))))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115939%_)
        (let* ((_%phi115941%_ (gx#current-expander-phi))
               (_%ctx115943%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115939%_
           _%phi115941%_
           _%ctx115943%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115945%_ _%phi115946%_)
        (let ((_%ctx115948%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115945%_
           _%phi115946%_
           _%ctx115948%_))))
    (define gx#resolve-identifier
      (lambda _g118275_
        (let ((_g118274_ (##length _g118275_)))
          (cond ((##fx= _g118274_ 1)
                 (apply (lambda (_%stx115939%_)
                          (gx#resolve-identifier__0 _%stx115939%_))
                        _g118275_))
                ((##fx= _g118274_ 2)
                 (apply (lambda (_%stx115945%_ _%phi115946%_)
                          (gx#resolve-identifier__1
                           _%stx115945%_
                           _%phi115946%_))
                        _g118275_))
                ((##fx= _g118274_ 3)
                 (apply (lambda (_%stx115950%_ _%phi115951%_ _%ctx115952%_)
                          (gx#resolve-identifier__%
                           _%stx115950%_
                           _%phi115951%_
                           _%ctx115952%_))
                        _g118275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g118275_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115880%_
               _%val115881%_
               _%rebind?115882%_
               _%phi115883%_
               _%ctx115884%_)
        (let ((_%rebind?115889%_
               (if (not _%rebind?115882%_)
                   (let () gx#core-context-rebind?)
                   (if (procedure? _%rebind?115882%_)
                       (let () _%rebind?115882%_)
                       (let () true)))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115880%_)
           _%val115881%_
           _%rebind?115889%_
           _%phi115883%_
           _%ctx115884%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115894%_ _%val115895%_)
        (let* ((_%rebind?115897%_ '#f)
               (_%phi115899%_ (gx#current-expander-phi))
               (_%ctx115901%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115894%_
           _%val115895%_
           _%rebind?115897%_
           _%phi115899%_
           _%ctx115901%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115903%_ _%val115904%_ _%rebind?115905%_)
        (let* ((_%phi115907%_ (gx#current-expander-phi))
               (_%ctx115909%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115903%_
           _%val115904%_
           _%rebind?115905%_
           _%phi115907%_
           _%ctx115909%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115911%_ _%val115912%_ _%rebind?115913%_ _%phi115914%_)
        (let ((_%ctx115916%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115911%_
           _%val115912%_
           _%rebind?115913%_
           _%phi115914%_
           _%ctx115916%_))))
    (define gx#bind-identifier!
      (lambda _g118277_
        (let ((_g118276_ (##length _g118277_)))
          (cond ((##fx= _g118276_ 2)
                 (apply (lambda (_%stx115894%_ _%val115895%_)
                          (gx#bind-identifier!__0 _%stx115894%_ _%val115895%_))
                        _g118277_))
                ((##fx= _g118276_ 3)
                 (apply (lambda (_%stx115903%_ _%val115904%_ _%rebind?115905%_)
                          (gx#bind-identifier!__1
                           _%stx115903%_
                           _%val115904%_
                           _%rebind?115905%_))
                        _g118277_))
                ((##fx= _g118276_ 4)
                 (apply (lambda (_%stx115911%_
                                 _%val115912%_
                                 _%rebind?115913%_
                                 _%phi115914%_)
                          (gx#bind-identifier!__2
                           _%stx115911%_
                           _%val115912%_
                           _%rebind?115913%_
                           _%phi115914%_))
                        _g118277_))
                ((##fx= _g118276_ 5)
                 (apply (lambda (_%stx115918%_
                                 _%val115919%_
                                 _%rebind?115920%_
                                 _%phi115921%_
                                 _%ctx115922%_)
                          (gx#bind-identifier!__%
                           _%stx115918%_
                           _%val115919%_
                           _%rebind?115920%_
                           _%phi115921%_
                           _%ctx115922%_))
                        _g118277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g118277_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115846%_ _%phi115847%_ _%ctx115848%_)
        (let _%lp115850%_ ((_%e115852%_ _%stx115846%_)
                           (_%marks115853%_ (gx#current-expander-marks)))
          (if (symbol? _%e115852%_)
              (let ()
                (gx#core-resolve-binding
                 _%e115852%_
                 _%phi115847%_
                 _%phi115847%_
                 _%ctx115848%_
                 (reverse _%marks115853%_)))
              (if (gx#identifier-quote? _%e115852%_)
                  (let ()
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _%e115852%_ '1 '#f '#f)
                     _%phi115847%_
                     '0
                     (##unchecked-structure-ref _%e115852%_ '3 '#f '#f)
                     (##unchecked-structure-ref _%e115852%_ '4 '#f '#f)))
                  (if (##structure-direct-instance-of?
                       _%e115852%_
                       'gx#identifier-wrap::t)
                      (let ()
                        (gx#core-resolve-binding
                         (##unchecked-structure-ref _%e115852%_ '1 '#f '#f)
                         _%phi115847%_
                         _%phi115847%_
                         _%ctx115848%_
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e115852%_ '3 '#f '#f)
                          _%marks115853%_)))
                      (if (##structure-direct-instance-of?
                           _%e115852%_
                           'gx#syntax-wrap::t)
                          (let ()
                            (_%lp115850%_
                             (##unchecked-structure-ref _%e115852%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e115852%_
                               '3
                               '#f
                               '#f)
                              _%marks115853%_)))
                          (if (##structure-instance-of?
                               _%e115852%_
                               'gerbil#AST::t)
                              (let ()
                                (_%lp115850%_
                                 (##unchecked-structure-ref
                                  _%e115852%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115853%_))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad identifier"
                                 _%stx115846%_))))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115864%_)
        (let* ((_%phi115866%_ (gx#current-expander-phi))
               (_%ctx115868%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115864%_
           _%phi115866%_
           _%ctx115868%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115870%_ _%phi115871%_)
        (let ((_%ctx115873%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115870%_
           _%phi115871%_
           _%ctx115873%_))))
    (define gx#core-resolve-identifier
      (lambda _g118279_
        (let ((_g118278_ (##length _g118279_)))
          (cond ((##fx= _g118278_ 1)
                 (apply (lambda (_%stx115864%_)
                          (gx#core-resolve-identifier__0 _%stx115864%_))
                        _g118279_))
                ((##fx= _g118278_ 2)
                 (apply (lambda (_%stx115870%_ _%phi115871%_)
                          (gx#core-resolve-identifier__1
                           _%stx115870%_
                           _%phi115871%_))
                        _g118279_))
                ((##fx= _g118278_ 3)
                 (apply (lambda (_%stx115875%_ _%phi115876%_ _%ctx115877%_)
                          (gx#core-resolve-identifier__%
                           _%stx115875%_
                           _%phi115876%_
                           _%ctx115877%_))
                        _g118279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g118279_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115756%_
               _%phi115757%_
               _%src-phi115758%_
               _%ctx115759%_
               _%marks115760%_)
        (letrec ((_%resolve115762%_
                  (lambda (_%ctx115830%_ _%src-phi115831%_ _%key115832%_)
                    (let _%lp115834%_ ((_%ctx115836%_
                                        (gx#core-context-shift
                                         _%ctx115830%_
                                         _%phi115757%_))
                                       (_%dphi115837%_
                                        (fx- _%phi115757%_ _%src-phi115831%_)))
                      (let ((_%$e115839%_
                             (gx#core-context-resolve
                              _%ctx115836%_
                              _%key115832%_)))
                        (if _%$e115839%_
                            (values _%$e115839%_)
                            (if (fxzero? _%dphi115837%_)
                                (let () '#f)
                                (if (fxpositive? _%dphi115837%_)
                                    (let ()
                                      (_%lp115834%_
                                       (gx#core-context-shift
                                        _%ctx115836%_
                                        '-1)
                                       (##fx- _%dphi115837%_ '1)))
                                    (let ()
                                      (_%lp115834%_
                                       (gx#core-context-shift _%ctx115836%_ '1)
                                       (##fx+ _%dphi115837%_ '1)))))))))))
          (let _%lp115764%_ ((_%ctx115766%_ _%ctx115759%_)
                             (_%src-phi115767%_ _%src-phi115758%_)
                             (_%rest115768%_ _%marks115760%_))
            (let* ((_%rest115769115777%_ _%rest115768%_)
                   (_%else115771115785%_
                    (lambda ()
                      (_%resolve115762%_
                       _%ctx115766%_
                       _%src-phi115767%_
                       _%id115756%_)))
                   (_%K115773115818%_
                    (lambda (_%rest115788%_ _%hd115789%_)
                      (let* ((_%hd115790115796%_ _%hd115789%_)
                             (_%E115792115800%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115790115796%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115793115810%_
                              (lambda (_%subst115803%_)
                                (let ((_%$e115807%_
                                       (let ((_%key115805%_
                                              (if _%subst115803%_
                                                  (hash-get
                                                   _%subst115803%_
                                                   _%id115756%_)
                                                  '#f)))
                                         (if _%key115805%_
                                             (_%resolve115762%_
                                              _%ctx115766%_
                                              _%src-phi115767%_
                                              _%key115805%_)
                                             '#f))))
                                  (if _%$e115807%_
                                      _%$e115807%_
                                      (_%lp115764%_
                                       (##unchecked-structure-ref
                                        _%hd115789%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115789%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115788%_))))))
                        (if (##structure-instance-of?
                             _%hd115790115796%_
                             'gx#expander-mark::t)
                            (let* ((_%e115794115813%_
                                    (##unchecked-structure-ref
                                     _%hd115790115796%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115816%_ _%e115794115813%_))
                              (_%K115793115810%_ _%subst115816%_))
                            (_%E115792115800%_))))))
              (if (##pair? _%rest115769115777%_)
                  (let ((_%hd115774115821%_ (##car _%rest115769115777%_))
                        (_%tl115775115823%_ (##cdr _%rest115769115777%_)))
                    (let* ((_%hd115826%_ _%hd115774115821%_)
                           (_%rest115828%_ _%tl115775115823%_))
                      (_%K115773115818%_ _%rest115828%_ _%hd115826%_)))
                  (_%else115771115785%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key115626%_
               _%val115627%_
               _%rebind?115628%_
               _%phi115629%_
               _%ctx115630%_)
        (letrec ((_%update-binding115632%_
                  (lambda (_%xval115705%_)
                    (if (or (_%rebind?115628%_
                             _%ctx115630%_
                             _%xval115705%_
                             _%val115627%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115705%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115705%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val115627%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val115627%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115705%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val115627%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val115627%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115705%_
                                       '1
                                       '#f
                                       '#f))))
                        (let () _%val115627%_)
                        (if (and (##structure-direct-instance-of?
                                  _%val115627%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val115627%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115705%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val115627%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115705%_
                                                '1
                                                '#f
                                                '#f)))))
                            (let () _%xval115705%_)
                            (if (and (##structure-direct-instance-of?
                                      _%val115627%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115705%_
                                      'gx#binding::t))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; import conflict"
                                   _%key115626%_
                                   (cons (##unchecked-structure-ref
                                          _%val115627%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (##structure-ref
                                                (##unchecked-structure-ref
                                                 _%val115627%_
                                                 '5
                                                 '#f
                                                 '#f)
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '()))
                                   (cons (##unchecked-structure-ref
                                          _%xval115705%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (if (##structure-direct-instance-of?
                                                    _%xval115705%_
                                                    'gx#import-binding::t)
                                                   (##structure-ref
                                                    (##unchecked-structure-ref
                                                     _%xval115705%_
                                                     '5
                                                     '#f
                                                     '#f)
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   _%xval115705%_)
                                               '()))))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; rebind conflict"
                                   _%key115626%_
                                   _%val115627%_
                                   _%xval115705%_)))))))
                 (_%gensubst115633%_
                  (lambda (_%subst115700%_ _%id115701%_)
                    (let ((_%eid115703%_
                           (gensym (if (uninterned-symbol? _%id115701%_)
                                       '%
                                       _%id115701%_))))
                      (hash-put! _%subst115700%_ _%id115701%_ _%eid115703%_)
                      _%eid115703%_)))
                 (_%subst!115634%_
                  (lambda (_%key115636%_)
                    (let* ((_%key115637115645%_ _%key115636%_)
                           (_%else115639115653%_ (lambda () _%key115636%_))
                           (_%K115641115688%_
                            (lambda (_%mark115656%_ _%id115657%_)
                              (let* ((_%mark115658115664%_ _%mark115656%_)
                                     (_%E115660115668%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark115658115664%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K115661115680%_
                                      (lambda (_%subst115671%_)
                                        (if (not _%subst115671%_)
                                            (let ((_%subst115674%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark115656%_
                                               _%subst115674%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst115633%_
                                               _%subst115674%_
                                               _%id115657%_))
                                            (let ((_%$e115676%_
                                                   (hash-get
                                                    _%subst115671%_
                                                    _%id115657%_)))
                                              (if _%$e115676%_
                                                  (values _%$e115676%_)
                                                  (let ()
                                                    (_%gensubst115633%_
                                                     _%subst115671%_
                                                     _%id115657%_))))))))
                                (if (##structure-instance-of?
                                     _%mark115658115664%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e115662115683%_
                                            (##unchecked-structure-ref
                                             _%mark115658115664%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115686%_ _%e115662115683%_))
                                      (_%K115661115680%_ _%subst115686%_))
                                    (_%E115660115668%_))))))
                      (if (##pair? _%key115637115645%_)
                          (let ((_%hd115642115691%_
                                 (##car _%key115637115645%_))
                                (_%tl115643115693%_
                                 (##cdr _%key115637115645%_)))
                            (let* ((_%id115696%_ _%hd115642115691%_)
                                   (_%mark115698%_ _%tl115643115693%_))
                              (_%K115641115688%_ _%mark115698%_ _%id115696%_)))
                          (_%else115639115653%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx115630%_ _%phi115629%_)
           (_%subst!115634%_ _%key115626%_)
           _%val115627%_
           _%update-binding115632%_))))
    (define gx#core-bind!__0
      (lambda (_%key115726%_ _%val115727%_)
        (let* ((_%rebind?115729%_ false)
               (_%phi115731%_ (gx#current-expander-phi))
               (_%ctx115733%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115726%_
           _%val115727%_
           _%rebind?115729%_
           _%phi115731%_
           _%ctx115733%_))))
    (define gx#core-bind!__1
      (lambda (_%key115735%_ _%val115736%_ _%rebind?115737%_)
        (let* ((_%phi115739%_ (gx#current-expander-phi))
               (_%ctx115741%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115735%_
           _%val115736%_
           _%rebind?115737%_
           _%phi115739%_
           _%ctx115741%_))))
    (define gx#core-bind!__2
      (lambda (_%key115743%_ _%val115744%_ _%rebind?115745%_ _%phi115746%_)
        (let ((_%ctx115748%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115743%_
           _%val115744%_
           _%rebind?115745%_
           _%phi115746%_
           _%ctx115748%_))))
    (define gx#core-bind!
      (lambda _g118281_
        (let ((_g118280_ (##length _g118281_)))
          (cond ((##fx= _g118280_ 2)
                 (apply (lambda (_%key115726%_ _%val115727%_)
                          (gx#core-bind!__0 _%key115726%_ _%val115727%_))
                        _g118281_))
                ((##fx= _g118280_ 3)
                 (apply (lambda (_%key115735%_ _%val115736%_ _%rebind?115737%_)
                          (gx#core-bind!__1
                           _%key115735%_
                           _%val115736%_
                           _%rebind?115737%_))
                        _g118281_))
                ((##fx= _g118280_ 4)
                 (apply (lambda (_%key115743%_
                                 _%val115744%_
                                 _%rebind?115745%_
                                 _%phi115746%_)
                          (gx#core-bind!__2
                           _%key115743%_
                           _%val115744%_
                           _%rebind?115745%_
                           _%phi115746%_))
                        _g118281_))
                ((##fx= _g118280_ 5)
                 (apply (lambda (_%key115750%_
                                 _%val115751%_
                                 _%rebind?115752%_
                                 _%phi115753%_
                                 _%ctx115754%_)
                          (gx#core-bind!__%
                           _%key115750%_
                           _%val115751%_
                           _%rebind?115752%_
                           _%phi115753%_
                           _%ctx115754%_))
                        _g118281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g118281_))))))
    (define gx#core-identifier-key
      (lambda (_%stx115557%_)
        (if (symbol? _%stx115557%_)
            (let ()
              (let* ((_%g115559115567%_ (gx#current-expander-marks))
                     (_%else115561115575%_ (lambda () _%stx115557%_))
                     (_%K115563115580%_
                      (lambda (_%hd115578%_)
                        (cons _%stx115557%_ _%hd115578%_))))
                (if (##pair? _%g115559115567%_)
                    (let* ((_%hd115564115583%_ (##car _%g115559115567%_))
                           (_%hd115586%_ _%hd115564115583%_))
                      (_%K115563115580%_ _%hd115586%_))
                    (_%else115561115575%_))))
            (if (gx#identifier? _%stx115557%_)
                (let ()
                  (let* ((_%id115589%_ (gx#syntax-local-unwrap _%stx115557%_))
                         (_%eid115591%_ (gx#stx-e _%id115589%_))
                         (_%marks115593%_
                          (gx#stx-identifier-marks* _%id115589%_)))
                    (let* ((_%marks115595115603%_ _%marks115593%_)
                           (_%else115597115611%_ (lambda () _%eid115591%_))
                           (_%K115599115616%_
                            (lambda (_%hd115614%_)
                              (cons _%eid115591%_ _%hd115614%_))))
                      (if (##pair? _%marks115595115603%_)
                          (let* ((_%hd115600115619%_
                                  (##car _%marks115595115603%_))
                                 (_%hd115622%_ _%hd115600115619%_))
                            (_%K115599115616%_ _%hd115622%_))
                          (_%else115597115611%_)))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad identifier"
                   _%stx115557%_))))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx115496%_ _%phi115497%_)
        (letrec ((_%make-phi115499%_
                  (lambda (_%super115555%_)
                    (let ((__obj118253
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj118253
                       (##gensym 'phi)
                       _%super115555%_)
                      __obj118253)))
                 (_%make-phi/up115500%_
                  (lambda (_%ctx115550%_ _%super115551%_)
                    (let ((_%ctx+1115553%_
                           (_%make-phi115499%_ _%super115551%_)))
                      (##unchecked-structure-set!
                       _%ctx115550%_
                       _%ctx+1115553%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1115553%_
                       _%ctx115550%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1115553%_)))
                 (_%make-phi/down115501%_
                  (lambda (_%ctx115545%_ _%super115546%_)
                    (let ((_%ctx-1115548%_
                           (_%make-phi115499%_ _%super115546%_)))
                      (##unchecked-structure-set!
                       _%ctx-1115548%_
                       _%ctx115545%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx115545%_
                       _%ctx-1115548%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1115548%_)))
                 (_%shift115502%_
                  (lambda (_%ctx115528%_
                           _%delta115529%_
                           _%make-delta-context115530%_
                           _%phi115531%_
                           _%K115532%_)
                    (let ((_%$e115534%_
                           (##unchecked-structure-ref
                            _%ctx115528%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e115534%_
                          ((lambda (_%super115537%_)
                             (let* ((_%super115539%_
                                     (_%K115532%_
                                      _%super115537%_
                                      _%delta115529%_))
                                    (_%ctx+d115541%_
                                     (_%make-delta-context115530%_
                                      _%ctx115528%_
                                      _%super115539%_)))
                               (_%K115532%_
                                _%ctx+d115541%_
                                (fx- _%phi115531%_ _%delta115529%_))))
                           _%$e115534%_)
                          (let () (error '"Bad context" _%ctx115528%_)))))))
          (let _%K115504%_ ((_%ctx115506%_ _%ctx115496%_)
                            (_%phi115507%_ _%phi115497%_))
            (if (fxzero? _%phi115507%_)
                (let () _%ctx115506%_)
                (if (##structure-instance-of? _%ctx115506%_ 'gx#phi-context::t)
                    (let ()
                      (if (fxpositive? _%phi115507%_)
                          (let ((_%$e115511%_
                                 (##unchecked-structure-ref
                                  _%ctx115506%_
                                  '4
                                  '#f
                                  '#f)))
                            (if _%$e115511%_
                                ((lambda (_%g115513115515%_)
                                   (_%K115504%_
                                    _%g115513115515%_
                                    (##fx- _%phi115507%_ '1)))
                                 _%$e115511%_)
                                (let ()
                                  (_%shift115502%_
                                   _%ctx115506%_
                                   '1
                                   _%make-phi/up115500%_
                                   _%phi115507%_
                                   _%K115504%_))))
                          (let ((_%$e115519%_
                                 (##unchecked-structure-ref
                                  _%ctx115506%_
                                  '5
                                  '#f
                                  '#f)))
                            (if _%$e115519%_
                                ((lambda (_%g115521115523%_)
                                   (_%K115504%_
                                    _%g115521115523%_
                                    (##fx+ _%phi115507%_ '1)))
                                 _%$e115519%_)
                                (let ()
                                  (_%shift115502%_
                                   _%ctx115506%_
                                   '-1
                                   _%make-phi/down115501%_
                                   _%phi115507%_
                                   _%K115504%_))))))
                    (let () _%ctx115506%_)))))))
    (define gx#core-context-get
      (lambda (_%ctx115493%_ _%key115494%_)
        (hash-get
         (##unchecked-structure-ref _%ctx115493%_ '2 '#f '#f)
         _%key115494%_)))
    (define gx#core-context-put!
      (lambda (_%ctx115489%_ _%key115490%_ _%val115491%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx115489%_ '2 '#f '#f)
         _%key115490%_
         _%val115491%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx115475%_ _%key115476%_)
        (let _%lp115478%_ ((_%ctx115480%_ _%ctx115475%_))
          (let ((_%$e115482%_
                 (gx#core-context-get _%ctx115480%_ _%key115476%_)))
            (if _%$e115482%_
                (values _%$e115482%_)
                (let ((_%$e115485%_
                       (if (##structure-instance-of?
                            _%ctx115480%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx115480%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e115485%_
                      (_%lp115478%_ _%$e115485%_)
                      (let () '#f))))))))
    (define gx#core-context-bind!
      (lambda (_%ctx115464%_ _%key115465%_ _%val115466%_ _%rebind115467%_)
        (let ((_%$e115469%_ (gx#core-context-get _%ctx115464%_ _%key115465%_)))
          (if _%$e115469%_
              ((lambda (_%xval115472%_)
                 (gx#core-context-put!
                  _%ctx115464%_
                  _%key115465%_
                  (_%rebind115467%_ _%xval115472%_)))
               _%$e115469%_)
              (let ()
                (gx#core-context-put!
                 _%ctx115464%_
                 _%key115465%_
                 _%val115466%_))))))
    (define gx#core-context-top__%
      (lambda (_%ctx115439%_ _%stop?115440%_)
        (let _%lp115442%_ ((_%ctx115444%_ _%ctx115439%_))
          (if (_%stop?115440%_ _%ctx115444%_)
              (let () _%ctx115444%_)
              (if (##structure-instance-of? _%ctx115444%_ 'gx#phi-context::t)
                  (let ()
                    (_%lp115442%_
                     (##unchecked-structure-ref _%ctx115444%_ '3 '#f '#f)))
                  (let () '#f))))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx115453%_ (gx#current-expander-context))
               (_%stop?115455%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115453%_ _%stop?115455%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx115457%_)
        (let ((_%stop?115459%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115457%_ _%stop?115459%_))))
    (define gx#core-context-top
      (lambda _g118283_
        (let ((_g118282_ (##length _g118283_)))
          (cond ((##fx= _g118282_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g118283_))
                ((##fx= _g118282_ 1)
                 (apply (lambda (_%ctx115457%_)
                          (gx#core-context-top__1 _%ctx115457%_))
                        _g118283_))
                ((##fx= _g118282_ 2)
                 (apply (lambda (_%ctx115461%_ _%stop?115462%_)
                          (gx#core-context-top__%
                           _%ctx115461%_
                           _%stop?115462%_))
                        _g118283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g118283_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx115424%_)
        (let _%lp115426%_ ((_%ctx115428%_ _%ctx115424%_))
          (if (##structure-instance-of? _%ctx115428%_ 'gx#phi-context::t)
              (_%lp115426%_
               (##unchecked-structure-ref _%ctx115428%_ '3 '#f '#f))
              _%ctx115428%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx115434%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx115434%_))))
    (define gx#core-context-root
      (lambda _g118285_
        (let ((_g118284_ (##length _g118285_)))
          (cond ((##fx= _g118284_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g118285_))
                ((##fx= _g118284_ 1)
                 (apply (lambda (_%ctx115436%_)
                          (gx#core-context-root__% _%ctx115436%_))
                        _g118285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g118285_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx115406%_ . _%ignore115407%_)
        (let ((_%$e115409%_ (gx#current-expander-allow-rebind?)))
          (if _%$e115409%_
              _%$e115409%_
              (if (##structure-instance-of? _%ctx115406%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx115406%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx115406%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx115416%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx115416%_))))
    (define gx#core-context-rebind?
      (lambda _g118287_
        (let ((_g118286_ (##length _g118287_)))
          (cond ((##fx= _g118286_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g118287_))
                ((##fx= _g118286_ 1)
                 (apply (lambda (_%ctx115418%_)
                          (gx#core-context-rebind?__% _%ctx115418%_))
                        _g118287_))
                ((##fx>= _g118286_ 1)
                 (apply gx#core-context-rebind?__% _g118287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g118287_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx115389%_)
        (let ((_%$e115391%_ (gx#core-context-top__1 _%ctx115389%_)))
          (if _%$e115391%_
              ((lambda (_%ctx115394%_)
                 (if (##structure-instance-of?
                      _%ctx115394%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx115394%_ '6 '#f '#f)
                     '#f))
               _%$e115391%_)
              (let () '#f)))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx115401%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx115401%_))))
    (define gx#core-context-namespace
      (lambda _g118289_
        (let ((_g118288_ (##length _g118289_)))
          (cond ((##fx= _g118288_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g118289_))
                ((##fx= _g118288_ 1)
                 (apply (lambda (_%ctx115403%_)
                          (gx#core-context-namespace__% _%ctx115403%_))
                        _g118289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g118289_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind115375%_ _%is?115376%_)
        (if (##structure-direct-instance-of?
             _%bind115375%_
             'gx#syntax-binding::t)
            (_%is?115376%_
             (##unchecked-structure-ref _%bind115375%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind115381%_)
        (let ((_%is?115383%_ gx#expander?))
          (gx#expander-binding?__% _%bind115381%_ _%is?115383%_))))
    (define gx#expander-binding?
      (lambda _g118291_
        (let ((_g118290_ (##length _g118291_)))
          (cond ((##fx= _g118290_ 1)
                 (apply (lambda (_%bind115381%_)
                          (gx#expander-binding?__0 _%bind115381%_))
                        _g118291_))
                ((##fx= _g118290_ 2)
                 (apply (lambda (_%bind115385%_ _%is?115386%_)
                          (gx#expander-binding?__%
                           _%bind115385%_
                           _%is?115386%_))
                        _g118291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g118291_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind115372%_)
        (gx#expander-binding?__% _%bind115372%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind115370%_)
        (gx#expander-binding?__% _%bind115370%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind115364%_)
        (letrec ((_%direct-special-form?115366%_
                  (lambda (_%obj115368%_)
                    (##structure-direct-instance-of?
                     _%obj115368%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind115364%_
           _%direct-special-form?115366%_))))
    (define gx#special-form-binding?
      (lambda (_%bind115362%_)
        (gx#expander-binding?__% _%bind115362%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind115353%_)
        (letrec ((_%feature?115355%_
                  (lambda (_%e115357%_)
                    (let ((_%$e115359%_
                           (##structure-instance-of?
                            _%e115357%_
                            'gx#feature-expander::t)))
                      (if _%$e115359%_
                          _%$e115359%_
                          (##structure-instance-of?
                           _%e115357%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind115353%_ _%feature?115355%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind115351%_)
        (gx#expander-binding?__% _%bind115351%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id115338%_ _%bound?115339%_)
        (if (gx#identifier? _%id115338%_)
            (_%bound?115339%_ (gx#resolve-identifier__0 _%id115338%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id115344%_)
        (let ((_%bound?115346%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id115344%_ _%bound?115346%_))))
    (define gx#core-bound-identifier?
      (lambda _g118293_
        (let ((_g118292_ (##length _g118293_)))
          (cond ((##fx= _g118292_ 1)
                 (apply (lambda (_%id115344%_)
                          (gx#core-bound-identifier?__0 _%id115344%_))
                        _g118293_))
                ((##fx= _g118292_ 2)
                 (apply (lambda (_%id115348%_ _%bound?115349%_)
                          (gx#core-bound-identifier?__%
                           _%id115348%_
                           _%bound?115349%_))
                        _g118293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g118293_))))))
    (define gx#core-identifier=?
      (lambda (_%x115328%_ _%y115329%_)
        (letrec ((_%y=?115331%_
                  (lambda (_%xid115335%_)
                    ((if (list? _%y115329%_) memq eq?)
                     _%xid115335%_
                     _%y115329%_))))
          (let ((_%bind115333%_ (gx#resolve-identifier__0 _%x115328%_)))
            (if (##structure-instance-of? _%bind115333%_ 'gx#binding::t)
                (_%y=?115331%_
                 (##unchecked-structure-ref _%bind115333%_ '1 '#f '#f))
                (_%y=?115331%_ (gx#stx-e _%x115328%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e115326%_)
        (if (interned-symbol? _%e115326%_)
            (string-index__0 (symbol->string _%e115326%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx115279%_ _%src115280%_ _%ctx115281%_ _%marks115282%_)
        (if (##structure? _%stx115279%_)
            (let ((_%$e115284%_ (gx#sealed-syntax-unwrap _%stx115279%_)))
              (if _%$e115284%_
                  (values _%$e115284%_)
                  (if (gx#identifier? _%stx115279%_)
                      (let ((_%id115288%_
                             (gx#stx-unwrap__% _%stx115279%_ _%marks115282%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id115288%_ '1 '#f '#f)
                         (let ((_%$e115290%_
                                (##unchecked-structure-ref
                                 _%id115288%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e115290%_ _%$e115290%_ _%src115280%_))
                         _%ctx115281%_
                         (##unchecked-structure-ref _%id115288%_ '3 '#f '#f)))
                      (let ()
                        (##structure
                         gx#syntax-quote::t
                         (gx#stx-e _%stx115279%_)
                         (let ((_%$e115294%_ (gx#stx-source _%stx115279%_)))
                           (if _%$e115294%_ _%$e115294%_ _%src115280%_))
                         _%ctx115281%_
                         (reverse _%marks115282%_))))))
            (##structure
             gx#syntax-quote::t
             _%stx115279%_
             _%src115280%_
             _%ctx115281%_
             (reverse _%marks115282%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx115300%_)
        (let* ((_%src115302%_ '#f)
               (_%ctx115304%_ (gx#current-expander-context))
               (_%marks115306%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115300%_
           _%src115302%_
           _%ctx115304%_
           _%marks115306%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx115308%_ _%src115309%_)
        (let* ((_%ctx115311%_ (gx#current-expander-context))
               (_%marks115313%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115308%_
           _%src115309%_
           _%ctx115311%_
           _%marks115313%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx115315%_ _%src115316%_ _%ctx115317%_)
        (let ((_%marks115319%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115315%_
           _%src115316%_
           _%ctx115317%_
           _%marks115319%_))))
    (define gx#core-quote-syntax
      (lambda _g118295_
        (let ((_g118294_ (##length _g118295_)))
          (cond ((##fx= _g118294_ 1)
                 (apply (lambda (_%stx115300%_)
                          (gx#core-quote-syntax__0 _%stx115300%_))
                        _g118295_))
                ((##fx= _g118294_ 2)
                 (apply (lambda (_%stx115308%_ _%src115309%_)
                          (gx#core-quote-syntax__1
                           _%stx115308%_
                           _%src115309%_))
                        _g118295_))
                ((##fx= _g118294_ 3)
                 (apply (lambda (_%stx115315%_ _%src115316%_ _%ctx115317%_)
                          (gx#core-quote-syntax__2
                           _%stx115315%_
                           _%src115316%_
                           _%ctx115317%_))
                        _g118295_))
                ((##fx= _g118294_ 4)
                 (apply (lambda (_%stx115321%_
                                 _%src115322%_
                                 _%ctx115323%_
                                 _%marks115324%_)
                          (gx#core-quote-syntax__%
                           _%stx115321%_
                           _%src115322%_
                           _%ctx115323%_
                           _%marks115324%_))
                        _g118295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g118295_))))))
    (define gx#core-cons
      (lambda (_%hd115275%_ _%tl115276%_)
        (cons (gx#core-quote-syntax__0 _%hd115275%_) _%tl115276%_)))
    (define gx#core-list
      (lambda (_%hd115272%_ . _%rest115273%_)
        (cons (gx#core-quote-syntax__0 _%hd115272%_) _%rest115273%_)))
    (define gx#core-cons*
      (lambda (_%hd115269%_ . _%rest115270%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd115269%_) _%rest115270%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path115238%_ _%rel115239%_)
        (let ((_%path115256%_ (gx#stx-e _%stx-path115238%_))
              (_%reldir115257%_
               (let _%lp115241%_ ((_%relsrc115243%_
                                   (let ((_%$e115253%_
                                          (gx#stx-source _%stx-path115238%_)))
                                     (if _%$e115253%_
                                         _%$e115253%_
                                         _%rel115239%_))))
                 (if (##structure-instance-of? _%relsrc115243%_ 'gerbil#AST::t)
                     (let ()
                       (_%lp115241%_
                        (let ((_%$e115246%_ (gx#stx-source _%relsrc115243%_)))
                          (if _%$e115246%_
                              _%$e115246%_
                              (gx#stx-e _%relsrc115243%_)))))
                     (if (source-location-path? _%relsrc115243%_)
                         (let ()
                           (path-directory
                            (source-location-path _%relsrc115243%_)))
                         (if (string? _%relsrc115243%_)
                             (let () (path-directory _%relsrc115243%_))
                             (if (not (null? (gx#current-expander-path)))
                                 (let ()
                                   (path-directory
                                    (car (gx#current-expander-path))))
                                 (let () (current-directory)))))))))
          (path-expand _%path115256%_ (path-normalize _%reldir115257%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path115262%_)
        (let ((_%rel115264%_ '#f))
          (gx#core-resolve-path__% _%stx-path115262%_ _%rel115264%_))))
    (define gx#core-resolve-path
      (lambda _g118297_
        (let ((_g118296_ (##length _g118297_)))
          (cond ((##fx= _g118296_ 1)
                 (apply (lambda (_%stx-path115262%_)
                          (gx#core-resolve-path__0 _%stx-path115262%_))
                        _g118297_))
                ((##fx= _g118296_ 2)
                 (apply (lambda (_%stx-path115266%_ _%rel115267%_)
                          (gx#core-resolve-path__%
                           _%stx-path115266%_
                           _%rel115267%_))
                        _g118297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g118297_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr115194%_ _%ctx115195%_)
        (let* ((_%repr115196115203%_ _%repr115194%_)
               (_%E115198115207%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr115196115203%_
                         '([phi . subs]))
                  '#!void))
               (_%K115199115215%_
                (lambda (_%subs115210%_ _%phi115211%_)
                  (let ((_%subst115213%_
                         (if (not (null? _%subs115210%_))
                             (list->hash-table-eq _%subs115210%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst115213%_
                     _%ctx115195%_
                     _%phi115211%_
                     '#f)))))
          (if (##pair? _%repr115196115203%_)
              (let ((_%hd115200115218%_ (##car _%repr115196115203%_))
                    (_%tl115201115220%_ (##cdr _%repr115196115203%_)))
                (let* ((_%phi115223%_ _%hd115200115218%_)
                       (_%subs115225%_ _%tl115201115220%_))
                  (_%K115199115215%_ _%subs115225%_ _%phi115223%_)))
              (_%E115198115207%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr115230%_)
        (let ((_%ctx115232%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr115230%_ _%ctx115232%_))))
    (define gx#core-deserialize-mark
      (lambda _g118299_
        (let ((_g118298_ (##length _g118299_)))
          (cond ((##fx= _g118298_ 1)
                 (apply (lambda (_%repr115230%_)
                          (gx#core-deserialize-mark__0 _%repr115230%_))
                        _g118299_))
                ((##fx= _g118298_ 2)
                 (apply (lambda (_%repr115234%_ _%ctx115235%_)
                          (gx#core-deserialize-mark__%
                           _%repr115234%_
                           _%ctx115235%_))
                        _g118299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g118299_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx115191%_)
        (gx#stx-rewrap _%stx115191%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx115189%_)
        (gx#stx-unwrap__% _%stx115189%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx115159%_)
        (let* ((_%g115160115168%_ (gx#current-expander-marks))
               (_%else115162115176%_ (lambda () _%stx115159%_))
               (_%K115164115181%_
                (lambda (_%hd115179%_)
                  (gx#stx-apply-mark _%stx115159%_ _%hd115179%_))))
          (if (##pair? _%g115160115168%_)
              (let* ((_%hd115165115184%_ (##car _%g115160115168%_))
                     (_%hd115187%_ _%hd115165115184%_))
                (_%K115164115181%_ _%hd115187%_))
              (_%else115162115176%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx115144%_ _%E115145%_)
        (let ((_%bind115147%_ (gx#resolve-identifier__0 _%stx115144%_)))
          (if (##structure-direct-instance-of?
               _%bind115147%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind115147%_ '4 '#f '#f)
              (_%E115145%_ _%stx115144%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx115152%_)
        (let ((_%E115154%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx115152%_ _%E115154%_))))
    (define gx#syntax-local-e
      (lambda _g118301_
        (let ((_g118300_ (##length _g118301_)))
          (cond ((##fx= _g118300_ 1)
                 (apply (lambda (_%stx115152%_)
                          (gx#syntax-local-e__0 _%stx115152%_))
                        _g118301_))
                ((##fx= _g118300_ 2)
                 (apply (lambda (_%stx115156%_ _%E115157%_)
                          (gx#syntax-local-e__% _%stx115156%_ _%E115157%_))
                        _g118301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g118301_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx115128%_ _%E115129%_)
        (let ((_%e115131%_ (gx#syntax-local-e__% _%stx115128%_ _%E115129%_)))
          (if (##structure-instance-of? _%e115131%_ 'gx#expander::t)
              (##structure-ref _%e115131%_ '1 gx#expander::t '#f)
              _%e115131%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx115136%_)
        (let ((_%E115138%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx115136%_ _%E115138%_))))
    (define gx#syntax-local-value
      (lambda _g118303_
        (let ((_g118302_ (##length _g118303_)))
          (cond ((##fx= _g118302_ 1)
                 (apply (lambda (_%stx115136%_)
                          (gx#syntax-local-value__0 _%stx115136%_))
                        _g118303_))
                ((##fx= _g118302_ 2)
                 (apply (lambda (_%stx115140%_ _%E115141%_)
                          (gx#syntax-local-value__% _%stx115140%_ _%E115141%_))
                        _g118303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g118303_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx115125%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx115125%_)))))
