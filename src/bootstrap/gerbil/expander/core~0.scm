(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712246555)
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
      (lambda _%$args118277%_
        (apply make-instance gx#expander-context::t _%$args118277%_)))
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
      (lambda _%$args118274%_
        (apply make-instance gx#root-context::t _%$args118274%_)))
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
      (lambda _%$args118271%_
        (apply make-instance gx#phi-context::t _%$args118271%_)))
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
      (lambda _%$args118268%_
        (apply make-instance gx#top-context::t _%$args118268%_)))
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
      (lambda _%$args118265%_
        (apply make-instance gx#module-context::t _%$args118265%_)))
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
      (lambda _%$args118262%_
        (apply make-instance gx#prelude-context::t _%$args118262%_)))
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
      (lambda _%$args118259%_
        (apply make-instance gx#local-context::t _%$args118259%_)))
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
      (lambda (_%self118232%_ _%id118233%_ _%super118234%_)
        (let ((_%self118237%_ _%self118232%_))
          (if (##fx< '3 (##structure-length _%self118237%_))
              (begin
                (##unchecked-structure-set!
                 _%self118237%_
                 _%id118233%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118237%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118237%_
                 _%super118234%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118237%_
                     '3
                     (##vector-length _%self118237%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self118250%_ _%id118251%_)
        (let ((_%super118253%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self118250%_
           _%id118251%_
           _%super118253%_))))
    (define gx#phi-context:::init!
      (lambda _g118320_
        (let ((_g118319_ (##length _g118320_)))
          (cond ((##fx= _g118319_ 2)
                 (apply (lambda (_%self118250%_ _%id118251%_)
                          (gx#phi-context:::init!__0
                           _%self118250%_
                           _%id118251%_))
                        _g118320_))
                ((##fx= _g118319_ 3)
                 (apply (lambda (_%self118255%_ _%id118256%_ _%super118257%_)
                          (gx#phi-context:::init!__%
                           _%self118255%_
                           _%id118256%_
                           _%super118257%_))
                        _g118320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g118320_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self118085%_ _%super118086%_)
        (let ((_%self118089%_ _%self118085%_))
          (if (##fx< '3 (##structure-length _%self118089%_))
              (begin
                (##unchecked-structure-set!
                 _%self118089%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118089%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118089%_
                 _%super118086%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118089%_
                     '3
                     (##vector-length _%self118089%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self118102%_)
        (let ((_%super118104%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self118102%_ _%super118104%_))))
    (define gx#local-context:::init!
      (lambda _g118322_
        (let ((_g118321_ (##length _g118322_)))
          (cond ((##fx= _g118321_ 1)
                 (apply (lambda (_%self118102%_)
                          (gx#local-context:::init!__0 _%self118102%_))
                        _g118322_))
                ((##fx= _g118321_ 2)
                 (apply (lambda (_%self118106%_ _%super118107%_)
                          (gx#local-context:::init!__%
                           _%self118106%_
                           _%super118107%_))
                        _g118322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g118322_))))))
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
      (lambda _%$args117959%_
        (apply make-instance gx#binding::t _%$args117959%_)))
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
      (lambda _%$args117956%_
        (apply make-instance gx#runtime-binding::t _%$args117956%_)))
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
      (lambda _%$args117953%_
        (apply make-instance gx#local-binding::t _%$args117953%_)))
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
      (lambda _%$args117950%_
        (apply make-instance gx#top-binding::t _%$args117950%_)))
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
      (lambda _%$args117947%_
        (apply make-instance gx#module-binding::t _%$args117947%_)))
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
      (lambda _%$args117944%_
        (apply make-instance gx#extern-binding::t _%$args117944%_)))
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
      (lambda _%$args117941%_
        (apply make-instance gx#syntax-binding::t _%$args117941%_)))
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
      (lambda _%$args117938%_
        (apply make-instance gx#import-binding::t _%$args117938%_)))
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
      (lambda _%$args117935%_
        (apply make-instance gx#alias-binding::t _%$args117935%_)))
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
      (lambda _%$args117932%_
        (apply make-instance gx#expander::t _%$args117932%_)))
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
      (lambda _%$args117929%_
        (apply make-instance gx#core-expander::t _%$args117929%_)))
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
      (lambda _%$args117926%_
        (apply make-instance gx#expression-form::t _%$args117926%_)))
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
      (lambda _%$args117923%_
        (apply make-instance gx#special-form::t _%$args117923%_)))
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
      (lambda _%$args117920%_
        (apply make-instance gx#definition-form::t _%$args117920%_)))
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
      (lambda _%$args117917%_
        (apply make-instance gx#top-special-form::t _%$args117917%_)))
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
      (lambda _%$args117914%_
        (apply make-instance gx#module-special-form::t _%$args117914%_)))
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
      (lambda _%$args117911%_
        (apply make-instance gx#feature-expander::t _%$args117911%_)))
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
      (lambda _%$args117908%_
        (apply make-instance gx#private-feature-expander::t _%$args117908%_)))
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
      (lambda _%$args117905%_
        (apply make-instance gx#reserved-expander::t _%$args117905%_)))
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
      (lambda _%$args117902%_
        (apply make-instance gx#macro-expander::t _%$args117902%_)))
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
      (lambda _%$args117899%_
        (apply make-instance gx#rename-macro-expander::t _%$args117899%_)))
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
      (lambda _%$args117896%_
        (apply make-instance gx#user-expander::t _%$args117896%_)))
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
      (lambda _%$args117893%_
        (apply make-instance gx#expander-mark::t _%$args117893%_)))
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
      (lambda (_%ctx117877%_
               _%message117878%_
               _%stx117879%_
               .
               _%details117880%_)
        (let ((_%ctx117891%_
               (let ((_%$e117882%_ _%ctx117877%_))
                 (if _%$e117882%_
                     _%$e117882%_
                     (let ((_%$e117885%_ (gx#core-context-top__0)))
                       (if _%$e117885%_
                           ((lambda (_%ctx117888%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117888%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117885%_)
                           (let () '#f)))))))
          (raise (make-syntax-error
                  _%message117878%_
                  (cons _%stx117879%_ _%details117880%_)
                  _%ctx117891%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117864%_ _%expression?117865%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117864%_ _%expression?117865%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117870%_)
        (let ((_%expression?117872%_ '#f))
          (gx#eval-syntax__% _%stx117870%_ _%expression?117872%_))))
    (define gx#eval-syntax
      (lambda _g118324_
        (let ((_g118323_ (##length _g118324_)))
          (cond ((##fx= _g118323_ 1)
                 (apply (lambda (_%stx117870%_)
                          (gx#eval-syntax__0 _%stx117870%_))
                        _g118324_))
                ((##fx= _g118323_ 2)
                 (apply (lambda (_%stx117874%_ _%expression?117875%_)
                          (gx#eval-syntax__%
                           _%stx117874%_
                           _%expression?117875%_))
                        _g118324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g118324_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117861%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117861%_))))
    (define gx#core-expand__%
      (lambda (_%stx117848%_ _%expression?117849%_)
        (if _%expression?117849%_
            (gx#core-expand-expression _%stx117848%_)
            (gx#core-expand-top _%stx117848%_))))
    (define gx#core-expand__0
      (lambda (_%stx117854%_)
        (let ((_%expression?117856%_ '#f))
          (gx#core-expand__% _%stx117854%_ _%expression?117856%_))))
    (define gx#core-expand
      (lambda _g118326_
        (let ((_g118325_ (##length _g118326_)))
          (cond ((##fx= _g118325_ 1)
                 (apply (lambda (_%stx117854%_)
                          (gx#core-expand__0 _%stx117854%_))
                        _g118326_))
                ((##fx= _g118325_ 2)
                 (apply (lambda (_%stx117858%_ _%expression?117859%_)
                          (gx#core-expand__%
                           _%stx117858%_
                           _%expression?117859%_))
                        _g118326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g118326_))))))
    (define gx#core-expand-top
      (lambda (_%stx117815%_)
        (let* ((_%stx117817%_ (gx#core-expand*__0 _%stx117815%_))
               (_%e117818117825%_ _%stx117817%_)
               (_%E117820117829%_
                (lambda () (gx#core-expand-expression _%stx117817%_)))
               (_%E117819117843%_
                (lambda ()
                  (if (gx#stx-pair? _%e117818117825%_)
                      (let ((_%e117821117833%_
                             (gx#syntax-e _%e117818117825%_)))
                        (let ((_%hd117822117836%_ (##car _%e117821117833%_))
                              (_%tl117823117838%_ (##cdr _%e117821117833%_)))
                          (let ((_%form117841%_ _%hd117822117836%_))
                            (if (gx#core-bound-identifier?__0 _%form117841%_)
                                _%stx117817%_
                                (_%E117820117829%_)))))
                      (_%E117820117829%_)))))
          (_%E117819117843%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117747%_)
        (letrec ((_%sealed-expression?117749%_
                  (lambda (_%hd117785%_)
                    (if (gx#sealed-syntax? _%hd117785%_)
                        (let* ((_%e117786117793%_ _%hd117785%_)
                               (_%E117788117797%_ (lambda () '#f))
                               (_%E117787117811%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117786117793%_)
                                      (let ((_%e117789117801%_
                                             (gx#syntax-e _%e117786117793%_)))
                                        (let ((_%hd117790117804%_
                                               (##car _%e117789117801%_))
                                              (_%tl117791117806%_
                                               (##cdr _%e117789117801%_)))
                                          (let ((_%form117809%_
                                                 _%hd117790117804%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117809%_
                                                 gx#expression-form-binding?)
                                                (_%E117788117797%_)))))
                                      (_%E117788117797%_)))))
                          (_%E117787117811%_))
                        '#f)))
                 (_%illegal-expression117750%_
                  (lambda (_%hd117782%_ . _%_117783%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117747%_
                     _%hd117782%_)))
                 (_%expand-e117751%_
                  (lambda (_%form117774%_ _%hd117775%_)
                    (let ((_%bind117777%_
                           (if (##structure-instance-of?
                                _%form117774%_
                                'gx#binding::t)
                               _%form117774%_
                               (gx#resolve-identifier__0 _%form117774%_))))
                      (if (gx#core-expander-binding? _%bind117777%_)
                          (let ()
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _%bind117777%_
                              '4
                              '#f
                              '#f)
                             (gx#stx-wrap-source
                              _%hd117775%_
                              (gx#stx-source _%stx117747%_))))
                          (if (##structure-direct-instance-of?
                               _%bind117777%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-expand-expression
                                 (gx#core-apply-expander__0
                                  (##unchecked-structure-ref
                                   _%bind117777%_
                                   '4
                                   '#f
                                   '#f)
                                  (gx#stx-wrap-source
                                   _%hd117775%_
                                   (gx#stx-source _%stx117747%_)))))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; missing expander"
                                 _%stx117747%_
                                 _%form117774%_))))))))
          (let ((_%hd117753%_ (gx#core-expand-head _%stx117747%_)))
            (if (_%sealed-expression?117749%_ _%hd117753%_)
                (let () _%hd117753%_)
                (if (gx#stx-pair? _%hd117753%_)
                    (let ()
                      (let* ((_%form117757%_ (gx#stx-car _%hd117753%_))
                             (_%bind117759%_
                              (if (gx#identifier? _%form117757%_)
                                  (gx#resolve-identifier__0 _%form117757%_)
                                  '#f)))
                        (if (or (not _%bind117759%_)
                                (not (gx#core-expander-binding?
                                      _%bind117759%_)))
                            (let ()
                              (_%expand-e117751%_
                               '%%app
                               (cons '%%app _%hd117753%_)))
                            (if (eq? (##unchecked-structure-ref
                                      _%bind117759%_
                                      '1
                                      '#f
                                      '#f)
                                     '%#begin)
                                (let ()
                                  (gx#core-expand-block*
                                   _%hd117753%_
                                   _%illegal-expression117750%_))
                                (if (gx#expression-form-binding?
                                     _%bind117759%_)
                                    (let ()
                                      (_%expand-e117751%_
                                       _%bind117759%_
                                       _%hd117753%_))
                                    (if (gx#direct-special-form-binding?
                                         _%bind117759%_)
                                        (let ()
                                          (gx#core-expand-expression
                                           (_%expand-e117751%_
                                            _%bind117759%_
                                            _%hd117753%_)))
                                        (let ()
                                          (_%illegal-expression117750%_
                                           _%hd117753%_))))))))
                    (if (gx#core-bound-identifier?__0 _%hd117753%_)
                        (let () (_%illegal-expression117750%_ _%hd117753%_))
                        (if (gx#identifier? _%hd117753%_)
                            (let ()
                              (_%expand-e117751%_
                               '%%ref
                               (cons '%%ref (cons _%hd117753%_ '()))))
                            (if (gx#stx-datum? _%hd117753%_)
                                (let ()
                                  (_%expand-e117751%_
                                   '%#quote
                                   (cons '%#quote (cons _%hd117753%_ '()))))
                                (let ()
                                  (_%illegal-expression117750%_
                                   _%hd117753%_)))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117742%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117745%_ (gx#core-expand-expression _%stx117742%_)))
             (values _%stx117745%_ (gx#eval-syntax* _%stx117745%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx117723%_ _%stop?117724%_)
        (let _%lp117726%_ ((_%stx117728%_ _%stx117723%_))
          (if (_%stop?117724%_ _%stx117728%_)
              _%stx117728%_
              (let ((_%rstx117730%_ (gx#core-expand1 _%stx117728%_)))
                (if (eq? _%stx117728%_ _%rstx117730%_)
                    _%stx117728%_
                    (_%lp117726%_ _%rstx117730%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx117735%_)
        (let ((_%stop?117737%_ false))
          (gx#core-expand*__% _%stx117735%_ _%stop?117737%_))))
    (define gx#core-expand*
      (lambda _g118328_
        (let ((_g118327_ (##length _g118328_)))
          (cond ((##fx= _g118327_ 1)
                 (apply (lambda (_%stx117735%_)
                          (gx#core-expand*__0 _%stx117735%_))
                        _g118328_))
                ((##fx= _g118327_ 2)
                 (apply (lambda (_%stx117739%_ _%stop?117740%_)
                          (gx#core-expand*__% _%stx117739%_ _%stop?117740%_))
                        _g118328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g118328_))))))
    (define gx#core-expand1
      (lambda (_%stx117675%_)
        (letrec ((_%step117677%_
                  (lambda (_%hd117714%_)
                    (let ((_%bind117716%_
                           (gx#resolve-identifier__0 _%hd117714%_)))
                      (if (##structure-instance-of?
                           _%bind117716%_
                           'gx#runtime-binding::t)
                          (let () _%stx117675%_)
                          (if (##structure-direct-instance-of?
                               _%bind117716%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-apply-expander__0
                                 (##unchecked-structure-ref
                                  _%bind117716%_
                                  '4
                                  '#f
                                  '#f)
                                 _%stx117675%_))
                              (if (not _%bind117716%_)
                                  (let () _%stx117675%_)
                                  (let ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; no binding for head"
                                     _%stx117675%_)))))))))
          (let* ((_%e117678117686%_ _%stx117675%_)
                 (_%E117684117690%_ (lambda () _%stx117675%_))
                 (_%E117680117696%_
                  (lambda ()
                    (let ((_%hd117694%_ _%e117678117686%_))
                      (if (gx#identifier? _%hd117694%_)
                          (_%step117677%_ _%hd117694%_)
                          (_%E117684117690%_)))))
                 (_%E117679117710%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117678117686%_)
                        (let ((_%e117681117700%_
                               (gx#syntax-e _%e117678117686%_)))
                          (let ((_%hd117682117703%_ (##car _%e117681117700%_))
                                (_%tl117683117705%_ (##cdr _%e117681117700%_)))
                            (let ((_%hd117708%_ _%hd117682117703%_))
                              (if (gx#identifier? _%hd117708%_)
                                  (_%step117677%_ _%hd117708%_)
                                  (_%E117680117696%_)))))
                        (_%E117680117696%_)))))
            (_%E117679117710%_)))))
    (define gx#core-expand-head
      (lambda (_%stx117641%_)
        (letrec ((_%stop?117643%_
                  (lambda (_%stx117645%_)
                    (let* ((_%e117646117653%_ _%stx117645%_)
                           (_%E117648117657%_ (lambda () '#f))
                           (_%E117647117671%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117646117653%_)
                                  (let ((_%e117649117661%_
                                         (gx#syntax-e _%e117646117653%_)))
                                    (let ((_%hd117650117664%_
                                           (##car _%e117649117661%_))
                                          (_%tl117651117666%_
                                           (##cdr _%e117649117661%_)))
                                      (let ((_%hd117669%_ _%hd117650117664%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd117669%_)
                                            (_%E117648117657%_)))))
                                  (_%E117648117657%_)))))
                      (_%E117647117671%_)))))
          (gx#core-expand*__% _%stx117641%_ _%stop?117643%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx117447%_
               _%expand-special117448%_
               _%begin-form117449%_
               _%expand-e117450%_)
        (letrec ((_%expand-splice117452%_
                  (lambda (_%hd117615%_
                           _%body117616%_
                           _%rest117617%_
                           _%r117618%_)
                    (if (gx#stx-list? _%body117616%_)
                        (_%K117456%_
                         (gx#stx-foldr cons _%rest117617%_ _%body117616%_)
                         _%r117618%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx117447%_
                         _%hd117615%_))))
                 (_%expand-cond-expand117453%_
                  (lambda (_%hd117611%_ _%rest117612%_ _%r117613%_)
                    (_%K117456%_
                     (cons (gx#core-expand-cond-expand% _%hd117611%_)
                           _%rest117612%_)
                     _%r117613%_)))
                 (_%expand-include117454%_
                  (lambda (_%hd117560%_ _%rest117561%_ _%r117562%_)
                    (let* ((_%e117563117573%_ _%hd117560%_)
                           (_%E117565117577%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117563117573%_)))
                           (_%E117564117607%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117563117573%_)
                                  (let ((_%e117566117581%_
                                         (gx#syntax-e _%e117563117573%_)))
                                    (let ((_%hd117567117584%_
                                           (##car _%e117566117581%_))
                                          (_%tl117568117586%_
                                           (##cdr _%e117566117581%_)))
                                      (if (gx#stx-pair? _%tl117568117586%_)
                                          (let ((_%e117569117589%_
                                                 (gx#syntax-e
                                                  _%tl117568117586%_)))
                                            (let ((_%hd117570117592%_
                                                   (##car _%e117569117589%_))
                                                  (_%tl117571117594%_
                                                   (##cdr _%e117569117589%_)))
                                              (let ((_%path117597%_
                                                     _%hd117570117592%_))
                                                (if (gx#stx-null?
                                                     _%tl117571117594%_)
                                                    (if (gx#stx-string?
                                                         _%path117597%_)
                                                        (let* ((_%rpath117599%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path117597%_
                         (gx#stx-source _%hd117560%_)))
                       (_%block117601%_
                        (gx#core-expand-include%__%
                         _%hd117560%_
                         _%rpath117599%_))
                       (_%rbody117604%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block117601%_
                            _%expand-special117448%_
                            '#f
                            _%expand-e117450%_))
                         gx#current-expander-path
                         (cons _%rpath117599%_ (gx#current-expander-path)))))
                  (_%K117456%_
                   _%rest117561%_
                   (__foldr1 cons _%r117562%_ _%rbody117604%_)))
                (_%E117565117577%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E117565117577%_)))))
                                          (_%E117565117577%_))))
                                  (_%E117565117577%_)))))
                      (_%E117564117607%_))))
                 (_%expand-expression117455%_
                  (lambda (_%hd117556%_ _%rest117557%_ _%r117558%_)
                    (_%K117456%_
                     _%rest117557%_
                     (cons (_%expand-e117450%_ _%hd117556%_) _%r117558%_))))
                 (_%K117456%_
                  (lambda (_%rest117486%_ _%r117487%_)
                    (let* ((_%e117488117495%_ _%rest117486%_)
                           (_%E117490117499%_
                            (lambda ()
                              (if _%begin-form117449%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form117449%_
                                    (reverse _%r117487%_))
                                   (gx#stx-source _%stx117447%_))
                                  _%r117487%_)))
                           (_%E117489117552%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117488117495%_)
                                  (let ((_%e117491117503%_
                                         (gx#syntax-e _%e117488117495%_)))
                                    (let ((_%hd117492117506%_
                                           (##car _%e117491117503%_))
                                          (_%tl117493117508%_
                                           (##cdr _%e117491117503%_)))
                                      (let* ((_%hd117511%_ _%hd117492117506%_)
                                             (_%rest117513%_
                                              _%tl117493117508%_))
                                        (if '#t
                                            (let* ((_%hd117515%_
                                                    (gx#core-expand-head
                                                     _%hd117511%_))
                                                   (_%e117516117523%_
                                                    _%hd117515%_)
                                                   (_%E117518117527%_
                                                    (lambda ()
                                                      (_%expand-expression117455%_
                                                       _%hd117515%_
                                                       _%rest117513%_
                                                       _%r117487%_)))
                                                   (_%E117517117548%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117516117523%_)
                                                          (let ((_%e117519117531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117516117523%_)))
                    (let ((_%hd117520117534%_ (##car _%e117519117531%_))
                          (_%tl117521117536%_ (##cdr _%e117519117531%_)))
                      (let* ((_%form117539%_ _%hd117520117534%_)
                             (_%body117541%_ _%tl117521117536%_))
                        (if '#t
                            (let ((_%bind117543%_
                                   (if (gx#identifier? _%form117539%_)
                                       (gx#resolve-identifier__0
                                        _%form117539%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind117543%_)
                                  (let ((_%$e117545%_
                                         (##unchecked-structure-ref
                                          _%bind117543%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e117545%_)
                                        (_%expand-splice117452%_
                                         _%hd117515%_
                                         _%body117541%_
                                         _%rest117513%_
                                         _%r117487%_)
                                        (if (eq? '%#cond-expand _%$e117545%_)
                                            (_%expand-cond-expand117453%_
                                             _%hd117515%_
                                             _%rest117513%_
                                             _%r117487%_)
                                            (if (eq? '%#include _%$e117545%_)
                                                (_%expand-include117454%_
                                                 _%hd117515%_
                                                 _%rest117513%_
                                                 _%r117487%_)
                                                (_%expand-special117448%_
                                                 _%hd117515%_
                                                 _%K117456%_
                                                 _%rest117513%_
                                                 _%r117487%_)))))
                                  (_%expand-expression117455%_
                                   _%hd117515%_
                                   _%rest117513%_
                                   _%r117487%_)))
                            (_%E117518117527%_)))))
                  (_%E117518117527%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117517117548%_))
                                            (_%E117490117499%_)))))
                                  (_%E117490117499%_)))))
                      (_%E117489117552%_)))))
          (let* ((_%e117457117464%_ _%stx117447%_)
                 (_%E117459117468%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117457117464%_)))
                 (_%E117458117482%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117457117464%_)
                        (let ((_%e117460117472%_
                               (gx#syntax-e _%e117457117464%_)))
                          (let ((_%hd117461117475%_ (##car _%e117460117472%_))
                                (_%tl117462117477%_ (##cdr _%e117460117472%_)))
                            (let ((_%body117480%_ _%tl117462117477%_))
                              (if (gx#stx-list? _%body117480%_)
                                  (_%K117456%_ _%body117480%_ '())
                                  (_%E117459117468%_)))))
                        (_%E117459117468%_)))))
            (_%E117458117482%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx117623%_ _%expand-special117624%_)
        (let* ((_%begin-form117626%_ '%#begin)
               (_%expand-e117628%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117623%_
           _%expand-special117624%_
           _%begin-form117626%_
           _%expand-e117628%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx117630%_ _%expand-special117631%_ _%begin-form117632%_)
        (let ((_%expand-e117634%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117630%_
           _%expand-special117631%_
           _%begin-form117632%_
           _%expand-e117634%_))))
    (define gx#core-expand-block
      (lambda _g118330_
        (let ((_g118329_ (##length _g118330_)))
          (cond ((##fx= _g118329_ 2)
                 (apply (lambda (_%stx117623%_ _%expand-special117624%_)
                          (gx#core-expand-block__0
                           _%stx117623%_
                           _%expand-special117624%_))
                        _g118330_))
                ((##fx= _g118329_ 3)
                 (apply (lambda (_%stx117630%_
                                 _%expand-special117631%_
                                 _%begin-form117632%_)
                          (gx#core-expand-block__1
                           _%stx117630%_
                           _%expand-special117631%_
                           _%begin-form117632%_))
                        _g118330_))
                ((##fx= _g118329_ 4)
                 (apply (lambda (_%stx117636%_
                                 _%expand-special117637%_
                                 _%begin-form117638%_
                                 _%expand-e117639%_)
                          (gx#core-expand-block__%
                           _%stx117636%_
                           _%expand-special117637%_
                           _%begin-form117638%_
                           _%expand-e117639%_))
                        _g118330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g118330_))))))
    (define gx#core-expand-block*
      (lambda (_%stx117395%_ _%expand-special117396%_)
        (let* ((_%g117397117408%_
                (gx#core-expand-block__1
                 _%stx117395%_
                 _%expand-special117396%_
                 '#f))
               (_%E117401117412%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117397117408%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K117406117443%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx117395%_)))
                (_%K117403117429%_ (lambda (_%expr117427%_) _%expr117427%_))
                (_%K117402117418%_
                 (lambda (_%body117416%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body117416%_))
                    (gx#stx-source _%stx117395%_)))))
            (let ((_%try-match117399117439%_
                   (lambda ()
                     (if (##pair? _%g117397117408%_)
                         (let ((_%tl117405117434%_ (##cdr _%g117397117408%_))
                               (_%hd117404117432%_ (##car _%g117397117408%_)))
                           (if (##null? _%tl117405117434%_)
                               (let ((_%expr117437%_ _%hd117404117432%_))
                                 (_%K117403117429%_ _%expr117437%_))
                               (let ((_%body117421%_ _%g117397117408%_))
                                 (_%K117402117418%_ _%body117421%_))))
                         (let ((_%body117421%_ _%g117397117408%_))
                           (_%K117402117418%_ _%body117421%_))))))
              (if (##null? _%g117397117408%_)
                  (_%K117406117443%_)
                  (_%try-match117399117439%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx117220%_)
        (letrec ((_%satisfied?117222%_
                  (lambda (_%condition117323%_)
                    (let* ((_%e117324117339%_ _%condition117323%_)
                           (_%E117334117343%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117324117339%_)))
                           (_%E117327117362%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117324117339%_)
                                  (let ((_%e117335117347%_
                                         (gx#syntax-e _%e117324117339%_)))
                                    (let ((_%hd117336117350%_
                                           (##car _%e117335117347%_))
                                          (_%tl117337117352%_
                                           (##cdr _%e117335117347%_)))
                                      (let* ((_%combinator117355%_
                                              _%hd117336117350%_)
                                             (_%body117357%_
                                              _%tl117337117352%_))
                                        (if (gx#stx-list? _%body117357%_)
                                            (let ((_%$e117359%_
                                                   (gx#stx-e
                                                    _%combinator117355%_)))
                                              (if (eq? 'not _%$e117359%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?117222%_
                                                        _%body117357%_))
                                                  (if (eq? 'and _%$e117359%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?117222%_
                                                       _%body117357%_)
                                                      (if (eq? 'or
                                                               _%$e117359%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?117222%_
                                                           _%body117357%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e117359%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body117357%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx117220%_
                       _%combinator117355%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E117334117343%_)))))
                                  (_%E117334117343%_))))
                           (_%E117326117385%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117324117339%_)
                                  (let ((_%e117328117366%_
                                         (gx#syntax-e _%e117324117339%_)))
                                    (let ((_%hd117329117369%_
                                           (##car _%e117328117366%_))
                                          (_%tl117330117371%_
                                           (##cdr _%e117328117366%_)))
                                      (if (and (gx#identifier?
                                                _%hd117329117369%_)
                                               (gx#core-identifier=?
                                                _%hd117329117369%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl117330117371%_)
                                              (let ((_%e117331117374%_
                                                     (gx#syntax-e
                                                      _%tl117330117371%_)))
                                                (let ((_%hd117332117377%_
                                                       (##car _%e117331117374%_))
                                                      (_%tl117333117379%_
                                                       (##cdr _%e117331117374%_)))
                                                  (let ((_%expr117382%_
                                                         _%hd117332117377%_))
                                                    (if (gx#stx-null?
                                                         _%tl117333117379%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr117382%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E117327117362%_))
                (_%E117327117362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117327117362%_))
                                          (_%E117327117362%_))))
                                  (_%E117327117362%_))))
                           (_%E117325117391%_
                            (lambda ()
                              (let ((_%id117389%_ _%e117324117339%_))
                                (if (gx#identifier? _%id117389%_)
                                    (gx#core-bound-identifier?__%
                                     _%id117389%_
                                     gx#feature-binding?)
                                    (_%E117326117385%_))))))
                      (_%E117325117391%_))))
                 (_%loop117223%_
                  (lambda (_%rest117253%_)
                    (let* ((_%e117254117262%_ _%rest117253%_)
                           (_%E117260117266%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117254117262%_)))
                           (_%E117256117270%_
                            (lambda ()
                              (if (gx#stx-null? _%e117254117262%_)
                                  (if '#t '() (_%E117260117266%_))
                                  (_%E117260117266%_))))
                           (_%E117255117319%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117254117262%_)
                                  (let ((_%e117257117274%_
                                         (gx#syntax-e _%e117254117262%_)))
                                    (let ((_%hd117258117277%_
                                           (##car _%e117257117274%_))
                                          (_%tl117259117279%_
                                           (##cdr _%e117257117274%_)))
                                      (let* ((_%hd117282%_ _%hd117258117277%_)
                                             (_%rest117284%_
                                              _%tl117259117279%_))
                                        (if '#t
                                            (let* ((_%e117285117292%_
                                                    _%hd117282%_)
                                                   (_%E117287117296%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e117285117292%_)))
                                                   (_%E117286117315%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117285117292%_)
                                                          (let ((_%e117288117300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117285117292%_)))
                    (let ((_%hd117289117303%_ (##car _%e117288117300%_))
                          (_%tl117290117305%_ (##cdr _%e117288117300%_)))
                      (let* ((_%condition117308%_ _%hd117289117303%_)
                             (_%body117310%_ _%tl117290117305%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition117308%_ 'else)
                                (let ()
                                  (if (gx#stx-null? _%rest117284%_)
                                      _%body117310%_
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; clauses after else"
                                       _%stx117220%_
                                       _%hd117282%_)))
                                (if (_%satisfied?117222%_ _%condition117308%_)
                                    (let () _%body117310%_)
                                    (let () (_%loop117223%_ _%rest117284%_))))
                            (_%E117287117296%_)))))
                  (_%E117287117296%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117286117315%_))
                                            (_%E117256117270%_)))))
                                  (_%E117256117270%_)))))
                      (_%E117255117319%_)))))
          (let* ((_%e117224117231%_ _%stx117220%_)
                 (_%E117226117235%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117224117231%_)))
                 (_%E117225117249%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117224117231%_)
                        (let ((_%e117227117239%_
                               (gx#syntax-e _%e117224117231%_)))
                          (let ((_%hd117228117242%_ (##car _%e117227117239%_))
                                (_%tl117229117244%_ (##cdr _%e117227117239%_)))
                            (let ((_%clauses117247%_ _%tl117229117244%_))
                              (if (gx#stx-list? _%clauses117247%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop117223%_ _%clauses117247%_))
                                  (_%E117226117235%_)))))
                        (_%E117226117235%_)))))
            (_%E117225117249%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx117163%_ _%rpath117164%_)
        (let* ((_%e117165117175%_ _%stx117163%_)
               (_%E117167117179%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e117165117175%_)))
               (_%E117166117206%_
                (lambda ()
                  (if (gx#stx-pair? _%e117165117175%_)
                      (let ((_%e117168117183%_
                             (gx#syntax-e _%e117165117175%_)))
                        (let ((_%hd117169117186%_ (##car _%e117168117183%_))
                              (_%tl117170117188%_ (##cdr _%e117168117183%_)))
                          (if (gx#stx-pair? _%tl117170117188%_)
                              (let ((_%e117171117191%_
                                     (gx#syntax-e _%tl117170117188%_)))
                                (let ((_%hd117172117194%_
                                       (##car _%e117171117191%_))
                                      (_%tl117173117196%_
                                       (##cdr _%e117171117191%_)))
                                  (let ((_%path117199%_ _%hd117172117194%_))
                                    (if (gx#stx-null? _%tl117173117196%_)
                                        (if (gx#stx-string? _%path117199%_)
                                            (let ((_%rpath117204%_
                                                   (let ((_%$e117201%_
                                                          _%rpath117164%_))
                                                     (if _%$e117201%_
                                                         _%$e117201%_
                                                         (gx#core-resolve-path__%
                                                          _%path117199%_
                                                          (gx#stx-source
                                                           _%stx117163%_))))))
                                              (if (member _%rpath117204%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx117163%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath117204%_))
                                                    (gx#stx-source
                                                     _%stx117163%_)))))
                                            (_%E117167117179%_))
                                        (_%E117167117179%_)))))
                              (_%E117167117179%_))))
                      (_%E117167117179%_)))))
          (_%E117166117206%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx117213%_)
        (let ((_%rpath117215%_ '#f))
          (gx#core-expand-include%__% _%stx117213%_ _%rpath117215%_))))
    (define gx#core-expand-include%
      (lambda _g118332_
        (let ((_g118331_ (##length _g118332_)))
          (cond ((##fx= _g118331_ 1)
                 (apply (lambda (_%stx117213%_)
                          (gx#core-expand-include%__0 _%stx117213%_))
                        _g118332_))
                ((##fx= _g118331_ 2)
                 (apply (lambda (_%stx117217%_ _%rpath117218%_)
                          (gx#core-expand-include%__%
                           _%stx117217%_
                           _%rpath117218%_))
                        _g118332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g118332_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K117129%_ _%stx117130%_ _%method117131%_)
        (if (procedure? _%K117129%_)
            (let ((_%$e117134%_ (gx#stx-source _%stx117130%_)))
              (if _%$e117134%_
                  ((lambda (_%g117136117138%_)
                     (gx#stx-wrap-source
                      (_%K117129%_ _%stx117130%_)
                      _%g117136117138%_))
                   _%$e117134%_)
                  (let () (_%K117129%_ _%stx117130%_))))
            (let ((_%$e117142%_
                   (bound-method-ref _%K117129%_ _%method117131%_)))
              (if _%$e117142%_
                  ((lambda (_%g117144117146%_)
                     (gx#core-apply-expander__%
                      _%g117144117146%_
                      _%stx117130%_
                      _%method117131%_))
                   _%$e117142%_)
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; no expander method"
                     _%stx117130%_
                     _%method117131%_)))))))
    (define gx#core-apply-expander__0
      (lambda (_%K117153%_ _%stx117154%_)
        (let ((_%method117156%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K117153%_
           _%stx117154%_
           _%method117156%_))))
    (define gx#core-apply-expander
      (lambda _g118334_
        (let ((_g118333_ (##length _g118334_)))
          (cond ((##fx= _g118333_ 2)
                 (apply (lambda (_%K117153%_ _%stx117154%_)
                          (gx#core-apply-expander__0
                           _%K117153%_
                           _%stx117154%_))
                        _g118334_))
                ((##fx= _g118333_ 3)
                 (apply (lambda (_%K117158%_ _%stx117159%_ _%method117160%_)
                          (gx#core-apply-expander__%
                           _%K117158%_
                           _%stx117159%_
                           _%method117160%_))
                        _g118334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g118334_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self117114%_ _%stx117115%_)
        (let ((_%self117118%_ _%self117114%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx117115%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116956%_ _%stx116957%_)
        (let ((_%self116960%_ _%self116956%_))
          (let* ((_%self116969116975%_ _%self116960%_)
                 (_%E116971116979%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116969116975%_
                           '((macro-expander K)))
                    '#!void))
                 (_%K116972116984%_
                  (lambda (_%K116982%_)
                    (gx#core-apply-expander__0 _%K116982%_ _%stx116957%_))))
            (if '#t
                (let* ((_%e116973116987%_
                        (##unchecked-structure-ref
                         _%self116969116975%_
                         '1
                         '#f
                         '#f))
                       (_%K116990%_ _%e116973116987%_))
                  (_%K116972116984%_ _%K116990%_))
                (_%E116971116979%_))))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116798%_ _%stx116799%_)
        (let ((_%self116802%_ _%self116798%_))
          (if (gx#sealed-syntax? _%stx116799%_)
              _%stx116799%_
              (let* ((_%self116811116817%_ _%self116802%_)
                     (_%E116813116821%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116811116817%_
                               '((core-expander K)))
                        '#!void))
                     (_%K116814116826%_
                      (lambda (_%K116824%_)
                        (gx#core-apply-expander__0
                         _%K116824%_
                         _%stx116799%_))))
                (if '#t
                    (let* ((_%e116815116829%_
                            (##unchecked-structure-ref
                             _%self116811116817%_
                             '1
                             '#f
                             '#f))
                           (_%K116832%_ _%e116815116829%_))
                      (_%K116814116826%_ _%K116832%_))
                    (_%E116813116821%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116649%_ _%stx116650%_ _%top?116651%_)
        (let ((_%self116654%_ _%self116649%_))
          (if (_%top?116651%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self116654%_
               _%stx116650%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx116650%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116667%_ _%stx116668%_)
        (let ((_%top?116670%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116667%_
           _%stx116668%_
           _%top?116670%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g118336_
        (let ((_g118335_ (##length _g118336_)))
          (cond ((##fx= _g118335_ 2)
                 (apply (lambda (_%self116667%_ _%stx116668%_)
                          (gx#top-special-form::apply-macro-expander__0
                           _%self116667%_
                           _%stx116668%_))
                        _g118336_))
                ((##fx= _g118335_ 3)
                 (apply (lambda (_%self116672%_ _%stx116673%_ _%top?116674%_)
                          (gx#top-special-form::apply-macro-expander__%
                           _%self116672%_
                           _%stx116673%_
                           _%top?116674%_))
                        _g118336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g118336_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116512%_ _%stx116513%_)
        (let ((_%self116516%_ _%self116512%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self116516%_
           _%stx116513%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116326%_ _%stx116327%_)
        (let ((_%self116330%_ _%self116326%_))
          (let* ((_%self116339116345%_ _%self116330%_)
                 (_%E116341116349%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116339116345%_
                           '((rename-macro-expander id)))
                    '#!void))
                 (_%K116342116382%_
                  (lambda (_%id116352%_)
                    (let* ((_%e116353116360%_ _%stx116327%_)
                           (_%E116355116364%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116353116360%_)))
                           (_%E116354116378%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116353116360%_)
                                  (let ((_%e116356116368%_
                                         (gx#syntax-e _%e116353116360%_)))
                                    (let ((_%hd116357116371%_
                                           (##car _%e116356116368%_))
                                          (_%tl116358116373%_
                                           (##cdr _%e116356116368%_)))
                                      (let ((_%body116376%_
                                             _%tl116358116373%_))
                                        (if '#t
                                            (gx#core-cons
                                             _%id116352%_
                                             _%body116376%_)
                                            (_%E116355116364%_)))))
                                  (_%E116355116364%_)))))
                      (_%E116354116378%_)))))
            (if '#t
                (let* ((_%e116343116385%_
                        (##unchecked-structure-ref
                         _%self116339116345%_
                         '1
                         '#f
                         '#f))
                       (_%id116388%_ _%e116343116385%_))
                  (_%K116342116382%_ _%id116388%_))
                (_%E116341116349%_))))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self116152%_ _%stx116153%_ _%method116154%_)
        (let* ((_%self116155116163%_ _%self116152%_)
               (_%E116157116167%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116155116163%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K116158116174%_
                (lambda (_%phi116170%_ _%ctx116171%_ _%K116172%_)
                  (gx#core-apply-user-macro
                   _%K116172%_
                   _%stx116153%_
                   _%ctx116171%_
                   _%phi116170%_
                   _%method116154%_))))
          (if (##structure-instance-of?
               _%self116155116163%_
               'gx#user-expander::t)
              (let* ((_%e116159116177%_
                      (##unchecked-structure-ref
                       _%self116155116163%_
                       '1
                       '#f
                       '#f))
                     (_%K116180%_ _%e116159116177%_)
                     (_%e116160116182%_
                      (##unchecked-structure-ref
                       _%self116155116163%_
                       '2
                       '#f
                       '#f))
                     (_%ctx116185%_ _%e116160116182%_)
                     (_%e116161116187%_
                      (##unchecked-structure-ref
                       _%self116155116163%_
                       '3
                       '#f
                       '#f))
                     (_%phi116190%_ _%e116161116187%_))
                (_%K116158116174%_ _%phi116190%_ _%ctx116185%_ _%K116180%_))
              (_%E116157116167%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self116195%_ _%stx116196%_)
        (let ((_%method116198%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self116195%_
           _%stx116196%_
           _%method116198%_))))
    (define gx#core-apply-user-expander
      (lambda _g118338_
        (let ((_g118337_ (##length _g118338_)))
          (cond ((##fx= _g118337_ 2)
                 (apply (lambda (_%self116195%_ _%stx116196%_)
                          (gx#core-apply-user-expander__0
                           _%self116195%_
                           _%stx116196%_))
                        _g118338_))
                ((##fx= _g118337_ 3)
                 (apply (lambda (_%self116200%_ _%stx116201%_ _%method116202%_)
                          (gx#core-apply-user-expander__%
                           _%self116200%_
                           _%stx116201%_
                           _%method116202%_))
                        _g118338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g118338_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K116142%_
               _%stx116143%_
               _%ctx116144%_
               _%phi116145%_
               _%method116146%_)
        (let ((_%mark116148%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx116144%_
                _%phi116145%_
                _%stx116143%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K116142%_
               (gx#stx-apply-mark _%stx116143%_ _%mark116148%_)
               _%method116146%_)
              _%mark116148%_))
           gx#current-expander-marks
           (cons _%mark116148%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115990%_ _%phi115991%_ _%ctx115992%_)
        (let _%lp115994%_ ((_%bind115996%_
                            (gx#core-resolve-identifier__%
                             _%stx115990%_
                             _%phi115991%_
                             _%ctx115992%_)))
          (if (##structure-direct-instance-of?
               _%bind115996%_
               'gx#import-binding::t)
              (let ()
                (_%lp115994%_
                 (##unchecked-structure-ref _%bind115996%_ '4 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%bind115996%_
                   'gx#alias-binding::t)
                  (let ()
                    (_%lp115994%_
                     (gx#core-resolve-identifier__%
                      (##unchecked-structure-ref _%bind115996%_ '4 '#f '#f)
                      _%phi115991%_
                      _%ctx115992%_)))
                  (let () _%bind115996%_))))))
    (define gx#resolve-identifier__0
      (lambda (_%stx116004%_)
        (let* ((_%phi116006%_ (gx#current-expander-phi))
               (_%ctx116008%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx116004%_
           _%phi116006%_
           _%ctx116008%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx116010%_ _%phi116011%_)
        (let ((_%ctx116013%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx116010%_
           _%phi116011%_
           _%ctx116013%_))))
    (define gx#resolve-identifier
      (lambda _g118340_
        (let ((_g118339_ (##length _g118340_)))
          (cond ((##fx= _g118339_ 1)
                 (apply (lambda (_%stx116004%_)
                          (gx#resolve-identifier__0 _%stx116004%_))
                        _g118340_))
                ((##fx= _g118339_ 2)
                 (apply (lambda (_%stx116010%_ _%phi116011%_)
                          (gx#resolve-identifier__1
                           _%stx116010%_
                           _%phi116011%_))
                        _g118340_))
                ((##fx= _g118339_ 3)
                 (apply (lambda (_%stx116015%_ _%phi116016%_ _%ctx116017%_)
                          (gx#resolve-identifier__%
                           _%stx116015%_
                           _%phi116016%_
                           _%ctx116017%_))
                        _g118340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g118340_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115945%_
               _%val115946%_
               _%rebind?115947%_
               _%phi115948%_
               _%ctx115949%_)
        (let ((_%rebind?115954%_
               (if (not _%rebind?115947%_)
                   (let () gx#core-context-rebind?)
                   (if (procedure? _%rebind?115947%_)
                       (let () _%rebind?115947%_)
                       (let () true)))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115945%_)
           _%val115946%_
           _%rebind?115954%_
           _%phi115948%_
           _%ctx115949%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115959%_ _%val115960%_)
        (let* ((_%rebind?115962%_ '#f)
               (_%phi115964%_ (gx#current-expander-phi))
               (_%ctx115966%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115959%_
           _%val115960%_
           _%rebind?115962%_
           _%phi115964%_
           _%ctx115966%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115968%_ _%val115969%_ _%rebind?115970%_)
        (let* ((_%phi115972%_ (gx#current-expander-phi))
               (_%ctx115974%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115968%_
           _%val115969%_
           _%rebind?115970%_
           _%phi115972%_
           _%ctx115974%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115976%_ _%val115977%_ _%rebind?115978%_ _%phi115979%_)
        (let ((_%ctx115981%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115976%_
           _%val115977%_
           _%rebind?115978%_
           _%phi115979%_
           _%ctx115981%_))))
    (define gx#bind-identifier!
      (lambda _g118342_
        (let ((_g118341_ (##length _g118342_)))
          (cond ((##fx= _g118341_ 2)
                 (apply (lambda (_%stx115959%_ _%val115960%_)
                          (gx#bind-identifier!__0 _%stx115959%_ _%val115960%_))
                        _g118342_))
                ((##fx= _g118341_ 3)
                 (apply (lambda (_%stx115968%_ _%val115969%_ _%rebind?115970%_)
                          (gx#bind-identifier!__1
                           _%stx115968%_
                           _%val115969%_
                           _%rebind?115970%_))
                        _g118342_))
                ((##fx= _g118341_ 4)
                 (apply (lambda (_%stx115976%_
                                 _%val115977%_
                                 _%rebind?115978%_
                                 _%phi115979%_)
                          (gx#bind-identifier!__2
                           _%stx115976%_
                           _%val115977%_
                           _%rebind?115978%_
                           _%phi115979%_))
                        _g118342_))
                ((##fx= _g118341_ 5)
                 (apply (lambda (_%stx115983%_
                                 _%val115984%_
                                 _%rebind?115985%_
                                 _%phi115986%_
                                 _%ctx115987%_)
                          (gx#bind-identifier!__%
                           _%stx115983%_
                           _%val115984%_
                           _%rebind?115985%_
                           _%phi115986%_
                           _%ctx115987%_))
                        _g118342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g118342_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115911%_ _%phi115912%_ _%ctx115913%_)
        (let _%lp115915%_ ((_%e115917%_ _%stx115911%_)
                           (_%marks115918%_ (gx#current-expander-marks)))
          (if (symbol? _%e115917%_)
              (let ()
                (gx#core-resolve-binding
                 _%e115917%_
                 _%phi115912%_
                 _%phi115912%_
                 _%ctx115913%_
                 (reverse _%marks115918%_)))
              (if (gx#identifier-quote? _%e115917%_)
                  (let ()
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _%e115917%_ '1 '#f '#f)
                     _%phi115912%_
                     '0
                     (##unchecked-structure-ref _%e115917%_ '3 '#f '#f)
                     (##unchecked-structure-ref _%e115917%_ '4 '#f '#f)))
                  (if (##structure-direct-instance-of?
                       _%e115917%_
                       'gx#identifier-wrap::t)
                      (let ()
                        (gx#core-resolve-binding
                         (##unchecked-structure-ref _%e115917%_ '1 '#f '#f)
                         _%phi115912%_
                         _%phi115912%_
                         _%ctx115913%_
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e115917%_ '3 '#f '#f)
                          _%marks115918%_)))
                      (if (##structure-direct-instance-of?
                           _%e115917%_
                           'gx#syntax-wrap::t)
                          (let ()
                            (_%lp115915%_
                             (##unchecked-structure-ref _%e115917%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e115917%_
                               '3
                               '#f
                               '#f)
                              _%marks115918%_)))
                          (if (##structure-instance-of?
                               _%e115917%_
                               'gerbil#AST::t)
                              (let ()
                                (_%lp115915%_
                                 (##unchecked-structure-ref
                                  _%e115917%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115918%_))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad identifier"
                                 _%stx115911%_))))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115929%_)
        (let* ((_%phi115931%_ (gx#current-expander-phi))
               (_%ctx115933%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115929%_
           _%phi115931%_
           _%ctx115933%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115935%_ _%phi115936%_)
        (let ((_%ctx115938%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115935%_
           _%phi115936%_
           _%ctx115938%_))))
    (define gx#core-resolve-identifier
      (lambda _g118344_
        (let ((_g118343_ (##length _g118344_)))
          (cond ((##fx= _g118343_ 1)
                 (apply (lambda (_%stx115929%_)
                          (gx#core-resolve-identifier__0 _%stx115929%_))
                        _g118344_))
                ((##fx= _g118343_ 2)
                 (apply (lambda (_%stx115935%_ _%phi115936%_)
                          (gx#core-resolve-identifier__1
                           _%stx115935%_
                           _%phi115936%_))
                        _g118344_))
                ((##fx= _g118343_ 3)
                 (apply (lambda (_%stx115940%_ _%phi115941%_ _%ctx115942%_)
                          (gx#core-resolve-identifier__%
                           _%stx115940%_
                           _%phi115941%_
                           _%ctx115942%_))
                        _g118344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g118344_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115821%_
               _%phi115822%_
               _%src-phi115823%_
               _%ctx115824%_
               _%marks115825%_)
        (letrec ((_%resolve115827%_
                  (lambda (_%ctx115895%_ _%src-phi115896%_ _%key115897%_)
                    (let _%lp115899%_ ((_%ctx115901%_
                                        (gx#core-context-shift
                                         _%ctx115895%_
                                         _%phi115822%_))
                                       (_%dphi115902%_
                                        (fx- _%phi115822%_ _%src-phi115896%_)))
                      (let ((_%$e115904%_
                             (gx#core-context-resolve
                              _%ctx115901%_
                              _%key115897%_)))
                        (if _%$e115904%_
                            (values _%$e115904%_)
                            (if (fxzero? _%dphi115902%_)
                                (let () '#f)
                                (if (fxpositive? _%dphi115902%_)
                                    (let ()
                                      (_%lp115899%_
                                       (gx#core-context-shift
                                        _%ctx115901%_
                                        '-1)
                                       (##fx- _%dphi115902%_ '1)))
                                    (let ()
                                      (_%lp115899%_
                                       (gx#core-context-shift _%ctx115901%_ '1)
                                       (##fx+ _%dphi115902%_ '1)))))))))))
          (let _%lp115829%_ ((_%ctx115831%_ _%ctx115824%_)
                             (_%src-phi115832%_ _%src-phi115823%_)
                             (_%rest115833%_ _%marks115825%_))
            (let* ((_%rest115834115842%_ _%rest115833%_)
                   (_%else115836115850%_
                    (lambda ()
                      (_%resolve115827%_
                       _%ctx115831%_
                       _%src-phi115832%_
                       _%id115821%_)))
                   (_%K115838115883%_
                    (lambda (_%rest115853%_ _%hd115854%_)
                      (let* ((_%hd115855115861%_ _%hd115854%_)
                             (_%E115857115865%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115855115861%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115858115875%_
                              (lambda (_%subst115868%_)
                                (let ((_%$e115872%_
                                       (let ((_%key115870%_
                                              (if _%subst115868%_
                                                  (hash-get
                                                   _%subst115868%_
                                                   _%id115821%_)
                                                  '#f)))
                                         (if _%key115870%_
                                             (_%resolve115827%_
                                              _%ctx115831%_
                                              _%src-phi115832%_
                                              _%key115870%_)
                                             '#f))))
                                  (if _%$e115872%_
                                      _%$e115872%_
                                      (_%lp115829%_
                                       (##unchecked-structure-ref
                                        _%hd115854%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115854%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115853%_))))))
                        (if (##structure-instance-of?
                             _%hd115855115861%_
                             'gx#expander-mark::t)
                            (let* ((_%e115859115878%_
                                    (##unchecked-structure-ref
                                     _%hd115855115861%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115881%_ _%e115859115878%_))
                              (_%K115858115875%_ _%subst115881%_))
                            (_%E115857115865%_))))))
              (if (##pair? _%rest115834115842%_)
                  (let ((_%hd115839115886%_ (##car _%rest115834115842%_))
                        (_%tl115840115888%_ (##cdr _%rest115834115842%_)))
                    (let* ((_%hd115891%_ _%hd115839115886%_)
                           (_%rest115893%_ _%tl115840115888%_))
                      (_%K115838115883%_ _%rest115893%_ _%hd115891%_)))
                  (_%else115836115850%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key115691%_
               _%val115692%_
               _%rebind?115693%_
               _%phi115694%_
               _%ctx115695%_)
        (letrec ((_%update-binding115697%_
                  (lambda (_%xval115770%_)
                    (if (or (_%rebind?115693%_
                             _%ctx115695%_
                             _%xval115770%_
                             _%val115692%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115770%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115770%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val115692%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val115692%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115770%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val115692%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val115692%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115770%_
                                       '1
                                       '#f
                                       '#f))))
                        (let () _%val115692%_)
                        (if (and (##structure-direct-instance-of?
                                  _%val115692%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val115692%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115770%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val115692%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115770%_
                                                '1
                                                '#f
                                                '#f)))))
                            (let () _%xval115770%_)
                            (if (and (##structure-direct-instance-of?
                                      _%val115692%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115770%_
                                      'gx#binding::t))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; import conflict"
                                   _%key115691%_
                                   (cons (##unchecked-structure-ref
                                          _%val115692%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (##structure-ref
                                                (##unchecked-structure-ref
                                                 _%val115692%_
                                                 '5
                                                 '#f
                                                 '#f)
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '()))
                                   (cons (##unchecked-structure-ref
                                          _%xval115770%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (if (##structure-direct-instance-of?
                                                    _%xval115770%_
                                                    'gx#import-binding::t)
                                                   (##structure-ref
                                                    (##unchecked-structure-ref
                                                     _%xval115770%_
                                                     '5
                                                     '#f
                                                     '#f)
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   _%xval115770%_)
                                               '()))))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; rebind conflict"
                                   _%key115691%_
                                   _%val115692%_
                                   _%xval115770%_)))))))
                 (_%gensubst115698%_
                  (lambda (_%subst115765%_ _%id115766%_)
                    (let ((_%eid115768%_
                           (gensym (if (uninterned-symbol? _%id115766%_)
                                       '%
                                       _%id115766%_))))
                      (hash-put! _%subst115765%_ _%id115766%_ _%eid115768%_)
                      _%eid115768%_)))
                 (_%subst!115699%_
                  (lambda (_%key115701%_)
                    (let* ((_%key115702115710%_ _%key115701%_)
                           (_%else115704115718%_ (lambda () _%key115701%_))
                           (_%K115706115753%_
                            (lambda (_%mark115721%_ _%id115722%_)
                              (let* ((_%mark115723115729%_ _%mark115721%_)
                                     (_%E115725115733%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark115723115729%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K115726115745%_
                                      (lambda (_%subst115736%_)
                                        (if (not _%subst115736%_)
                                            (let ((_%subst115739%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark115721%_
                                               _%subst115739%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst115698%_
                                               _%subst115739%_
                                               _%id115722%_))
                                            (let ((_%$e115741%_
                                                   (hash-get
                                                    _%subst115736%_
                                                    _%id115722%_)))
                                              (if _%$e115741%_
                                                  (values _%$e115741%_)
                                                  (let ()
                                                    (_%gensubst115698%_
                                                     _%subst115736%_
                                                     _%id115722%_))))))))
                                (if (##structure-instance-of?
                                     _%mark115723115729%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e115727115748%_
                                            (##unchecked-structure-ref
                                             _%mark115723115729%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115751%_ _%e115727115748%_))
                                      (_%K115726115745%_ _%subst115751%_))
                                    (_%E115725115733%_))))))
                      (if (##pair? _%key115702115710%_)
                          (let ((_%hd115707115756%_
                                 (##car _%key115702115710%_))
                                (_%tl115708115758%_
                                 (##cdr _%key115702115710%_)))
                            (let* ((_%id115761%_ _%hd115707115756%_)
                                   (_%mark115763%_ _%tl115708115758%_))
                              (_%K115706115753%_ _%mark115763%_ _%id115761%_)))
                          (_%else115704115718%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx115695%_ _%phi115694%_)
           (_%subst!115699%_ _%key115691%_)
           _%val115692%_
           _%update-binding115697%_))))
    (define gx#core-bind!__0
      (lambda (_%key115791%_ _%val115792%_)
        (let* ((_%rebind?115794%_ false)
               (_%phi115796%_ (gx#current-expander-phi))
               (_%ctx115798%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115791%_
           _%val115792%_
           _%rebind?115794%_
           _%phi115796%_
           _%ctx115798%_))))
    (define gx#core-bind!__1
      (lambda (_%key115800%_ _%val115801%_ _%rebind?115802%_)
        (let* ((_%phi115804%_ (gx#current-expander-phi))
               (_%ctx115806%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115800%_
           _%val115801%_
           _%rebind?115802%_
           _%phi115804%_
           _%ctx115806%_))))
    (define gx#core-bind!__2
      (lambda (_%key115808%_ _%val115809%_ _%rebind?115810%_ _%phi115811%_)
        (let ((_%ctx115813%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115808%_
           _%val115809%_
           _%rebind?115810%_
           _%phi115811%_
           _%ctx115813%_))))
    (define gx#core-bind!
      (lambda _g118346_
        (let ((_g118345_ (##length _g118346_)))
          (cond ((##fx= _g118345_ 2)
                 (apply (lambda (_%key115791%_ _%val115792%_)
                          (gx#core-bind!__0 _%key115791%_ _%val115792%_))
                        _g118346_))
                ((##fx= _g118345_ 3)
                 (apply (lambda (_%key115800%_ _%val115801%_ _%rebind?115802%_)
                          (gx#core-bind!__1
                           _%key115800%_
                           _%val115801%_
                           _%rebind?115802%_))
                        _g118346_))
                ((##fx= _g118345_ 4)
                 (apply (lambda (_%key115808%_
                                 _%val115809%_
                                 _%rebind?115810%_
                                 _%phi115811%_)
                          (gx#core-bind!__2
                           _%key115808%_
                           _%val115809%_
                           _%rebind?115810%_
                           _%phi115811%_))
                        _g118346_))
                ((##fx= _g118345_ 5)
                 (apply (lambda (_%key115815%_
                                 _%val115816%_
                                 _%rebind?115817%_
                                 _%phi115818%_
                                 _%ctx115819%_)
                          (gx#core-bind!__%
                           _%key115815%_
                           _%val115816%_
                           _%rebind?115817%_
                           _%phi115818%_
                           _%ctx115819%_))
                        _g118346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g118346_))))))
    (define gx#core-identifier-key
      (lambda (_%stx115622%_)
        (if (symbol? _%stx115622%_)
            (let ()
              (let* ((_%g115624115632%_ (gx#current-expander-marks))
                     (_%else115626115640%_ (lambda () _%stx115622%_))
                     (_%K115628115645%_
                      (lambda (_%hd115643%_)
                        (cons _%stx115622%_ _%hd115643%_))))
                (if (##pair? _%g115624115632%_)
                    (let* ((_%hd115629115648%_ (##car _%g115624115632%_))
                           (_%hd115651%_ _%hd115629115648%_))
                      (_%K115628115645%_ _%hd115651%_))
                    (_%else115626115640%_))))
            (if (gx#identifier? _%stx115622%_)
                (let ()
                  (let* ((_%id115654%_ (gx#syntax-local-unwrap _%stx115622%_))
                         (_%eid115656%_ (gx#stx-e _%id115654%_))
                         (_%marks115658%_
                          (gx#stx-identifier-marks* _%id115654%_)))
                    (let* ((_%marks115660115668%_ _%marks115658%_)
                           (_%else115662115676%_ (lambda () _%eid115656%_))
                           (_%K115664115681%_
                            (lambda (_%hd115679%_)
                              (cons _%eid115656%_ _%hd115679%_))))
                      (if (##pair? _%marks115660115668%_)
                          (let* ((_%hd115665115684%_
                                  (##car _%marks115660115668%_))
                                 (_%hd115687%_ _%hd115665115684%_))
                            (_%K115664115681%_ _%hd115687%_))
                          (_%else115662115676%_)))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad identifier"
                   _%stx115622%_))))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx115561%_ _%phi115562%_)
        (letrec ((_%make-phi115564%_
                  (lambda (_%super115620%_)
                    (let ((__obj118318
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj118318
                       (##gensym 'phi)
                       _%super115620%_)
                      __obj118318)))
                 (_%make-phi/up115565%_
                  (lambda (_%ctx115615%_ _%super115616%_)
                    (let ((_%ctx+1115618%_
                           (_%make-phi115564%_ _%super115616%_)))
                      (##unchecked-structure-set!
                       _%ctx115615%_
                       _%ctx+1115618%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1115618%_
                       _%ctx115615%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1115618%_)))
                 (_%make-phi/down115566%_
                  (lambda (_%ctx115610%_ _%super115611%_)
                    (let ((_%ctx-1115613%_
                           (_%make-phi115564%_ _%super115611%_)))
                      (##unchecked-structure-set!
                       _%ctx-1115613%_
                       _%ctx115610%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx115610%_
                       _%ctx-1115613%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1115613%_)))
                 (_%shift115567%_
                  (lambda (_%ctx115593%_
                           _%delta115594%_
                           _%make-delta-context115595%_
                           _%phi115596%_
                           _%K115597%_)
                    (let ((_%$e115599%_
                           (##unchecked-structure-ref
                            _%ctx115593%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e115599%_
                          ((lambda (_%super115602%_)
                             (let* ((_%super115604%_
                                     (_%K115597%_
                                      _%super115602%_
                                      _%delta115594%_))
                                    (_%ctx+d115606%_
                                     (_%make-delta-context115595%_
                                      _%ctx115593%_
                                      _%super115604%_)))
                               (_%K115597%_
                                _%ctx+d115606%_
                                (fx- _%phi115596%_ _%delta115594%_))))
                           _%$e115599%_)
                          (let () (error '"Bad context" _%ctx115593%_)))))))
          (let _%K115569%_ ((_%ctx115571%_ _%ctx115561%_)
                            (_%phi115572%_ _%phi115562%_))
            (if (fxzero? _%phi115572%_)
                (let () _%ctx115571%_)
                (if (##structure-instance-of? _%ctx115571%_ 'gx#phi-context::t)
                    (let ()
                      (if (fxpositive? _%phi115572%_)
                          (let ((_%$e115576%_
                                 (##unchecked-structure-ref
                                  _%ctx115571%_
                                  '4
                                  '#f
                                  '#f)))
                            (if _%$e115576%_
                                ((lambda (_%g115578115580%_)
                                   (_%K115569%_
                                    _%g115578115580%_
                                    (##fx- _%phi115572%_ '1)))
                                 _%$e115576%_)
                                (let ()
                                  (_%shift115567%_
                                   _%ctx115571%_
                                   '1
                                   _%make-phi/up115565%_
                                   _%phi115572%_
                                   _%K115569%_))))
                          (let ((_%$e115584%_
                                 (##unchecked-structure-ref
                                  _%ctx115571%_
                                  '5
                                  '#f
                                  '#f)))
                            (if _%$e115584%_
                                ((lambda (_%g115586115588%_)
                                   (_%K115569%_
                                    _%g115586115588%_
                                    (##fx+ _%phi115572%_ '1)))
                                 _%$e115584%_)
                                (let ()
                                  (_%shift115567%_
                                   _%ctx115571%_
                                   '-1
                                   _%make-phi/down115566%_
                                   _%phi115572%_
                                   _%K115569%_))))))
                    (let () _%ctx115571%_)))))))
    (define gx#core-context-get
      (lambda (_%ctx115558%_ _%key115559%_)
        (hash-get
         (##unchecked-structure-ref _%ctx115558%_ '2 '#f '#f)
         _%key115559%_)))
    (define gx#core-context-put!
      (lambda (_%ctx115554%_ _%key115555%_ _%val115556%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx115554%_ '2 '#f '#f)
         _%key115555%_
         _%val115556%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx115540%_ _%key115541%_)
        (let _%lp115543%_ ((_%ctx115545%_ _%ctx115540%_))
          (let ((_%$e115547%_
                 (gx#core-context-get _%ctx115545%_ _%key115541%_)))
            (if _%$e115547%_
                (values _%$e115547%_)
                (let ((_%$e115550%_
                       (if (##structure-instance-of?
                            _%ctx115545%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx115545%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e115550%_
                      (_%lp115543%_ _%$e115550%_)
                      (let () '#f))))))))
    (define gx#core-context-bind!
      (lambda (_%ctx115529%_ _%key115530%_ _%val115531%_ _%rebind115532%_)
        (let ((_%$e115534%_ (gx#core-context-get _%ctx115529%_ _%key115530%_)))
          (if _%$e115534%_
              ((lambda (_%xval115537%_)
                 (gx#core-context-put!
                  _%ctx115529%_
                  _%key115530%_
                  (_%rebind115532%_ _%xval115537%_)))
               _%$e115534%_)
              (let ()
                (gx#core-context-put!
                 _%ctx115529%_
                 _%key115530%_
                 _%val115531%_))))))
    (define gx#core-context-top__%
      (lambda (_%ctx115504%_ _%stop?115505%_)
        (let _%lp115507%_ ((_%ctx115509%_ _%ctx115504%_))
          (if (_%stop?115505%_ _%ctx115509%_)
              (let () _%ctx115509%_)
              (if (##structure-instance-of? _%ctx115509%_ 'gx#phi-context::t)
                  (let ()
                    (_%lp115507%_
                     (##unchecked-structure-ref _%ctx115509%_ '3 '#f '#f)))
                  (let () '#f))))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx115518%_ (gx#current-expander-context))
               (_%stop?115520%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115518%_ _%stop?115520%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx115522%_)
        (let ((_%stop?115524%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115522%_ _%stop?115524%_))))
    (define gx#core-context-top
      (lambda _g118348_
        (let ((_g118347_ (##length _g118348_)))
          (cond ((##fx= _g118347_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g118348_))
                ((##fx= _g118347_ 1)
                 (apply (lambda (_%ctx115522%_)
                          (gx#core-context-top__1 _%ctx115522%_))
                        _g118348_))
                ((##fx= _g118347_ 2)
                 (apply (lambda (_%ctx115526%_ _%stop?115527%_)
                          (gx#core-context-top__%
                           _%ctx115526%_
                           _%stop?115527%_))
                        _g118348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g118348_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx115489%_)
        (let _%lp115491%_ ((_%ctx115493%_ _%ctx115489%_))
          (if (##structure-instance-of? _%ctx115493%_ 'gx#phi-context::t)
              (_%lp115491%_
               (##unchecked-structure-ref _%ctx115493%_ '3 '#f '#f))
              _%ctx115493%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx115499%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx115499%_))))
    (define gx#core-context-root
      (lambda _g118350_
        (let ((_g118349_ (##length _g118350_)))
          (cond ((##fx= _g118349_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g118350_))
                ((##fx= _g118349_ 1)
                 (apply (lambda (_%ctx115501%_)
                          (gx#core-context-root__% _%ctx115501%_))
                        _g118350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g118350_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx115471%_ . _%ignore115472%_)
        (let ((_%$e115474%_ (gx#current-expander-allow-rebind?)))
          (if _%$e115474%_
              _%$e115474%_
              (if (##structure-instance-of? _%ctx115471%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx115471%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx115471%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx115481%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx115481%_))))
    (define gx#core-context-rebind?
      (lambda _g118352_
        (let ((_g118351_ (##length _g118352_)))
          (cond ((##fx= _g118351_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g118352_))
                ((##fx= _g118351_ 1)
                 (apply (lambda (_%ctx115483%_)
                          (gx#core-context-rebind?__% _%ctx115483%_))
                        _g118352_))
                ((##fx>= _g118351_ 1)
                 (apply gx#core-context-rebind?__% _g118352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g118352_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx115454%_)
        (let ((_%$e115456%_ (gx#core-context-top__1 _%ctx115454%_)))
          (if _%$e115456%_
              ((lambda (_%ctx115459%_)
                 (if (##structure-instance-of?
                      _%ctx115459%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx115459%_ '6 '#f '#f)
                     '#f))
               _%$e115456%_)
              (let () '#f)))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx115466%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx115466%_))))
    (define gx#core-context-namespace
      (lambda _g118354_
        (let ((_g118353_ (##length _g118354_)))
          (cond ((##fx= _g118353_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g118354_))
                ((##fx= _g118353_ 1)
                 (apply (lambda (_%ctx115468%_)
                          (gx#core-context-namespace__% _%ctx115468%_))
                        _g118354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g118354_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind115440%_ _%is?115441%_)
        (if (##structure-direct-instance-of?
             _%bind115440%_
             'gx#syntax-binding::t)
            (_%is?115441%_
             (##unchecked-structure-ref _%bind115440%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind115446%_)
        (let ((_%is?115448%_ gx#expander?))
          (gx#expander-binding?__% _%bind115446%_ _%is?115448%_))))
    (define gx#expander-binding?
      (lambda _g118356_
        (let ((_g118355_ (##length _g118356_)))
          (cond ((##fx= _g118355_ 1)
                 (apply (lambda (_%bind115446%_)
                          (gx#expander-binding?__0 _%bind115446%_))
                        _g118356_))
                ((##fx= _g118355_ 2)
                 (apply (lambda (_%bind115450%_ _%is?115451%_)
                          (gx#expander-binding?__%
                           _%bind115450%_
                           _%is?115451%_))
                        _g118356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g118356_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind115437%_)
        (gx#expander-binding?__% _%bind115437%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind115435%_)
        (gx#expander-binding?__% _%bind115435%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind115429%_)
        (letrec ((_%direct-special-form?115431%_
                  (lambda (_%obj115433%_)
                    (##structure-direct-instance-of?
                     _%obj115433%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind115429%_
           _%direct-special-form?115431%_))))
    (define gx#special-form-binding?
      (lambda (_%bind115427%_)
        (gx#expander-binding?__% _%bind115427%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind115418%_)
        (letrec ((_%feature?115420%_
                  (lambda (_%e115422%_)
                    (let ((_%$e115424%_
                           (##structure-instance-of?
                            _%e115422%_
                            'gx#feature-expander::t)))
                      (if _%$e115424%_
                          _%$e115424%_
                          (##structure-instance-of?
                           _%e115422%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind115418%_ _%feature?115420%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind115416%_)
        (gx#expander-binding?__% _%bind115416%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id115403%_ _%bound?115404%_)
        (if (gx#identifier? _%id115403%_)
            (_%bound?115404%_ (gx#resolve-identifier__0 _%id115403%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id115409%_)
        (let ((_%bound?115411%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id115409%_ _%bound?115411%_))))
    (define gx#core-bound-identifier?
      (lambda _g118358_
        (let ((_g118357_ (##length _g118358_)))
          (cond ((##fx= _g118357_ 1)
                 (apply (lambda (_%id115409%_)
                          (gx#core-bound-identifier?__0 _%id115409%_))
                        _g118358_))
                ((##fx= _g118357_ 2)
                 (apply (lambda (_%id115413%_ _%bound?115414%_)
                          (gx#core-bound-identifier?__%
                           _%id115413%_
                           _%bound?115414%_))
                        _g118358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g118358_))))))
    (define gx#core-identifier=?
      (lambda (_%x115393%_ _%y115394%_)
        (letrec ((_%y=?115396%_
                  (lambda (_%xid115400%_)
                    ((if (list? _%y115394%_) memq eq?)
                     _%xid115400%_
                     _%y115394%_))))
          (let ((_%bind115398%_ (gx#resolve-identifier__0 _%x115393%_)))
            (if (##structure-instance-of? _%bind115398%_ 'gx#binding::t)
                (_%y=?115396%_
                 (##unchecked-structure-ref _%bind115398%_ '1 '#f '#f))
                (_%y=?115396%_ (gx#stx-e _%x115393%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e115391%_)
        (if (interned-symbol? _%e115391%_)
            (string-index__0 (symbol->string _%e115391%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx115344%_ _%src115345%_ _%ctx115346%_ _%marks115347%_)
        (if (##structure? _%stx115344%_)
            (let ((_%$e115349%_ (gx#sealed-syntax-unwrap _%stx115344%_)))
              (if _%$e115349%_
                  (values _%$e115349%_)
                  (if (gx#identifier? _%stx115344%_)
                      (let ((_%id115353%_
                             (gx#stx-unwrap__% _%stx115344%_ _%marks115347%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id115353%_ '1 '#f '#f)
                         (let ((_%$e115355%_
                                (##unchecked-structure-ref
                                 _%id115353%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e115355%_ _%$e115355%_ _%src115345%_))
                         _%ctx115346%_
                         (##unchecked-structure-ref _%id115353%_ '3 '#f '#f)))
                      (let ()
                        (##structure
                         gx#syntax-quote::t
                         (gx#stx-e _%stx115344%_)
                         (let ((_%$e115359%_ (gx#stx-source _%stx115344%_)))
                           (if _%$e115359%_ _%$e115359%_ _%src115345%_))
                         _%ctx115346%_
                         (reverse _%marks115347%_))))))
            (##structure
             gx#syntax-quote::t
             _%stx115344%_
             _%src115345%_
             _%ctx115346%_
             (reverse _%marks115347%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx115365%_)
        (let* ((_%src115367%_ '#f)
               (_%ctx115369%_ (gx#current-expander-context))
               (_%marks115371%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115365%_
           _%src115367%_
           _%ctx115369%_
           _%marks115371%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx115373%_ _%src115374%_)
        (let* ((_%ctx115376%_ (gx#current-expander-context))
               (_%marks115378%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115373%_
           _%src115374%_
           _%ctx115376%_
           _%marks115378%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx115380%_ _%src115381%_ _%ctx115382%_)
        (let ((_%marks115384%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115380%_
           _%src115381%_
           _%ctx115382%_
           _%marks115384%_))))
    (define gx#core-quote-syntax
      (lambda _g118360_
        (let ((_g118359_ (##length _g118360_)))
          (cond ((##fx= _g118359_ 1)
                 (apply (lambda (_%stx115365%_)
                          (gx#core-quote-syntax__0 _%stx115365%_))
                        _g118360_))
                ((##fx= _g118359_ 2)
                 (apply (lambda (_%stx115373%_ _%src115374%_)
                          (gx#core-quote-syntax__1
                           _%stx115373%_
                           _%src115374%_))
                        _g118360_))
                ((##fx= _g118359_ 3)
                 (apply (lambda (_%stx115380%_ _%src115381%_ _%ctx115382%_)
                          (gx#core-quote-syntax__2
                           _%stx115380%_
                           _%src115381%_
                           _%ctx115382%_))
                        _g118360_))
                ((##fx= _g118359_ 4)
                 (apply (lambda (_%stx115386%_
                                 _%src115387%_
                                 _%ctx115388%_
                                 _%marks115389%_)
                          (gx#core-quote-syntax__%
                           _%stx115386%_
                           _%src115387%_
                           _%ctx115388%_
                           _%marks115389%_))
                        _g118360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g118360_))))))
    (define gx#core-cons
      (lambda (_%hd115340%_ _%tl115341%_)
        (cons (gx#core-quote-syntax__0 _%hd115340%_) _%tl115341%_)))
    (define gx#core-list
      (lambda (_%hd115337%_ . _%rest115338%_)
        (cons (gx#core-quote-syntax__0 _%hd115337%_) _%rest115338%_)))
    (define gx#core-cons*
      (lambda (_%hd115334%_ . _%rest115335%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd115334%_) _%rest115335%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path115303%_ _%rel115304%_)
        (let ((_%path115321%_ (gx#stx-e _%stx-path115303%_))
              (_%reldir115322%_
               (let _%lp115306%_ ((_%relsrc115308%_
                                   (let ((_%$e115318%_
                                          (gx#stx-source _%stx-path115303%_)))
                                     (if _%$e115318%_
                                         _%$e115318%_
                                         _%rel115304%_))))
                 (if (##structure-instance-of? _%relsrc115308%_ 'gerbil#AST::t)
                     (let ()
                       (_%lp115306%_
                        (let ((_%$e115311%_ (gx#stx-source _%relsrc115308%_)))
                          (if _%$e115311%_
                              _%$e115311%_
                              (gx#stx-e _%relsrc115308%_)))))
                     (if (source-location-path? _%relsrc115308%_)
                         (let ()
                           (path-directory
                            (source-location-path _%relsrc115308%_)))
                         (if (string? _%relsrc115308%_)
                             (let () (path-directory _%relsrc115308%_))
                             (if (not (null? (gx#current-expander-path)))
                                 (let ()
                                   (path-directory
                                    (car (gx#current-expander-path))))
                                 (let () (current-directory)))))))))
          (path-expand _%path115321%_ (path-normalize _%reldir115322%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path115327%_)
        (let ((_%rel115329%_ '#f))
          (gx#core-resolve-path__% _%stx-path115327%_ _%rel115329%_))))
    (define gx#core-resolve-path
      (lambda _g118362_
        (let ((_g118361_ (##length _g118362_)))
          (cond ((##fx= _g118361_ 1)
                 (apply (lambda (_%stx-path115327%_)
                          (gx#core-resolve-path__0 _%stx-path115327%_))
                        _g118362_))
                ((##fx= _g118361_ 2)
                 (apply (lambda (_%stx-path115331%_ _%rel115332%_)
                          (gx#core-resolve-path__%
                           _%stx-path115331%_
                           _%rel115332%_))
                        _g118362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g118362_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr115259%_ _%ctx115260%_)
        (let* ((_%repr115261115268%_ _%repr115259%_)
               (_%E115263115272%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr115261115268%_
                         '([phi . subs]))
                  '#!void))
               (_%K115264115280%_
                (lambda (_%subs115275%_ _%phi115276%_)
                  (let ((_%subst115278%_
                         (if (not (null? _%subs115275%_))
                             (list->hash-table-eq _%subs115275%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst115278%_
                     _%ctx115260%_
                     _%phi115276%_
                     '#f)))))
          (if (##pair? _%repr115261115268%_)
              (let ((_%hd115265115283%_ (##car _%repr115261115268%_))
                    (_%tl115266115285%_ (##cdr _%repr115261115268%_)))
                (let* ((_%phi115288%_ _%hd115265115283%_)
                       (_%subs115290%_ _%tl115266115285%_))
                  (_%K115264115280%_ _%subs115290%_ _%phi115288%_)))
              (_%E115263115272%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr115295%_)
        (let ((_%ctx115297%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr115295%_ _%ctx115297%_))))
    (define gx#core-deserialize-mark
      (lambda _g118364_
        (let ((_g118363_ (##length _g118364_)))
          (cond ((##fx= _g118363_ 1)
                 (apply (lambda (_%repr115295%_)
                          (gx#core-deserialize-mark__0 _%repr115295%_))
                        _g118364_))
                ((##fx= _g118363_ 2)
                 (apply (lambda (_%repr115299%_ _%ctx115300%_)
                          (gx#core-deserialize-mark__%
                           _%repr115299%_
                           _%ctx115300%_))
                        _g118364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g118364_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx115256%_)
        (gx#stx-rewrap _%stx115256%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx115254%_)
        (gx#stx-unwrap__% _%stx115254%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx115224%_)
        (let* ((_%g115225115233%_ (gx#current-expander-marks))
               (_%else115227115241%_ (lambda () _%stx115224%_))
               (_%K115229115246%_
                (lambda (_%hd115244%_)
                  (gx#stx-apply-mark _%stx115224%_ _%hd115244%_))))
          (if (##pair? _%g115225115233%_)
              (let* ((_%hd115230115249%_ (##car _%g115225115233%_))
                     (_%hd115252%_ _%hd115230115249%_))
                (_%K115229115246%_ _%hd115252%_))
              (_%else115227115241%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx115209%_ _%E115210%_)
        (let ((_%bind115212%_ (gx#resolve-identifier__0 _%stx115209%_)))
          (if (##structure-direct-instance-of?
               _%bind115212%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind115212%_ '4 '#f '#f)
              (_%E115210%_ _%stx115209%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx115217%_)
        (let ((_%E115219%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx115217%_ _%E115219%_))))
    (define gx#syntax-local-e
      (lambda _g118366_
        (let ((_g118365_ (##length _g118366_)))
          (cond ((##fx= _g118365_ 1)
                 (apply (lambda (_%stx115217%_)
                          (gx#syntax-local-e__0 _%stx115217%_))
                        _g118366_))
                ((##fx= _g118365_ 2)
                 (apply (lambda (_%stx115221%_ _%E115222%_)
                          (gx#syntax-local-e__% _%stx115221%_ _%E115222%_))
                        _g118366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g118366_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx115193%_ _%E115194%_)
        (let ((_%e115196%_ (gx#syntax-local-e__% _%stx115193%_ _%E115194%_)))
          (if (##structure-instance-of? _%e115196%_ 'gx#expander::t)
              (##structure-ref _%e115196%_ '1 gx#expander::t '#f)
              _%e115196%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx115201%_)
        (let ((_%E115203%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx115201%_ _%E115203%_))))
    (define gx#syntax-local-value
      (lambda _g118368_
        (let ((_g118367_ (##length _g118368_)))
          (cond ((##fx= _g118367_ 1)
                 (apply (lambda (_%stx115201%_)
                          (gx#syntax-local-value__0 _%stx115201%_))
                        _g118368_))
                ((##fx= _g118367_ 2)
                 (apply (lambda (_%stx115205%_ _%E115206%_)
                          (gx#syntax-local-value__% _%stx115205%_ _%E115206%_))
                        _g118368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g118368_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx115190%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx115190%_)))))
