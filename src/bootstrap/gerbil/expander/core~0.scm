(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712786278)
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
      (lambda _%$args119479%_
        (apply make-instance gx#expander-context::t _%$args119479%_)))
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
      (lambda _%$args119476%_
        (apply make-instance gx#root-context::t _%$args119476%_)))
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
      (lambda _%$args119473%_
        (apply make-instance gx#phi-context::t _%$args119473%_)))
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
      (lambda _%$args119470%_
        (apply make-instance gx#top-context::t _%$args119470%_)))
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
      (lambda _%$args119467%_
        (apply make-instance gx#module-context::t _%$args119467%_)))
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
      (lambda _%$args119464%_
        (apply make-instance gx#prelude-context::t _%$args119464%_)))
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
      (lambda _%$args119461%_
        (apply make-instance gx#local-context::t _%$args119461%_)))
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
      (lambda (_%self116367119432%_ _%id119434%_ _%super119435%_)
        (let* ((_%self119437%_ _%self116367119432%_)
               (_%self119439%_ _%self119437%_))
          (if (##fx< '3 (##structure-length _%self119439%_))
              (begin
                (##unchecked-structure-set!
                 _%self119439%_
                 _%id119434%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119439%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119439%_
                 _%super119435%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119439%_
                     '3
                     (##vector-length _%self119439%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self116367119452%_ _%id119453%_)
        (let ((_%super119455%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self116367119452%_
           _%id119453%_
           _%super119455%_))))
    (define gx#phi-context:::init!
      (lambda _g119522_
        (let ((_g119521_ (##length _g119522_)))
          (cond ((##fx= _g119521_ 2)
                 (apply gx#phi-context:::init!__0 _g119522_))
                ((##fx= _g119521_ 3)
                 (apply gx#phi-context:::init!__% _g119522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g119522_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self116368119283%_ _%super119285%_)
        (let* ((_%self119287%_ _%self116368119283%_)
               (_%self119289%_ _%self119287%_))
          (if (##fx< '3 (##structure-length _%self119289%_))
              (begin
                (##unchecked-structure-set!
                 _%self119289%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119289%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119289%_
                 _%super119285%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119289%_
                     '3
                     (##vector-length _%self119289%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self116368119302%_)
        (let ((_%super119304%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self116368119302%_ _%super119304%_))))
    (define gx#local-context:::init!
      (lambda _g119524_
        (let ((_g119523_ (##length _g119524_)))
          (cond ((##fx= _g119523_ 1)
                 (apply gx#local-context:::init!__0 _g119524_))
                ((##fx= _g119523_ 2)
                 (apply gx#local-context:::init!__% _g119524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g119524_))))))
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
      (lambda _%$args119157%_
        (apply make-instance gx#binding::t _%$args119157%_)))
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
      (lambda _%$args119154%_
        (apply make-instance gx#runtime-binding::t _%$args119154%_)))
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
      (lambda _%$args119151%_
        (apply make-instance gx#local-binding::t _%$args119151%_)))
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
      (lambda _%$args119148%_
        (apply make-instance gx#top-binding::t _%$args119148%_)))
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
      (lambda _%$args119145%_
        (apply make-instance gx#module-binding::t _%$args119145%_)))
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
      (lambda _%$args119142%_
        (apply make-instance gx#extern-binding::t _%$args119142%_)))
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
      (lambda _%$args119139%_
        (apply make-instance gx#syntax-binding::t _%$args119139%_)))
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
      (lambda _%$args119136%_
        (apply make-instance gx#import-binding::t _%$args119136%_)))
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
      (lambda _%$args119133%_
        (apply make-instance gx#alias-binding::t _%$args119133%_)))
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
      (lambda _%$args119130%_
        (apply make-instance gx#expander::t _%$args119130%_)))
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
      (lambda _%$args119127%_
        (apply make-instance gx#core-expander::t _%$args119127%_)))
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
      (lambda _%$args119124%_
        (apply make-instance gx#expression-form::t _%$args119124%_)))
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
      (lambda _%$args119121%_
        (apply make-instance gx#special-form::t _%$args119121%_)))
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
      (lambda _%$args119118%_
        (apply make-instance gx#definition-form::t _%$args119118%_)))
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
      (lambda _%$args119115%_
        (apply make-instance gx#top-special-form::t _%$args119115%_)))
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
      (lambda _%$args119112%_
        (apply make-instance gx#module-special-form::t _%$args119112%_)))
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
      (lambda _%$args119109%_
        (apply make-instance gx#feature-expander::t _%$args119109%_)))
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
      (lambda _%$args119106%_
        (apply make-instance gx#private-feature-expander::t _%$args119106%_)))
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
      (lambda _%$args119103%_
        (apply make-instance gx#reserved-expander::t _%$args119103%_)))
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
      (lambda _%$args119100%_
        (apply make-instance gx#macro-expander::t _%$args119100%_)))
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
      (lambda _%$args119097%_
        (apply make-instance gx#rename-macro-expander::t _%$args119097%_)))
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
      (lambda _%$args119094%_
        (apply make-instance gx#user-expander::t _%$args119094%_)))
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
      (lambda _%$args119091%_
        (apply make-instance gx#expander-mark::t _%$args119091%_)))
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
      (lambda (_%ctx119075%_
               _%message119076%_
               _%stx119077%_
               .
               _%details119078%_)
        (let ((_%ctx119089%_
               (let ((_%$e119080%_ _%ctx119075%_))
                 (if _%$e119080%_
                     _%$e119080%_
                     (let ((_%$e119083%_ (gx#core-context-top__0)))
                       (if _%$e119083%_
                           ((lambda (_%ctx119086%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx119086%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e119083%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message119076%_
                  (cons _%stx119077%_ _%details119078%_)
                  _%ctx119089%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx119062%_ _%expression?119063%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx119062%_ _%expression?119063%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx119068%_)
        (let ((_%expression?119070%_ '#f))
          (gx#eval-syntax__% _%stx119068%_ _%expression?119070%_))))
    (define gx#eval-syntax
      (lambda _g119526_
        (let ((_g119525_ (##length _g119526_)))
          (cond ((##fx= _g119525_ 1) (apply gx#eval-syntax__0 _g119526_))
                ((##fx= _g119525_ 2) (apply gx#eval-syntax__% _g119526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g119526_))))))
    (define gx#eval-syntax*
      (lambda (_%stx119059%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx119059%_))))
    (define gx#core-expand__%
      (lambda (_%stx119046%_ _%expression?119047%_)
        (if _%expression?119047%_
            (gx#core-expand-expression _%stx119046%_)
            (gx#core-expand-top _%stx119046%_))))
    (define gx#core-expand__0
      (lambda (_%stx119052%_)
        (let ((_%expression?119054%_ '#f))
          (gx#core-expand__% _%stx119052%_ _%expression?119054%_))))
    (define gx#core-expand
      (lambda _g119528_
        (let ((_g119527_ (##length _g119528_)))
          (cond ((##fx= _g119527_ 1) (apply gx#core-expand__0 _g119528_))
                ((##fx= _g119527_ 2) (apply gx#core-expand__% _g119528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g119528_))))))
    (define gx#core-expand-top
      (lambda (_%stx119013%_)
        (let* ((_%stx119015%_ (gx#core-expand*__0 _%stx119013%_))
               (_%e119016119023%_ _%stx119015%_)
               (_%E119018119027%_
                (lambda () (gx#core-expand-expression _%stx119015%_)))
               (_%E119017119041%_
                (lambda ()
                  (if (gx#stx-pair? _%e119016119023%_)
                      (let ((_%e119019119031%_
                             (gx#syntax-e _%e119016119023%_)))
                        (let ((_%hd119020119034%_ (##car _%e119019119031%_))
                              (_%tl119021119036%_ (##cdr _%e119019119031%_)))
                          (let ((_%form119039%_ _%hd119020119034%_))
                            (if (gx#core-bound-identifier?__0 _%form119039%_)
                                _%stx119015%_
                                (_%E119018119027%_)))))
                      (_%E119018119027%_)))))
          (_%E119017119041%_))))
    (define gx#core-expand-expression
      (lambda (_%stx118945%_)
        (letrec ((_%sealed-expression?118947%_
                  (lambda (_%hd118983%_)
                    (if (gx#sealed-syntax? _%hd118983%_)
                        (let* ((_%e118984118991%_ _%hd118983%_)
                               (_%E118986118995%_ (lambda () '#f))
                               (_%E118985119009%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e118984118991%_)
                                      (let ((_%e118987118999%_
                                             (gx#syntax-e _%e118984118991%_)))
                                        (let ((_%hd118988119002%_
                                               (##car _%e118987118999%_))
                                              (_%tl118989119004%_
                                               (##cdr _%e118987118999%_)))
                                          (let ((_%form119007%_
                                                 _%hd118988119002%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form119007%_
                                                 gx#expression-form-binding?)
                                                (_%E118986118995%_)))))
                                      (_%E118986118995%_)))))
                          (_%E118985119009%_))
                        '#f)))
                 (_%illegal-expression118948%_
                  (lambda (_%hd118980%_ . _%_118981%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx118945%_
                     _%hd118980%_)))
                 (_%expand-e118949%_
                  (lambda (_%form118972%_ _%hd118973%_)
                    (let ((_%bind118975%_
                           (if (##structure-instance-of?
                                _%form118972%_
                                'gx#binding::t)
                               _%form118972%_
                               (gx#resolve-identifier__0 _%form118972%_))))
                      (if (gx#core-expander-binding? _%bind118975%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind118975%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd118973%_
                            (gx#stx-source _%stx118945%_)))
                          (if (##structure-direct-instance-of?
                               _%bind118975%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind118975%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd118973%_
                                 (gx#stx-source _%stx118945%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx118945%_
                               _%form118972%_)))))))
          (let ((_%hd118951%_ (gx#core-expand-head _%stx118945%_)))
            (if (_%sealed-expression?118947%_ _%hd118951%_)
                _%hd118951%_
                (if (gx#stx-pair? _%hd118951%_)
                    (let* ((_%form118955%_ (gx#stx-car _%hd118951%_))
                           (_%bind118957%_
                            (if (gx#identifier? _%form118955%_)
                                (gx#resolve-identifier__0 _%form118955%_)
                                '#f)))
                      (if (or (not _%bind118957%_)
                              (not (gx#core-expander-binding? _%bind118957%_)))
                          (_%expand-e118949%_
                           '%%app
                           (cons '%%app _%hd118951%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind118957%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd118951%_
                               _%illegal-expression118948%_)
                              (if (gx#expression-form-binding? _%bind118957%_)
                                  (_%expand-e118949%_
                                   _%bind118957%_
                                   _%hd118951%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind118957%_)
                                      (gx#core-expand-expression
                                       (_%expand-e118949%_
                                        _%bind118957%_
                                        _%hd118951%_))
                                      (_%illegal-expression118948%_
                                       _%hd118951%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd118951%_)
                        (_%illegal-expression118948%_ _%hd118951%_)
                        (if (gx#identifier? _%hd118951%_)
                            (_%expand-e118949%_
                             '%%ref
                             (cons '%%ref (cons _%hd118951%_ '())))
                            (if (gx#stx-datum? _%hd118951%_)
                                (_%expand-e118949%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd118951%_ '())))
                                (_%illegal-expression118948%_
                                 _%hd118951%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx118940%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx118943%_ (gx#core-expand-expression _%stx118940%_)))
             (values _%stx118943%_ (gx#eval-syntax* _%stx118943%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx118921%_ _%stop?118922%_)
        (let _%lp118924%_ ((_%stx118926%_ _%stx118921%_))
          (if (_%stop?118922%_ _%stx118926%_)
              _%stx118926%_
              (let ((_%rstx118928%_ (gx#core-expand1 _%stx118926%_)))
                (if (eq? _%stx118926%_ _%rstx118928%_)
                    _%stx118926%_
                    (_%lp118924%_ _%rstx118928%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx118933%_)
        (let ((_%stop?118935%_ false))
          (gx#core-expand*__% _%stx118933%_ _%stop?118935%_))))
    (define gx#core-expand*
      (lambda _g119530_
        (let ((_g119529_ (##length _g119530_)))
          (cond ((##fx= _g119529_ 1) (apply gx#core-expand*__0 _g119530_))
                ((##fx= _g119529_ 2) (apply gx#core-expand*__% _g119530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g119530_))))))
    (define gx#core-expand1
      (lambda (_%stx118873%_)
        (letrec ((_%step118875%_
                  (lambda (_%hd118912%_)
                    (let ((_%bind118914%_
                           (gx#resolve-identifier__0 _%hd118912%_)))
                      (if (##structure-instance-of?
                           _%bind118914%_
                           'gx#runtime-binding::t)
                          _%stx118873%_
                          (if (##structure-direct-instance-of?
                               _%bind118914%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind118914%_
                                '4
                                '#f
                                '#f)
                               _%stx118873%_)
                              (if (not _%bind118914%_)
                                  _%stx118873%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx118873%_))))))))
          (let* ((_%e118876118884%_ _%stx118873%_)
                 (_%E118882118888%_ (lambda () _%stx118873%_))
                 (_%E118878118894%_
                  (lambda ()
                    (let ((_%hd118892%_ _%e118876118884%_))
                      (if (gx#identifier? _%hd118892%_)
                          (_%step118875%_ _%hd118892%_)
                          (_%E118882118888%_)))))
                 (_%E118877118908%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118876118884%_)
                        (let ((_%e118879118898%_
                               (gx#syntax-e _%e118876118884%_)))
                          (let ((_%hd118880118901%_ (##car _%e118879118898%_))
                                (_%tl118881118903%_ (##cdr _%e118879118898%_)))
                            (let ((_%hd118906%_ _%hd118880118901%_))
                              (if (gx#identifier? _%hd118906%_)
                                  (_%step118875%_ _%hd118906%_)
                                  (_%E118878118894%_)))))
                        (_%E118878118894%_)))))
            (_%E118877118908%_)))))
    (define gx#core-expand-head
      (lambda (_%stx118839%_)
        (letrec ((_%stop?118841%_
                  (lambda (_%stx118843%_)
                    (let* ((_%e118844118851%_ _%stx118843%_)
                           (_%E118846118855%_ (lambda () '#f))
                           (_%E118845118869%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118844118851%_)
                                  (let ((_%e118847118859%_
                                         (gx#syntax-e _%e118844118851%_)))
                                    (let ((_%hd118848118862%_
                                           (##car _%e118847118859%_))
                                          (_%tl118849118864%_
                                           (##cdr _%e118847118859%_)))
                                      (let ((_%hd118867%_ _%hd118848118862%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd118867%_)
                                            (_%E118846118855%_)))))
                                  (_%E118846118855%_)))))
                      (_%E118845118869%_)))))
          (gx#core-expand*__% _%stx118839%_ _%stop?118841%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx118645%_
               _%expand-special118646%_
               _%begin-form118647%_
               _%expand-e118648%_)
        (letrec ((_%expand-splice118650%_
                  (lambda (_%hd118813%_
                           _%body118814%_
                           _%rest118815%_
                           _%r118816%_)
                    (if (gx#stx-list? _%body118814%_)
                        (_%K118654%_
                         (gx#stx-foldr cons _%rest118815%_ _%body118814%_)
                         _%r118816%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx118645%_
                         _%hd118813%_))))
                 (_%expand-cond-expand118651%_
                  (lambda (_%hd118809%_ _%rest118810%_ _%r118811%_)
                    (_%K118654%_
                     (cons (gx#core-expand-cond-expand% _%hd118809%_)
                           _%rest118810%_)
                     _%r118811%_)))
                 (_%expand-include118652%_
                  (lambda (_%hd118758%_ _%rest118759%_ _%r118760%_)
                    (let* ((_%e118761118771%_ _%hd118758%_)
                           (_%E118763118775%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118761118771%_)))
                           (_%E118762118805%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118761118771%_)
                                  (let ((_%e118764118779%_
                                         (gx#syntax-e _%e118761118771%_)))
                                    (let ((_%hd118765118782%_
                                           (##car _%e118764118779%_))
                                          (_%tl118766118784%_
                                           (##cdr _%e118764118779%_)))
                                      (if (gx#stx-pair? _%tl118766118784%_)
                                          (let ((_%e118767118787%_
                                                 (gx#syntax-e
                                                  _%tl118766118784%_)))
                                            (let ((_%hd118768118790%_
                                                   (##car _%e118767118787%_))
                                                  (_%tl118769118792%_
                                                   (##cdr _%e118767118787%_)))
                                              (let ((_%path118795%_
                                                     _%hd118768118790%_))
                                                (if (gx#stx-null?
                                                     _%tl118769118792%_)
                                                    (if (gx#stx-string?
                                                         _%path118795%_)
                                                        (let* ((_%rpath118797%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path118795%_
                         (gx#stx-source _%hd118758%_)))
                       (_%block118799%_
                        (gx#core-expand-include%__%
                         _%hd118758%_
                         _%rpath118797%_))
                       (_%rbody118802%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block118799%_
                            _%expand-special118646%_
                            '#f
                            _%expand-e118648%_))
                         gx#current-expander-path
                         (cons _%rpath118797%_ (gx#current-expander-path)))))
                  (_%K118654%_
                   _%rest118759%_
                   (__foldr1 cons _%r118760%_ _%rbody118802%_)))
                (_%E118763118775%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118763118775%_)))))
                                          (_%E118763118775%_))))
                                  (_%E118763118775%_)))))
                      (_%E118762118805%_))))
                 (_%expand-expression118653%_
                  (lambda (_%hd118754%_ _%rest118755%_ _%r118756%_)
                    (_%K118654%_
                     _%rest118755%_
                     (cons (_%expand-e118648%_ _%hd118754%_) _%r118756%_))))
                 (_%K118654%_
                  (lambda (_%rest118684%_ _%r118685%_)
                    (let* ((_%e118686118693%_ _%rest118684%_)
                           (_%E118688118697%_
                            (lambda ()
                              (if _%begin-form118647%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form118647%_
                                    (reverse _%r118685%_))
                                   (gx#stx-source _%stx118645%_))
                                  _%r118685%_)))
                           (_%E118687118750%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118686118693%_)
                                  (let ((_%e118689118701%_
                                         (gx#syntax-e _%e118686118693%_)))
                                    (let ((_%hd118690118704%_
                                           (##car _%e118689118701%_))
                                          (_%tl118691118706%_
                                           (##cdr _%e118689118701%_)))
                                      (let* ((_%hd118709%_ _%hd118690118704%_)
                                             (_%rest118711%_
                                              _%tl118691118706%_))
                                        (if '#t
                                            (let* ((_%hd118713%_
                                                    (gx#core-expand-head
                                                     _%hd118709%_))
                                                   (_%e118714118721%_
                                                    _%hd118713%_)
                                                   (_%E118716118725%_
                                                    (lambda ()
                                                      (_%expand-expression118653%_
                                                       _%hd118713%_
                                                       _%rest118711%_
                                                       _%r118685%_)))
                                                   (_%E118715118746%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e118714118721%_)
                                                          (let ((_%e118717118729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e118714118721%_)))
                    (let ((_%hd118718118732%_ (##car _%e118717118729%_))
                          (_%tl118719118734%_ (##cdr _%e118717118729%_)))
                      (let* ((_%form118737%_ _%hd118718118732%_)
                             (_%body118739%_ _%tl118719118734%_))
                        (if '#t
                            (let ((_%bind118741%_
                                   (if (gx#identifier? _%form118737%_)
                                       (gx#resolve-identifier__0
                                        _%form118737%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind118741%_)
                                  (let ((_%$e118743%_
                                         (##unchecked-structure-ref
                                          _%bind118741%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e118743%_)
                                        (_%expand-splice118650%_
                                         _%hd118713%_
                                         _%body118739%_
                                         _%rest118711%_
                                         _%r118685%_)
                                        (if (eq? '%#cond-expand _%$e118743%_)
                                            (_%expand-cond-expand118651%_
                                             _%hd118713%_
                                             _%rest118711%_
                                             _%r118685%_)
                                            (if (eq? '%#include _%$e118743%_)
                                                (_%expand-include118652%_
                                                 _%hd118713%_
                                                 _%rest118711%_
                                                 _%r118685%_)
                                                (_%expand-special118646%_
                                                 _%hd118713%_
                                                 _%K118654%_
                                                 _%rest118711%_
                                                 _%r118685%_)))))
                                  (_%expand-expression118653%_
                                   _%hd118713%_
                                   _%rest118711%_
                                   _%r118685%_)))
                            (_%E118716118725%_)))))
                  (_%E118716118725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E118715118746%_))
                                            (_%E118688118697%_)))))
                                  (_%E118688118697%_)))))
                      (_%E118687118750%_)))))
          (let* ((_%e118655118662%_ _%stx118645%_)
                 (_%E118657118666%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118655118662%_)))
                 (_%E118656118680%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118655118662%_)
                        (let ((_%e118658118670%_
                               (gx#syntax-e _%e118655118662%_)))
                          (let ((_%hd118659118673%_ (##car _%e118658118670%_))
                                (_%tl118660118675%_ (##cdr _%e118658118670%_)))
                            (let ((_%body118678%_ _%tl118660118675%_))
                              (if (gx#stx-list? _%body118678%_)
                                  (_%K118654%_ _%body118678%_ '())
                                  (_%E118657118666%_)))))
                        (_%E118657118666%_)))))
            (_%E118656118680%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx118821%_ _%expand-special118822%_)
        (let* ((_%begin-form118824%_ '%#begin)
               (_%expand-e118826%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx118821%_
           _%expand-special118822%_
           _%begin-form118824%_
           _%expand-e118826%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx118828%_ _%expand-special118829%_ _%begin-form118830%_)
        (let ((_%expand-e118832%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx118828%_
           _%expand-special118829%_
           _%begin-form118830%_
           _%expand-e118832%_))))
    (define gx#core-expand-block
      (lambda _g119532_
        (let ((_g119531_ (##length _g119532_)))
          (cond ((##fx= _g119531_ 2) (apply gx#core-expand-block__0 _g119532_))
                ((##fx= _g119531_ 3) (apply gx#core-expand-block__1 _g119532_))
                ((##fx= _g119531_ 4) (apply gx#core-expand-block__% _g119532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g119532_))))))
    (define gx#core-expand-block*
      (lambda (_%stx118593%_ _%expand-special118594%_)
        (let* ((_%g118595118606%_
                (gx#core-expand-block__1
                 _%stx118593%_
                 _%expand-special118594%_
                 '#f))
               (_%E118599118610%_
                (lambda ()
                  (error '"No clause matching"
                         _%g118595118606%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K118604118641%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx118593%_)))
                (_%K118601118627%_ (lambda (_%expr118625%_) _%expr118625%_))
                (_%K118600118616%_
                 (lambda (_%body118614%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body118614%_))
                    (gx#stx-source _%stx118593%_)))))
            (let ((_%try-match118597118637%_
                   (lambda ()
                     (if (##pair? _%g118595118606%_)
                         (let ((_%tl118603118632%_ (##cdr _%g118595118606%_))
                               (_%hd118602118630%_ (##car _%g118595118606%_)))
                           (if (##null? _%tl118603118632%_)
                               (let ((_%expr118635%_ _%hd118602118630%_))
                                 (_%K118601118627%_ _%expr118635%_))
                               (let ((_%body118619%_ _%g118595118606%_))
                                 (_%K118600118616%_ _%body118619%_))))
                         (let ((_%body118619%_ _%g118595118606%_))
                           (_%K118600118616%_ _%body118619%_))))))
              (if (##null? _%g118595118606%_)
                  (_%K118604118641%_)
                  (_%try-match118597118637%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx118418%_)
        (letrec ((_%satisfied?118420%_
                  (lambda (_%condition118521%_)
                    (let* ((_%e118522118537%_ _%condition118521%_)
                           (_%E118532118541%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118522118537%_)))
                           (_%E118525118560%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118522118537%_)
                                  (let ((_%e118533118545%_
                                         (gx#syntax-e _%e118522118537%_)))
                                    (let ((_%hd118534118548%_
                                           (##car _%e118533118545%_))
                                          (_%tl118535118550%_
                                           (##cdr _%e118533118545%_)))
                                      (let* ((_%combinator118553%_
                                              _%hd118534118548%_)
                                             (_%body118555%_
                                              _%tl118535118550%_))
                                        (if (gx#stx-list? _%body118555%_)
                                            (let ((_%$e118557%_
                                                   (gx#stx-e
                                                    _%combinator118553%_)))
                                              (if (eq? 'not _%$e118557%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?118420%_
                                                        _%body118555%_))
                                                  (if (eq? 'and _%$e118557%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?118420%_
                                                       _%body118555%_)
                                                      (if (eq? 'or
                                                               _%$e118557%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?118420%_
                                                           _%body118555%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e118557%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body118555%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx118418%_
                       _%combinator118553%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E118532118541%_)))))
                                  (_%E118532118541%_))))
                           (_%E118524118583%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118522118537%_)
                                  (let ((_%e118526118564%_
                                         (gx#syntax-e _%e118522118537%_)))
                                    (let ((_%hd118527118567%_
                                           (##car _%e118526118564%_))
                                          (_%tl118528118569%_
                                           (##cdr _%e118526118564%_)))
                                      (if (and (gx#identifier?
                                                _%hd118527118567%_)
                                               (gx#core-identifier=?
                                                _%hd118527118567%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl118528118569%_)
                                              (let ((_%e118529118572%_
                                                     (gx#syntax-e
                                                      _%tl118528118569%_)))
                                                (let ((_%hd118530118575%_
                                                       (##car _%e118529118572%_))
                                                      (_%tl118531118577%_
                                                       (##cdr _%e118529118572%_)))
                                                  (let ((_%expr118580%_
                                                         _%hd118530118575%_))
                                                    (if (gx#stx-null?
                                                         _%tl118531118577%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr118580%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E118525118560%_))
                (_%E118525118560%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E118525118560%_))
                                          (_%E118525118560%_))))
                                  (_%E118525118560%_))))
                           (_%E118523118589%_
                            (lambda ()
                              (let ((_%id118587%_ _%e118522118537%_))
                                (if (gx#identifier? _%id118587%_)
                                    (gx#core-bound-identifier?__%
                                     _%id118587%_
                                     gx#feature-binding?)
                                    (_%E118524118583%_))))))
                      (_%E118523118589%_))))
                 (_%loop118421%_
                  (lambda (_%rest118451%_)
                    (let* ((_%e118452118460%_ _%rest118451%_)
                           (_%E118458118464%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118452118460%_)))
                           (_%E118454118468%_
                            (lambda ()
                              (if (gx#stx-null? _%e118452118460%_)
                                  (if '#t '() (_%E118458118464%_))
                                  (_%E118458118464%_))))
                           (_%E118453118517%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118452118460%_)
                                  (let ((_%e118455118472%_
                                         (gx#syntax-e _%e118452118460%_)))
                                    (let ((_%hd118456118475%_
                                           (##car _%e118455118472%_))
                                          (_%tl118457118477%_
                                           (##cdr _%e118455118472%_)))
                                      (let* ((_%hd118480%_ _%hd118456118475%_)
                                             (_%rest118482%_
                                              _%tl118457118477%_))
                                        (if '#t
                                            (let* ((_%e118483118490%_
                                                    _%hd118480%_)
                                                   (_%E118485118494%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e118483118490%_)))
                                                   (_%E118484118513%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e118483118490%_)
                                                          (let ((_%e118486118498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e118483118490%_)))
                    (let ((_%hd118487118501%_ (##car _%e118486118498%_))
                          (_%tl118488118503%_ (##cdr _%e118486118498%_)))
                      (let* ((_%condition118506%_ _%hd118487118501%_)
                             (_%body118508%_ _%tl118488118503%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition118506%_ 'else)
                                (if (gx#stx-null? _%rest118482%_)
                                    _%body118508%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _%stx118418%_
                                     _%hd118480%_))
                                (if (_%satisfied?118420%_ _%condition118506%_)
                                    _%body118508%_
                                    (_%loop118421%_ _%rest118482%_)))
                            (_%E118485118494%_)))))
                  (_%E118485118494%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E118484118513%_))
                                            (_%E118454118468%_)))))
                                  (_%E118454118468%_)))))
                      (_%E118453118517%_)))))
          (let* ((_%e118422118429%_ _%stx118418%_)
                 (_%E118424118433%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118422118429%_)))
                 (_%E118423118447%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118422118429%_)
                        (let ((_%e118425118437%_
                               (gx#syntax-e _%e118422118429%_)))
                          (let ((_%hd118426118440%_ (##car _%e118425118437%_))
                                (_%tl118427118442%_ (##cdr _%e118425118437%_)))
                            (let ((_%clauses118445%_ _%tl118427118442%_))
                              (if (gx#stx-list? _%clauses118445%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop118421%_ _%clauses118445%_))
                                  (_%E118424118433%_)))))
                        (_%E118424118433%_)))))
            (_%E118423118447%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx118361%_ _%rpath118362%_)
        (let* ((_%e118363118373%_ _%stx118361%_)
               (_%E118365118377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118363118373%_)))
               (_%E118364118404%_
                (lambda ()
                  (if (gx#stx-pair? _%e118363118373%_)
                      (let ((_%e118366118381%_
                             (gx#syntax-e _%e118363118373%_)))
                        (let ((_%hd118367118384%_ (##car _%e118366118381%_))
                              (_%tl118368118386%_ (##cdr _%e118366118381%_)))
                          (if (gx#stx-pair? _%tl118368118386%_)
                              (let ((_%e118369118389%_
                                     (gx#syntax-e _%tl118368118386%_)))
                                (let ((_%hd118370118392%_
                                       (##car _%e118369118389%_))
                                      (_%tl118371118394%_
                                       (##cdr _%e118369118389%_)))
                                  (let ((_%path118397%_ _%hd118370118392%_))
                                    (if (gx#stx-null? _%tl118371118394%_)
                                        (if (gx#stx-string? _%path118397%_)
                                            (let ((_%rpath118402%_
                                                   (let ((_%$e118399%_
                                                          _%rpath118362%_))
                                                     (if _%$e118399%_
                                                         _%$e118399%_
                                                         (gx#core-resolve-path__%
                                                          _%path118397%_
                                                          (gx#stx-source
                                                           _%stx118361%_))))))
                                              (if (member _%rpath118402%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx118361%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath118402%_))
                                                    (gx#stx-source
                                                     _%stx118361%_)))))
                                            (_%E118365118377%_))
                                        (_%E118365118377%_)))))
                              (_%E118365118377%_))))
                      (_%E118365118377%_)))))
          (_%E118364118404%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx118411%_)
        (let ((_%rpath118413%_ '#f))
          (gx#core-expand-include%__% _%stx118411%_ _%rpath118413%_))))
    (define gx#core-expand-include%
      (lambda _g119534_
        (let ((_g119533_ (##length _g119534_)))
          (cond ((##fx= _g119533_ 1)
                 (apply gx#core-expand-include%__0 _g119534_))
                ((##fx= _g119533_ 2)
                 (apply gx#core-expand-include%__% _g119534_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g119534_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K118327%_ _%stx118328%_ _%method118329%_)
        (if (procedure? _%K118327%_)
            (let ((_%$e118332%_ (gx#stx-source _%stx118328%_)))
              (if _%$e118332%_
                  ((lambda (_%g118334118336%_)
                     (gx#stx-wrap-source
                      (_%K118327%_ _%stx118328%_)
                      _%g118334118336%_))
                   _%$e118332%_)
                  (_%K118327%_ _%stx118328%_)))
            (let ((_%$e118340%_
                   (bound-method-ref _%K118327%_ _%method118329%_)))
              (if _%$e118340%_
                  ((lambda (_%g118342118344%_)
                     (gx#core-apply-expander__%
                      _%g118342118344%_
                      _%stx118328%_
                      _%method118329%_))
                   _%$e118340%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx118328%_
                   _%method118329%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K118351%_ _%stx118352%_)
        (let ((_%method118354%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K118351%_
           _%stx118352%_
           _%method118354%_))))
    (define gx#core-apply-expander
      (lambda _g119536_
        (let ((_g119535_ (##length _g119536_)))
          (cond ((##fx= _g119535_ 2)
                 (apply gx#core-apply-expander__0 _g119536_))
                ((##fx= _g119535_ 3)
                 (apply gx#core-apply-expander__% _g119536_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g119536_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116369118310%_ _%stx118312%_)
        (let* ((_%self118314%_ _%self116369118310%_)
               (_%self118316%_ _%self118314%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx118312%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116370118150%_ _%stx118152%_)
        (let* ((_%self118154%_ _%self116370118150%_)
               (_%self118156%_ _%self118154%_)
               (_%self118165118171%_ _%self118156%_)
               (_%E118167118175%_
                (lambda ()
                  (error '"No clause matching"
                         _%self118165118171%_
                         '((macro-expander K)))
                  '#!void))
               (_%K118168118180%_
                (lambda (_%K118178%_)
                  (gx#core-apply-expander__0 _%K118178%_ _%stx118152%_))))
          (if '#t
              (let* ((_%e118169118183%_
                      (##unchecked-structure-ref
                       _%self118165118171%_
                       '1
                       '#f
                       '#f))
                     (_%K118186%_ _%e118169118183%_))
                (_%K118168118180%_ _%K118186%_))
              (_%E118167118175%_)))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116371117990%_ _%stx117992%_)
        (let* ((_%self117994%_ _%self116371117990%_)
               (_%self117996%_ _%self117994%_))
          (if (gx#sealed-syntax? _%stx117992%_)
              _%stx117992%_
              (let* ((_%self118005118011%_ _%self117996%_)
                     (_%E118007118015%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self118005118011%_
                               '((core-expander K)))
                        '#!void))
                     (_%K118008118020%_
                      (lambda (_%K118018%_)
                        (gx#core-apply-expander__0
                         _%K118018%_
                         _%stx117992%_))))
                (if '#t
                    (let* ((_%e118009118023%_
                            (##unchecked-structure-ref
                             _%self118005118011%_
                             '1
                             '#f
                             '#f))
                           (_%K118026%_ _%e118009118023%_))
                      (_%K118008118020%_ _%K118026%_))
                    (_%E118007118015%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116372117839%_ _%stx117841%_ _%top?117842%_)
        (let* ((_%self117844%_ _%self116372117839%_)
               (_%self117846%_ _%self117844%_))
          (if (_%top?117842%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self117846%_
               _%stx117841%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx117841%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116372117859%_ _%stx117860%_)
        (let ((_%top?117862%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116372117859%_
           _%stx117860%_
           _%top?117862%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g119538_
        (let ((_g119537_ (##length _g119538_)))
          (cond ((##fx= _g119537_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g119538_))
                ((##fx= _g119537_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g119538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g119538_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116373117700%_ _%stx117702%_)
        (let* ((_%self117704%_ _%self116373117700%_)
               (_%self117706%_ _%self117704%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self117706%_
           _%stx117702%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116374117512%_ _%stx117514%_)
        (let* ((_%self117516%_ _%self116374117512%_)
               (_%self117518%_ _%self117516%_)
               (_%self117527117533%_ _%self117518%_)
               (_%E117529117537%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117527117533%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K117530117570%_
                (lambda (_%id117540%_)
                  (let* ((_%e117541117548%_ _%stx117514%_)
                         (_%E117543117552%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e117541117548%_)))
                         (_%E117542117566%_
                          (lambda ()
                            (if (gx#stx-pair? _%e117541117548%_)
                                (let ((_%e117544117556%_
                                       (gx#syntax-e _%e117541117548%_)))
                                  (let ((_%hd117545117559%_
                                         (##car _%e117544117556%_))
                                        (_%tl117546117561%_
                                         (##cdr _%e117544117556%_)))
                                    (let ((_%body117564%_ _%tl117546117561%_))
                                      (if '#t
                                          (gx#core-cons
                                           _%id117540%_
                                           _%body117564%_)
                                          (_%E117543117552%_)))))
                                (_%E117543117552%_)))))
                    (_%E117542117566%_)))))
          (if '#t
              (let* ((_%e117531117573%_
                      (##unchecked-structure-ref
                       _%self117527117533%_
                       '1
                       '#f
                       '#f))
                     (_%id117576%_ _%e117531117573%_))
                (_%K117530117570%_ _%id117576%_))
              (_%E117529117537%_)))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self117338%_ _%stx117339%_ _%method117340%_)
        (let* ((_%self117341117349%_ _%self117338%_)
               (_%E117343117353%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117341117349%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K117344117360%_
                (lambda (_%phi117356%_ _%ctx117357%_ _%K117358%_)
                  (gx#core-apply-user-macro
                   _%K117358%_
                   _%stx117339%_
                   _%ctx117357%_
                   _%phi117356%_
                   _%method117340%_))))
          (if (##structure-instance-of?
               _%self117341117349%_
               'gx#user-expander::t)
              (let* ((_%e117345117363%_
                      (##unchecked-structure-ref
                       _%self117341117349%_
                       '1
                       '#f
                       '#f))
                     (_%K117366%_ _%e117345117363%_)
                     (_%e117346117368%_
                      (##unchecked-structure-ref
                       _%self117341117349%_
                       '2
                       '#f
                       '#f))
                     (_%ctx117371%_ _%e117346117368%_)
                     (_%e117347117373%_
                      (##unchecked-structure-ref
                       _%self117341117349%_
                       '3
                       '#f
                       '#f))
                     (_%phi117376%_ _%e117347117373%_))
                (_%K117344117360%_ _%phi117376%_ _%ctx117371%_ _%K117366%_))
              (_%E117343117353%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self117381%_ _%stx117382%_)
        (let ((_%method117384%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self117381%_
           _%stx117382%_
           _%method117384%_))))
    (define gx#core-apply-user-expander
      (lambda _g119540_
        (let ((_g119539_ (##length _g119540_)))
          (cond ((##fx= _g119539_ 2)
                 (apply gx#core-apply-user-expander__0 _g119540_))
                ((##fx= _g119539_ 3)
                 (apply gx#core-apply-user-expander__% _g119540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g119540_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K117328%_
               _%stx117329%_
               _%ctx117330%_
               _%phi117331%_
               _%method117332%_)
        (let ((_%mark117334%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx117330%_
                _%phi117331%_
                _%stx117329%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K117328%_
               (gx#stx-apply-mark _%stx117329%_ _%mark117334%_)
               _%method117332%_)
              _%mark117334%_))
           gx#current-expander-marks
           (cons _%mark117334%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx117176%_ _%phi117177%_ _%ctx117178%_)
        (let _%lp117180%_ ((_%bind117182%_
                            (gx#core-resolve-identifier__%
                             _%stx117176%_
                             _%phi117177%_
                             _%ctx117178%_)))
          (if (##structure-direct-instance-of?
               _%bind117182%_
               'gx#import-binding::t)
              (_%lp117180%_
               (##unchecked-structure-ref _%bind117182%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind117182%_
                   'gx#alias-binding::t)
                  (_%lp117180%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind117182%_ '4 '#f '#f)
                    _%phi117177%_
                    _%ctx117178%_))
                  _%bind117182%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx117190%_)
        (let* ((_%phi117192%_ (gx#current-expander-phi))
               (_%ctx117194%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117190%_
           _%phi117192%_
           _%ctx117194%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx117196%_ _%phi117197%_)
        (let ((_%ctx117199%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117196%_
           _%phi117197%_
           _%ctx117199%_))))
    (define gx#resolve-identifier
      (lambda _g119542_
        (let ((_g119541_ (##length _g119542_)))
          (cond ((##fx= _g119541_ 1)
                 (apply gx#resolve-identifier__0 _g119542_))
                ((##fx= _g119541_ 2)
                 (apply gx#resolve-identifier__1 _g119542_))
                ((##fx= _g119541_ 3)
                 (apply gx#resolve-identifier__% _g119542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g119542_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx117131%_
               _%val117132%_
               _%rebind?117133%_
               _%phi117134%_
               _%ctx117135%_)
        (let ((_%rebind?117140%_
               (if (not _%rebind?117133%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?117133%_)
                       _%rebind?117133%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx117131%_)
           _%val117132%_
           _%rebind?117140%_
           _%phi117134%_
           _%ctx117135%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx117145%_ _%val117146%_)
        (let* ((_%rebind?117148%_ '#f)
               (_%phi117150%_ (gx#current-expander-phi))
               (_%ctx117152%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117145%_
           _%val117146%_
           _%rebind?117148%_
           _%phi117150%_
           _%ctx117152%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx117154%_ _%val117155%_ _%rebind?117156%_)
        (let* ((_%phi117158%_ (gx#current-expander-phi))
               (_%ctx117160%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117154%_
           _%val117155%_
           _%rebind?117156%_
           _%phi117158%_
           _%ctx117160%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx117162%_ _%val117163%_ _%rebind?117164%_ _%phi117165%_)
        (let ((_%ctx117167%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117162%_
           _%val117163%_
           _%rebind?117164%_
           _%phi117165%_
           _%ctx117167%_))))
    (define gx#bind-identifier!
      (lambda _g119544_
        (let ((_g119543_ (##length _g119544_)))
          (cond ((##fx= _g119543_ 2) (apply gx#bind-identifier!__0 _g119544_))
                ((##fx= _g119543_ 3) (apply gx#bind-identifier!__1 _g119544_))
                ((##fx= _g119543_ 4) (apply gx#bind-identifier!__2 _g119544_))
                ((##fx= _g119543_ 5) (apply gx#bind-identifier!__% _g119544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g119544_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx117097%_ _%phi117098%_ _%ctx117099%_)
        (let _%lp117101%_ ((_%e117103%_ _%stx117097%_)
                           (_%marks117104%_ (gx#current-expander-marks)))
          (if (symbol? _%e117103%_)
              (gx#core-resolve-binding
               _%e117103%_
               _%phi117098%_
               _%phi117098%_
               _%ctx117099%_
               (reverse _%marks117104%_))
              (if (gx#identifier-quote? _%e117103%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e117103%_ '1 '#f '#f)
                   _%phi117098%_
                   '0
                   (##unchecked-structure-ref _%e117103%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e117103%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e117103%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e117103%_ '1 '#f '#f)
                       _%phi117098%_
                       _%phi117098%_
                       _%ctx117099%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e117103%_ '3 '#f '#f)
                        _%marks117104%_))
                      (if (##structure-direct-instance-of?
                           _%e117103%_
                           'gx#syntax-wrap::t)
                          (_%lp117101%_
                           (##unchecked-structure-ref _%e117103%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e117103%_ '3 '#f '#f)
                            _%marks117104%_))
                          (if (##structure-instance-of?
                               _%e117103%_
                               'gerbil#AST::t)
                              (_%lp117101%_
                               (##unchecked-structure-ref
                                _%e117103%_
                                '1
                                '#f
                                '#f)
                               _%marks117104%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx117097%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx117115%_)
        (let* ((_%phi117117%_ (gx#current-expander-phi))
               (_%ctx117119%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117115%_
           _%phi117117%_
           _%ctx117119%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx117121%_ _%phi117122%_)
        (let ((_%ctx117124%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117121%_
           _%phi117122%_
           _%ctx117124%_))))
    (define gx#core-resolve-identifier
      (lambda _g119546_
        (let ((_g119545_ (##length _g119546_)))
          (cond ((##fx= _g119545_ 1)
                 (apply gx#core-resolve-identifier__0 _g119546_))
                ((##fx= _g119545_ 2)
                 (apply gx#core-resolve-identifier__1 _g119546_))
                ((##fx= _g119545_ 3)
                 (apply gx#core-resolve-identifier__% _g119546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g119546_))))))
    (define gx#core-resolve-binding
      (lambda (_%id117007%_
               _%phi117008%_
               _%src-phi117009%_
               _%ctx117010%_
               _%marks117011%_)
        (letrec ((_%resolve117013%_
                  (lambda (_%ctx117081%_ _%src-phi117082%_ _%key117083%_)
                    (let _%lp117085%_ ((_%ctx117087%_
                                        (gx#core-context-shift
                                         _%ctx117081%_
                                         _%phi117008%_))
                                       (_%dphi117088%_
                                        (fx- _%phi117008%_ _%src-phi117082%_)))
                      (let ((_%$e117090%_
                             (gx#core-context-resolve
                              _%ctx117087%_
                              _%key117083%_)))
                        (if _%$e117090%_
                            (values _%$e117090%_)
                            (if (fxzero? _%dphi117088%_)
                                '#f
                                (if (fxpositive? _%dphi117088%_)
                                    (_%lp117085%_
                                     (gx#core-context-shift _%ctx117087%_ '-1)
                                     (##fx- _%dphi117088%_ '1))
                                    (_%lp117085%_
                                     (gx#core-context-shift _%ctx117087%_ '1)
                                     (##fx+ _%dphi117088%_ '1))))))))))
          (let _%lp117015%_ ((_%ctx117017%_ _%ctx117010%_)
                             (_%src-phi117018%_ _%src-phi117009%_)
                             (_%rest117019%_ _%marks117011%_))
            (let* ((_%rest117020117028%_ _%rest117019%_)
                   (_%else117022117036%_
                    (lambda ()
                      (_%resolve117013%_
                       _%ctx117017%_
                       _%src-phi117018%_
                       _%id117007%_)))
                   (_%K117024117069%_
                    (lambda (_%rest117039%_ _%hd117040%_)
                      (let* ((_%hd117041117047%_ _%hd117040%_)
                             (_%E117043117051%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd117041117047%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K117044117061%_
                              (lambda (_%subst117054%_)
                                (let ((_%$e117058%_
                                       (let ((_%key117056%_
                                              (if _%subst117054%_
                                                  (hash-get
                                                   _%subst117054%_
                                                   _%id117007%_)
                                                  '#f)))
                                         (if _%key117056%_
                                             (_%resolve117013%_
                                              _%ctx117017%_
                                              _%src-phi117018%_
                                              _%key117056%_)
                                             '#f))))
                                  (if _%$e117058%_
                                      _%$e117058%_
                                      (_%lp117015%_
                                       (##unchecked-structure-ref
                                        _%hd117040%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd117040%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest117039%_))))))
                        (if (##structure-instance-of?
                             _%hd117041117047%_
                             'gx#expander-mark::t)
                            (let* ((_%e117045117064%_
                                    (##unchecked-structure-ref
                                     _%hd117041117047%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst117067%_ _%e117045117064%_))
                              (_%K117044117061%_ _%subst117067%_))
                            (_%E117043117051%_))))))
              (if (##pair? _%rest117020117028%_)
                  (let ((_%hd117025117072%_ (##car _%rest117020117028%_))
                        (_%tl117026117074%_ (##cdr _%rest117020117028%_)))
                    (let* ((_%hd117077%_ _%hd117025117072%_)
                           (_%rest117079%_ _%tl117026117074%_))
                      (_%K117024117069%_ _%rest117079%_ _%hd117077%_)))
                  (_%else117022117036%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key116877%_
               _%val116878%_
               _%rebind?116879%_
               _%phi116880%_
               _%ctx116881%_)
        (letrec ((_%update-binding116883%_
                  (lambda (_%xval116956%_)
                    (if (or (_%rebind?116879%_
                             _%ctx116881%_
                             _%xval116956%_
                             _%val116878%_)
                            (and (##structure-direct-instance-of?
                                  _%xval116956%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval116956%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val116878%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val116878%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval116956%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val116878%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val116878%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval116956%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val116878%_
                        (if (and (##structure-direct-instance-of?
                                  _%val116878%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val116878%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval116956%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val116878%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval116956%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval116956%_
                            (if (and (##structure-direct-instance-of?
                                      _%val116878%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval116956%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key116877%_
                                 (cons (##unchecked-structure-ref
                                        _%val116878%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val116878%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval116956%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval116956%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval116956%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval116956%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key116877%_
                                 _%val116878%_
                                 _%xval116956%_))))))
                 (_%gensubst116884%_
                  (lambda (_%subst116951%_ _%id116952%_)
                    (let ((_%eid116954%_
                           (gensym (if (uninterned-symbol? _%id116952%_)
                                       '%
                                       _%id116952%_))))
                      (hash-put! _%subst116951%_ _%id116952%_ _%eid116954%_)
                      _%eid116954%_)))
                 (_%subst!116885%_
                  (lambda (_%key116887%_)
                    (let* ((_%key116888116896%_ _%key116887%_)
                           (_%else116890116904%_ (lambda () _%key116887%_))
                           (_%K116892116939%_
                            (lambda (_%mark116907%_ _%id116908%_)
                              (let* ((_%mark116909116915%_ _%mark116907%_)
                                     (_%E116911116919%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark116909116915%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K116912116931%_
                                      (lambda (_%subst116922%_)
                                        (if (not _%subst116922%_)
                                            (let ((_%subst116925%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark116907%_
                                               _%subst116925%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst116884%_
                                               _%subst116925%_
                                               _%id116908%_))
                                            (let ((_%$e116927%_
                                                   (hash-get
                                                    _%subst116922%_
                                                    _%id116908%_)))
                                              (if _%$e116927%_
                                                  (values _%$e116927%_)
                                                  (_%gensubst116884%_
                                                   _%subst116922%_
                                                   _%id116908%_)))))))
                                (if (##structure-instance-of?
                                     _%mark116909116915%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e116913116934%_
                                            (##unchecked-structure-ref
                                             _%mark116909116915%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst116937%_ _%e116913116934%_))
                                      (_%K116912116931%_ _%subst116937%_))
                                    (_%E116911116919%_))))))
                      (if (##pair? _%key116888116896%_)
                          (let ((_%hd116893116942%_
                                 (##car _%key116888116896%_))
                                (_%tl116894116944%_
                                 (##cdr _%key116888116896%_)))
                            (let* ((_%id116947%_ _%hd116893116942%_)
                                   (_%mark116949%_ _%tl116894116944%_))
                              (_%K116892116939%_ _%mark116949%_ _%id116947%_)))
                          (_%else116890116904%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx116881%_ _%phi116880%_)
           (_%subst!116885%_ _%key116877%_)
           _%val116878%_
           _%update-binding116883%_))))
    (define gx#core-bind!__0
      (lambda (_%key116977%_ _%val116978%_)
        (let* ((_%rebind?116980%_ false)
               (_%phi116982%_ (gx#current-expander-phi))
               (_%ctx116984%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key116977%_
           _%val116978%_
           _%rebind?116980%_
           _%phi116982%_
           _%ctx116984%_))))
    (define gx#core-bind!__1
      (lambda (_%key116986%_ _%val116987%_ _%rebind?116988%_)
        (let* ((_%phi116990%_ (gx#current-expander-phi))
               (_%ctx116992%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key116986%_
           _%val116987%_
           _%rebind?116988%_
           _%phi116990%_
           _%ctx116992%_))))
    (define gx#core-bind!__2
      (lambda (_%key116994%_ _%val116995%_ _%rebind?116996%_ _%phi116997%_)
        (let ((_%ctx116999%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key116994%_
           _%val116995%_
           _%rebind?116996%_
           _%phi116997%_
           _%ctx116999%_))))
    (define gx#core-bind!
      (lambda _g119548_
        (let ((_g119547_ (##length _g119548_)))
          (cond ((##fx= _g119547_ 2) (apply gx#core-bind!__0 _g119548_))
                ((##fx= _g119547_ 3) (apply gx#core-bind!__1 _g119548_))
                ((##fx= _g119547_ 4) (apply gx#core-bind!__2 _g119548_))
                ((##fx= _g119547_ 5) (apply gx#core-bind!__% _g119548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g119548_))))))
    (define gx#core-identifier-key
      (lambda (_%stx116808%_)
        (if (symbol? _%stx116808%_)
            (let* ((_%g116810116818%_ (gx#current-expander-marks))
                   (_%else116812116826%_ (lambda () _%stx116808%_))
                   (_%K116814116831%_
                    (lambda (_%hd116829%_) (cons _%stx116808%_ _%hd116829%_))))
              (if (##pair? _%g116810116818%_)
                  (let* ((_%hd116815116834%_ (##car _%g116810116818%_))
                         (_%hd116837%_ _%hd116815116834%_))
                    (_%K116814116831%_ _%hd116837%_))
                  (_%else116812116826%_)))
            (if (gx#identifier? _%stx116808%_)
                (let* ((_%id116840%_ (gx#syntax-local-unwrap _%stx116808%_))
                       (_%eid116842%_ (gx#stx-e _%id116840%_))
                       (_%marks116844%_
                        (gx#stx-identifier-marks* _%id116840%_))
                       (_%marks116846116854%_ _%marks116844%_)
                       (_%else116848116862%_ (lambda () _%eid116842%_))
                       (_%K116850116867%_
                        (lambda (_%hd116865%_)
                          (cons _%eid116842%_ _%hd116865%_))))
                  (if (##pair? _%marks116846116854%_)
                      (let* ((_%hd116851116870%_ (##car _%marks116846116854%_))
                             (_%hd116873%_ _%hd116851116870%_))
                        (_%K116850116867%_ _%hd116873%_))
                      (_%else116848116862%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx116808%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx116747%_ _%phi116748%_)
        (letrec ((_%make-phi116750%_
                  (lambda (_%super116806%_)
                    (let ((__obj119520
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj119520
                       (##gensym 'phi)
                       _%super116806%_)
                      __obj119520)))
                 (_%make-phi/up116751%_
                  (lambda (_%ctx116801%_ _%super116802%_)
                    (let ((_%ctx+1116804%_
                           (_%make-phi116750%_ _%super116802%_)))
                      (##unchecked-structure-set!
                       _%ctx116801%_
                       _%ctx+1116804%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1116804%_
                       _%ctx116801%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1116804%_)))
                 (_%make-phi/down116752%_
                  (lambda (_%ctx116796%_ _%super116797%_)
                    (let ((_%ctx-1116799%_
                           (_%make-phi116750%_ _%super116797%_)))
                      (##unchecked-structure-set!
                       _%ctx-1116799%_
                       _%ctx116796%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx116796%_
                       _%ctx-1116799%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1116799%_)))
                 (_%shift116753%_
                  (lambda (_%ctx116779%_
                           _%delta116780%_
                           _%make-delta-context116781%_
                           _%phi116782%_
                           _%K116783%_)
                    (let ((_%$e116785%_
                           (##unchecked-structure-ref
                            _%ctx116779%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e116785%_
                          ((lambda (_%super116788%_)
                             (let* ((_%super116790%_
                                     (_%K116783%_
                                      _%super116788%_
                                      _%delta116780%_))
                                    (_%ctx+d116792%_
                                     (_%make-delta-context116781%_
                                      _%ctx116779%_
                                      _%super116790%_)))
                               (_%K116783%_
                                _%ctx+d116792%_
                                (fx- _%phi116782%_ _%delta116780%_))))
                           _%$e116785%_)
                          (error '"Bad context" _%ctx116779%_))))))
          (let _%K116755%_ ((_%ctx116757%_ _%ctx116747%_)
                            (_%phi116758%_ _%phi116748%_))
            (if (fxzero? _%phi116758%_)
                _%ctx116757%_
                (if (##structure-instance-of? _%ctx116757%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi116758%_)
                        (let ((_%$e116762%_
                               (##unchecked-structure-ref
                                _%ctx116757%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e116762%_
                              ((lambda (_%g116764116766%_)
                                 (_%K116755%_
                                  _%g116764116766%_
                                  (##fx- _%phi116758%_ '1)))
                               _%$e116762%_)
                              (_%shift116753%_
                               _%ctx116757%_
                               '1
                               _%make-phi/up116751%_
                               _%phi116758%_
                               _%K116755%_)))
                        (let ((_%$e116770%_
                               (##unchecked-structure-ref
                                _%ctx116757%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e116770%_
                              ((lambda (_%g116772116774%_)
                                 (_%K116755%_
                                  _%g116772116774%_
                                  (##fx+ _%phi116758%_ '1)))
                               _%$e116770%_)
                              (_%shift116753%_
                               _%ctx116757%_
                               '-1
                               _%make-phi/down116752%_
                               _%phi116758%_
                               _%K116755%_))))
                    _%ctx116757%_))))))
    (define gx#core-context-get
      (lambda (_%ctx116744%_ _%key116745%_)
        (hash-get
         (##unchecked-structure-ref _%ctx116744%_ '2 '#f '#f)
         _%key116745%_)))
    (define gx#core-context-put!
      (lambda (_%ctx116740%_ _%key116741%_ _%val116742%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx116740%_ '2 '#f '#f)
         _%key116741%_
         _%val116742%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx116726%_ _%key116727%_)
        (let _%lp116729%_ ((_%ctx116731%_ _%ctx116726%_))
          (let ((_%$e116733%_
                 (gx#core-context-get _%ctx116731%_ _%key116727%_)))
            (if _%$e116733%_
                (values _%$e116733%_)
                (let ((_%$e116736%_
                       (if (##structure-instance-of?
                            _%ctx116731%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx116731%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e116736%_ (_%lp116729%_ _%$e116736%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx116715%_ _%key116716%_ _%val116717%_ _%rebind116718%_)
        (let ((_%$e116720%_ (gx#core-context-get _%ctx116715%_ _%key116716%_)))
          (if _%$e116720%_
              ((lambda (_%xval116723%_)
                 (gx#core-context-put!
                  _%ctx116715%_
                  _%key116716%_
                  (_%rebind116718%_ _%xval116723%_)))
               _%$e116720%_)
              (gx#core-context-put!
               _%ctx116715%_
               _%key116716%_
               _%val116717%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx116690%_ _%stop?116691%_)
        (let _%lp116693%_ ((_%ctx116695%_ _%ctx116690%_))
          (if (_%stop?116691%_ _%ctx116695%_)
              _%ctx116695%_
              (if (##structure-instance-of? _%ctx116695%_ 'gx#phi-context::t)
                  (_%lp116693%_
                   (##unchecked-structure-ref _%ctx116695%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx116704%_ (gx#current-expander-context))
               (_%stop?116706%_ gx#top-context?))
          (gx#core-context-top__% _%ctx116704%_ _%stop?116706%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx116708%_)
        (let ((_%stop?116710%_ gx#top-context?))
          (gx#core-context-top__% _%ctx116708%_ _%stop?116710%_))))
    (define gx#core-context-top
      (lambda _g119550_
        (let ((_g119549_ (##length _g119550_)))
          (cond ((##fx= _g119549_ 0) (apply gx#core-context-top__0 _g119550_))
                ((##fx= _g119549_ 1) (apply gx#core-context-top__1 _g119550_))
                ((##fx= _g119549_ 2) (apply gx#core-context-top__% _g119550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g119550_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx116675%_)
        (let _%lp116677%_ ((_%ctx116679%_ _%ctx116675%_))
          (if (##structure-instance-of? _%ctx116679%_ 'gx#phi-context::t)
              (_%lp116677%_
               (##unchecked-structure-ref _%ctx116679%_ '3 '#f '#f))
              _%ctx116679%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx116685%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx116685%_))))
    (define gx#core-context-root
      (lambda _g119552_
        (let ((_g119551_ (##length _g119552_)))
          (cond ((##fx= _g119551_ 0) (apply gx#core-context-root__0 _g119552_))
                ((##fx= _g119551_ 1) (apply gx#core-context-root__% _g119552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g119552_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx116657%_ . _%ignore116658%_)
        (let ((_%$e116660%_ (gx#current-expander-allow-rebind?)))
          (if _%$e116660%_
              _%$e116660%_
              (if (##structure-instance-of? _%ctx116657%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx116657%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx116657%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx116667%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx116667%_))))
    (define gx#core-context-rebind?
      (lambda _g119554_
        (let ((_g119553_ (##length _g119554_)))
          (cond ((##fx= _g119553_ 0)
                 (apply gx#core-context-rebind?__0 _g119554_))
                ((##fx= _g119553_ 1)
                 (apply gx#core-context-rebind?__% _g119554_))
                ((##fx>= _g119553_ 1)
                 (apply gx#core-context-rebind?__% _g119554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g119554_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx116640%_)
        (let ((_%$e116642%_ (gx#core-context-top__1 _%ctx116640%_)))
          (if _%$e116642%_
              ((lambda (_%ctx116645%_)
                 (if (##structure-instance-of?
                      _%ctx116645%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx116645%_ '6 '#f '#f)
                     '#f))
               _%$e116642%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx116652%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx116652%_))))
    (define gx#core-context-namespace
      (lambda _g119556_
        (let ((_g119555_ (##length _g119556_)))
          (cond ((##fx= _g119555_ 0)
                 (apply gx#core-context-namespace__0 _g119556_))
                ((##fx= _g119555_ 1)
                 (apply gx#core-context-namespace__% _g119556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g119556_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind116626%_ _%is?116627%_)
        (if (##structure-direct-instance-of?
             _%bind116626%_
             'gx#syntax-binding::t)
            (_%is?116627%_
             (##unchecked-structure-ref _%bind116626%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind116632%_)
        (let ((_%is?116634%_ gx#expander?))
          (gx#expander-binding?__% _%bind116632%_ _%is?116634%_))))
    (define gx#expander-binding?
      (lambda _g119558_
        (let ((_g119557_ (##length _g119558_)))
          (cond ((##fx= _g119557_ 1) (apply gx#expander-binding?__0 _g119558_))
                ((##fx= _g119557_ 2) (apply gx#expander-binding?__% _g119558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g119558_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind116623%_)
        (gx#expander-binding?__% _%bind116623%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind116621%_)
        (gx#expander-binding?__% _%bind116621%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind116615%_)
        (letrec ((_%direct-special-form?116617%_
                  (lambda (_%obj116619%_)
                    (##structure-direct-instance-of?
                     _%obj116619%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind116615%_
           _%direct-special-form?116617%_))))
    (define gx#special-form-binding?
      (lambda (_%bind116613%_)
        (gx#expander-binding?__% _%bind116613%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind116604%_)
        (letrec ((_%feature?116606%_
                  (lambda (_%e116608%_)
                    (let ((_%$e116610%_
                           (##structure-instance-of?
                            _%e116608%_
                            'gx#feature-expander::t)))
                      (if _%$e116610%_
                          _%$e116610%_
                          (##structure-instance-of?
                           _%e116608%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind116604%_ _%feature?116606%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind116602%_)
        (gx#expander-binding?__% _%bind116602%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id116589%_ _%bound?116590%_)
        (if (gx#identifier? _%id116589%_)
            (_%bound?116590%_ (gx#resolve-identifier__0 _%id116589%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id116595%_)
        (let ((_%bound?116597%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id116595%_ _%bound?116597%_))))
    (define gx#core-bound-identifier?
      (lambda _g119560_
        (let ((_g119559_ (##length _g119560_)))
          (cond ((##fx= _g119559_ 1)
                 (apply gx#core-bound-identifier?__0 _g119560_))
                ((##fx= _g119559_ 2)
                 (apply gx#core-bound-identifier?__% _g119560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g119560_))))))
    (define gx#core-identifier=?
      (lambda (_%x116579%_ _%y116580%_)
        (letrec ((_%y=?116582%_
                  (lambda (_%xid116586%_)
                    ((if (list? _%y116580%_) memq eq?)
                     _%xid116586%_
                     _%y116580%_))))
          (let ((_%bind116584%_ (gx#resolve-identifier__0 _%x116579%_)))
            (if (##structure-instance-of? _%bind116584%_ 'gx#binding::t)
                (_%y=?116582%_
                 (##unchecked-structure-ref _%bind116584%_ '1 '#f '#f))
                (_%y=?116582%_ (gx#stx-e _%x116579%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e116577%_)
        (if (interned-symbol? _%e116577%_)
            (string-index__0 (symbol->string _%e116577%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx116530%_ _%src116531%_ _%ctx116532%_ _%marks116533%_)
        (if (##structure? _%stx116530%_)
            (let ((_%$e116535%_ (gx#sealed-syntax-unwrap _%stx116530%_)))
              (if _%$e116535%_
                  (values _%$e116535%_)
                  (if (gx#identifier? _%stx116530%_)
                      (let ((_%id116539%_
                             (gx#stx-unwrap__% _%stx116530%_ _%marks116533%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id116539%_ '1 '#f '#f)
                         (let ((_%$e116541%_
                                (##unchecked-structure-ref
                                 _%id116539%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e116541%_ _%$e116541%_ _%src116531%_))
                         _%ctx116532%_
                         (##unchecked-structure-ref _%id116539%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx116530%_)
                       (let ((_%$e116545%_ (gx#stx-source _%stx116530%_)))
                         (if _%$e116545%_ _%$e116545%_ _%src116531%_))
                       _%ctx116532%_
                       (reverse _%marks116533%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx116530%_
             _%src116531%_
             _%ctx116532%_
             (reverse _%marks116533%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx116551%_)
        (let* ((_%src116553%_ '#f)
               (_%ctx116555%_ (gx#current-expander-context))
               (_%marks116557%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116551%_
           _%src116553%_
           _%ctx116555%_
           _%marks116557%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx116559%_ _%src116560%_)
        (let* ((_%ctx116562%_ (gx#current-expander-context))
               (_%marks116564%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116559%_
           _%src116560%_
           _%ctx116562%_
           _%marks116564%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx116566%_ _%src116567%_ _%ctx116568%_)
        (let ((_%marks116570%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116566%_
           _%src116567%_
           _%ctx116568%_
           _%marks116570%_))))
    (define gx#core-quote-syntax
      (lambda _g119562_
        (let ((_g119561_ (##length _g119562_)))
          (cond ((##fx= _g119561_ 1) (apply gx#core-quote-syntax__0 _g119562_))
                ((##fx= _g119561_ 2) (apply gx#core-quote-syntax__1 _g119562_))
                ((##fx= _g119561_ 3) (apply gx#core-quote-syntax__2 _g119562_))
                ((##fx= _g119561_ 4) (apply gx#core-quote-syntax__% _g119562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g119562_))))))
    (define gx#core-cons
      (lambda (_%hd116526%_ _%tl116527%_)
        (cons (gx#core-quote-syntax__0 _%hd116526%_) _%tl116527%_)))
    (define gx#core-list
      (lambda (_%hd116523%_ . _%rest116524%_)
        (cons (gx#core-quote-syntax__0 _%hd116523%_) _%rest116524%_)))
    (define gx#core-cons*
      (lambda (_%hd116520%_ . _%rest116521%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd116520%_) _%rest116521%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path116489%_ _%rel116490%_)
        (let ((_%path116507%_ (gx#stx-e _%stx-path116489%_))
              (_%reldir116508%_
               (let _%lp116492%_ ((_%relsrc116494%_
                                   (let ((_%$e116504%_
                                          (gx#stx-source _%stx-path116489%_)))
                                     (if _%$e116504%_
                                         _%$e116504%_
                                         _%rel116490%_))))
                 (if (##structure-instance-of? _%relsrc116494%_ 'gerbil#AST::t)
                     (_%lp116492%_
                      (let ((_%$e116497%_ (gx#stx-source _%relsrc116494%_)))
                        (if _%$e116497%_
                            _%$e116497%_
                            (gx#stx-e _%relsrc116494%_))))
                     (if (source-location-path? _%relsrc116494%_)
                         (path-directory
                          (source-location-path _%relsrc116494%_))
                         (if (string? _%relsrc116494%_)
                             (path-directory _%relsrc116494%_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _%path116507%_ (path-normalize _%reldir116508%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path116513%_)
        (let ((_%rel116515%_ '#f))
          (gx#core-resolve-path__% _%stx-path116513%_ _%rel116515%_))))
    (define gx#core-resolve-path
      (lambda _g119564_
        (let ((_g119563_ (##length _g119564_)))
          (cond ((##fx= _g119563_ 1) (apply gx#core-resolve-path__0 _g119564_))
                ((##fx= _g119563_ 2) (apply gx#core-resolve-path__% _g119564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g119564_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr116445%_ _%ctx116446%_)
        (let* ((_%repr116447116454%_ _%repr116445%_)
               (_%E116449116458%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr116447116454%_
                         '([phi . subs]))
                  '#!void))
               (_%K116450116466%_
                (lambda (_%subs116461%_ _%phi116462%_)
                  (let ((_%subst116464%_
                         (if (not (null? _%subs116461%_))
                             (list->hash-table-eq _%subs116461%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst116464%_
                     _%ctx116446%_
                     _%phi116462%_
                     '#f)))))
          (if (##pair? _%repr116447116454%_)
              (let ((_%hd116451116469%_ (##car _%repr116447116454%_))
                    (_%tl116452116471%_ (##cdr _%repr116447116454%_)))
                (let* ((_%phi116474%_ _%hd116451116469%_)
                       (_%subs116476%_ _%tl116452116471%_))
                  (_%K116450116466%_ _%subs116476%_ _%phi116474%_)))
              (_%E116449116458%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr116481%_)
        (let ((_%ctx116483%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr116481%_ _%ctx116483%_))))
    (define gx#core-deserialize-mark
      (lambda _g119566_
        (let ((_g119565_ (##length _g119566_)))
          (cond ((##fx= _g119565_ 1)
                 (apply gx#core-deserialize-mark__0 _g119566_))
                ((##fx= _g119565_ 2)
                 (apply gx#core-deserialize-mark__% _g119566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g119566_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx116442%_)
        (gx#stx-rewrap _%stx116442%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx116440%_)
        (gx#stx-unwrap__% _%stx116440%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx116410%_)
        (let* ((_%g116411116419%_ (gx#current-expander-marks))
               (_%else116413116427%_ (lambda () _%stx116410%_))
               (_%K116415116432%_
                (lambda (_%hd116430%_)
                  (gx#stx-apply-mark _%stx116410%_ _%hd116430%_))))
          (if (##pair? _%g116411116419%_)
              (let* ((_%hd116416116435%_ (##car _%g116411116419%_))
                     (_%hd116438%_ _%hd116416116435%_))
                (_%K116415116432%_ _%hd116438%_))
              (_%else116413116427%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx116395%_ _%E116396%_)
        (let ((_%bind116398%_ (gx#resolve-identifier__0 _%stx116395%_)))
          (if (##structure-direct-instance-of?
               _%bind116398%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind116398%_ '4 '#f '#f)
              (_%E116396%_ _%stx116395%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx116403%_)
        (let ((_%E116405%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx116403%_ _%E116405%_))))
    (define gx#syntax-local-e
      (lambda _g119568_
        (let ((_g119567_ (##length _g119568_)))
          (cond ((##fx= _g119567_ 1) (apply gx#syntax-local-e__0 _g119568_))
                ((##fx= _g119567_ 2) (apply gx#syntax-local-e__% _g119568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g119568_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx116379%_ _%E116380%_)
        (let ((_%e116382%_ (gx#syntax-local-e__% _%stx116379%_ _%E116380%_)))
          (if (##structure-instance-of? _%e116382%_ 'gx#expander::t)
              (##structure-ref _%e116382%_ '1 gx#expander::t '#f)
              _%e116382%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx116387%_)
        (let ((_%E116389%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx116387%_ _%E116389%_))))
    (define gx#syntax-local-value
      (lambda _g119570_
        (let ((_g119569_ (##length _g119570_)))
          (cond ((##fx= _g119569_ 1)
                 (apply gx#syntax-local-value__0 _g119570_))
                ((##fx= _g119569_ 2)
                 (apply gx#syntax-local-value__% _g119570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g119570_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx116376%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx116376%_)))))
