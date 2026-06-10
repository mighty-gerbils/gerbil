(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1781119046)
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
      (make-class-type
       'gx#expander-context::t
       'expander-context
       (list)
       '(id table)
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#expander-context? (make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _%$args157597%_
        (apply make-instance gx#expander-context::t _%$args157597%_)))
    (define gx#expander-context-id
      (make-class-slot-accessor gx#expander-context::t 'id))
    (define gx#expander-context-table
      (make-class-slot-accessor gx#expander-context::t 'table))
    (define gx#expander-context-id-set!
      (make-class-slot-mutator gx#expander-context::t 'id))
    (define gx#expander-context-table-set!
      (make-class-slot-mutator gx#expander-context::t 'table))
    (define gx#&expander-context-id
      (make-class-slot-unchecked-accessor gx#expander-context::t 'id))
    (define gx#&expander-context-table
      (make-class-slot-unchecked-accessor gx#expander-context::t 'table))
    (define gx#&expander-context-id-set!
      (make-class-slot-unchecked-mutator gx#expander-context::t 'id))
    (define gx#&expander-context-table-set!
      (make-class-slot-unchecked-mutator gx#expander-context::t 'table))
    (define gx#root-context::t
      (make-class-type
       'gx#root-context::t
       'root-context
       (list gx#expander-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#root-context? (make-class-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _%$args157594%_
        (apply make-instance gx#root-context::t _%$args157594%_)))
    (define gx#root-context-id
      (make-class-slot-accessor gx#root-context::t 'id))
    (define gx#root-context-table
      (make-class-slot-accessor gx#root-context::t 'table))
    (define gx#root-context-id-set!
      (make-class-slot-mutator gx#root-context::t 'id))
    (define gx#root-context-table-set!
      (make-class-slot-mutator gx#root-context::t 'table))
    (define gx#&root-context-id
      (make-class-slot-unchecked-accessor gx#root-context::t 'id))
    (define gx#&root-context-table
      (make-class-slot-unchecked-accessor gx#root-context::t 'table))
    (define gx#&root-context-id-set!
      (make-class-slot-unchecked-mutator gx#root-context::t 'id))
    (define gx#&root-context-table-set!
      (make-class-slot-unchecked-mutator gx#root-context::t 'table))
    (define gx#phi-context::t
      (make-class-type
       'gx#phi-context::t
       'phi-context
       (list gx#expander-context::t)
       '(super up down)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#phi-context? (make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _%$args157591%_
        (apply make-instance gx#phi-context::t _%$args157591%_)))
    (define gx#phi-context-super
      (make-class-slot-accessor gx#phi-context::t 'super))
    (define gx#phi-context-up (make-class-slot-accessor gx#phi-context::t 'up))
    (define gx#phi-context-down
      (make-class-slot-accessor gx#phi-context::t 'down))
    (define gx#phi-context-id (make-class-slot-accessor gx#phi-context::t 'id))
    (define gx#phi-context-table
      (make-class-slot-accessor gx#phi-context::t 'table))
    (define gx#phi-context-super-set!
      (make-class-slot-mutator gx#phi-context::t 'super))
    (define gx#phi-context-up-set!
      (make-class-slot-mutator gx#phi-context::t 'up))
    (define gx#phi-context-down-set!
      (make-class-slot-mutator gx#phi-context::t 'down))
    (define gx#phi-context-id-set!
      (make-class-slot-mutator gx#phi-context::t 'id))
    (define gx#phi-context-table-set!
      (make-class-slot-mutator gx#phi-context::t 'table))
    (define gx#&phi-context-super
      (make-class-slot-unchecked-accessor gx#phi-context::t 'super))
    (define gx#&phi-context-up
      (make-class-slot-unchecked-accessor gx#phi-context::t 'up))
    (define gx#&phi-context-down
      (make-class-slot-unchecked-accessor gx#phi-context::t 'down))
    (define gx#&phi-context-id
      (make-class-slot-unchecked-accessor gx#phi-context::t 'id))
    (define gx#&phi-context-table
      (make-class-slot-unchecked-accessor gx#phi-context::t 'table))
    (define gx#&phi-context-super-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'super))
    (define gx#&phi-context-up-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'up))
    (define gx#&phi-context-down-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'down))
    (define gx#&phi-context-id-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'id))
    (define gx#&phi-context-table-set!
      (make-class-slot-unchecked-mutator gx#phi-context::t 'table))
    (define gx#top-context::t
      (make-class-type
       'gx#top-context::t
       'top-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-context? (make-class-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _%$args157588%_
        (apply make-instance gx#top-context::t _%$args157588%_)))
    (define gx#top-context-super
      (make-class-slot-accessor gx#top-context::t 'super))
    (define gx#top-context-up (make-class-slot-accessor gx#top-context::t 'up))
    (define gx#top-context-down
      (make-class-slot-accessor gx#top-context::t 'down))
    (define gx#top-context-id (make-class-slot-accessor gx#top-context::t 'id))
    (define gx#top-context-table
      (make-class-slot-accessor gx#top-context::t 'table))
    (define gx#top-context-super-set!
      (make-class-slot-mutator gx#top-context::t 'super))
    (define gx#top-context-up-set!
      (make-class-slot-mutator gx#top-context::t 'up))
    (define gx#top-context-down-set!
      (make-class-slot-mutator gx#top-context::t 'down))
    (define gx#top-context-id-set!
      (make-class-slot-mutator gx#top-context::t 'id))
    (define gx#top-context-table-set!
      (make-class-slot-mutator gx#top-context::t 'table))
    (define gx#&top-context-super
      (make-class-slot-unchecked-accessor gx#top-context::t 'super))
    (define gx#&top-context-up
      (make-class-slot-unchecked-accessor gx#top-context::t 'up))
    (define gx#&top-context-down
      (make-class-slot-unchecked-accessor gx#top-context::t 'down))
    (define gx#&top-context-id
      (make-class-slot-unchecked-accessor gx#top-context::t 'id))
    (define gx#&top-context-table
      (make-class-slot-unchecked-accessor gx#top-context::t 'table))
    (define gx#&top-context-super-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'super))
    (define gx#&top-context-up-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'up))
    (define gx#&top-context-down-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'down))
    (define gx#&top-context-id-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'id))
    (define gx#&top-context-table-set!
      (make-class-slot-unchecked-mutator gx#top-context::t 'table))
    (define gx#module-context::t
      (make-class-type
       'gx#module-context::t
       'module-context
       (list gx#top-context::t)
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#module-context? (make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _%$args157585%_
        (apply make-instance gx#module-context::t _%$args157585%_)))
    (define gx#module-context-ns
      (make-class-slot-accessor gx#module-context::t 'ns))
    (define gx#module-context-path
      (make-class-slot-accessor gx#module-context::t 'path))
    (define gx#module-context-import
      (make-class-slot-accessor gx#module-context::t 'import))
    (define gx#module-context-export
      (make-class-slot-accessor gx#module-context::t 'export))
    (define gx#module-context-e
      (make-class-slot-accessor gx#module-context::t 'e))
    (define gx#module-context-code
      (make-class-slot-accessor gx#module-context::t 'code))
    (define gx#module-context-super
      (make-class-slot-accessor gx#module-context::t 'super))
    (define gx#module-context-up
      (make-class-slot-accessor gx#module-context::t 'up))
    (define gx#module-context-down
      (make-class-slot-accessor gx#module-context::t 'down))
    (define gx#module-context-id
      (make-class-slot-accessor gx#module-context::t 'id))
    (define gx#module-context-table
      (make-class-slot-accessor gx#module-context::t 'table))
    (define gx#module-context-ns-set!
      (make-class-slot-mutator gx#module-context::t 'ns))
    (define gx#module-context-path-set!
      (make-class-slot-mutator gx#module-context::t 'path))
    (define gx#module-context-import-set!
      (make-class-slot-mutator gx#module-context::t 'import))
    (define gx#module-context-export-set!
      (make-class-slot-mutator gx#module-context::t 'export))
    (define gx#module-context-e-set!
      (make-class-slot-mutator gx#module-context::t 'e))
    (define gx#module-context-code-set!
      (make-class-slot-mutator gx#module-context::t 'code))
    (define gx#module-context-super-set!
      (make-class-slot-mutator gx#module-context::t 'super))
    (define gx#module-context-up-set!
      (make-class-slot-mutator gx#module-context::t 'up))
    (define gx#module-context-down-set!
      (make-class-slot-mutator gx#module-context::t 'down))
    (define gx#module-context-id-set!
      (make-class-slot-mutator gx#module-context::t 'id))
    (define gx#module-context-table-set!
      (make-class-slot-mutator gx#module-context::t 'table))
    (define gx#&module-context-ns
      (make-class-slot-unchecked-accessor gx#module-context::t 'ns))
    (define gx#&module-context-path
      (make-class-slot-unchecked-accessor gx#module-context::t 'path))
    (define gx#&module-context-import
      (make-class-slot-unchecked-accessor gx#module-context::t 'import))
    (define gx#&module-context-export
      (make-class-slot-unchecked-accessor gx#module-context::t 'export))
    (define gx#&module-context-e
      (make-class-slot-unchecked-accessor gx#module-context::t 'e))
    (define gx#&module-context-code
      (make-class-slot-unchecked-accessor gx#module-context::t 'code))
    (define gx#&module-context-super
      (make-class-slot-unchecked-accessor gx#module-context::t 'super))
    (define gx#&module-context-up
      (make-class-slot-unchecked-accessor gx#module-context::t 'up))
    (define gx#&module-context-down
      (make-class-slot-unchecked-accessor gx#module-context::t 'down))
    (define gx#&module-context-id
      (make-class-slot-unchecked-accessor gx#module-context::t 'id))
    (define gx#&module-context-table
      (make-class-slot-unchecked-accessor gx#module-context::t 'table))
    (define gx#&module-context-ns-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'ns))
    (define gx#&module-context-path-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'path))
    (define gx#&module-context-import-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'import))
    (define gx#&module-context-export-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'export))
    (define gx#&module-context-e-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'e))
    (define gx#&module-context-code-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'code))
    (define gx#&module-context-super-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'super))
    (define gx#&module-context-up-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'up))
    (define gx#&module-context-down-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'down))
    (define gx#&module-context-id-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'id))
    (define gx#&module-context-table-set!
      (make-class-slot-unchecked-mutator gx#module-context::t 'table))
    (define gx#prelude-context::t
      (make-class-type
       'gx#prelude-context::t
       'prelude-context
       (list gx#top-context::t)
       '(path import e)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#prelude-context? (make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _%$args157582%_
        (apply make-instance gx#prelude-context::t _%$args157582%_)))
    (define gx#prelude-context-path
      (make-class-slot-accessor gx#prelude-context::t 'path))
    (define gx#prelude-context-import
      (make-class-slot-accessor gx#prelude-context::t 'import))
    (define gx#prelude-context-e
      (make-class-slot-accessor gx#prelude-context::t 'e))
    (define gx#prelude-context-super
      (make-class-slot-accessor gx#prelude-context::t 'super))
    (define gx#prelude-context-up
      (make-class-slot-accessor gx#prelude-context::t 'up))
    (define gx#prelude-context-down
      (make-class-slot-accessor gx#prelude-context::t 'down))
    (define gx#prelude-context-id
      (make-class-slot-accessor gx#prelude-context::t 'id))
    (define gx#prelude-context-table
      (make-class-slot-accessor gx#prelude-context::t 'table))
    (define gx#prelude-context-path-set!
      (make-class-slot-mutator gx#prelude-context::t 'path))
    (define gx#prelude-context-import-set!
      (make-class-slot-mutator gx#prelude-context::t 'import))
    (define gx#prelude-context-e-set!
      (make-class-slot-mutator gx#prelude-context::t 'e))
    (define gx#prelude-context-super-set!
      (make-class-slot-mutator gx#prelude-context::t 'super))
    (define gx#prelude-context-up-set!
      (make-class-slot-mutator gx#prelude-context::t 'up))
    (define gx#prelude-context-down-set!
      (make-class-slot-mutator gx#prelude-context::t 'down))
    (define gx#prelude-context-id-set!
      (make-class-slot-mutator gx#prelude-context::t 'id))
    (define gx#prelude-context-table-set!
      (make-class-slot-mutator gx#prelude-context::t 'table))
    (define gx#&prelude-context-path
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'path))
    (define gx#&prelude-context-import
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'import))
    (define gx#&prelude-context-e
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'e))
    (define gx#&prelude-context-super
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'super))
    (define gx#&prelude-context-up
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'up))
    (define gx#&prelude-context-down
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'down))
    (define gx#&prelude-context-id
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'id))
    (define gx#&prelude-context-table
      (make-class-slot-unchecked-accessor gx#prelude-context::t 'table))
    (define gx#&prelude-context-path-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'path))
    (define gx#&prelude-context-import-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'import))
    (define gx#&prelude-context-e-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'e))
    (define gx#&prelude-context-super-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'super))
    (define gx#&prelude-context-up-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'up))
    (define gx#&prelude-context-down-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'down))
    (define gx#&prelude-context-id-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'id))
    (define gx#&prelude-context-table-set!
      (make-class-slot-unchecked-mutator gx#prelude-context::t 'table))
    (define gx#local-context::t
      (make-class-type
       'gx#local-context::t
       'local-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-context? (make-class-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _%$args157579%_
        (apply make-instance gx#local-context::t _%$args157579%_)))
    (define gx#local-context-super
      (make-class-slot-accessor gx#local-context::t 'super))
    (define gx#local-context-up
      (make-class-slot-accessor gx#local-context::t 'up))
    (define gx#local-context-down
      (make-class-slot-accessor gx#local-context::t 'down))
    (define gx#local-context-id
      (make-class-slot-accessor gx#local-context::t 'id))
    (define gx#local-context-table
      (make-class-slot-accessor gx#local-context::t 'table))
    (define gx#local-context-super-set!
      (make-class-slot-mutator gx#local-context::t 'super))
    (define gx#local-context-up-set!
      (make-class-slot-mutator gx#local-context::t 'up))
    (define gx#local-context-down-set!
      (make-class-slot-mutator gx#local-context::t 'down))
    (define gx#local-context-id-set!
      (make-class-slot-mutator gx#local-context::t 'id))
    (define gx#local-context-table-set!
      (make-class-slot-mutator gx#local-context::t 'table))
    (define gx#&local-context-super
      (make-class-slot-unchecked-accessor gx#local-context::t 'super))
    (define gx#&local-context-up
      (make-class-slot-unchecked-accessor gx#local-context::t 'up))
    (define gx#&local-context-down
      (make-class-slot-unchecked-accessor gx#local-context::t 'down))
    (define gx#&local-context-id
      (make-class-slot-unchecked-accessor gx#local-context::t 'id))
    (define gx#&local-context-table
      (make-class-slot-unchecked-accessor gx#local-context::t 'table))
    (define gx#&local-context-super-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'super))
    (define gx#&local-context-up-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'up))
    (define gx#&local-context-down-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'down))
    (define gx#&local-context-id-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'id))
    (define gx#&local-context-table-set!
      (make-class-slot-unchecked-mutator gx#local-context::t 'table))
    (define gx#phi-context:::init!
      (let ((_%$%opt-lambda157550157567%_
             (lambda (_%self157552%_ _%id157553%_ _%super157554%_)
               (let ((_%self157557%_ _%self157552%_))
                 (struct-instance-init!
                  _%self157557%_
                  _%id157553%_
                  (make-hash-table-eq)
                  _%super157554%_)))))
        (lambda _g157599_
          (let ((_g157600_ (##length _g157599_)))
            (cond ((##fx= _g157600_ 2)
                   (apply (lambda (_%self157570%_ _%id157571%_)
                            (let ((_%super157573%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda157550157567%_
                               _%self157570%_
                               _%id157571%_
                               _%super157573%_)))
                          _g157599_))
                  ((##fx= _g157600_ 3)
                   (apply _%$%opt-lambda157550157567%_ _g157599_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#phi-context:::init!
                    _g157599_)))))))
    (bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!
      (let ((_%$%opt-lambda157403157419%_
             (lambda (_%self157405%_ _%super157406%_)
               (let ((_%self157409%_ _%self157405%_))
                 (struct-instance-init!
                  _%self157409%_
                  (gensym 'L)
                  (make-hash-table-eq)
                  _%super157406%_)))))
        (lambda _g157601_
          (let ((_g157602_ (##length _g157601_)))
            (cond ((##fx= _g157602_ 1)
                   (apply (lambda (_%self157422%_)
                            (let ((_%super157424%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda157403157419%_
                               _%self157422%_
                               _%super157424%_)))
                          _g157601_))
                  ((##fx= _g157602_ 2)
                   (apply _%$%opt-lambda157403157419%_ _g157601_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#local-context:::init!
                    _g157601_)))))))
    (bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
    (define gx#binding::t
      (make-class-type
       'gx#binding::t
       'binding
       (list)
       '(id key phi properties)
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#binding? (make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args157279%_
        (apply make-instance gx#binding::t _%$args157279%_)))
    (define gx#binding-id (make-class-slot-accessor gx#binding::t 'id))
    (define gx#binding-key (make-class-slot-accessor gx#binding::t 'key))
    (define gx#binding-phi (make-class-slot-accessor gx#binding::t 'phi))
    (define gx#binding-properties
      (make-class-slot-accessor gx#binding::t 'properties))
    (define gx#binding-id-set! (make-class-slot-mutator gx#binding::t 'id))
    (define gx#binding-key-set! (make-class-slot-mutator gx#binding::t 'key))
    (define gx#binding-phi-set! (make-class-slot-mutator gx#binding::t 'phi))
    (define gx#binding-properties-set!
      (make-class-slot-mutator gx#binding::t 'properties))
    (define gx#&binding-id
      (make-class-slot-unchecked-accessor gx#binding::t 'id))
    (define gx#&binding-key
      (make-class-slot-unchecked-accessor gx#binding::t 'key))
    (define gx#&binding-phi
      (make-class-slot-unchecked-accessor gx#binding::t 'phi))
    (define gx#&binding-properties
      (make-class-slot-unchecked-accessor gx#binding::t 'properties))
    (define gx#&binding-id-set!
      (make-class-slot-unchecked-mutator gx#binding::t 'id))
    (define gx#&binding-key-set!
      (make-class-slot-unchecked-mutator gx#binding::t 'key))
    (define gx#&binding-phi-set!
      (make-class-slot-unchecked-mutator gx#binding::t 'phi))
    (define gx#&binding-properties-set!
      (make-class-slot-unchecked-mutator gx#binding::t 'properties))
    (define gx#binding:::init!
      (lambda (_%self157262%_ _%id157263%_ _%key157264%_ _%phi157265%_)
        (let ((_%self157268%_ _%self157262%_))
          (gx#&binding-id-set! _%self157268%_ _%id157263%_)
          (gx#&binding-key-set! _%self157268%_ _%key157264%_)
          (gx#&binding-phi-set! _%self157268%_ _%phi157265%_))))
    (bind-method! gx#binding::t ':init! gx#binding:::init! '#f)
    (define gx#runtime-binding::t
      (make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '(type macro)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#runtime-binding? (make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args157137%_
        (apply make-instance gx#runtime-binding::t _%$args157137%_)))
    (define gx#runtime-binding-type
      (make-class-slot-accessor gx#runtime-binding::t 'type))
    (define gx#runtime-binding-macro
      (make-class-slot-accessor gx#runtime-binding::t 'macro))
    (define gx#runtime-binding-id
      (make-class-slot-accessor gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key
      (make-class-slot-accessor gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi
      (make-class-slot-accessor gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-properties
      (make-class-slot-accessor gx#runtime-binding::t 'properties))
    (define gx#runtime-binding-type-set!
      (make-class-slot-mutator gx#runtime-binding::t 'type))
    (define gx#runtime-binding-macro-set!
      (make-class-slot-mutator gx#runtime-binding::t 'macro))
    (define gx#runtime-binding-id-set!
      (make-class-slot-mutator gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key-set!
      (make-class-slot-mutator gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi-set!
      (make-class-slot-mutator gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-properties-set!
      (make-class-slot-mutator gx#runtime-binding::t 'properties))
    (define gx#&runtime-binding-type
      (make-class-slot-unchecked-accessor gx#runtime-binding::t 'type))
    (define gx#&runtime-binding-macro
      (make-class-slot-unchecked-accessor gx#runtime-binding::t 'macro))
    (define gx#&runtime-binding-id
      (make-class-slot-unchecked-accessor gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key
      (make-class-slot-unchecked-accessor gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi
      (make-class-slot-unchecked-accessor gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-properties
      (make-class-slot-unchecked-accessor gx#runtime-binding::t 'properties))
    (define gx#&runtime-binding-type-set!
      (make-class-slot-unchecked-mutator gx#runtime-binding::t 'type))
    (define gx#&runtime-binding-macro-set!
      (make-class-slot-unchecked-mutator gx#runtime-binding::t 'macro))
    (define gx#&runtime-binding-id-set!
      (make-class-slot-unchecked-mutator gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key-set!
      (make-class-slot-unchecked-mutator gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-properties-set!
      (make-class-slot-unchecked-mutator gx#runtime-binding::t 'properties))
    (define gx#local-binding::t
      (make-class-type
       'gx#local-binding::t
       'local-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-binding? (make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args157134%_
        (apply make-instance gx#local-binding::t _%$args157134%_)))
    (define gx#local-binding-type
      (make-class-slot-accessor gx#local-binding::t 'type))
    (define gx#local-binding-macro
      (make-class-slot-accessor gx#local-binding::t 'macro))
    (define gx#local-binding-id
      (make-class-slot-accessor gx#local-binding::t 'id))
    (define gx#local-binding-key
      (make-class-slot-accessor gx#local-binding::t 'key))
    (define gx#local-binding-phi
      (make-class-slot-accessor gx#local-binding::t 'phi))
    (define gx#local-binding-properties
      (make-class-slot-accessor gx#local-binding::t 'properties))
    (define gx#local-binding-type-set!
      (make-class-slot-mutator gx#local-binding::t 'type))
    (define gx#local-binding-macro-set!
      (make-class-slot-mutator gx#local-binding::t 'macro))
    (define gx#local-binding-id-set!
      (make-class-slot-mutator gx#local-binding::t 'id))
    (define gx#local-binding-key-set!
      (make-class-slot-mutator gx#local-binding::t 'key))
    (define gx#local-binding-phi-set!
      (make-class-slot-mutator gx#local-binding::t 'phi))
    (define gx#local-binding-properties-set!
      (make-class-slot-mutator gx#local-binding::t 'properties))
    (define gx#&local-binding-type
      (make-class-slot-unchecked-accessor gx#local-binding::t 'type))
    (define gx#&local-binding-macro
      (make-class-slot-unchecked-accessor gx#local-binding::t 'macro))
    (define gx#&local-binding-id
      (make-class-slot-unchecked-accessor gx#local-binding::t 'id))
    (define gx#&local-binding-key
      (make-class-slot-unchecked-accessor gx#local-binding::t 'key))
    (define gx#&local-binding-phi
      (make-class-slot-unchecked-accessor gx#local-binding::t 'phi))
    (define gx#&local-binding-properties
      (make-class-slot-unchecked-accessor gx#local-binding::t 'properties))
    (define gx#&local-binding-type-set!
      (make-class-slot-unchecked-mutator gx#local-binding::t 'type))
    (define gx#&local-binding-macro-set!
      (make-class-slot-unchecked-mutator gx#local-binding::t 'macro))
    (define gx#&local-binding-id-set!
      (make-class-slot-unchecked-mutator gx#local-binding::t 'id))
    (define gx#&local-binding-key-set!
      (make-class-slot-unchecked-mutator gx#local-binding::t 'key))
    (define gx#&local-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#local-binding::t 'phi))
    (define gx#&local-binding-properties-set!
      (make-class-slot-unchecked-mutator gx#local-binding::t 'properties))
    (define gx#top-binding::t
      (make-class-type
       'gx#top-binding::t
       'top-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-binding? (make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args157131%_
        (apply make-instance gx#top-binding::t _%$args157131%_)))
    (define gx#top-binding-type
      (make-class-slot-accessor gx#top-binding::t 'type))
    (define gx#top-binding-macro
      (make-class-slot-accessor gx#top-binding::t 'macro))
    (define gx#top-binding-id (make-class-slot-accessor gx#top-binding::t 'id))
    (define gx#top-binding-key
      (make-class-slot-accessor gx#top-binding::t 'key))
    (define gx#top-binding-phi
      (make-class-slot-accessor gx#top-binding::t 'phi))
    (define gx#top-binding-properties
      (make-class-slot-accessor gx#top-binding::t 'properties))
    (define gx#top-binding-type-set!
      (make-class-slot-mutator gx#top-binding::t 'type))
    (define gx#top-binding-macro-set!
      (make-class-slot-mutator gx#top-binding::t 'macro))
    (define gx#top-binding-id-set!
      (make-class-slot-mutator gx#top-binding::t 'id))
    (define gx#top-binding-key-set!
      (make-class-slot-mutator gx#top-binding::t 'key))
    (define gx#top-binding-phi-set!
      (make-class-slot-mutator gx#top-binding::t 'phi))
    (define gx#top-binding-properties-set!
      (make-class-slot-mutator gx#top-binding::t 'properties))
    (define gx#&top-binding-type
      (make-class-slot-unchecked-accessor gx#top-binding::t 'type))
    (define gx#&top-binding-macro
      (make-class-slot-unchecked-accessor gx#top-binding::t 'macro))
    (define gx#&top-binding-id
      (make-class-slot-unchecked-accessor gx#top-binding::t 'id))
    (define gx#&top-binding-key
      (make-class-slot-unchecked-accessor gx#top-binding::t 'key))
    (define gx#&top-binding-phi
      (make-class-slot-unchecked-accessor gx#top-binding::t 'phi))
    (define gx#&top-binding-properties
      (make-class-slot-unchecked-accessor gx#top-binding::t 'properties))
    (define gx#&top-binding-type-set!
      (make-class-slot-unchecked-mutator gx#top-binding::t 'type))
    (define gx#&top-binding-macro-set!
      (make-class-slot-unchecked-mutator gx#top-binding::t 'macro))
    (define gx#&top-binding-id-set!
      (make-class-slot-unchecked-mutator gx#top-binding::t 'id))
    (define gx#&top-binding-key-set!
      (make-class-slot-unchecked-mutator gx#top-binding::t 'key))
    (define gx#&top-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#top-binding::t 'phi))
    (define gx#&top-binding-properties-set!
      (make-class-slot-unchecked-mutator gx#top-binding::t 'properties))
    (define gx#module-binding::t
      (make-class-type
       'gx#module-binding::t
       'module-binding
       (list gx#top-binding::t)
       '(context)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#module-binding? (make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args157128%_
        (apply make-instance gx#module-binding::t _%$args157128%_)))
    (define gx#module-binding-context
      (make-class-slot-accessor gx#module-binding::t 'context))
    (define gx#module-binding-type
      (make-class-slot-accessor gx#module-binding::t 'type))
    (define gx#module-binding-macro
      (make-class-slot-accessor gx#module-binding::t 'macro))
    (define gx#module-binding-id
      (make-class-slot-accessor gx#module-binding::t 'id))
    (define gx#module-binding-key
      (make-class-slot-accessor gx#module-binding::t 'key))
    (define gx#module-binding-phi
      (make-class-slot-accessor gx#module-binding::t 'phi))
    (define gx#module-binding-properties
      (make-class-slot-accessor gx#module-binding::t 'properties))
    (define gx#module-binding-context-set!
      (make-class-slot-mutator gx#module-binding::t 'context))
    (define gx#module-binding-type-set!
      (make-class-slot-mutator gx#module-binding::t 'type))
    (define gx#module-binding-macro-set!
      (make-class-slot-mutator gx#module-binding::t 'macro))
    (define gx#module-binding-id-set!
      (make-class-slot-mutator gx#module-binding::t 'id))
    (define gx#module-binding-key-set!
      (make-class-slot-mutator gx#module-binding::t 'key))
    (define gx#module-binding-phi-set!
      (make-class-slot-mutator gx#module-binding::t 'phi))
    (define gx#module-binding-properties-set!
      (make-class-slot-mutator gx#module-binding::t 'properties))
    (define gx#&module-binding-context
      (make-class-slot-unchecked-accessor gx#module-binding::t 'context))
    (define gx#&module-binding-type
      (make-class-slot-unchecked-accessor gx#module-binding::t 'type))
    (define gx#&module-binding-macro
      (make-class-slot-unchecked-accessor gx#module-binding::t 'macro))
    (define gx#&module-binding-id
      (make-class-slot-unchecked-accessor gx#module-binding::t 'id))
    (define gx#&module-binding-key
      (make-class-slot-unchecked-accessor gx#module-binding::t 'key))
    (define gx#&module-binding-phi
      (make-class-slot-unchecked-accessor gx#module-binding::t 'phi))
    (define gx#&module-binding-properties
      (make-class-slot-unchecked-accessor gx#module-binding::t 'properties))
    (define gx#&module-binding-context-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'context))
    (define gx#&module-binding-type-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'type))
    (define gx#&module-binding-macro-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'macro))
    (define gx#&module-binding-id-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'id))
    (define gx#&module-binding-key-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'key))
    (define gx#&module-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'phi))
    (define gx#&module-binding-properties-set!
      (make-class-slot-unchecked-mutator gx#module-binding::t 'properties))
    (define gx#extern-binding::t
      (make-class-type
       'gx#extern-binding::t
       'extern-binding
       (list gx#top-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#extern-binding? (make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args157125%_
        (apply make-instance gx#extern-binding::t _%$args157125%_)))
    (define gx#extern-binding-type
      (make-class-slot-accessor gx#extern-binding::t 'type))
    (define gx#extern-binding-macro
      (make-class-slot-accessor gx#extern-binding::t 'macro))
    (define gx#extern-binding-id
      (make-class-slot-accessor gx#extern-binding::t 'id))
    (define gx#extern-binding-key
      (make-class-slot-accessor gx#extern-binding::t 'key))
    (define gx#extern-binding-phi
      (make-class-slot-accessor gx#extern-binding::t 'phi))
    (define gx#extern-binding-properties
      (make-class-slot-accessor gx#extern-binding::t 'properties))
    (define gx#extern-binding-type-set!
      (make-class-slot-mutator gx#extern-binding::t 'type))
    (define gx#extern-binding-macro-set!
      (make-class-slot-mutator gx#extern-binding::t 'macro))
    (define gx#extern-binding-id-set!
      (make-class-slot-mutator gx#extern-binding::t 'id))
    (define gx#extern-binding-key-set!
      (make-class-slot-mutator gx#extern-binding::t 'key))
    (define gx#extern-binding-phi-set!
      (make-class-slot-mutator gx#extern-binding::t 'phi))
    (define gx#extern-binding-properties-set!
      (make-class-slot-mutator gx#extern-binding::t 'properties))
    (define gx#&extern-binding-type
      (make-class-slot-unchecked-accessor gx#extern-binding::t 'type))
    (define gx#&extern-binding-macro
      (make-class-slot-unchecked-accessor gx#extern-binding::t 'macro))
    (define gx#&extern-binding-id
      (make-class-slot-unchecked-accessor gx#extern-binding::t 'id))
    (define gx#&extern-binding-key
      (make-class-slot-unchecked-accessor gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi
      (make-class-slot-unchecked-accessor gx#extern-binding::t 'phi))
    (define gx#&extern-binding-properties
      (make-class-slot-unchecked-accessor gx#extern-binding::t 'properties))
    (define gx#&extern-binding-type-set!
      (make-class-slot-unchecked-mutator gx#extern-binding::t 'type))
    (define gx#&extern-binding-macro-set!
      (make-class-slot-unchecked-mutator gx#extern-binding::t 'macro))
    (define gx#&extern-binding-id-set!
      (make-class-slot-unchecked-mutator gx#extern-binding::t 'id))
    (define gx#&extern-binding-key-set!
      (make-class-slot-unchecked-mutator gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#extern-binding::t 'phi))
    (define gx#&extern-binding-properties-set!
      (make-class-slot-unchecked-mutator gx#extern-binding::t 'properties))
    (define gx#runtime-binding:::init! gx#binding:::init!)
    (bind-method! gx#runtime-binding::t ':init! gx#runtime-binding:::init! '#f)
    (define gx#local-binding:::init! gx#binding:::init!)
    (bind-method! gx#local-binding::t ':init! gx#local-binding:::init! '#f)
    (define gx#top-binding:::init! gx#binding:::init!)
    (bind-method! gx#top-binding::t ':init! gx#top-binding:::init! '#f)
    (define gx#module-binding:::init!
      (lambda (_%self156741%_
               _%id156742%_
               _%key156743%_
               _%phi156744%_
               _%ctx156745%_)
        (let ((_%self156748%_ _%self156741%_))
          (gx#binding:::init!
           _%self156748%_
           _%id156742%_
           _%key156743%_
           _%phi156744%_)
          (gx#&module-binding-context-set! _%self156748%_ _%ctx156745%_))))
    (bind-method! gx#module-binding::t ':init! gx#module-binding:::init! '#f)
    (define gx#extern-binding:::init! gx#binding:::init!)
    (bind-method! gx#extern-binding::t ':init! gx#extern-binding:::init! '#f)
    (define gx#syntax-binding::t
      (make-class-type
       'gx#syntax-binding::t
       'syntax-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-binding? (make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args156494%_
        (apply make-instance gx#syntax-binding::t _%$args156494%_)))
    (define gx#syntax-binding-e
      (make-class-slot-accessor gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id
      (make-class-slot-accessor gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key
      (make-class-slot-accessor gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi
      (make-class-slot-accessor gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-properties
      (make-class-slot-accessor gx#syntax-binding::t 'properties))
    (define gx#syntax-binding-e-set!
      (make-class-slot-mutator gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id-set!
      (make-class-slot-mutator gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key-set!
      (make-class-slot-mutator gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi-set!
      (make-class-slot-mutator gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-properties-set!
      (make-class-slot-mutator gx#syntax-binding::t 'properties))
    (define gx#&syntax-binding-e
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-properties
      (make-class-slot-unchecked-accessor gx#syntax-binding::t 'properties))
    (define gx#&syntax-binding-e-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-properties-set!
      (make-class-slot-unchecked-mutator gx#syntax-binding::t 'properties))
    (define gx#import-binding::t
      (make-class-type
       'gx#import-binding::t
       'import-binding
       (list gx#binding::t)
       '(e context weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#import-binding? (make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args156491%_
        (apply make-instance gx#import-binding::t _%$args156491%_)))
    (define gx#import-binding-e
      (make-class-slot-accessor gx#import-binding::t 'e))
    (define gx#import-binding-context
      (make-class-slot-accessor gx#import-binding::t 'context))
    (define gx#import-binding-weak?
      (make-class-slot-accessor gx#import-binding::t 'weak?))
    (define gx#import-binding-id
      (make-class-slot-accessor gx#import-binding::t 'id))
    (define gx#import-binding-key
      (make-class-slot-accessor gx#import-binding::t 'key))
    (define gx#import-binding-phi
      (make-class-slot-accessor gx#import-binding::t 'phi))
    (define gx#import-binding-properties
      (make-class-slot-accessor gx#import-binding::t 'properties))
    (define gx#import-binding-e-set!
      (make-class-slot-mutator gx#import-binding::t 'e))
    (define gx#import-binding-context-set!
      (make-class-slot-mutator gx#import-binding::t 'context))
    (define gx#import-binding-weak?-set!
      (make-class-slot-mutator gx#import-binding::t 'weak?))
    (define gx#import-binding-id-set!
      (make-class-slot-mutator gx#import-binding::t 'id))
    (define gx#import-binding-key-set!
      (make-class-slot-mutator gx#import-binding::t 'key))
    (define gx#import-binding-phi-set!
      (make-class-slot-mutator gx#import-binding::t 'phi))
    (define gx#import-binding-properties-set!
      (make-class-slot-mutator gx#import-binding::t 'properties))
    (define gx#&import-binding-e
      (make-class-slot-unchecked-accessor gx#import-binding::t 'e))
    (define gx#&import-binding-context
      (make-class-slot-unchecked-accessor gx#import-binding::t 'context))
    (define gx#&import-binding-weak?
      (make-class-slot-unchecked-accessor gx#import-binding::t 'weak?))
    (define gx#&import-binding-id
      (make-class-slot-unchecked-accessor gx#import-binding::t 'id))
    (define gx#&import-binding-key
      (make-class-slot-unchecked-accessor gx#import-binding::t 'key))
    (define gx#&import-binding-phi
      (make-class-slot-unchecked-accessor gx#import-binding::t 'phi))
    (define gx#&import-binding-properties
      (make-class-slot-unchecked-accessor gx#import-binding::t 'properties))
    (define gx#&import-binding-e-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'e))
    (define gx#&import-binding-context-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'context))
    (define gx#&import-binding-weak?-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'weak?))
    (define gx#&import-binding-id-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'id))
    (define gx#&import-binding-key-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'key))
    (define gx#&import-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'phi))
    (define gx#&import-binding-properties-set!
      (make-class-slot-unchecked-mutator gx#import-binding::t 'properties))
    (define gx#alias-binding::t
      (make-class-type
       'gx#alias-binding::t
       'alias-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: e))))
       '#f))
    (define gx#alias-binding? (make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args156488%_
        (apply make-instance gx#alias-binding::t _%$args156488%_)))
    (define gx#alias-binding-e
      (make-class-slot-accessor gx#alias-binding::t 'e))
    (define gx#alias-binding-id
      (make-class-slot-accessor gx#alias-binding::t 'id))
    (define gx#alias-binding-key
      (make-class-slot-accessor gx#alias-binding::t 'key))
    (define gx#alias-binding-phi
      (make-class-slot-accessor gx#alias-binding::t 'phi))
    (define gx#alias-binding-properties
      (make-class-slot-accessor gx#alias-binding::t 'properties))
    (define gx#alias-binding-e-set!
      (make-class-slot-mutator gx#alias-binding::t 'e))
    (define gx#alias-binding-id-set!
      (make-class-slot-mutator gx#alias-binding::t 'id))
    (define gx#alias-binding-key-set!
      (make-class-slot-mutator gx#alias-binding::t 'key))
    (define gx#alias-binding-phi-set!
      (make-class-slot-mutator gx#alias-binding::t 'phi))
    (define gx#alias-binding-properties-set!
      (make-class-slot-mutator gx#alias-binding::t 'properties))
    (define gx#&alias-binding-e
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'e))
    (define gx#&alias-binding-id
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'id))
    (define gx#&alias-binding-key
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'phi))
    (define gx#&alias-binding-properties
      (make-class-slot-unchecked-accessor gx#alias-binding::t 'properties))
    (define gx#&alias-binding-e-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'e))
    (define gx#&alias-binding-id-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'id))
    (define gx#&alias-binding-key-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'phi))
    (define gx#&alias-binding-properties-set!
      (make-class-slot-unchecked-mutator gx#alias-binding::t 'properties))
    (define gx#syntax-binding:::init!
      (lambda (_%self156470%_
               _%id156471%_
               _%key156472%_
               _%phi156473%_
               _%e156474%_)
        (let ((_%self156477%_ _%self156470%_))
          (gx#binding:::init!
           _%self156477%_
           _%id156471%_
           _%key156472%_
           _%phi156473%_)
          (gx#&syntax-binding-e-set! _%self156477%_ _%e156474%_))))
    (bind-method! gx#syntax-binding::t ':init! gx#syntax-binding:::init! '#f)
    (define gx#import-binding:::init!
      (lambda (_%self156328%_
               _%id156329%_
               _%key156330%_
               _%phi156331%_
               _%e156332%_
               _%ctx156333%_
               _%weak?156334%_)
        (let ((_%self156337%_ _%self156328%_))
          (gx#binding:::init!
           _%self156337%_
           _%id156329%_
           _%key156330%_
           _%phi156331%_)
          (gx#&import-binding-e-set! _%self156337%_ _%e156332%_)
          (gx#&import-binding-context-set! _%self156337%_ _%ctx156333%_)
          (gx#&import-binding-weak?-set! _%self156337%_ _%weak?156334%_))))
    (bind-method! gx#import-binding::t ':init! gx#import-binding:::init! '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self156188%_
               _%id156189%_
               _%key156190%_
               _%phi156191%_
               _%e156192%_)
        (let ((_%self156195%_ _%self156188%_))
          (gx#binding:::init!
           _%self156195%_
           _%id156189%_
           _%key156190%_
           _%phi156191%_)
          (gx#&alias-binding-e-set! _%self156195%_ _%e156192%_))))
    (bind-method! gx#alias-binding::t ':init! gx#alias-binding:::init! '#f)
    (define gx#expander::t
      (make-class-type
       'gx#expander::t
       'expander
       (list)
       '(e)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander? (make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args156063%_
        (apply make-instance gx#expander::t _%$args156063%_)))
    (define gx#expander-e (make-class-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (make-class-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (make-class-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (make-class-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (make-class-type
       'gx#core-expander::t
       'core-expander
       (list gx#expander::t)
       '(id compile-top)
       (cons (cons 'struct: '#t) '((print: id)))
       '#f))
    (define gx#core-expander? (make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _%$args156060%_
        (apply make-instance gx#core-expander::t _%$args156060%_)))
    (define gx#core-expander-id
      (make-class-slot-accessor gx#core-expander::t 'id))
    (define gx#core-expander-compile-top
      (make-class-slot-accessor gx#core-expander::t 'compile-top))
    (define gx#core-expander-e
      (make-class-slot-accessor gx#core-expander::t 'e))
    (define gx#core-expander-id-set!
      (make-class-slot-mutator gx#core-expander::t 'id))
    (define gx#core-expander-compile-top-set!
      (make-class-slot-mutator gx#core-expander::t 'compile-top))
    (define gx#core-expander-e-set!
      (make-class-slot-mutator gx#core-expander::t 'e))
    (define gx#&core-expander-id
      (make-class-slot-unchecked-accessor gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top
      (make-class-slot-unchecked-accessor gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e
      (make-class-slot-unchecked-accessor gx#core-expander::t 'e))
    (define gx#&core-expander-id-set!
      (make-class-slot-unchecked-mutator gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top-set!
      (make-class-slot-unchecked-mutator gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e-set!
      (make-class-slot-unchecked-mutator gx#core-expander::t 'e))
    (define gx#expression-form::t
      (make-class-type
       'gx#expression-form::t
       'expression-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (make-class-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _%$args156057%_
        (apply make-instance gx#expression-form::t _%$args156057%_)))
    (define gx#expression-form-id
      (make-class-slot-accessor gx#expression-form::t 'id))
    (define gx#expression-form-compile-top
      (make-class-slot-accessor gx#expression-form::t 'compile-top))
    (define gx#expression-form-e
      (make-class-slot-accessor gx#expression-form::t 'e))
    (define gx#expression-form-id-set!
      (make-class-slot-mutator gx#expression-form::t 'id))
    (define gx#expression-form-compile-top-set!
      (make-class-slot-mutator gx#expression-form::t 'compile-top))
    (define gx#expression-form-e-set!
      (make-class-slot-mutator gx#expression-form::t 'e))
    (define gx#&expression-form-id
      (make-class-slot-unchecked-accessor gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top
      (make-class-slot-unchecked-accessor gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e
      (make-class-slot-unchecked-accessor gx#expression-form::t 'e))
    (define gx#&expression-form-id-set!
      (make-class-slot-unchecked-mutator gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top-set!
      (make-class-slot-unchecked-mutator gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e-set!
      (make-class-slot-unchecked-mutator gx#expression-form::t 'e))
    (define gx#special-form::t
      (make-class-type
       'gx#special-form::t
       'special-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (make-class-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _%$args156054%_
        (apply make-instance gx#special-form::t _%$args156054%_)))
    (define gx#special-form-id
      (make-class-slot-accessor gx#special-form::t 'id))
    (define gx#special-form-compile-top
      (make-class-slot-accessor gx#special-form::t 'compile-top))
    (define gx#special-form-e (make-class-slot-accessor gx#special-form::t 'e))
    (define gx#special-form-id-set!
      (make-class-slot-mutator gx#special-form::t 'id))
    (define gx#special-form-compile-top-set!
      (make-class-slot-mutator gx#special-form::t 'compile-top))
    (define gx#special-form-e-set!
      (make-class-slot-mutator gx#special-form::t 'e))
    (define gx#&special-form-id
      (make-class-slot-unchecked-accessor gx#special-form::t 'id))
    (define gx#&special-form-compile-top
      (make-class-slot-unchecked-accessor gx#special-form::t 'compile-top))
    (define gx#&special-form-e
      (make-class-slot-unchecked-accessor gx#special-form::t 'e))
    (define gx#&special-form-id-set!
      (make-class-slot-unchecked-mutator gx#special-form::t 'id))
    (define gx#&special-form-compile-top-set!
      (make-class-slot-unchecked-mutator gx#special-form::t 'compile-top))
    (define gx#&special-form-e-set!
      (make-class-slot-unchecked-mutator gx#special-form::t 'e))
    (define gx#definition-form::t
      (make-class-type
       'gx#definition-form::t
       'definition-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (make-class-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _%$args156051%_
        (apply make-instance gx#definition-form::t _%$args156051%_)))
    (define gx#definition-form-id
      (make-class-slot-accessor gx#definition-form::t 'id))
    (define gx#definition-form-compile-top
      (make-class-slot-accessor gx#definition-form::t 'compile-top))
    (define gx#definition-form-e
      (make-class-slot-accessor gx#definition-form::t 'e))
    (define gx#definition-form-id-set!
      (make-class-slot-mutator gx#definition-form::t 'id))
    (define gx#definition-form-compile-top-set!
      (make-class-slot-mutator gx#definition-form::t 'compile-top))
    (define gx#definition-form-e-set!
      (make-class-slot-mutator gx#definition-form::t 'e))
    (define gx#&definition-form-id
      (make-class-slot-unchecked-accessor gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top
      (make-class-slot-unchecked-accessor gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e
      (make-class-slot-unchecked-accessor gx#definition-form::t 'e))
    (define gx#&definition-form-id-set!
      (make-class-slot-unchecked-mutator gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top-set!
      (make-class-slot-unchecked-mutator gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e-set!
      (make-class-slot-unchecked-mutator gx#definition-form::t 'e))
    (define gx#top-special-form::t
      (make-class-type
       'gx#top-special-form::t
       'top-special-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form? (make-class-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _%$args156048%_
        (apply make-instance gx#top-special-form::t _%$args156048%_)))
    (define gx#top-special-form-id
      (make-class-slot-accessor gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top
      (make-class-slot-accessor gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e
      (make-class-slot-accessor gx#top-special-form::t 'e))
    (define gx#top-special-form-id-set!
      (make-class-slot-mutator gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top-set!
      (make-class-slot-mutator gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e-set!
      (make-class-slot-mutator gx#top-special-form::t 'e))
    (define gx#&top-special-form-id
      (make-class-slot-unchecked-accessor gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top
      (make-class-slot-unchecked-accessor gx#top-special-form::t 'compile-top))
    (define gx#&top-special-form-e
      (make-class-slot-unchecked-accessor gx#top-special-form::t 'e))
    (define gx#&top-special-form-id-set!
      (make-class-slot-unchecked-mutator gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top-set!
      (make-class-slot-unchecked-mutator gx#top-special-form::t 'compile-top))
    (define gx#&top-special-form-e-set!
      (make-class-slot-unchecked-mutator gx#top-special-form::t 'e))
    (define gx#module-special-form::t
      (make-class-type
       'gx#module-special-form::t
       'module-special-form
       (list gx#top-special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (make-class-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _%$args156045%_
        (apply make-instance gx#module-special-form::t _%$args156045%_)))
    (define gx#module-special-form-id
      (make-class-slot-accessor gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top
      (make-class-slot-accessor gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e
      (make-class-slot-accessor gx#module-special-form::t 'e))
    (define gx#module-special-form-id-set!
      (make-class-slot-mutator gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top-set!
      (make-class-slot-mutator gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e-set!
      (make-class-slot-mutator gx#module-special-form::t 'e))
    (define gx#&module-special-form-id
      (make-class-slot-unchecked-accessor gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top
      (make-class-slot-unchecked-accessor
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e
      (make-class-slot-unchecked-accessor gx#module-special-form::t 'e))
    (define gx#&module-special-form-id-set!
      (make-class-slot-unchecked-mutator gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top-set!
      (make-class-slot-unchecked-mutator
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e-set!
      (make-class-slot-unchecked-mutator gx#module-special-form::t 'e))
    (define gx#feature-expander::t
      (make-class-type
       'gx#feature-expander::t
       'feature-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander? (make-class-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _%$args156042%_
        (apply make-instance gx#feature-expander::t _%$args156042%_)))
    (define gx#feature-expander-e
      (make-class-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (make-class-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (make-class-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (make-class-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (make-class-type
       'gx#private-feature-expander::t
       'private-feature-expander
       (list gx#feature-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (make-class-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _%$args156039%_
        (apply make-instance gx#private-feature-expander::t _%$args156039%_)))
    (define gx#private-feature-expander-e
      (make-class-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (make-class-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (make-class-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (make-class-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (make-class-type
       'gx#reserved-expander::t
       'reserved-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (make-class-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _%$args156036%_
        (apply make-instance gx#reserved-expander::t _%$args156036%_)))
    (define gx#reserved-expander-e
      (make-class-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (make-class-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (make-class-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (make-class-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (make-class-type
       'gx#macro-expander::t
       'macro-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (make-class-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _%$args156033%_
        (apply make-instance gx#macro-expander::t _%$args156033%_)))
    (define gx#macro-expander-e
      (make-class-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (make-class-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (make-class-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (make-class-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (make-class-type
       'gx#rename-macro-expander::t
       'rename-macro-expander
       (list gx#macro-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (make-class-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _%$args156030%_
        (apply make-instance gx#rename-macro-expander::t _%$args156030%_)))
    (define gx#rename-macro-expander-e
      (make-class-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (make-class-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (make-class-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (make-class-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (make-class-type
       'gx#user-expander::t
       'user-expander
       (list gx#macro-expander::t)
       '(context phi)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#user-expander? (make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _%$args156027%_
        (apply make-instance gx#user-expander::t _%$args156027%_)))
    (define gx#user-expander-context
      (make-class-slot-accessor gx#user-expander::t 'context))
    (define gx#user-expander-phi
      (make-class-slot-accessor gx#user-expander::t 'phi))
    (define gx#user-expander-e
      (make-class-slot-accessor gx#user-expander::t 'e))
    (define gx#user-expander-context-set!
      (make-class-slot-mutator gx#user-expander::t 'context))
    (define gx#user-expander-phi-set!
      (make-class-slot-mutator gx#user-expander::t 'phi))
    (define gx#user-expander-e-set!
      (make-class-slot-mutator gx#user-expander::t 'e))
    (define gx#&user-expander-context
      (make-class-slot-unchecked-accessor gx#user-expander::t 'context))
    (define gx#&user-expander-phi
      (make-class-slot-unchecked-accessor gx#user-expander::t 'phi))
    (define gx#&user-expander-e
      (make-class-slot-unchecked-accessor gx#user-expander::t 'e))
    (define gx#&user-expander-context-set!
      (make-class-slot-unchecked-mutator gx#user-expander::t 'context))
    (define gx#&user-expander-phi-set!
      (make-class-slot-unchecked-mutator gx#user-expander::t 'phi))
    (define gx#&user-expander-e-set!
      (make-class-slot-unchecked-mutator gx#user-expander::t 'e))
    (define gx#expander-mark::t
      (make-class-type
       'gx#expander-mark::t
       'expander-mark
       (list)
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander-mark? (make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _%$args156024%_
        (apply make-instance gx#expander-mark::t _%$args156024%_)))
    (define gx#expander-mark-subst
      (make-class-slot-accessor gx#expander-mark::t 'subst))
    (define gx#expander-mark-context
      (make-class-slot-accessor gx#expander-mark::t 'context))
    (define gx#expander-mark-phi
      (make-class-slot-accessor gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace
      (make-class-slot-accessor gx#expander-mark::t 'trace))
    (define gx#expander-mark-subst-set!
      (make-class-slot-mutator gx#expander-mark::t 'subst))
    (define gx#expander-mark-context-set!
      (make-class-slot-mutator gx#expander-mark::t 'context))
    (define gx#expander-mark-phi-set!
      (make-class-slot-mutator gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace-set!
      (make-class-slot-mutator gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst
      (make-class-slot-unchecked-accessor gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context
      (make-class-slot-unchecked-accessor gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi
      (make-class-slot-unchecked-accessor gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace
      (make-class-slot-unchecked-accessor gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst-set!
      (make-class-slot-unchecked-mutator gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context-set!
      (make-class-slot-unchecked-mutator gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi-set!
      (make-class-slot-unchecked-mutator gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace-set!
      (make-class-slot-unchecked-mutator gx#expander-mark::t 'trace))
    (define gx#raise-syntax-error
      (lambda (_%ctx156008%_
               _%message156009%_
               _%stx156010%_
               .
               _%details156011%_)
        (let ((_%ctx156022%_
               (let ((_%$e156013%_ _%ctx156008%_))
                 (if _%$e156013%_
                     _%$e156013%_
                     (let ((_%$e156016%_ (gx#core-context-top)))
                       (if _%$e156016%_
                           ((lambda (_%ctx156019%_)
                              (cons 'expand
                                    (cons (gx#expander-context-id
                                           _%ctx156019%_)
                                          '())))
                            _%$e156016%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message156009%_
                  (cons _%stx156010%_ _%details156011%_)
                  _%ctx156022%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax
      (let ((_%$%opt-lambda155993155998%_
             (lambda (_%stx155995%_ _%expression?155996%_)
               (gx#eval-syntax*
                (gx#core-expand _%stx155995%_ _%expression?155996%_)))))
        (lambda _g157603_
          (let ((_g157604_ (##length _g157603_)))
            (cond ((##fx= _g157604_ 1)
                   (apply (lambda (_%stx156001%_)
                            (let ((_%expression?156003%_ '#f))
                              (_%$%opt-lambda155993155998%_
                               _%stx156001%_
                               _%expression?156003%_)))
                          _g157603_))
                  ((##fx= _g157604_ 2)
                   (apply _%$%opt-lambda155993155998%_ _g157603_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax
                    _g157603_)))))))
    (define gx#eval-syntax+1
      (let ((_%$%opt-lambda155978155984%_
             (lambda (_%stx155980%_ _%expression?155981%_)
               (call-with-parameters
                (lambda ()
                  (gx#eval-syntax _%stx155980%_ _%expression?155981%_))
                gx#current-expander-phi
                (fx1+ (gx#current-expander-phi))))))
        (lambda _g157605_
          (let ((_g157606_ (##length _g157605_)))
            (cond ((##fx= _g157606_ 1)
                   (apply (lambda (_%stx155987%_)
                            (let ((_%expression?155989%_ '#f))
                              (_%$%opt-lambda155978155984%_
                               _%stx155987%_
                               _%expression?155989%_)))
                          _g157605_))
                  ((##fx= _g157606_ 2)
                   (apply _%$%opt-lambda155978155984%_ _g157605_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#eval-syntax+1
                    _g157605_)))))))
    (define gx#eval-expression+1
      (lambda (_%stx155977%_) (gx#eval-syntax+1 _%stx155977%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx155975%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx155975%_))))
    (define gx#core-expand
      (let ((_%$%opt-lambda155960155965%_
             (lambda (_%stx155962%_ _%expression?155963%_)
               (if _%expression?155963%_
                   (gx#core-expand-expression _%stx155962%_)
                   (gx#core-expand-top _%stx155962%_)))))
        (lambda _g157607_
          (let ((_g157608_ (##length _g157607_)))
            (cond ((##fx= _g157608_ 1)
                   (apply (lambda (_%stx155968%_)
                            (let ((_%expression?155970%_ '#f))
                              (_%$%opt-lambda155960155965%_
                               _%stx155968%_
                               _%expression?155970%_)))
                          _g157607_))
                  ((##fx= _g157608_ 2)
                   (apply _%$%opt-lambda155960155965%_ _g157607_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand
                    _g157607_)))))))
    (define gx#core-expand-top
      (lambda (_%stx155929%_)
        (let* ((_%stx155931%_ (gx#core-expand* _%stx155929%_))
               (_%$%e155932155939%_ _%stx155931%_)
               (_%$%E155934155943%_
                (lambda () (gx#core-expand-expression _%stx155931%_)))
               (_%$%E155933155957%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e155932155939%_)
                      (let ((_%$%e155935155947%_
                             (gx#syntax-e _%$%e155932155939%_)))
                        (let ((_%$%hd155936155950%_
                               (##car _%$%e155935155947%_))
                              (_%$%tl155937155952%_
                               (##cdr _%$%e155935155947%_)))
                          (let ((_%form155955%_ _%$%hd155936155950%_))
                            (if (gx#core-bound-identifier? _%form155955%_)
                                _%stx155931%_
                                (_%$%E155934155943%_)))))
                      (_%$%E155934155943%_)))))
          (_%$%E155933155957%_))))
    (define gx#core-expand-expression
      (lambda (_%stx155861%_)
        (letrec ((_%sealed-expression?155863%_
                  (lambda (_%hd155899%_)
                    (if (gx#sealed-syntax? _%hd155899%_)
                        (let* ((_%$%e155900155907%_ _%hd155899%_)
                               (_%$%E155902155911%_ (lambda () '#f))
                               (_%$%E155901155925%_
                                (lambda ()
                                  (if (gx#stx-pair? _%$%e155900155907%_)
                                      (let ((_%$%e155903155915%_
                                             (gx#syntax-e
                                              _%$%e155900155907%_)))
                                        (let ((_%$%hd155904155918%_
                                               (##car _%$%e155903155915%_))
                                              (_%$%tl155905155920%_
                                               (##cdr _%$%e155903155915%_)))
                                          (let ((_%form155923%_
                                                 _%$%hd155904155918%_))
                                            (if '#t
                                                (gx#core-bound-identifier?
                                                 _%form155923%_
                                                 gx#expression-form-binding?)
                                                (_%$%E155902155911%_)))))
                                      (_%$%E155902155911%_)))))
                          (_%$%E155901155925%_))
                        '#f)))
                 (_%illegal-expression155864%_
                  (lambda (_%hd155896%_ . _%_155897%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx155861%_
                     _%hd155896%_)))
                 (_%expand-e155865%_
                  (lambda (_%form155888%_ _%hd155889%_)
                    (let ((_%bind155891%_
                           (if (gx#binding? _%form155888%_)
                               _%form155888%_
                               (gx#resolve-identifier _%form155888%_))))
                      (if (gx#core-expander-binding? _%bind155891%_)
                          (gx#core-apply-expander
                           (gx#&syntax-binding-e _%bind155891%_)
                           (gx#stx-wrap-source
                            _%hd155889%_
                            (gx#stx-source _%stx155861%_)))
                          (if (gx#syntax-binding? _%bind155891%_)
                              (gx#core-expand-expression
                               (gx#core-apply-expander
                                (gx#&syntax-binding-e _%bind155891%_)
                                (gx#stx-wrap-source
                                 _%hd155889%_
                                 (gx#stx-source _%stx155861%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx155861%_
                               _%form155888%_)))))))
          (let ((_%hd155867%_ (gx#core-expand-head _%stx155861%_)))
            (if (_%sealed-expression?155863%_ _%hd155867%_)
                _%hd155867%_
                (if (gx#stx-pair? _%hd155867%_)
                    (let* ((_%form155871%_ (gx#stx-car _%hd155867%_))
                           (_%bind155873%_
                            (if (gx#identifier? _%form155871%_)
                                (gx#resolve-identifier _%form155871%_)
                                '#f)))
                      (if (or (not _%bind155873%_)
                              (not (gx#core-expander-binding? _%bind155873%_)))
                          (_%expand-e155865%_
                           '%%app
                           (cons '%%app _%hd155867%_))
                          (if (eq? (gx#&binding-id _%bind155873%_) '%#begin)
                              (gx#core-expand-block*
                               _%hd155867%_
                               _%illegal-expression155864%_)
                              (if (gx#expression-form-binding? _%bind155873%_)
                                  (_%expand-e155865%_
                                   _%bind155873%_
                                   _%hd155867%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind155873%_)
                                      (gx#core-expand-expression
                                       (_%expand-e155865%_
                                        _%bind155873%_
                                        _%hd155867%_))
                                      (_%illegal-expression155864%_
                                       _%hd155867%_))))))
                    (if (gx#core-bound-identifier? _%hd155867%_)
                        (_%illegal-expression155864%_ _%hd155867%_)
                        (if (gx#identifier? _%hd155867%_)
                            (_%expand-e155865%_
                             '%%ref
                             (cons '%%ref (cons _%hd155867%_ '())))
                            (if (gx#stx-datum? _%hd155867%_)
                                (_%expand-e155865%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd155867%_ '())))
                                (_%illegal-expression155864%_
                                 _%hd155867%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx155856%_)
        (call-with-parameters
         (lambda ()
           (let ((_%stx155859%_ (gx#core-expand-expression _%stx155856%_)))
             (values _%stx155859%_ (gx#eval-syntax* _%stx155859%_))))
         gx#current-expander-phi
         (fx1+ (gx#current-expander-phi)))))
    (define gx#core-expand*
      (let ((_%$%opt-lambda155835155846%_
             (lambda (_%stx155837%_ _%stop?155838%_)
               (let _%lp155840%_ ((_%stx155842%_ _%stx155837%_))
                 (if (_%stop?155838%_ _%stx155842%_)
                     _%stx155842%_
                     (let ((_%rstx155844%_ (gx#core-expand1 _%stx155842%_)))
                       (if (eq? _%stx155842%_ _%rstx155844%_)
                           _%stx155842%_
                           (_%lp155840%_ _%rstx155844%_))))))))
        (lambda _g157609_
          (let ((_g157610_ (##length _g157609_)))
            (cond ((##fx= _g157610_ 1)
                   (apply (lambda (_%stx155849%_)
                            (let ((_%stop?155851%_ false))
                              (_%$%opt-lambda155835155846%_
                               _%stx155849%_
                               _%stop?155851%_)))
                          _g157609_))
                  ((##fx= _g157610_ 2)
                   (apply _%$%opt-lambda155835155846%_ _g157609_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand*
                    _g157609_)))))))
    (define gx#core-expand1
      (lambda (_%stx155789%_)
        (letrec ((_%step155791%_
                  (lambda (_%hd155828%_)
                    (let ((_%bind155830%_
                           (gx#resolve-identifier _%hd155828%_)))
                      (if (gx#runtime-binding? _%bind155830%_)
                          _%stx155789%_
                          (if (gx#syntax-binding? _%bind155830%_)
                              (gx#core-apply-expander
                               (gx#&syntax-binding-e _%bind155830%_)
                               _%stx155789%_)
                              (if (not _%bind155830%_)
                                  _%stx155789%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx155789%_))))))))
          (let* ((_%$%e155792155800%_ _%stx155789%_)
                 (_%$%E155798155804%_ (lambda () _%stx155789%_))
                 (_%$%E155794155810%_
                  (lambda ()
                    (let ((_%hd155808%_ _%$%e155792155800%_))
                      (if (gx#identifier? _%hd155808%_)
                          (_%step155791%_ _%hd155808%_)
                          (_%$%E155798155804%_)))))
                 (_%$%E155793155824%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e155792155800%_)
                        (let ((_%$%e155795155814%_
                               (gx#syntax-e _%$%e155792155800%_)))
                          (let ((_%$%hd155796155817%_
                                 (##car _%$%e155795155814%_))
                                (_%$%tl155797155819%_
                                 (##cdr _%$%e155795155814%_)))
                            (let ((_%hd155822%_ _%$%hd155796155817%_))
                              (if (gx#identifier? _%hd155822%_)
                                  (_%step155791%_ _%hd155822%_)
                                  (_%$%E155794155810%_)))))
                        (_%$%E155794155810%_)))))
            (_%$%E155793155824%_)))))
    (define gx#core-expand-head
      (lambda (_%stx155755%_)
        (letrec ((_%stop?155757%_
                  (lambda (_%stx155759%_)
                    (let* ((_%$%e155760155767%_ _%stx155759%_)
                           (_%$%E155762155771%_ (lambda () '#f))
                           (_%$%E155761155785%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e155760155767%_)
                                  (let ((_%$%e155763155775%_
                                         (gx#syntax-e _%$%e155760155767%_)))
                                    (let ((_%$%hd155764155778%_
                                           (##car _%$%e155763155775%_))
                                          (_%$%tl155765155780%_
                                           (##cdr _%$%e155763155775%_)))
                                      (let ((_%hd155783%_
                                             _%$%hd155764155778%_))
                                        (if '#t
                                            (gx#core-bound-identifier?
                                             _%hd155783%_)
                                            (_%$%E155762155771%_)))))
                                  (_%$%E155762155771%_)))))
                      (_%$%E155761155785%_)))))
          (gx#core-expand* _%stx155755%_ _%stop?155757%_))))
    (define gx#core-expand-block
      (let ((_%$%opt-lambda155559155734%_
             (lambda (_%stx155561%_
                      _%expand-special155562%_
                      _%begin-form155563%_
                      _%expand-e155564%_)
               (letrec ((_%expand-splice155566%_
                         (lambda (_%hd155729%_
                                  _%body155730%_
                                  _%rest155731%_
                                  _%r155732%_)
                           (if (gx#stx-list? _%body155730%_)
                               (_%K155570%_
                                (gx#stx-foldr
                                 cons
                                 _%rest155731%_
                                 _%body155730%_)
                                _%r155732%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; splice body isn't a list"
                                _%stx155561%_
                                _%hd155729%_))))
                        (_%expand-cond-expand155567%_
                         (lambda (_%hd155725%_ _%rest155726%_ _%r155727%_)
                           (_%K155570%_
                            (cons (gx#core-expand-cond-expand% _%hd155725%_)
                                  _%rest155726%_)
                            _%r155727%_)))
                        (_%expand-include155568%_
                         (lambda (_%hd155674%_ _%rest155675%_ _%r155676%_)
                           (let* ((_%$%e155677155687%_ _%hd155674%_)
                                  (_%$%E155679155691%_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid syntax-case clause"
                                      _%$%e155677155687%_)))
                                  (_%$%E155678155721%_
                                   (lambda ()
                                     (if (gx#stx-pair? _%$%e155677155687%_)
                                         (let ((_%$%e155680155695%_
                                                (gx#syntax-e
                                                 _%$%e155677155687%_)))
                                           (let ((_%$%hd155681155698%_
                                                  (##car _%$%e155680155695%_))
                                                 (_%$%tl155682155700%_
                                                  (##cdr _%$%e155680155695%_)))
                                             (if (gx#stx-pair?
                                                  _%$%tl155682155700%_)
                                                 (let ((_%$%e155683155703%_
                                                        (gx#syntax-e
                                                         _%$%tl155682155700%_)))
                                                   (let ((_%$%hd155684155706%_
                                                          (##car _%$%e155683155703%_))
                                                         (_%$%tl155685155708%_
                                                          (##cdr _%$%e155683155703%_)))
                                                     (let ((_%path155711%_
                                                            _%$%hd155684155706%_))
                                                       (if (gx#stx-null?
                                                            _%$%tl155685155708%_)
                                                           (if (gx#stx-string?
                                                                _%path155711%_)
                                                               (let* ((_%rpath155713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#core-resolve-path
                                _%path155711%_
                                (gx#stx-source _%hd155674%_)))
                              (_%block155715%_
                               (gx#core-expand-include%
                                _%hd155674%_
                                _%rpath155713%_))
                              (_%rbody155718%_
                               (call-with-parameters
                                (lambda ()
                                  (gx#core-expand-block
                                   _%block155715%_
                                   _%expand-special155562%_
                                   '#f
                                   _%expand-e155564%_))
                                gx#current-expander-path
                                (cons _%rpath155713%_
                                      (gx#current-expander-path)))))
                         (_%K155570%_
                          _%rest155675%_
                          (foldr cons _%r155676%_ _%rbody155718%_)))
                       (_%$%E155679155691%_))
                   (_%$%E155679155691%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%E155679155691%_))))
                                         (_%$%E155679155691%_)))))
                             (_%$%E155678155721%_))))
                        (_%expand-expression155569%_
                         (lambda (_%hd155670%_ _%rest155671%_ _%r155672%_)
                           (_%K155570%_
                            _%rest155671%_
                            (cons (_%expand-e155564%_ _%hd155670%_)
                                  _%r155672%_))))
                        (_%K155570%_
                         (lambda (_%rest155600%_ _%r155601%_)
                           (let* ((_%$%e155602155609%_ _%rest155600%_)
                                  (_%$%E155604155613%_
                                   (lambda ()
                                     (if _%begin-form155563%_
                                         (gx#core-quote-syntax
                                          (gx#core-cons
                                           _%begin-form155563%_
                                           (reverse _%r155601%_))
                                          (gx#stx-source _%stx155561%_))
                                         _%r155601%_)))
                                  (_%$%E155603155666%_
                                   (lambda ()
                                     (if (gx#stx-pair? _%$%e155602155609%_)
                                         (let ((_%$%e155605155617%_
                                                (gx#syntax-e
                                                 _%$%e155602155609%_)))
                                           (let ((_%$%hd155606155620%_
                                                  (##car _%$%e155605155617%_))
                                                 (_%$%tl155607155622%_
                                                  (##cdr _%$%e155605155617%_)))
                                             (let* ((_%hd155625%_
                                                     _%$%hd155606155620%_)
                                                    (_%rest155627%_
                                                     _%$%tl155607155622%_))
                                               (if '#t
                                                   (let* ((_%hd155629%_
                                                           (gx#core-expand-head
                                                            _%hd155625%_))
                                                          (_%$%e155630155637%_
                                                           _%hd155629%_)
                                                          (_%$%E155632155641%_
                                                           (lambda ()
                                                             (_%expand-expression155569%_
                                                              _%hd155629%_
                                                              _%rest155627%_
                                                              _%r155601%_)))
                                                          (_%$%E155631155662%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%e155630155637%_)
                         (let ((_%$%e155633155645%_
                                (gx#syntax-e _%$%e155630155637%_)))
                           (let ((_%$%hd155634155648%_
                                  (##car _%$%e155633155645%_))
                                 (_%$%tl155635155650%_
                                  (##cdr _%$%e155633155645%_)))
                             (let* ((_%form155653%_ _%$%hd155634155648%_)
                                    (_%body155655%_ _%$%tl155635155650%_))
                               (if '#t
                                   (let ((_%bind155657%_
                                          (if (gx#identifier? _%form155653%_)
                                              (gx#resolve-identifier
                                               _%form155653%_)
                                              '#f)))
                                     (if (gx#special-form-binding?
                                          _%bind155657%_)
                                         (let ((_%$e155659%_
                                                (gx#&binding-id
                                                 _%bind155657%_)))
                                           (if (eq? '%#begin _%$e155659%_)
                                               (_%expand-splice155566%_
                                                _%hd155629%_
                                                _%body155655%_
                                                _%rest155627%_
                                                _%r155601%_)
                                               (if (eq? '%#cond-expand
                                                        _%$e155659%_)
                                                   (_%expand-cond-expand155567%_
                                                    _%hd155629%_
                                                    _%rest155627%_
                                                    _%r155601%_)
                                                   (if (eq? '%#include
                                                            _%$e155659%_)
                                                       (_%expand-include155568%_
                                                        _%hd155629%_
                                                        _%rest155627%_
                                                        _%r155601%_)
                                                       (_%expand-special155562%_
                                                        _%hd155629%_
                                                        _%K155570%_
                                                        _%rest155627%_
                                                        _%r155601%_)))))
                                         (_%expand-expression155569%_
                                          _%hd155629%_
                                          _%rest155627%_
                                          _%r155601%_)))
                                   (_%$%E155632155641%_)))))
                         (_%$%E155632155641%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E155631155662%_))
                                                   (_%$%E155604155613%_)))))
                                         (_%$%E155604155613%_)))))
                             (_%$%E155603155666%_)))))
                 (let* ((_%$%e155571155578%_ _%stx155561%_)
                        (_%$%E155573155582%_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case clause"
                            _%$%e155571155578%_)))
                        (_%$%E155572155596%_
                         (lambda ()
                           (if (gx#stx-pair? _%$%e155571155578%_)
                               (let ((_%$%e155574155586%_
                                      (gx#syntax-e _%$%e155571155578%_)))
                                 (let ((_%$%hd155575155589%_
                                        (##car _%$%e155574155586%_))
                                       (_%$%tl155576155591%_
                                        (##cdr _%$%e155574155586%_)))
                                   (let ((_%body155594%_ _%$%tl155576155591%_))
                                     (if (gx#stx-list? _%body155594%_)
                                         (_%K155570%_ _%body155594%_ '())
                                         (_%$%E155573155582%_)))))
                               (_%$%E155573155582%_)))))
                   (_%$%E155572155596%_))))))
        (lambda _g157611_
          (let ((_g157612_ (##length _g157611_)))
            (cond ((##fx= _g157612_ 2)
                   (apply (lambda (_%stx155737%_ _%expand-special155738%_)
                            (let* ((_%begin-form155740%_ '%#begin)
                                   (_%expand-e155742%_
                                    gx#core-expand-expression))
                              (_%$%opt-lambda155559155734%_
                               _%stx155737%_
                               _%expand-special155738%_
                               _%begin-form155740%_
                               _%expand-e155742%_)))
                          _g157611_))
                  ((##fx= _g157612_ 3)
                   (apply (lambda (_%stx155744%_
                                   _%expand-special155745%_
                                   _%begin-form155746%_)
                            (let ((_%expand-e155748%_
                                   gx#core-expand-expression))
                              (_%$%opt-lambda155559155734%_
                               _%stx155744%_
                               _%expand-special155745%_
                               _%begin-form155746%_
                               _%expand-e155748%_)))
                          _g157611_))
                  ((##fx= _g157612_ 4)
                   (apply _%$%opt-lambda155559155734%_ _g157611_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-block
                    _g157611_)))))))
    (define gx#core-expand-block*
      (lambda (_%stx155509%_ _%expand-special155510%_)
        (let* ((_%$%g155511155522%_
                (gx#core-expand-block
                 _%stx155509%_
                 _%expand-special155510%_
                 '#f))
               (_%$%E155515155526%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g155511155522%_
                         '([])
                         '([expr])
                         '(body))
                  (void)))
               (_%$%try-match155514155537%_
                (lambda ()
                  (let* ((_%$%K155516155532%_
                          (lambda (_%body155530%_)
                            (gx#core-quote-syntax
                             (gx#core-cons '%#begin (reverse _%body155530%_))
                             (gx#stx-source _%stx155509%_))))
                         (_%body155535%_ _%$%g155511155522%_))
                    (_%$%K155516155532%_ _%body155535%_))))
               (_%$%try-match155513155553%_
                (lambda ()
                  (let ((_%$%K155517155543%_
                         (lambda (_%expr155541%_) _%expr155541%_)))
                    (if (pair? _%$%g155511155522%_)
                        (let ((_%$%hd155518155546%_
                               (##car _%$%g155511155522%_))
                              (_%$%tl155519155548%_
                               (##cdr _%$%g155511155522%_)))
                          (let ((_%expr155551%_ _%$%hd155518155546%_))
                            (if (null? _%$%tl155519155548%_)
                                (_%$%K155517155543%_ _%expr155551%_)
                                (_%$%try-match155514155537%_))))
                        (_%$%try-match155514155537%_)))))
               (_%$%K155520155557%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; empty block"
                   _%stx155509%_))))
          (if (null? _%$%g155511155522%_)
              (_%$%K155520155557%_)
              (_%$%try-match155513155553%_)))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx155335%_)
        (letrec ((_%satisfied?155337%_
                  (lambda (_%condition155438%_)
                    (let* ((_%$%e155439155454%_ _%condition155438%_)
                           (_%$%E155449155458%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e155439155454%_)))
                           (_%$%E155442155477%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e155439155454%_)
                                  (let ((_%$%e155450155462%_
                                         (gx#syntax-e _%$%e155439155454%_)))
                                    (let ((_%$%hd155451155465%_
                                           (##car _%$%e155450155462%_))
                                          (_%$%tl155452155467%_
                                           (##cdr _%$%e155450155462%_)))
                                      (let* ((_%combinator155470%_
                                              _%$%hd155451155465%_)
                                             (_%body155472%_
                                              _%$%tl155452155467%_))
                                        (if (gx#stx-list? _%body155472%_)
                                            (let ((_%$e155474%_
                                                   (gx#stx-e
                                                    _%combinator155470%_)))
                                              (if (eq? 'not _%$e155474%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?155337%_
                                                        _%body155472%_))
                                                  (if (eq? 'and _%$e155474%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?155337%_
                                                       _%body155472%_)
                                                      (if (eq? 'or
                                                               _%$e155474%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?155337%_
                                                           _%body155472%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e155474%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body155472%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx155335%_
                       _%combinator155470%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E155449155458%_)))))
                                  (_%$%E155449155458%_))))
                           (_%$%E155441155499%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e155439155454%_)
                                  (let ((_%$%e155443155481%_
                                         (gx#syntax-e _%$%e155439155454%_)))
                                    (let ((_%$%hd155444155484%_
                                           (##car _%$%e155443155481%_))
                                          (_%$%tl155445155486%_
                                           (##cdr _%$%e155443155481%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd155444155484%_)
                                               (gx#core-identifier=?
                                                _%$%hd155444155484%_
                                                'unquote))
                                          (if (gx#stx-pair?
                                               _%$%tl155445155486%_)
                                              (let ((_%$%e155446155489%_
                                                     (gx#syntax-e
                                                      _%$%tl155445155486%_)))
                                                (let ((_%$%hd155447155492%_
                                                       (##car _%$%e155446155489%_))
                                                      (_%$%tl155448155494%_
                                                       (##cdr _%$%e155446155489%_)))
                                                  (let ((_%expr155497%_
                                                         _%$%hd155447155492%_))
                                                    (if (gx#stx-null?
                                                         _%$%tl155448155494%_)
                                                        (if '#t
                                                            (gx#eval-syntax+1
                                                             _%expr155497%_)
                                                            (_%$%E155442155477%_))
                                                        (_%$%E155442155477%_)))))
                                              (_%$%E155442155477%_))
                                          (_%$%E155442155477%_))))
                                  (_%$%E155442155477%_))))
                           (_%$%E155440155505%_
                            (lambda ()
                              (let ((_%id155503%_ _%$%e155439155454%_))
                                (if (gx#identifier? _%id155503%_)
                                    (gx#core-bound-identifier?
                                     _%id155503%_
                                     gx#feature-binding?)
                                    (_%$%E155441155499%_))))))
                      (_%$%E155440155505%_))))
                 (_%loop155338%_
                  (lambda (_%rest155368%_)
                    (let* ((_%$%e155369155377%_ _%rest155368%_)
                           (_%$%E155375155381%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e155369155377%_)))
                           (_%$%E155371155385%_
                            (lambda ()
                              (if (gx#stx-null? _%$%e155369155377%_)
                                  (if '#t '() (_%$%E155375155381%_))
                                  (_%$%E155375155381%_))))
                           (_%$%E155370155434%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e155369155377%_)
                                  (let ((_%$%e155372155389%_
                                         (gx#syntax-e _%$%e155369155377%_)))
                                    (let ((_%$%hd155373155392%_
                                           (##car _%$%e155372155389%_))
                                          (_%$%tl155374155394%_
                                           (##cdr _%$%e155372155389%_)))
                                      (let* ((_%hd155397%_
                                              _%$%hd155373155392%_)
                                             (_%rest155399%_
                                              _%$%tl155374155394%_))
                                        (if '#t
                                            (let* ((_%$%e155400155407%_
                                                    _%hd155397%_)
                                                   (_%$%E155402155411%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%$%e155400155407%_)))
                                                   (_%$%E155401155430%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%$%e155400155407%_)
                                                          (let ((_%$%e155403155415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%e155400155407%_)))
                    (let ((_%$%hd155404155418%_ (##car _%$%e155403155415%_))
                          (_%$%tl155405155420%_ (##cdr _%$%e155403155415%_)))
                      (let* ((_%condition155423%_ _%$%hd155404155418%_)
                             (_%body155425%_ _%$%tl155405155420%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition155423%_ 'else)
                                (if (gx#stx-null? _%rest155399%_)
                                    _%body155425%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _%stx155335%_
                                     _%hd155397%_))
                                (if (_%satisfied?155337%_ _%condition155423%_)
                                    _%body155425%_
                                    (_%loop155338%_ _%rest155399%_)))
                            (_%$%E155402155411%_)))))
                  (_%$%E155402155411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E155401155430%_))
                                            (_%$%E155371155385%_)))))
                                  (_%$%E155371155385%_)))))
                      (_%$%E155370155434%_)))))
          (let* ((_%$%e155339155346%_ _%stx155335%_)
                 (_%$%E155341155350%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e155339155346%_)))
                 (_%$%E155340155364%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e155339155346%_)
                        (let ((_%$%e155342155354%_
                               (gx#syntax-e _%$%e155339155346%_)))
                          (let ((_%$%hd155343155357%_
                                 (##car _%$%e155342155354%_))
                                (_%$%tl155344155359%_
                                 (##cdr _%$%e155342155354%_)))
                            (let ((_%clauses155362%_ _%$%tl155344155359%_))
                              (if (gx#stx-list? _%clauses155362%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop155338%_ _%clauses155362%_))
                                  (_%$%E155341155350%_)))))
                        (_%$%E155341155350%_)))))
            (_%$%E155340155364%_)))))
    (define gx#core-expand-include%
      (let ((_%$%opt-lambda155276155325%_
             (lambda (_%stx155278%_ _%rpath155279%_)
               (let* ((_%$%e155280155290%_ _%stx155278%_)
                      (_%$%E155282155294%_
                       (lambda ()
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid syntax-case clause"
                          _%$%e155280155290%_)))
                      (_%$%E155281155321%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e155280155290%_)
                             (let ((_%$%e155283155298%_
                                    (gx#syntax-e _%$%e155280155290%_)))
                               (let ((_%$%hd155284155301%_
                                      (##car _%$%e155283155298%_))
                                     (_%$%tl155285155303%_
                                      (##cdr _%$%e155283155298%_)))
                                 (if (gx#stx-pair? _%$%tl155285155303%_)
                                     (let ((_%$%e155286155306%_
                                            (gx#syntax-e
                                             _%$%tl155285155303%_)))
                                       (let ((_%$%hd155287155309%_
                                              (##car _%$%e155286155306%_))
                                             (_%$%tl155288155311%_
                                              (##cdr _%$%e155286155306%_)))
                                         (let ((_%path155314%_
                                                _%$%hd155287155309%_))
                                           (if (gx#stx-null?
                                                _%$%tl155288155311%_)
                                               (if (gx#stx-string?
                                                    _%path155314%_)
                                                   (let ((_%rpath155319%_
                                                          (let ((_%$e155316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rpath155279%_))
                    (if _%$e155316%_
                        _%$e155316%_
                        (gx#core-resolve-path
                         _%path155314%_
                         (gx#stx-source _%stx155278%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (member _%rpath155319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#current-expander-path))
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; cyclic expansion"
                  _%stx155278%_)
                 (gx#syntax-local-rewrap
                  (gx#stx-wrap-source
                   (gx#core-cons
                    'begin
                    (read-syntax-from-file _%rpath155319%_))
                   (gx#stx-source _%stx155278%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%E155282155294%_))
                                               (_%$%E155282155294%_)))))
                                     (_%$%E155282155294%_))))
                             (_%$%E155282155294%_)))))
                 (_%$%E155281155321%_)))))
        (lambda _g157613_
          (let ((_g157614_ (##length _g157613_)))
            (cond ((##fx= _g157614_ 1)
                   (apply (lambda (_%stx155328%_)
                            (let ((_%rpath155330%_ '#f))
                              (_%$%opt-lambda155276155325%_
                               _%stx155328%_
                               _%rpath155330%_)))
                          _g157613_))
                  ((##fx= _g157614_ 2)
                   (apply _%$%opt-lambda155276155325%_ _g157613_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-include%
                    _g157613_)))))))
    (define gx#core-apply-expander
      (let ((_%$%opt-lambda155242155265%_
             (lambda (_%K155244%_ _%stx155245%_ _%method155246%_)
               (if (procedure? _%K155244%_)
                   (let ((_%$e155249%_ (gx#stx-source _%stx155245%_)))
                     (if _%$e155249%_
                         ((lambda (_%$%g155251155253%_)
                            (gx#stx-wrap-source
                             (_%K155244%_ _%stx155245%_)
                             _%$%g155251155253%_))
                          _%$e155249%_)
                         (_%K155244%_ _%stx155245%_)))
                   (let ((_%$e155257%_
                          (bound-method-ref _%K155244%_ _%method155246%_)))
                     (if _%$e155257%_
                         ((lambda (_%$%g155259155261%_)
                            (gx#core-apply-expander
                             _%$%g155259155261%_
                             _%stx155245%_
                             _%method155246%_))
                          _%$e155257%_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; no expander method"
                          _%stx155245%_
                          _%method155246%_)))))))
        (lambda _g157615_
          (let ((_g157616_ (##length _g157615_)))
            (cond ((##fx= _g157616_ 2)
                   (apply (lambda (_%K155268%_ _%stx155269%_)
                            (let ((_%method155271%_ 'apply-macro-expander))
                              (_%$%opt-lambda155242155265%_
                               _%K155268%_
                               _%stx155269%_
                               _%method155271%_)))
                          _g157615_))
                  ((##fx= _g157616_ 3)
                   (apply _%$%opt-lambda155242155265%_ _g157615_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-expander
                    _g157615_)))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self155229%_ _%stx155230%_)
        (let ((_%self155233%_ _%self155229%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx155230%_))))
    (bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self155072%_ _%stx155073%_)
        (let* ((_%self155076%_ _%self155072%_)
               (_%$%self155085155091%_ _%self155076%_)
               (_%$%E155087155094%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self155085155091%_
                         '((macro-expander K)))
                  (void)))
               (_%$%K155088155099%_
                (lambda (_%K155097%_)
                  (gx#core-apply-expander _%K155097%_ _%stx155073%_))))
          (if (gx#macro-expander? _%$%self155085155091%_)
              (let* ((_%$%e155089155102%_
                      (gx#&expander-e _%$%self155085155091%_))
                     (_%K155105%_ _%$%e155089155102%_))
                (_%$%K155088155099%_ _%K155105%_))
              (_%$%E155087155094%_)))))
    (bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self154915%_ _%stx154916%_)
        (let ((_%self154919%_ _%self154915%_))
          (if (gx#sealed-syntax? _%stx154916%_)
              _%stx154916%_
              (let* ((_%$%self154928154934%_ _%self154919%_)
                     (_%$%E154930154937%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%self154928154934%_
                               '((core-expander K)))
                        (void)))
                     (_%$%K154931154942%_
                      (lambda (_%K154940%_)
                        (gx#core-apply-expander _%K154940%_ _%stx154916%_))))
                (if (gx#core-expander? _%$%self154928154934%_)
                    (let* ((_%$%e154932154945%_
                            (gx#&expander-e _%$%self154928154934%_))
                           (_%K154948%_ _%$%e154932154945%_))
                      (_%$%K154931154942%_ _%K154948%_))
                    (_%$%E154930154937%_)))))))
    (bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander
      (let ((_%$%opt-lambda154763154781%_
             (lambda (_%self154765%_ _%stx154766%_ _%top?154767%_)
               (let ((_%self154770%_ _%self154765%_))
                 (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
                     (begin
                       (displayln '"@expand " (gx#syntax->datum _%stx154766%_))
                       (force-output))
                     '#!void)
                 (if (_%top?154767%_ (gx#current-expander-context))
                     (gx#core-expander::apply-macro-expander
                      _%self154770%_
                      _%stx154766%_)
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; illegal context"
                      _%stx154766%_))))))
        (lambda _g157617_
          (let ((_g157618_ (##length _g157617_)))
            (cond ((##fx= _g157618_ 2)
                   (apply (lambda (_%self154784%_ _%stx154785%_)
                            (let ((_%top?154787%_ gx#top-context?))
                              (_%$%opt-lambda154763154781%_
                               _%self154784%_
                               _%stx154785%_
                               _%top?154787%_)))
                          _g157617_))
                  ((##fx= _g157618_ 3)
                   (apply _%$%opt-lambda154763154781%_ _g157617_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-special-form::apply-macro-expander
                    _g157617_)))))))
    (bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self154628%_ _%stx154629%_)
        (let ((_%self154632%_ _%self154628%_))
          (gx#top-special-form::apply-macro-expander
           _%self154632%_
           _%stx154629%_
           gx#module-context?))))
    (bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self154443%_ _%stx154444%_)
        (let* ((_%self154447%_ _%self154443%_)
               (_%$%self154456154462%_ _%self154447%_)
               (_%$%E154458154465%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self154456154462%_
                         '((rename-macro-expander id)))
                  (void)))
               (_%$%K154459154498%_
                (lambda (_%id154468%_)
                  (let* ((_%$%e154469154476%_ _%stx154444%_)
                         (_%$%E154471154480%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%$%e154469154476%_)))
                         (_%$%E154470154494%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e154469154476%_)
                                (let ((_%$%e154472154484%_
                                       (gx#syntax-e _%$%e154469154476%_)))
                                  (let ((_%$%hd154473154487%_
                                         (##car _%$%e154472154484%_))
                                        (_%$%tl154474154489%_
                                         (##cdr _%$%e154472154484%_)))
                                    (let ((_%body154492%_
                                           _%$%tl154474154489%_))
                                      (if '#t
                                          (gx#core-cons
                                           _%id154468%_
                                           _%body154492%_)
                                          (_%$%E154471154480%_)))))
                                (_%$%E154471154480%_)))))
                    (_%$%E154470154494%_)))))
          (if (gx#rename-macro-expander? _%$%self154456154462%_)
              (let* ((_%$%e154460154501%_
                      (gx#&expander-e _%$%self154456154462%_))
                     (_%id154504%_ _%$%e154460154501%_))
                (_%$%K154459154498%_ _%id154504%_))
              (_%$%E154458154465%_)))))
    (bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander
      (let ((_%$%opt-lambda154268154309%_
             (lambda (_%self154270%_ _%stx154271%_ _%method154272%_)
               (if gx#__DEBUG-EXPANDER
                   (begin
                     (displayln '"@expand " (gx#syntax->datum _%stx154271%_))
                     (force-output))
                   '#!void)
               (let* ((_%$%self154273154281%_ _%self154270%_)
                      (_%$%E154275154284%_
                       (lambda ()
                         (error '"No clause matching"
                                _%$%self154273154281%_
                                '((user-expander K ctx phi)))
                         (void)))
                      (_%$%K154276154291%_
                       (lambda (_%phi154287%_ _%ctx154288%_ _%K154289%_)
                         (gx#core-apply-user-macro
                          _%K154289%_
                          _%stx154271%_
                          _%ctx154288%_
                          _%phi154287%_
                          _%method154272%_))))
                 (if (gx#user-expander? _%$%self154273154281%_)
                     (let* ((_%$%e154277154294%_
                             (gx#&expander-e _%$%self154273154281%_))
                            (_%K154297%_ _%$%e154277154294%_)
                            (_%$%e154278154299%_
                             (gx#&user-expander-context
                              _%$%self154273154281%_))
                            (_%ctx154302%_ _%$%e154278154299%_)
                            (_%$%e154279154304%_
                             (gx#&user-expander-phi _%$%self154273154281%_))
                            (_%phi154307%_ _%$%e154279154304%_))
                       (_%$%K154276154291%_
                        _%phi154307%_
                        _%ctx154302%_
                        _%K154297%_))
                     (_%$%E154275154284%_))))))
        (lambda _g157619_
          (let ((_g157620_ (##length _g157619_)))
            (cond ((##fx= _g157620_ 2)
                   (apply (lambda (_%self154312%_ _%stx154313%_)
                            (let ((_%method154315%_ 'apply-macro-expander))
                              (_%$%opt-lambda154268154309%_
                               _%self154312%_
                               _%stx154313%_
                               _%method154315%_)))
                          _g157619_))
                  ((##fx= _g157620_ 3)
                   (apply _%$%opt-lambda154268154309%_ _g157619_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-apply-user-expander
                    _g157619_)))))))
    (define gx#core-apply-user-macro
      (lambda (_%K154260%_
               _%stx154261%_
               _%ctx154262%_
               _%phi154263%_
               _%method154264%_)
        (let ((_%mark154266%_
               (gx#make-expander-mark
                '#f
                _%ctx154262%_
                _%phi154263%_
                _%stx154261%_)))
          (call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander
               _%K154260%_
               (gx#stx-apply-mark _%stx154261%_ _%mark154266%_)
               _%method154264%_)
              _%mark154266%_))
           gx#current-expander-marks
           (cons _%mark154266%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier
      (let ((_%$%opt-lambda154106154119%_
             (lambda (_%stx154108%_ _%phi154109%_ _%ctx154110%_)
               (let _%lp154112%_ ((_%bind154114%_
                                   (gx#core-resolve-identifier
                                    _%stx154108%_
                                    _%phi154109%_
                                    _%ctx154110%_)))
                 (if (gx#import-binding? _%bind154114%_)
                     (_%lp154112%_ (gx#&import-binding-e _%bind154114%_))
                     (if (gx#alias-binding? _%bind154114%_)
                         (_%lp154112%_
                          (gx#core-resolve-identifier
                           (gx#&alias-binding-e _%bind154114%_)
                           _%phi154109%_
                           _%ctx154110%_))
                         _%bind154114%_))))))
        (lambda _g157621_
          (let ((_g157622_ (##length _g157621_)))
            (cond ((##fx= _g157622_ 1)
                   (apply (lambda (_%stx154122%_)
                            (let* ((_%phi154124%_ (gx#current-expander-phi))
                                   (_%ctx154126%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda154106154119%_
                               _%stx154122%_
                               _%phi154124%_
                               _%ctx154126%_)))
                          _g157621_))
                  ((##fx= _g157622_ 2)
                   (apply (lambda (_%stx154128%_ _%phi154129%_)
                            (let ((_%ctx154131%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda154106154119%_
                               _%stx154128%_
                               _%phi154129%_
                               _%ctx154131%_)))
                          _g157621_))
                  ((##fx= _g157622_ 3)
                   (apply _%$%opt-lambda154106154119%_ _g157621_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#resolve-identifier
                    _g157621_)))))))
    (define gx#bind-identifier!
      (let ((_%$%opt-lambda154061154074%_
             (lambda (_%stx154063%_
                      _%val154064%_
                      _%rebind?154065%_
                      _%phi154066%_
                      _%ctx154067%_)
               (let ((_%rebind?154072%_
                      (if (not _%rebind?154065%_)
                          gx#core-context-rebind?
                          (if (procedure? _%rebind?154065%_)
                              _%rebind?154065%_
                              true))))
                 (gx#core-bind!
                  (gx#core-identifier-key _%stx154063%_)
                  _%val154064%_
                  _%rebind?154072%_
                  _%phi154066%_
                  _%ctx154067%_)))))
        (lambda _g157623_
          (let ((_g157624_ (##length _g157623_)))
            (cond ((##fx= _g157624_ 2)
                   (apply (lambda (_%stx154077%_ _%val154078%_)
                            (let* ((_%rebind?154080%_ '#f)
                                   (_%phi154082%_ (gx#current-expander-phi))
                                   (_%ctx154084%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda154061154074%_
                               _%stx154077%_
                               _%val154078%_
                               _%rebind?154080%_
                               _%phi154082%_
                               _%ctx154084%_)))
                          _g157623_))
                  ((##fx= _g157624_ 3)
                   (apply (lambda (_%stx154086%_
                                   _%val154087%_
                                   _%rebind?154088%_)
                            (let* ((_%phi154090%_ (gx#current-expander-phi))
                                   (_%ctx154092%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda154061154074%_
                               _%stx154086%_
                               _%val154087%_
                               _%rebind?154088%_
                               _%phi154090%_
                               _%ctx154092%_)))
                          _g157623_))
                  ((##fx= _g157624_ 4)
                   (apply (lambda (_%stx154094%_
                                   _%val154095%_
                                   _%rebind?154096%_
                                   _%phi154097%_)
                            (let ((_%ctx154099%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda154061154074%_
                               _%stx154094%_
                               _%val154095%_
                               _%rebind?154096%_
                               _%phi154097%_
                               _%ctx154099%_)))
                          _g157623_))
                  ((##fx= _g157624_ 5)
                   (apply _%$%opt-lambda154061154074%_ _g157623_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#bind-identifier!
                    _g157623_)))))))
    (define gx#core-resolve-identifier
      (let ((_%$%opt-lambda154027154044%_
             (lambda (_%stx154029%_ _%phi154030%_ _%ctx154031%_)
               (let _%lp154033%_ ((_%e154035%_ _%stx154029%_)
                                  (_%marks154036%_
                                   (gx#current-expander-marks)))
                 (if (symbol? _%e154035%_)
                     (gx#core-resolve-binding
                      _%e154035%_
                      _%phi154030%_
                      _%phi154030%_
                      _%ctx154031%_
                      (reverse _%marks154036%_))
                     (if (gx#identifier-quote? _%e154035%_)
                         (gx#core-resolve-binding
                          (gx#&AST-e _%e154035%_)
                          _%phi154030%_
                          '0
                          (gx#&syntax-quote-context _%e154035%_)
                          (gx#&syntax-quote-marks _%e154035%_))
                         (if (gx#identifier-wrap? _%e154035%_)
                             (gx#core-resolve-binding
                              (gx#&AST-e _%e154035%_)
                              _%phi154030%_
                              _%phi154030%_
                              _%ctx154031%_
                              (foldl gx#apply-mark
                                     (gx#&identifier-wrap-marks _%e154035%_)
                                     _%marks154036%_))
                             (if (gx#syntax-wrap? _%e154035%_)
                                 (_%lp154033%_
                                  (gx#&AST-e _%e154035%_)
                                  (gx#apply-mark
                                   (gx#&syntax-wrap-mark _%e154035%_)
                                   _%marks154036%_))
                                 (if (gx#AST? _%e154035%_)
                                     (_%lp154033%_
                                      (gx#&AST-e _%e154035%_)
                                      _%marks154036%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad identifier"
                                      _%stx154029%_))))))))))
        (lambda _g157625_
          (let ((_g157626_ (##length _g157625_)))
            (cond ((##fx= _g157626_ 1)
                   (apply (lambda (_%stx154047%_)
                            (let* ((_%phi154049%_ (gx#current-expander-phi))
                                   (_%ctx154051%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda154027154044%_
                               _%stx154047%_
                               _%phi154049%_
                               _%ctx154051%_)))
                          _g157625_))
                  ((##fx= _g157626_ 2)
                   (apply (lambda (_%stx154053%_ _%phi154054%_)
                            (let ((_%ctx154056%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda154027154044%_
                               _%stx154053%_
                               _%phi154054%_
                               _%ctx154056%_)))
                          _g157625_))
                  ((##fx= _g157626_ 3)
                   (apply _%$%opt-lambda154027154044%_ _g157625_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-identifier
                    _g157625_)))))))
    (define gx#core-resolve-binding
      (lambda (_%id153940%_
               _%phi153941%_
               _%src-phi153942%_
               _%ctx153943%_
               _%marks153944%_)
        (letrec ((_%resolve153946%_
                  (lambda (_%ctx154013%_ _%src-phi154014%_ _%key154015%_)
                    (let _%lp154017%_ ((_%ctx154019%_
                                        (gx#core-context-shift
                                         _%ctx154013%_
                                         _%phi153941%_))
                                       (_%dphi154020%_
                                        (fx- _%phi153941%_ _%src-phi154014%_)))
                      (let ((_%$e154022%_
                             (gx#core-context-resolve
                              _%ctx154019%_
                              _%key154015%_)))
                        (if _%$e154022%_
                            _%$e154022%_
                            (if (fxzero? _%dphi154020%_)
                                '#f
                                (if (fxpositive? _%dphi154020%_)
                                    (_%lp154017%_
                                     (gx#core-context-shift _%ctx154019%_ '-1)
                                     (fx1- _%dphi154020%_))
                                    (_%lp154017%_
                                     (gx#core-context-shift _%ctx154019%_ '1)
                                     (fx1+ _%dphi154020%_))))))))))
          (let _%lp153948%_ ((_%ctx153950%_ _%ctx153943%_)
                             (_%src-phi153951%_ _%src-phi153942%_)
                             (_%rest153952%_ _%marks153944%_))
            (let* ((_%$%rest153953153961%_ _%rest153952%_)
                   (_%$%E153956153965%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest153953153961%_
                             '([hd . rest])
                             'else)
                      (void)))
                   (_%$%else153955153969%_
                    (lambda ()
                      (_%resolve153946%_
                       _%ctx153950%_
                       _%src-phi153951%_
                       _%id153940%_)))
                   (_%$%K153957154001%_
                    (lambda (_%rest153972%_ _%hd153973%_)
                      (let* ((_%$%hd153974153980%_ _%hd153973%_)
                             (_%$%E153976153983%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%hd153974153980%_
                                       '((expander-mark subst)))
                                (void)))
                             (_%$%K153977153993%_
                              (lambda (_%subst153986%_)
                                (let ((_%$e153990%_
                                       (let ((_%key153988%_
                                              (if _%subst153986%_
                                                  (hash-get
                                                   _%subst153986%_
                                                   _%id153940%_)
                                                  '#f)))
                                         (if _%key153988%_
                                             (_%resolve153946%_
                                              _%ctx153950%_
                                              _%src-phi153951%_
                                              _%key153988%_)
                                             '#f))))
                                  (if _%$e153990%_
                                      _%$e153990%_
                                      (_%lp153948%_
                                       (gx#&expander-mark-context _%hd153973%_)
                                       (gx#&expander-mark-phi _%hd153973%_)
                                       _%rest153972%_))))))
                        (if (gx#expander-mark? _%$%hd153974153980%_)
                            (let* ((_%$%e153978153996%_
                                    (gx#&expander-mark-subst
                                     _%$%hd153974153980%_))
                                   (_%subst153999%_ _%$%e153978153996%_))
                              (_%$%K153977153993%_ _%subst153999%_))
                            (_%$%E153976153983%_))))))
              (if (pair? _%$%rest153953153961%_)
                  (let ((_%$%hd153958154004%_ (##car _%$%rest153953153961%_))
                        (_%$%tl153959154006%_ (##cdr _%$%rest153953153961%_)))
                    (let* ((_%hd154009%_ _%$%hd153958154004%_)
                           (_%rest154011%_ _%$%tl153959154006%_))
                      (_%$%K153957154001%_ _%rest154011%_ _%hd154009%_)))
                  (_%$%else153955153969%_)))))))
    (define gx#core-bind!
      (let ((_%$%opt-lambda153809153907%_
             (lambda (_%key153811%_
                      _%val153812%_
                      _%rebind?153813%_
                      _%phi153814%_
                      _%ctx153815%_)
               (letrec ((_%update-binding153817%_
                         (lambda (_%xval153889%_)
                           (if (or (_%rebind?153813%_
                                    _%ctx153815%_
                                    _%xval153889%_
                                    _%val153812%_)
                                   (and (gx#import-binding? _%xval153889%_)
                                        (or (gx#&import-binding-weak?
                                             _%xval153889%_)
                                            (and (gx#binding? _%val153812%_)
                                                 (not (gx#import-binding?
                                                       _%val153812%_)))))
                                   (and (gx#extern-binding? _%xval153889%_)
                                        (gx#runtime-binding? _%val153812%_)
                                        (eq? (gx#&binding-id _%val153812%_)
                                             (gx#&binding-id _%xval153889%_))))
                               _%val153812%_
                               (if (and (gx#import-binding? _%val153812%_)
                                        (or (gx#&import-binding-weak?
                                             _%val153812%_)
                                            (and (gx#binding? _%xval153889%_)
                                                 (eq? (gx#&binding-id
                                                       _%val153812%_)
                                                      (gx#&binding-id
                                                       _%xval153889%_)))))
                                   _%xval153889%_
                                   (if (and (gx#import-binding? _%val153812%_)
                                            (gx#binding? _%xval153889%_))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad binding; import conflict"
                                        _%key153811%_
                                        (cons (gx#&binding-id _%val153812%_)
                                              (cons (gx#expander-context-id
                                                     (gx#&import-binding-context
                                                      _%val153812%_))
                                                    '()))
                                        (cons (gx#&binding-id _%xval153889%_)
                                              (cons (if (gx#import-binding?
                                                         _%xval153889%_)
                                                        (gx#expander-context-id
                                                         (gx#&import-binding-context
                                                          _%xval153889%_))
                                                        _%xval153889%_)
                                                    '())))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad binding; rebind conflict"
                                        _%key153811%_
                                        _%val153812%_
                                        _%xval153889%_))))))
                        (_%gensubst153818%_
                         (lambda (_%subst153884%_ _%id153885%_)
                           (let ((_%eid153887%_
                                  (gensym (if (uninterned-symbol? _%id153885%_)
                                              '%
                                              _%id153885%_))))
                             (hash-put!
                              _%subst153884%_
                              _%id153885%_
                              _%eid153887%_)
                             _%eid153887%_)))
                        (_%subst!153819%_
                         (lambda (_%key153821%_)
                           (let* ((_%$%key153822153830%_ _%key153821%_)
                                  (_%$%E153825153834%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%key153822153830%_
                                            '([id . mark])
                                            'else)
                                     (void)))
                                  (_%$%else153824153838%_
                                   (lambda () _%key153821%_))
                                  (_%$%K153826153872%_
                                   (lambda (_%mark153841%_ _%id153842%_)
                                     (let* ((_%$%mark153843153849%_
                                             _%mark153841%_)
                                            (_%$%E153845153852%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%mark153843153849%_
                                                      '((expander-mark subst)))
                                               (void)))
                                            (_%$%K153846153864%_
                                             (lambda (_%subst153855%_)
                                               (if (not _%subst153855%_)
                                                   (let ((_%subst153858%_
                                                          (make-hash-table-eq)))
                                                     (gx#&expander-mark-subst-set!
                                                      _%mark153841%_
                                                      _%subst153858%_)
                                                     (_%gensubst153818%_
                                                      _%subst153858%_
                                                      _%id153842%_))
                                                   (let ((_%$e153860%_
                                                          (hash-get
                                                           _%subst153855%_
                                                           _%id153842%_)))
                                                     (if _%$e153860%_
                                                         _%$e153860%_
                                                         (_%gensubst153818%_
                                                          _%subst153855%_
                                                          _%id153842%_)))))))
                                       (if (gx#expander-mark?
                                            _%$%mark153843153849%_)
                                           (let* ((_%$%e153847153867%_
                                                   (gx#&expander-mark-subst
                                                    _%$%mark153843153849%_))
                                                  (_%subst153870%_
                                                   _%$%e153847153867%_))
                                             (_%$%K153846153864%_
                                              _%subst153870%_))
                                           (_%$%E153845153852%_))))))
                             (if (pair? _%$%key153822153830%_)
                                 (let ((_%$%hd153827153875%_
                                        (##car _%$%key153822153830%_))
                                       (_%$%tl153828153877%_
                                        (##cdr _%$%key153822153830%_)))
                                   (let* ((_%id153880%_ _%$%hd153827153875%_)
                                          (_%mark153882%_
                                           _%$%tl153828153877%_))
                                     (_%$%K153826153872%_
                                      _%mark153882%_
                                      _%id153880%_)))
                                 (_%$%else153824153838%_))))))
                 (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
                     (begin (displayln '"@bind " _%key153811%_) (force-output))
                     '#!void)
                 (gx#core-context-bind!
                  (gx#core-context-shift _%ctx153815%_ _%phi153814%_)
                  (_%subst!153819%_ _%key153811%_)
                  _%val153812%_
                  _%update-binding153817%_)))))
        (lambda _g157627_
          (let ((_g157628_ (##length _g157627_)))
            (cond ((##fx= _g157628_ 2)
                   (apply (lambda (_%key153910%_ _%val153911%_)
                            (let* ((_%rebind?153913%_ false)
                                   (_%phi153915%_ (gx#current-expander-phi))
                                   (_%ctx153917%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda153809153907%_
                               _%key153910%_
                               _%val153911%_
                               _%rebind?153913%_
                               _%phi153915%_
                               _%ctx153917%_)))
                          _g157627_))
                  ((##fx= _g157628_ 3)
                   (apply (lambda (_%key153919%_
                                   _%val153920%_
                                   _%rebind?153921%_)
                            (let* ((_%phi153923%_ (gx#current-expander-phi))
                                   (_%ctx153925%_
                                    (gx#current-expander-context)))
                              (_%$%opt-lambda153809153907%_
                               _%key153919%_
                               _%val153920%_
                               _%rebind?153921%_
                               _%phi153923%_
                               _%ctx153925%_)))
                          _g157627_))
                  ((##fx= _g157628_ 4)
                   (apply (lambda (_%key153927%_
                                   _%val153928%_
                                   _%rebind?153929%_
                                   _%phi153930%_)
                            (let ((_%ctx153932%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda153809153907%_
                               _%key153927%_
                               _%val153928%_
                               _%rebind?153929%_
                               _%phi153930%_
                               _%ctx153932%_)))
                          _g157627_))
                  ((##fx= _g157628_ 5)
                   (apply _%$%opt-lambda153809153907%_ _g157627_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind!
                    _g157627_)))))))
    (define gx#core-identifier-key
      (lambda (_%stx153742%_)
        (if (symbol? _%stx153742%_)
            (let* ((_%$%g153744153752%_ (gx#current-expander-marks))
                   (_%$%E153747153756%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%g153744153752%_
                             '([hd . _])
                             'else)
                      (void)))
                   (_%$%else153746153760%_ (lambda () _%stx153742%_))
                   (_%$%K153748153765%_
                    (lambda (_%hd153763%_) (cons _%stx153742%_ _%hd153763%_))))
              (if (pair? _%$%g153744153752%_)
                  (let* ((_%$%hd153749153768%_ (##car _%$%g153744153752%_))
                         (_%hd153771%_ _%$%hd153749153768%_))
                    (_%$%K153748153765%_ _%hd153771%_))
                  (_%$%else153746153760%_)))
            (if (gx#identifier? _%stx153742%_)
                (let* ((_%id153774%_ (gx#syntax-local-unwrap _%stx153742%_))
                       (_%eid153776%_ (gx#stx-e _%id153774%_))
                       (_%marks153778%_
                        (gx#stx-identifier-marks* _%id153774%_))
                       (_%$%marks153780153788%_ _%marks153778%_)
                       (_%$%E153783153792%_
                        (lambda ()
                          (error '"No clause matching"
                                 _%$%marks153780153788%_
                                 '([hd . _])
                                 'else)
                          (void)))
                       (_%$%else153782153796%_ (lambda () _%eid153776%_))
                       (_%$%K153784153801%_
                        (lambda (_%hd153799%_)
                          (cons _%eid153776%_ _%hd153799%_))))
                  (if (pair? _%$%marks153780153788%_)
                      (let* ((_%$%hd153785153804%_
                              (##car _%$%marks153780153788%_))
                             (_%hd153807%_ _%$%hd153785153804%_))
                        (_%$%K153784153801%_ _%hd153807%_))
                      (_%$%else153782153796%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx153742%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx153681%_ _%phi153682%_)
        (letrec ((_%make-phi153684%_
                  (lambda (_%super153740%_)
                    (gx#make-phi-context (gensym 'phi) _%super153740%_)))
                 (_%make-phi/up153685%_
                  (lambda (_%ctx153735%_ _%super153736%_)
                    (let ((_%ctx+1153738%_
                           (_%make-phi153684%_ _%super153736%_)))
                      (gx#&phi-context-up-set! _%ctx153735%_ _%ctx+1153738%_)
                      (gx#&phi-context-down-set! _%ctx+1153738%_ _%ctx153735%_)
                      _%ctx+1153738%_)))
                 (_%make-phi/down153686%_
                  (lambda (_%ctx153730%_ _%super153731%_)
                    (let ((_%ctx-1153733%_
                           (_%make-phi153684%_ _%super153731%_)))
                      (gx#&phi-context-up-set! _%ctx-1153733%_ _%ctx153730%_)
                      (gx#&phi-context-down-set! _%ctx153730%_ _%ctx-1153733%_)
                      _%ctx-1153733%_)))
                 (_%shift153687%_
                  (lambda (_%ctx153713%_
                           _%delta153714%_
                           _%make-delta-context153715%_
                           _%phi153716%_
                           _%K153717%_)
                    (let ((_%$e153719%_ (gx#&phi-context-super _%ctx153713%_)))
                      (if _%$e153719%_
                          ((lambda (_%super153722%_)
                             (let* ((_%super153724%_
                                     (_%K153717%_
                                      _%super153722%_
                                      _%delta153714%_))
                                    (_%ctx+d153726%_
                                     (_%make-delta-context153715%_
                                      _%ctx153713%_
                                      _%super153724%_)))
                               (_%K153717%_
                                _%ctx+d153726%_
                                (fx- _%phi153716%_ _%delta153714%_))))
                           _%$e153719%_)
                          (error '"Bad context" _%ctx153713%_))))))
          (let _%K153689%_ ((_%ctx153691%_ _%ctx153681%_)
                            (_%phi153692%_ _%phi153682%_))
            (if (fxzero? _%phi153692%_)
                _%ctx153691%_
                (if (gx#&phi-context? _%ctx153691%_)
                    (if (fxpositive? _%phi153692%_)
                        (let ((_%$e153696%_
                               (gx#&phi-context-up _%ctx153691%_)))
                          (if _%$e153696%_
                              ((lambda (_%$%g153698153700%_)
                                 (_%K153689%_
                                  _%$%g153698153700%_
                                  (fx1- _%phi153692%_)))
                               _%$e153696%_)
                              (_%shift153687%_
                               _%ctx153691%_
                               '1
                               _%make-phi/up153685%_
                               _%phi153692%_
                               _%K153689%_)))
                        (let ((_%$e153704%_
                               (gx#&phi-context-down _%ctx153691%_)))
                          (if _%$e153704%_
                              ((lambda (_%$%g153706153708%_)
                                 (_%K153689%_
                                  _%$%g153706153708%_
                                  (fx1+ _%phi153692%_)))
                               _%$e153704%_)
                              (_%shift153687%_
                               _%ctx153691%_
                               '-1
                               _%make-phi/down153686%_
                               _%phi153692%_
                               _%K153689%_))))
                    _%ctx153691%_))))))
    (define gx#core-context-get
      (lambda (_%ctx153678%_ _%key153679%_)
        (hash-get (gx#&expander-context-table _%ctx153678%_) _%key153679%_)))
    (define gx#core-context-put!
      (lambda (_%ctx153674%_ _%key153675%_ _%val153676%_)
        (hash-put!
         (gx#&expander-context-table _%ctx153674%_)
         _%key153675%_
         _%val153676%_)
        _%val153676%_))
    (define gx#core-context-resolve
      (lambda (_%ctx153660%_ _%key153661%_)
        (let _%lp153663%_ ((_%ctx153665%_ _%ctx153660%_))
          (let ((_%$e153667%_
                 (gx#core-context-get _%ctx153665%_ _%key153661%_)))
            (if _%$e153667%_
                _%$e153667%_
                (let ((_%$e153670%_
                       (if (gx#&phi-context? _%ctx153665%_)
                           (gx#&phi-context-super _%ctx153665%_)
                           '#f)))
                  (if _%$e153670%_ (_%lp153663%_ _%$e153670%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx153649%_ _%key153650%_ _%val153651%_ _%rebind153652%_)
        (let ((_%$e153654%_ (gx#core-context-get _%ctx153649%_ _%key153650%_)))
          (if _%$e153654%_
              ((lambda (_%xval153657%_)
                 (gx#core-context-put!
                  _%ctx153649%_
                  _%key153650%_
                  (_%rebind153652%_ _%xval153657%_)))
               _%$e153654%_)
              (gx#core-context-put!
               _%ctx153649%_
               _%key153650%_
               _%val153651%_)))))
    (define gx#core-context-top
      (let ((_%$%opt-lambda153622153634%_
             (lambda (_%ctx153624%_ _%stop?153625%_)
               (let _%lp153627%_ ((_%ctx153629%_ _%ctx153624%_))
                 (if (_%stop?153625%_ _%ctx153629%_)
                     _%ctx153629%_
                     (if (gx#phi-context? _%ctx153629%_)
                         (_%lp153627%_ (gx#&phi-context-super _%ctx153629%_))
                         '#f))))))
        (lambda _g157629_
          (let ((_g157630_ (##length _g157629_)))
            (cond ((##fx= _g157630_ 0)
                   (apply (lambda ()
                            (let* ((_%ctx153638%_
                                    (gx#current-expander-context))
                                   (_%stop?153640%_ gx#top-context?))
                              (_%$%opt-lambda153622153634%_
                               _%ctx153638%_
                               _%stop?153640%_)))
                          _g157629_))
                  ((##fx= _g157630_ 1)
                   (apply (lambda (_%ctx153642%_)
                            (let ((_%stop?153644%_ gx#top-context?))
                              (_%$%opt-lambda153622153634%_
                               _%ctx153642%_
                               _%stop?153644%_)))
                          _g157629_))
                  ((##fx= _g157630_ 2)
                   (apply _%$%opt-lambda153622153634%_ _g157629_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-top
                    _g157629_)))))))
    (define gx#core-context-root
      (let ((_%$%opt-lambda153607153615%_
             (lambda (_%ctx153609%_)
               (let _%lp153611%_ ((_%ctx153613%_ _%ctx153609%_))
                 (if (gx#phi-context? _%ctx153613%_)
                     (_%lp153611%_ (gx#&phi-context-super _%ctx153613%_))
                     _%ctx153613%_)))))
        (lambda _g157631_
          (let ((_g157632_ (##length _g157631_)))
            (cond ((##fx= _g157632_ 0)
                   (apply (lambda ()
                            (let ((_%ctx153619%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda153607153615%_ _%ctx153619%_)))
                          _g157631_))
                  ((##fx= _g157632_ 1)
                   (apply _%$%opt-lambda153607153615%_ _g157631_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-root
                    _g157631_)))))))
    (define gx#core-context-rebind?
      (let ((_%$%opt-lambda153589153597%_
             (lambda (_%ctx153591%_ . _%ignore153592%_)
               (let ((_%$e153594%_ (gx#current-expander-allow-rebind?)))
                 (if _%$e153594%_
                     _%$e153594%_
                     (if (gx#top-context? _%ctx153591%_)
                         (if (not (gx#module-context? _%ctx153591%_))
                             (not (gx#prelude-context? _%ctx153591%_))
                             '#f)
                         '#f))))))
        (lambda _g157633_
          (let ((_g157634_ (##length _g157633_)))
            (cond ((##fx= _g157634_ 0)
                   (apply (lambda ()
                            (let ((_%ctx153601%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda153589153597%_ _%ctx153601%_)))
                          _g157633_))
                  ((##fx= _g157634_ 1)
                   (apply _%$%opt-lambda153589153597%_ _g157633_))
                  ((##fx>= _g157634_ 1)
                   (apply _%$%opt-lambda153589153597%_ _g157633_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-rebind?
                    _g157633_)))))))
    (define gx#core-context-namespace
      (let ((_%$%opt-lambda153572153582%_
             (lambda (_%ctx153574%_)
               (let ((_%$e153576%_ (gx#core-context-top _%ctx153574%_)))
                 (if _%$e153576%_
                     ((lambda (_%ctx153579%_)
                        (if (gx#module-context? _%ctx153579%_)
                            (gx#&module-context-ns _%ctx153579%_)
                            '#f))
                      _%$e153576%_)
                     '#f)))))
        (lambda _g157635_
          (let ((_g157636_ (##length _g157635_)))
            (cond ((##fx= _g157636_ 0)
                   (apply (lambda ()
                            (let ((_%ctx153586%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda153572153582%_ _%ctx153586%_)))
                          _g157635_))
                  ((##fx= _g157636_ 1)
                   (apply _%$%opt-lambda153572153582%_ _g157635_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-namespace
                    _g157635_)))))))
    (define gx#expander-binding?
      (let ((_%$%opt-lambda153558153563%_
             (lambda (_%bind153560%_ _%is?153561%_)
               (if (gx#syntax-binding? _%bind153560%_)
                   (_%is?153561%_ (gx#&syntax-binding-e _%bind153560%_))
                   '#f))))
        (lambda _g157637_
          (let ((_g157638_ (##length _g157637_)))
            (cond ((##fx= _g157638_ 1)
                   (apply (lambda (_%bind153566%_)
                            (let ((_%is?153568%_ gx#expander?))
                              (_%$%opt-lambda153558153563%_
                               _%bind153566%_
                               _%is?153568%_)))
                          _g157637_))
                  ((##fx= _g157638_ 2)
                   (apply _%$%opt-lambda153558153563%_ _g157637_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-binding?
                    _g157637_)))))))
    (define gx#core-expander-binding?
      (lambda (_%bind153557%_)
        (gx#expander-binding? _%bind153557%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind153555%_)
        (gx#expander-binding? _%bind153555%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind153549%_)
        (letrec ((_%direct-special-form?153551%_
                  (lambda (_%obj153553%_)
                    (direct-instance? gx#special-form::t _%obj153553%_))))
          (gx#expander-binding?
           _%bind153549%_
           _%direct-special-form?153551%_))))
    (define gx#special-form-binding?
      (lambda (_%bind153547%_)
        (gx#expander-binding? _%bind153547%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind153538%_)
        (letrec ((_%feature?153540%_
                  (lambda (_%e153542%_)
                    (let ((_%$e153544%_ (gx#feature-expander? _%e153542%_)))
                      (if _%$e153544%_
                          _%$e153544%_
                          (gx#module-context? _%e153542%_))))))
          (gx#expander-binding? _%bind153538%_ _%feature?153540%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind153536%_)
        (gx#expander-binding? _%bind153536%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?
      (let ((_%$%opt-lambda153521153526%_
             (lambda (_%id153523%_ _%bound?153524%_)
               (if (gx#identifier? _%id153523%_)
                   (_%bound?153524%_ (gx#resolve-identifier _%id153523%_))
                   '#f))))
        (lambda _g157639_
          (let ((_g157640_ (##length _g157639_)))
            (cond ((##fx= _g157640_ 1)
                   (apply (lambda (_%id153529%_)
                            (let ((_%bound?153531%_ gx#core-expander-binding?))
                              (_%$%opt-lambda153521153526%_
                               _%id153529%_
                               _%bound?153531%_)))
                          _g157639_))
                  ((##fx= _g157640_ 2)
                   (apply _%$%opt-lambda153521153526%_ _g157639_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bound-identifier?
                    _g157639_)))))))
    (define gx#core-identifier=?
      (lambda (_%x153513%_ _%y153514%_)
        (letrec ((_%y=?153516%_
                  (lambda (_%xid153520%_)
                    ((if (list? _%y153514%_) memq eq?)
                     _%xid153520%_
                     _%y153514%_))))
          (let ((_%bind153518%_ (gx#resolve-identifier _%x153513%_)))
            (if (gx#binding? _%bind153518%_)
                (_%y=?153516%_ (gx#&binding-id _%bind153518%_))
                (_%y=?153516%_ (gx#stx-e _%x153513%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e153511%_)
        (if (interned-symbol? _%e153511%_)
            (string-index (symbol->string _%e153511%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax
      (let ((_%$%opt-lambda153462153482%_
             (lambda (_%stx153464%_
                      _%src153465%_
                      _%ctx153466%_
                      _%marks153467%_)
               (if (##structure? _%stx153464%_)
                   (let ((_%$e153469%_
                          (gx#sealed-syntax-unwrap _%stx153464%_)))
                     (if _%$e153469%_
                         _%$e153469%_
                         (if (gx#identifier? _%stx153464%_)
                             (let ((_%id153473%_
                                    (gx#stx-unwrap
                                     _%stx153464%_
                                     _%marks153467%_)))
                               (gx#make-syntax-quote
                                (gx#&AST-e _%id153473%_)
                                (let ((_%$e153475%_
                                       (gx#&AST-source _%id153473%_)))
                                  (if _%$e153475%_ _%$e153475%_ _%src153465%_))
                                _%ctx153466%_
                                (gx#&identifier-wrap-marks _%id153473%_)))
                             (gx#make-syntax-quote
                              (gx#stx-e _%stx153464%_)
                              (let ((_%$e153479%_
                                     (gx#stx-source _%stx153464%_)))
                                (if _%$e153479%_ _%$e153479%_ _%src153465%_))
                              _%ctx153466%_
                              (reverse _%marks153467%_)))))
                   (gx#make-syntax-quote
                    _%stx153464%_
                    _%src153465%_
                    _%ctx153466%_
                    (reverse _%marks153467%_))))))
        (lambda _g157641_
          (let ((_g157642_ (##length _g157641_)))
            (cond ((##fx= _g157642_ 1)
                   (apply (lambda (_%stx153485%_)
                            (let* ((_%src153487%_ '#f)
                                   (_%ctx153489%_
                                    (gx#current-expander-context))
                                   (_%marks153491%_
                                    (gx#current-expander-marks)))
                              (_%$%opt-lambda153462153482%_
                               _%stx153485%_
                               _%src153487%_
                               _%ctx153489%_
                               _%marks153491%_)))
                          _g157641_))
                  ((##fx= _g157642_ 2)
                   (apply (lambda (_%stx153493%_ _%src153494%_)
                            (let* ((_%ctx153496%_
                                    (gx#current-expander-context))
                                   (_%marks153498%_
                                    (gx#current-expander-marks)))
                              (_%$%opt-lambda153462153482%_
                               _%stx153493%_
                               _%src153494%_
                               _%ctx153496%_
                               _%marks153498%_)))
                          _g157641_))
                  ((##fx= _g157642_ 3)
                   (apply (lambda (_%stx153500%_ _%src153501%_ _%ctx153502%_)
                            (let ((_%marks153504%_
                                   (gx#current-expander-marks)))
                              (_%$%opt-lambda153462153482%_
                               _%stx153500%_
                               _%src153501%_
                               _%ctx153502%_
                               _%marks153504%_)))
                          _g157641_))
                  ((##fx= _g157642_ 4)
                   (apply _%$%opt-lambda153462153482%_ _g157641_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-quote-syntax
                    _g157641_)))))))
    (define gx#core-cons
      (lambda (_%hd153460%_ _%tl153461%_)
        (cons (gx#core-quote-syntax _%hd153460%_) _%tl153461%_)))
    (define gx#core-list
      (lambda (_%hd153457%_ . _%rest153458%_)
        (cons (gx#core-quote-syntax _%hd153457%_) _%rest153458%_)))
    (define gx#core-cons*
      (lambda (_%hd153454%_ . _%rest153455%_)
        (apply cons* (gx#core-quote-syntax _%hd153454%_) _%rest153455%_)))
    (define gx#core-resolve-path
      (let ((_%$%opt-lambda153421153444%_
             (lambda (_%stx-path153423%_ _%rel153424%_)
               (let ((_%path153441%_ (gx#stx-e _%stx-path153423%_))
                     (_%reldir153442%_
                      (let _%lp153426%_ ((_%relsrc153428%_
                                          (let ((_%$e153438%_
                                                 (gx#stx-source
                                                  _%stx-path153423%_)))
                                            (if _%$e153438%_
                                                _%$e153438%_
                                                _%rel153424%_))))
                        (if (gx#AST? _%relsrc153428%_)
                            (_%lp153426%_
                             (let ((_%$e153431%_
                                    (gx#stx-source _%relsrc153428%_)))
                               (if _%$e153431%_
                                   _%$e153431%_
                                   (gx#stx-e _%relsrc153428%_))))
                            (if (source-location-path? _%relsrc153428%_)
                                (path-directory
                                 (source-location-path _%relsrc153428%_))
                                (if (string? _%relsrc153428%_)
                                    (path-directory _%relsrc153428%_)
                                    (if (not (null? (gx#current-expander-path)))
                                        (path-directory
                                         (car (gx#current-expander-path)))
                                        (current-directory))))))))
                 (path-expand
                  _%path153441%_
                  (path-normalize _%reldir153442%_))))))
        (lambda _g157643_
          (let ((_g157644_ (##length _g157643_)))
            (cond ((##fx= _g157644_ 1)
                   (apply (lambda (_%stx-path153447%_)
                            (let ((_%rel153449%_ '#f))
                              (_%$%opt-lambda153421153444%_
                               _%stx-path153447%_
                               _%rel153449%_)))
                          _g157643_))
                  ((##fx= _g157644_ 2)
                   (apply _%$%opt-lambda153421153444%_ _g157643_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-path
                    _g157643_)))))))
    (define gx#core-deserialize-mark
      (let ((_%$%opt-lambda153377153412%_
             (lambda (_%repr153379%_ _%ctx153380%_)
               (let* ((_%$%repr153381153388%_ _%repr153379%_)
                      (_%$%E153383153392%_
                       (lambda ()
                         (error '"No clause matching"
                                _%$%repr153381153388%_
                                '([phi . subs]))
                         (void)))
                      (_%$%K153384153400%_
                       (lambda (_%subs153395%_ _%phi153396%_)
                         (let ((_%subst153398%_
                                (if (not (null? _%subs153395%_))
                                    (list->hash-table-eq _%subs153395%_)
                                    '#f)))
                           (gx#make-expander-mark
                            _%subst153398%_
                            _%ctx153380%_
                            _%phi153396%_
                            '#f)))))
                 (if (pair? _%$%repr153381153388%_)
                     (let ((_%$%hd153385153403%_
                            (##car _%$%repr153381153388%_))
                           (_%$%tl153386153405%_
                            (##cdr _%$%repr153381153388%_)))
                       (let* ((_%phi153408%_ _%$%hd153385153403%_)
                              (_%subs153410%_ _%$%tl153386153405%_))
                         (_%$%K153384153400%_ _%subs153410%_ _%phi153408%_)))
                     (_%$%E153383153392%_))))))
        (lambda _g157645_
          (let ((_g157646_ (##length _g157645_)))
            (cond ((##fx= _g157646_ 1)
                   (apply (lambda (_%repr153415%_)
                            (let ((_%ctx153417%_
                                   (gx#current-expander-context)))
                              (_%$%opt-lambda153377153412%_
                               _%repr153415%_
                               _%ctx153417%_)))
                          _g157645_))
                  ((##fx= _g157646_ 2)
                   (apply _%$%opt-lambda153377153412%_ _g157645_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-deserialize-mark
                    _g157645_)))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx153376%_)
        (gx#stx-rewrap _%stx153376%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx153374%_)
        (gx#stx-unwrap _%stx153374%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx153344%_)
        (let* ((_%$%g153345153353%_ (gx#current-expander-marks))
               (_%$%E153348153357%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g153345153353%_
                         '([hd . _])
                         'else)
                  (void)))
               (_%$%else153347153361%_ (lambda () _%stx153344%_))
               (_%$%K153349153366%_
                (lambda (_%hd153364%_)
                  (gx#stx-apply-mark _%stx153344%_ _%hd153364%_))))
          (if (pair? _%$%g153345153353%_)
              (let* ((_%$%hd153350153369%_ (##car _%$%g153345153353%_))
                     (_%hd153372%_ _%$%hd153350153369%_))
                (_%$%K153349153366%_ _%hd153372%_))
              (_%$%else153347153361%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym153342%_)
        (gx#syntax-local-introduce (make-symbol (gensym _%sym153342%_)))))
    (define gx#syntax-local-e
      (let ((_%$%opt-lambda153325153332%_
             (lambda (_%stx153327%_ _%E153328%_)
               (let ((_%bind153330%_ (gx#resolve-identifier _%stx153327%_)))
                 (if (gx#syntax-binding? _%bind153330%_)
                     (gx#&syntax-binding-e _%bind153330%_)
                     (_%E153328%_ _%stx153327%_))))))
        (lambda _g157647_
          (let ((_g157648_ (##length _g157647_)))
            (cond ((##fx= _g157648_ 1)
                   (apply (lambda (_%stx153335%_)
                            (let ((_%E153337%_ gx#raise-syntax-ref-error))
                              (_%$%opt-lambda153325153332%_
                               _%stx153335%_
                               _%E153337%_)))
                          _g157647_))
                  ((##fx= _g157648_ 2)
                   (apply _%$%opt-lambda153325153332%_ _g157647_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-e
                    _g157647_)))))))
    (define gx#syntax-local-value
      (let ((_%$%opt-lambda153309153316%_
             (lambda (_%stx153311%_ _%E153312%_)
               (let ((_%e153314%_
                      (gx#syntax-local-e _%stx153311%_ _%E153312%_)))
                 (if (gx#expander? _%e153314%_)
                     (gx#expander-e _%e153314%_)
                     _%e153314%_)))))
        (lambda _g157649_
          (let ((_g157650_ (##length _g157649_)))
            (cond ((##fx= _g157650_ 1)
                   (apply (lambda (_%stx153319%_)
                            (let ((_%E153321%_ gx#raise-syntax-ref-error))
                              (_%$%opt-lambda153309153316%_
                               _%stx153319%_
                               _%E153321%_)))
                          _g157649_))
                  ((##fx= _g157650_ 2)
                   (apply _%$%opt-lambda153309153316%_ _g157649_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#syntax-local-value
                    _g157649_)))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx153308%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx153308%_)))))
