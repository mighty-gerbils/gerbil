(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1733870074)
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
      (lambda _%$args121486%_
        (apply make-instance gx#expander-context::t _%$args121486%_)))
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
      (lambda _%$args121483%_
        (apply make-instance gx#root-context::t _%$args121483%_)))
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
      (lambda _%$args121480%_
        (apply make-instance gx#phi-context::t _%$args121480%_)))
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
      (lambda _%$args121477%_
        (apply make-instance gx#top-context::t _%$args121477%_)))
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
      (lambda _%$args121474%_
        (apply make-instance gx#module-context::t _%$args121474%_)))
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
      (lambda _%$args121471%_
        (apply make-instance gx#prelude-context::t _%$args121471%_)))
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
      (lambda _%$args121468%_
        (apply make-instance gx#local-context::t _%$args121468%_)))
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
      (lambda (_%self118374121439%_ _%id121441%_ _%super121442%_)
        (let* ((_%self121444%_ _%self118374121439%_)
               (_%self121446%_ _%self121444%_))
          (if (##fx< '3 (##structure-length _%self121446%_))
              (begin
                (##unchecked-structure-set!
                 _%self121446%_
                 _%id121441%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121446%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121446%_
                 _%super121442%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self121446%_
                     '3
                     (##vector-length _%self121446%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self118374121459%_ _%id121460%_)
        (let ((_%super121462%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self118374121459%_
           _%id121460%_
           _%super121462%_))))
    (define gx#phi-context:::init!
      (lambda _g121529_
        (let ((_g121528_ (##length _g121529_)))
          (cond ((##fx= _g121528_ 2)
                 (apply gx#phi-context:::init!__0 _g121529_))
                ((##fx= _g121528_ 3)
                 (apply gx#phi-context:::init!__% _g121529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g121529_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self118375121290%_ _%super121292%_)
        (let* ((_%self121294%_ _%self118375121290%_)
               (_%self121296%_ _%self121294%_))
          (if (##fx< '3 (##structure-length _%self121296%_))
              (begin
                (##unchecked-structure-set!
                 _%self121296%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121296%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121296%_
                 _%super121292%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self121296%_
                     '3
                     (##vector-length _%self121296%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self118375121309%_)
        (let ((_%super121311%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self118375121309%_ _%super121311%_))))
    (define gx#local-context:::init!
      (lambda _g121531_
        (let ((_g121530_ (##length _g121531_)))
          (cond ((##fx= _g121530_ 1)
                 (apply gx#local-context:::init!__0 _g121531_))
                ((##fx= _g121530_ 2)
                 (apply gx#local-context:::init!__% _g121531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g121531_))))))
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
      (lambda _%$args121164%_
        (apply make-instance gx#binding::t _%$args121164%_)))
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
      (lambda _%$args121161%_
        (apply make-instance gx#runtime-binding::t _%$args121161%_)))
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
      (lambda _%$args121158%_
        (apply make-instance gx#local-binding::t _%$args121158%_)))
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
      (lambda _%$args121155%_
        (apply make-instance gx#top-binding::t _%$args121155%_)))
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
      (lambda _%$args121152%_
        (apply make-instance gx#module-binding::t _%$args121152%_)))
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
      (lambda _%$args121149%_
        (apply make-instance gx#extern-binding::t _%$args121149%_)))
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
      (lambda _%$args121146%_
        (apply make-instance gx#syntax-binding::t _%$args121146%_)))
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
      (lambda _%$args121143%_
        (apply make-instance gx#import-binding::t _%$args121143%_)))
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
      (lambda _%$args121140%_
        (apply make-instance gx#alias-binding::t _%$args121140%_)))
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
      (lambda _%$args121137%_
        (apply make-instance gx#expander::t _%$args121137%_)))
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
      (lambda _%$args121134%_
        (apply make-instance gx#core-expander::t _%$args121134%_)))
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
      (lambda _%$args121131%_
        (apply make-instance gx#expression-form::t _%$args121131%_)))
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
      (lambda _%$args121128%_
        (apply make-instance gx#special-form::t _%$args121128%_)))
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
      (lambda _%$args121125%_
        (apply make-instance gx#definition-form::t _%$args121125%_)))
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
      (lambda _%$args121122%_
        (apply make-instance gx#top-special-form::t _%$args121122%_)))
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
      (lambda _%$args121119%_
        (apply make-instance gx#module-special-form::t _%$args121119%_)))
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
      (lambda _%$args121116%_
        (apply make-instance gx#feature-expander::t _%$args121116%_)))
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
      (lambda _%$args121113%_
        (apply make-instance gx#private-feature-expander::t _%$args121113%_)))
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
      (lambda _%$args121110%_
        (apply make-instance gx#reserved-expander::t _%$args121110%_)))
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
      (lambda _%$args121107%_
        (apply make-instance gx#macro-expander::t _%$args121107%_)))
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
      (lambda _%$args121104%_
        (apply make-instance gx#rename-macro-expander::t _%$args121104%_)))
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
      (lambda _%$args121101%_
        (apply make-instance gx#user-expander::t _%$args121101%_)))
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
      (lambda _%$args121098%_
        (apply make-instance gx#expander-mark::t _%$args121098%_)))
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
      (lambda (_%ctx121082%_
               _%message121083%_
               _%stx121084%_
               .
               _%details121085%_)
        (let ((_%ctx121096%_
               (let ((_%$e121087%_ _%ctx121082%_))
                 (if _%$e121087%_
                     _%$e121087%_
                     (let ((_%$e121090%_ (gx#core-context-top__0)))
                       (if _%$e121090%_
                           ((lambda (_%ctx121093%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx121093%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e121090%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message121083%_
                  (cons _%stx121084%_ _%details121085%_)
                  _%ctx121096%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx121069%_ _%expression?121070%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx121069%_ _%expression?121070%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx121075%_)
        (let ((_%expression?121077%_ '#f))
          (gx#eval-syntax__% _%stx121075%_ _%expression?121077%_))))
    (define gx#eval-syntax
      (lambda _g121533_
        (let ((_g121532_ (##length _g121533_)))
          (cond ((##fx= _g121532_ 1) (apply gx#eval-syntax__0 _g121533_))
                ((##fx= _g121532_ 2) (apply gx#eval-syntax__% _g121533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g121533_))))))
    (define gx#eval-syntax*
      (lambda (_%stx121066%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx121066%_))))
    (define gx#core-expand__%
      (lambda (_%stx121053%_ _%expression?121054%_)
        (if _%expression?121054%_
            (gx#core-expand-expression _%stx121053%_)
            (gx#core-expand-top _%stx121053%_))))
    (define gx#core-expand__0
      (lambda (_%stx121059%_)
        (let ((_%expression?121061%_ '#f))
          (gx#core-expand__% _%stx121059%_ _%expression?121061%_))))
    (define gx#core-expand
      (lambda _g121535_
        (let ((_g121534_ (##length _g121535_)))
          (cond ((##fx= _g121534_ 1) (apply gx#core-expand__0 _g121535_))
                ((##fx= _g121534_ 2) (apply gx#core-expand__% _g121535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g121535_))))))
    (define gx#core-expand-top
      (lambda (_%stx121020%_)
        (let* ((_%stx121022%_ (gx#core-expand*__0 _%stx121020%_))
               (_%e121023121030%_ _%stx121022%_)
               (_%E121025121034%_
                (lambda () (gx#core-expand-expression _%stx121022%_)))
               (_%E121024121048%_
                (lambda ()
                  (if (gx#stx-pair? _%e121023121030%_)
                      (let ((_%e121026121038%_
                             (gx#syntax-e _%e121023121030%_)))
                        (let ((_%hd121027121041%_ (##car _%e121026121038%_))
                              (_%tl121028121043%_ (##cdr _%e121026121038%_)))
                          (let ((_%form121046%_ _%hd121027121041%_))
                            (if (gx#core-bound-identifier?__0 _%form121046%_)
                                _%stx121022%_
                                (_%E121025121034%_)))))
                      (_%E121025121034%_)))))
          (_%E121024121048%_))))
    (define gx#core-expand-expression
      (lambda (_%stx120952%_)
        (letrec ((_%sealed-expression?120954%_
                  (lambda (_%hd120990%_)
                    (if (gx#sealed-syntax? _%hd120990%_)
                        (let* ((_%e120991120998%_ _%hd120990%_)
                               (_%E120993121002%_ (lambda () '#f))
                               (_%E120992121016%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e120991120998%_)
                                      (let ((_%e120994121006%_
                                             (gx#syntax-e _%e120991120998%_)))
                                        (let ((_%hd120995121009%_
                                               (##car _%e120994121006%_))
                                              (_%tl120996121011%_
                                               (##cdr _%e120994121006%_)))
                                          (let ((_%form121014%_
                                                 _%hd120995121009%_))
                                            (gx#core-bound-identifier?__%
                                             _%form121014%_
                                             gx#expression-form-binding?))))
                                      (_%E120993121002%_)))))
                          (_%E120992121016%_))
                        '#f)))
                 (_%illegal-expression120955%_
                  (lambda (_%hd120987%_ . _%_120988%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx120952%_
                     _%hd120987%_)))
                 (_%expand-e120956%_
                  (lambda (_%form120979%_ _%hd120980%_)
                    (let ((_%bind120982%_
                           (if (##structure-instance-of?
                                _%form120979%_
                                'gx#binding::t)
                               _%form120979%_
                               (gx#resolve-identifier__0 _%form120979%_))))
                      (if (gx#core-expander-binding? _%bind120982%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind120982%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd120980%_
                            (gx#stx-source _%stx120952%_)))
                          (if (##structure-direct-instance-of?
                               _%bind120982%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind120982%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd120980%_
                                 (gx#stx-source _%stx120952%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx120952%_
                               _%form120979%_)))))))
          (let ((_%hd120958%_ (gx#core-expand-head _%stx120952%_)))
            (if (_%sealed-expression?120954%_ _%hd120958%_)
                _%hd120958%_
                (if (gx#stx-pair? _%hd120958%_)
                    (let* ((_%form120962%_ (gx#stx-car _%hd120958%_))
                           (_%bind120964%_
                            (if (gx#identifier? _%form120962%_)
                                (gx#resolve-identifier__0 _%form120962%_)
                                '#f)))
                      (if (or (not _%bind120964%_)
                              (not (gx#core-expander-binding? _%bind120964%_)))
                          (_%expand-e120956%_
                           '%%app
                           (cons '%%app _%hd120958%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind120964%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd120958%_
                               _%illegal-expression120955%_)
                              (if (gx#expression-form-binding? _%bind120964%_)
                                  (_%expand-e120956%_
                                   _%bind120964%_
                                   _%hd120958%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind120964%_)
                                      (gx#core-expand-expression
                                       (_%expand-e120956%_
                                        _%bind120964%_
                                        _%hd120958%_))
                                      (_%illegal-expression120955%_
                                       _%hd120958%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd120958%_)
                        (_%illegal-expression120955%_ _%hd120958%_)
                        (if (gx#identifier? _%hd120958%_)
                            (_%expand-e120956%_
                             '%%ref
                             (cons '%%ref (cons _%hd120958%_ '())))
                            (if (gx#stx-datum? _%hd120958%_)
                                (_%expand-e120956%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd120958%_ '())))
                                (_%illegal-expression120955%_
                                 _%hd120958%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx120947%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx120950%_ (gx#core-expand-expression _%stx120947%_)))
             (values _%stx120950%_ (gx#eval-syntax* _%stx120950%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx120928%_ _%stop?120929%_)
        (let _%lp120931%_ ((_%stx120933%_ _%stx120928%_))
          (if (_%stop?120929%_ _%stx120933%_)
              _%stx120933%_
              (let ((_%rstx120935%_ (gx#core-expand1 _%stx120933%_)))
                (if (eq? _%stx120933%_ _%rstx120935%_)
                    _%stx120933%_
                    (_%lp120931%_ _%rstx120935%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx120940%_)
        (let ((_%stop?120942%_ false))
          (gx#core-expand*__% _%stx120940%_ _%stop?120942%_))))
    (define gx#core-expand*
      (lambda _g121537_
        (let ((_g121536_ (##length _g121537_)))
          (cond ((##fx= _g121536_ 1) (apply gx#core-expand*__0 _g121537_))
                ((##fx= _g121536_ 2) (apply gx#core-expand*__% _g121537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g121537_))))))
    (define gx#core-expand1
      (lambda (_%stx120880%_)
        (letrec ((_%step120882%_
                  (lambda (_%hd120919%_)
                    (let ((_%bind120921%_
                           (gx#resolve-identifier__0 _%hd120919%_)))
                      (if (##structure-instance-of?
                           _%bind120921%_
                           'gx#runtime-binding::t)
                          _%stx120880%_
                          (if (##structure-direct-instance-of?
                               _%bind120921%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind120921%_
                                '4
                                '#f
                                '#f)
                               _%stx120880%_)
                              (if (not _%bind120921%_)
                                  _%stx120880%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx120880%_))))))))
          (let* ((_%e120883120891%_ _%stx120880%_)
                 (_%E120889120895%_ (lambda () _%stx120880%_))
                 (_%E120885120901%_
                  (lambda ()
                    (let ((_%hd120899%_ _%e120883120891%_))
                      (if (gx#identifier? _%hd120899%_)
                          (_%step120882%_ _%hd120899%_)
                          (_%E120889120895%_)))))
                 (_%E120884120915%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120883120891%_)
                        (let ((_%e120886120905%_
                               (gx#syntax-e _%e120883120891%_)))
                          (let ((_%hd120887120908%_ (##car _%e120886120905%_))
                                (_%tl120888120910%_ (##cdr _%e120886120905%_)))
                            (let ((_%hd120913%_ _%hd120887120908%_))
                              (if (gx#identifier? _%hd120913%_)
                                  (_%step120882%_ _%hd120913%_)
                                  (_%E120885120901%_)))))
                        (_%E120885120901%_)))))
            (_%E120884120915%_)))))
    (define gx#core-expand-head
      (lambda (_%stx120846%_)
        (letrec ((_%stop?120848%_
                  (lambda (_%stx120850%_)
                    (let* ((_%e120851120858%_ _%stx120850%_)
                           (_%E120853120862%_ (lambda () '#f))
                           (_%E120852120876%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120851120858%_)
                                  (let ((_%e120854120866%_
                                         (gx#syntax-e _%e120851120858%_)))
                                    (let ((_%hd120855120869%_
                                           (##car _%e120854120866%_))
                                          (_%tl120856120871%_
                                           (##cdr _%e120854120866%_)))
                                      (let ((_%hd120874%_ _%hd120855120869%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd120874%_))))
                                  (_%E120853120862%_)))))
                      (_%E120852120876%_)))))
          (gx#core-expand*__% _%stx120846%_ _%stop?120848%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx120652%_
               _%expand-special120653%_
               _%begin-form120654%_
               _%expand-e120655%_)
        (letrec ((_%expand-splice120657%_
                  (lambda (_%hd120820%_
                           _%body120821%_
                           _%rest120822%_
                           _%r120823%_)
                    (if (gx#stx-list? _%body120821%_)
                        (_%K120661%_
                         (gx#stx-foldr cons _%rest120822%_ _%body120821%_)
                         _%r120823%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx120652%_
                         _%hd120820%_))))
                 (_%expand-cond-expand120658%_
                  (lambda (_%hd120816%_ _%rest120817%_ _%r120818%_)
                    (_%K120661%_
                     (cons (gx#core-expand-cond-expand% _%hd120816%_)
                           _%rest120817%_)
                     _%r120818%_)))
                 (_%expand-include120659%_
                  (lambda (_%hd120765%_ _%rest120766%_ _%r120767%_)
                    (let* ((_%e120768120778%_ _%hd120765%_)
                           (_%E120770120782%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120768120778%_)))
                           (_%E120769120812%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120768120778%_)
                                  (let ((_%e120771120786%_
                                         (gx#syntax-e _%e120768120778%_)))
                                    (let ((_%hd120772120789%_
                                           (##car _%e120771120786%_))
                                          (_%tl120773120791%_
                                           (##cdr _%e120771120786%_)))
                                      (if (gx#stx-pair? _%tl120773120791%_)
                                          (let ((_%e120774120794%_
                                                 (gx#syntax-e
                                                  _%tl120773120791%_)))
                                            (let ((_%hd120775120797%_
                                                   (##car _%e120774120794%_))
                                                  (_%tl120776120799%_
                                                   (##cdr _%e120774120794%_)))
                                              (let ((_%path120802%_
                                                     _%hd120775120797%_))
                                                (if (gx#stx-null?
                                                     _%tl120776120799%_)
                                                    (if (gx#stx-string?
                                                         _%path120802%_)
                                                        (let* ((_%rpath120804%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path120802%_
                         (gx#stx-source _%hd120765%_)))
                       (_%block120806%_
                        (gx#core-expand-include%__%
                         _%hd120765%_
                         _%rpath120804%_))
                       (_%rbody120809%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block120806%_
                            _%expand-special120653%_
                            '#f
                            _%expand-e120655%_))
                         gx#current-expander-path
                         (cons _%rpath120804%_ (gx#current-expander-path)))))
                  (_%K120661%_
                   _%rest120766%_
                   (__foldr1 cons _%r120767%_ _%rbody120809%_)))
                (_%E120770120782%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120770120782%_)))))
                                          (_%E120770120782%_))))
                                  (_%E120770120782%_)))))
                      (_%E120769120812%_))))
                 (_%expand-expression120660%_
                  (lambda (_%hd120761%_ _%rest120762%_ _%r120763%_)
                    (_%K120661%_
                     _%rest120762%_
                     (cons (_%expand-e120655%_ _%hd120761%_) _%r120763%_))))
                 (_%K120661%_
                  (lambda (_%rest120691%_ _%r120692%_)
                    (let* ((_%e120693120700%_ _%rest120691%_)
                           (_%E120695120704%_
                            (lambda ()
                              (if _%begin-form120654%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form120654%_
                                    (reverse _%r120692%_))
                                   (gx#stx-source _%stx120652%_))
                                  _%r120692%_)))
                           (_%E120694120757%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120693120700%_)
                                  (let ((_%e120696120708%_
                                         (gx#syntax-e _%e120693120700%_)))
                                    (let ((_%hd120697120711%_
                                           (##car _%e120696120708%_))
                                          (_%tl120698120713%_
                                           (##cdr _%e120696120708%_)))
                                      (let* ((_%hd120716%_ _%hd120697120711%_)
                                             (_%rest120718%_
                                              _%tl120698120713%_)
                                             (_%hd120720%_
                                              (gx#core-expand-head
                                               _%hd120716%_))
                                             (_%e120721120728%_ _%hd120720%_)
                                             (_%E120723120732%_
                                              (lambda ()
                                                (_%expand-expression120660%_
                                                 _%hd120720%_
                                                 _%rest120718%_
                                                 _%r120692%_)))
                                             (_%E120722120753%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e120721120728%_)
                                                    (let ((_%e120724120736%_
                                                           (gx#syntax-e
                                                            _%e120721120728%_)))
                                                      (let ((_%hd120725120739%_
                                                             (##car _%e120724120736%_))
                                                            (_%tl120726120741%_
                                                             (##cdr _%e120724120736%_)))
                                                        (let* ((_%form120744%_
                                                                _%hd120725120739%_)
                                                               (_%body120746%_
                                                                _%tl120726120741%_)
                                                               (_%bind120748%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form120744%_)
                            (gx#resolve-identifier__0 _%form120744%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind120748%_)
                      (let ((_%$e120750%_
                             (##unchecked-structure-ref
                              _%bind120748%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e120750%_)
                            (_%expand-splice120657%_
                             _%hd120720%_
                             _%body120746%_
                             _%rest120718%_
                             _%r120692%_)
                            (if (eq? '%#cond-expand _%$e120750%_)
                                (_%expand-cond-expand120658%_
                                 _%hd120720%_
                                 _%rest120718%_
                                 _%r120692%_)
                                (if (eq? '%#include _%$e120750%_)
                                    (_%expand-include120659%_
                                     _%hd120720%_
                                     _%rest120718%_
                                     _%r120692%_)
                                    (_%expand-special120653%_
                                     _%hd120720%_
                                     _%K120661%_
                                     _%rest120718%_
                                     _%r120692%_)))))
                      (_%expand-expression120660%_
                       _%hd120720%_
                       _%rest120718%_
                       _%r120692%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120723120732%_)))))
                                        (_%E120722120753%_))))
                                  (_%E120695120704%_)))))
                      (_%E120694120757%_)))))
          (let* ((_%e120662120669%_ _%stx120652%_)
                 (_%E120664120673%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120662120669%_)))
                 (_%E120663120687%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120662120669%_)
                        (let ((_%e120665120677%_
                               (gx#syntax-e _%e120662120669%_)))
                          (let ((_%hd120666120680%_ (##car _%e120665120677%_))
                                (_%tl120667120682%_ (##cdr _%e120665120677%_)))
                            (let ((_%body120685%_ _%tl120667120682%_))
                              (if (gx#stx-list? _%body120685%_)
                                  (_%K120661%_ _%body120685%_ '())
                                  (_%E120664120673%_)))))
                        (_%E120664120673%_)))))
            (_%E120663120687%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx120828%_ _%expand-special120829%_)
        (let* ((_%begin-form120831%_ '%#begin)
               (_%expand-e120833%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx120828%_
           _%expand-special120829%_
           _%begin-form120831%_
           _%expand-e120833%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx120835%_ _%expand-special120836%_ _%begin-form120837%_)
        (let ((_%expand-e120839%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx120835%_
           _%expand-special120836%_
           _%begin-form120837%_
           _%expand-e120839%_))))
    (define gx#core-expand-block
      (lambda _g121539_
        (let ((_g121538_ (##length _g121539_)))
          (cond ((##fx= _g121538_ 2) (apply gx#core-expand-block__0 _g121539_))
                ((##fx= _g121538_ 3) (apply gx#core-expand-block__1 _g121539_))
                ((##fx= _g121538_ 4) (apply gx#core-expand-block__% _g121539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g121539_))))))
    (define gx#core-expand-block*
      (lambda (_%stx120600%_ _%expand-special120601%_)
        (let* ((_%g120602120613%_
                (gx#core-expand-block__1
                 _%stx120600%_
                 _%expand-special120601%_
                 '#f))
               (_%E120606120617%_
                (lambda ()
                  (error '"No clause matching"
                         _%g120602120613%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K120611120648%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx120600%_)))
                (_%K120608120634%_ (lambda (_%expr120632%_) _%expr120632%_))
                (_%K120607120623%_
                 (lambda (_%body120621%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body120621%_))
                    (gx#stx-source _%stx120600%_)))))
            (let ((_%try-match120604120644%_
                   (lambda ()
                     (if (pair? _%g120602120613%_)
                         (let ((_%tl120610120639%_ (##cdr _%g120602120613%_))
                               (_%hd120609120637%_ (##car _%g120602120613%_)))
                           (if (null? _%tl120610120639%_)
                               (let ((_%expr120642%_ _%hd120609120637%_))
                                 (_%K120608120634%_ _%expr120642%_))
                               (let ((_%body120626%_ _%g120602120613%_))
                                 (_%K120607120623%_ _%body120626%_))))
                         (let ((_%body120626%_ _%g120602120613%_))
                           (_%K120607120623%_ _%body120626%_))))))
              (if (null? _%g120602120613%_)
                  (_%K120611120648%_)
                  (_%try-match120604120644%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx120425%_)
        (letrec ((_%satisfied?120427%_
                  (lambda (_%condition120528%_)
                    (let* ((_%e120529120544%_ _%condition120528%_)
                           (_%E120539120548%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120529120544%_)))
                           (_%E120532120567%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120529120544%_)
                                  (let ((_%e120540120552%_
                                         (gx#syntax-e _%e120529120544%_)))
                                    (let ((_%hd120541120555%_
                                           (##car _%e120540120552%_))
                                          (_%tl120542120557%_
                                           (##cdr _%e120540120552%_)))
                                      (let* ((_%combinator120560%_
                                              _%hd120541120555%_)
                                             (_%body120562%_
                                              _%tl120542120557%_))
                                        (if (gx#stx-list? _%body120562%_)
                                            (let ((_%$e120564%_
                                                   (gx#stx-e
                                                    _%combinator120560%_)))
                                              (if (eq? 'not _%$e120564%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?120427%_
                                                        _%body120562%_))
                                                  (if (eq? 'and _%$e120564%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?120427%_
                                                       _%body120562%_)
                                                      (if (eq? 'or
                                                               _%$e120564%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?120427%_
                                                           _%body120562%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e120564%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body120562%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx120425%_
                       _%combinator120560%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E120539120548%_)))))
                                  (_%E120539120548%_))))
                           (_%E120531120590%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120529120544%_)
                                  (let ((_%e120533120571%_
                                         (gx#syntax-e _%e120529120544%_)))
                                    (let ((_%hd120534120574%_
                                           (##car _%e120533120571%_))
                                          (_%tl120535120576%_
                                           (##cdr _%e120533120571%_)))
                                      (if (and (gx#identifier?
                                                _%hd120534120574%_)
                                               (gx#core-identifier=?
                                                _%hd120534120574%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl120535120576%_)
                                              (let ((_%e120536120579%_
                                                     (gx#syntax-e
                                                      _%tl120535120576%_)))
                                                (let ((_%hd120537120582%_
                                                       (##car _%e120536120579%_))
                                                      (_%tl120538120584%_
                                                       (##cdr _%e120536120579%_)))
                                                  (let ((_%expr120587%_
                                                         _%hd120537120582%_))
                                                    (if (gx#stx-null?
                                                         _%tl120538120584%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr120587%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E120532120567%_)))))
                                              (_%E120532120567%_))
                                          (_%E120532120567%_))))
                                  (_%E120532120567%_))))
                           (_%E120530120596%_
                            (lambda ()
                              (let ((_%id120594%_ _%e120529120544%_))
                                (if (gx#identifier? _%id120594%_)
                                    (gx#core-bound-identifier?__%
                                     _%id120594%_
                                     gx#feature-binding?)
                                    (_%E120531120590%_))))))
                      (_%E120530120596%_))))
                 (_%loop120428%_
                  (lambda (_%rest120458%_)
                    (let* ((_%e120459120467%_ _%rest120458%_)
                           (_%E120465120471%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120459120467%_)))
                           (_%E120461120475%_
                            (lambda ()
                              (if (gx#stx-null? _%e120459120467%_)
                                  '()
                                  (_%E120465120471%_))))
                           (_%E120460120524%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120459120467%_)
                                  (let ((_%e120462120479%_
                                         (gx#syntax-e _%e120459120467%_)))
                                    (let ((_%hd120463120482%_
                                           (##car _%e120462120479%_))
                                          (_%tl120464120484%_
                                           (##cdr _%e120462120479%_)))
                                      (let* ((_%hd120487%_ _%hd120463120482%_)
                                             (_%rest120489%_
                                              _%tl120464120484%_)
                                             (_%e120490120497%_ _%hd120487%_)
                                             (_%E120492120501%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e120490120497%_)))
                                             (_%E120491120520%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e120490120497%_)
                                                    (let ((_%e120493120505%_
                                                           (gx#syntax-e
                                                            _%e120490120497%_)))
                                                      (let ((_%hd120494120508%_
                                                             (##car _%e120493120505%_))
                                                            (_%tl120495120510%_
                                                             (##cdr _%e120493120505%_)))
                                                        (let* ((_%condition120513%_
                                                                _%hd120494120508%_)
                                                               (_%body120515%_
                                                                _%tl120495120510%_))
                                                          (if (gx#stx-eq?
                                                               _%condition120513%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest120489%_)
                          _%body120515%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx120425%_
                           _%hd120487%_))
                      (if (_%satisfied?120427%_ _%condition120513%_)
                          _%body120515%_
                          (_%loop120428%_ _%rest120489%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120492120501%_)))))
                                        (_%E120491120520%_))))
                                  (_%E120461120475%_)))))
                      (_%E120460120524%_)))))
          (let* ((_%e120429120436%_ _%stx120425%_)
                 (_%E120431120440%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120429120436%_)))
                 (_%E120430120454%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120429120436%_)
                        (let ((_%e120432120444%_
                               (gx#syntax-e _%e120429120436%_)))
                          (let ((_%hd120433120447%_ (##car _%e120432120444%_))
                                (_%tl120434120449%_ (##cdr _%e120432120444%_)))
                            (let ((_%clauses120452%_ _%tl120434120449%_))
                              (if (gx#stx-list? _%clauses120452%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop120428%_ _%clauses120452%_))
                                  (_%E120431120440%_)))))
                        (_%E120431120440%_)))))
            (_%E120430120454%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx120368%_ _%rpath120369%_)
        (let* ((_%e120370120380%_ _%stx120368%_)
               (_%E120372120384%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120370120380%_)))
               (_%E120371120411%_
                (lambda ()
                  (if (gx#stx-pair? _%e120370120380%_)
                      (let ((_%e120373120388%_
                             (gx#syntax-e _%e120370120380%_)))
                        (let ((_%hd120374120391%_ (##car _%e120373120388%_))
                              (_%tl120375120393%_ (##cdr _%e120373120388%_)))
                          (if (gx#stx-pair? _%tl120375120393%_)
                              (let ((_%e120376120396%_
                                     (gx#syntax-e _%tl120375120393%_)))
                                (let ((_%hd120377120399%_
                                       (##car _%e120376120396%_))
                                      (_%tl120378120401%_
                                       (##cdr _%e120376120396%_)))
                                  (let ((_%path120404%_ _%hd120377120399%_))
                                    (if (gx#stx-null? _%tl120378120401%_)
                                        (if (gx#stx-string? _%path120404%_)
                                            (let ((_%rpath120409%_
                                                   (let ((_%$e120406%_
                                                          _%rpath120369%_))
                                                     (if _%$e120406%_
                                                         _%$e120406%_
                                                         (gx#core-resolve-path__%
                                                          _%path120404%_
                                                          (gx#stx-source
                                                           _%stx120368%_))))))
                                              (if (member _%rpath120409%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx120368%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath120409%_))
                                                    (gx#stx-source
                                                     _%stx120368%_)))))
                                            (_%E120372120384%_))
                                        (_%E120372120384%_)))))
                              (_%E120372120384%_))))
                      (_%E120372120384%_)))))
          (_%E120371120411%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx120418%_)
        (let ((_%rpath120420%_ '#f))
          (gx#core-expand-include%__% _%stx120418%_ _%rpath120420%_))))
    (define gx#core-expand-include%
      (lambda _g121541_
        (let ((_g121540_ (##length _g121541_)))
          (cond ((##fx= _g121540_ 1)
                 (apply gx#core-expand-include%__0 _g121541_))
                ((##fx= _g121540_ 2)
                 (apply gx#core-expand-include%__% _g121541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g121541_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K120334%_ _%stx120335%_ _%method120336%_)
        (if (procedure? _%K120334%_)
            (let ((_%$e120339%_ (gx#stx-source _%stx120335%_)))
              (if _%$e120339%_
                  ((lambda (_%g120341120343%_)
                     (gx#stx-wrap-source
                      (_%K120334%_ _%stx120335%_)
                      _%g120341120343%_))
                   _%$e120339%_)
                  (_%K120334%_ _%stx120335%_)))
            (let ((_%$e120347%_
                   (bound-method-ref _%K120334%_ _%method120336%_)))
              (if _%$e120347%_
                  ((lambda (_%g120349120351%_)
                     (gx#core-apply-expander__%
                      _%g120349120351%_
                      _%stx120335%_
                      _%method120336%_))
                   _%$e120347%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx120335%_
                   _%method120336%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K120358%_ _%stx120359%_)
        (let ((_%method120361%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K120358%_
           _%stx120359%_
           _%method120361%_))))
    (define gx#core-apply-expander
      (lambda _g121543_
        (let ((_g121542_ (##length _g121543_)))
          (cond ((##fx= _g121542_ 2)
                 (apply gx#core-apply-expander__0 _g121543_))
                ((##fx= _g121542_ 3)
                 (apply gx#core-apply-expander__% _g121543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g121543_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self118376120317%_ _%stx120319%_)
        (let* ((_%self120321%_ _%self118376120317%_)
               (_%self120323%_ _%self120321%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx120319%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self118377120157%_ _%stx120159%_)
        (let* ((_%self120161%_ _%self118377120157%_)
               (_%self120163%_ _%self120161%_)
               (_%self120172120178%_ _%self120163%_)
               (_%E120174120182%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120172120178%_
                         '((macro-expander K)))
                  '#!void))
               (_%K120175120187%_
                (lambda (_%K120185%_)
                  (gx#core-apply-expander__0 _%K120185%_ _%stx120159%_)))
               (_%e120176120190%_
                (##unchecked-structure-ref _%self120172120178%_ '1 '#f '#f))
               (_%K120193%_ _%e120176120190%_))
          (_%K120175120187%_ _%K120193%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self118378119997%_ _%stx119999%_)
        (let* ((_%self120001%_ _%self118378119997%_)
               (_%self120003%_ _%self120001%_))
          (if (gx#sealed-syntax? _%stx119999%_)
              _%stx119999%_
              (let* ((_%self120012120018%_ _%self120003%_)
                     (_%E120014120022%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self120012120018%_
                               '((core-expander K)))
                        '#!void))
                     (_%K120015120027%_
                      (lambda (_%K120025%_)
                        (gx#core-apply-expander__0 _%K120025%_ _%stx119999%_)))
                     (_%e120016120030%_
                      (##unchecked-structure-ref
                       _%self120012120018%_
                       '1
                       '#f
                       '#f))
                     (_%K120033%_ _%e120016120030%_))
                (_%K120015120027%_ _%K120033%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self118379119846%_ _%stx119848%_ _%top?119849%_)
        (let* ((_%self119851%_ _%self118379119846%_)
               (_%self119853%_ _%self119851%_))
          (if (_%top?119849%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self119853%_
               _%stx119848%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx119848%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self118379119866%_ _%stx119867%_)
        (let ((_%top?119869%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self118379119866%_
           _%stx119867%_
           _%top?119869%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g121545_
        (let ((_g121544_ (##length _g121545_)))
          (cond ((##fx= _g121544_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g121545_))
                ((##fx= _g121544_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g121545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g121545_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self118380119707%_ _%stx119709%_)
        (let* ((_%self119711%_ _%self118380119707%_)
               (_%self119713%_ _%self119711%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self119713%_
           _%stx119709%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self118381119519%_ _%stx119521%_)
        (let* ((_%self119523%_ _%self118381119519%_)
               (_%self119525%_ _%self119523%_)
               (_%self119534119540%_ _%self119525%_)
               (_%E119536119544%_
                (lambda ()
                  (error '"No clause matching"
                         _%self119534119540%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K119537119577%_
                (lambda (_%id119547%_)
                  (let* ((_%e119548119555%_ _%stx119521%_)
                         (_%E119550119559%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e119548119555%_)))
                         (_%E119549119573%_
                          (lambda ()
                            (if (gx#stx-pair? _%e119548119555%_)
                                (let ((_%e119551119563%_
                                       (gx#syntax-e _%e119548119555%_)))
                                  (let ((_%hd119552119566%_
                                         (##car _%e119551119563%_))
                                        (_%tl119553119568%_
                                         (##cdr _%e119551119563%_)))
                                    (let ((_%body119571%_ _%tl119553119568%_))
                                      (gx#core-cons
                                       _%id119547%_
                                       _%body119571%_))))
                                (_%E119550119559%_)))))
                    (_%E119549119573%_))))
               (_%e119538119580%_
                (##unchecked-structure-ref _%self119534119540%_ '1 '#f '#f))
               (_%id119583%_ _%e119538119580%_))
          (_%K119537119577%_ _%id119583%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self119345%_ _%stx119346%_ _%method119347%_)
        (let* ((_%self119348119356%_ _%self119345%_)
               (_%E119350119360%_
                (lambda ()
                  (error '"No clause matching"
                         _%self119348119356%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K119351119367%_
                (lambda (_%phi119363%_ _%ctx119364%_ _%K119365%_)
                  (gx#core-apply-user-macro
                   _%K119365%_
                   _%stx119346%_
                   _%ctx119364%_
                   _%phi119363%_
                   _%method119347%_))))
          (if (##structure-instance-of?
               _%self119348119356%_
               'gx#user-expander::t)
              (let* ((_%e119352119370%_
                      (##unchecked-structure-ref
                       _%self119348119356%_
                       '1
                       '#f
                       '#f))
                     (_%K119373%_ _%e119352119370%_)
                     (_%e119353119375%_
                      (##unchecked-structure-ref
                       _%self119348119356%_
                       '2
                       '#f
                       '#f))
                     (_%ctx119378%_ _%e119353119375%_)
                     (_%e119354119380%_
                      (##unchecked-structure-ref
                       _%self119348119356%_
                       '3
                       '#f
                       '#f))
                     (_%phi119383%_ _%e119354119380%_))
                (_%K119351119367%_ _%phi119383%_ _%ctx119378%_ _%K119373%_))
              (_%E119350119360%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self119388%_ _%stx119389%_)
        (let ((_%method119391%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self119388%_
           _%stx119389%_
           _%method119391%_))))
    (define gx#core-apply-user-expander
      (lambda _g121547_
        (let ((_g121546_ (##length _g121547_)))
          (cond ((##fx= _g121546_ 2)
                 (apply gx#core-apply-user-expander__0 _g121547_))
                ((##fx= _g121546_ 3)
                 (apply gx#core-apply-user-expander__% _g121547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g121547_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K119335%_
               _%stx119336%_
               _%ctx119337%_
               _%phi119338%_
               _%method119339%_)
        (let ((_%mark119341%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx119337%_
                _%phi119338%_
                _%stx119336%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K119335%_
               (gx#stx-apply-mark _%stx119336%_ _%mark119341%_)
               _%method119339%_)
              _%mark119341%_))
           gx#current-expander-marks
           (cons _%mark119341%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx119183%_ _%phi119184%_ _%ctx119185%_)
        (let _%lp119187%_ ((_%bind119189%_
                            (gx#core-resolve-identifier__%
                             _%stx119183%_
                             _%phi119184%_
                             _%ctx119185%_)))
          (if (##structure-direct-instance-of?
               _%bind119189%_
               'gx#import-binding::t)
              (_%lp119187%_
               (##unchecked-structure-ref _%bind119189%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind119189%_
                   'gx#alias-binding::t)
                  (_%lp119187%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind119189%_ '4 '#f '#f)
                    _%phi119184%_
                    _%ctx119185%_))
                  _%bind119189%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx119197%_)
        (let* ((_%phi119199%_ (gx#current-expander-phi))
               (_%ctx119201%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx119197%_
           _%phi119199%_
           _%ctx119201%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx119203%_ _%phi119204%_)
        (let ((_%ctx119206%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx119203%_
           _%phi119204%_
           _%ctx119206%_))))
    (define gx#resolve-identifier
      (lambda _g121549_
        (let ((_g121548_ (##length _g121549_)))
          (cond ((##fx= _g121548_ 1)
                 (apply gx#resolve-identifier__0 _g121549_))
                ((##fx= _g121548_ 2)
                 (apply gx#resolve-identifier__1 _g121549_))
                ((##fx= _g121548_ 3)
                 (apply gx#resolve-identifier__% _g121549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g121549_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx119138%_
               _%val119139%_
               _%rebind?119140%_
               _%phi119141%_
               _%ctx119142%_)
        (let ((_%rebind?119147%_
               (if (not _%rebind?119140%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?119140%_)
                       _%rebind?119140%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx119138%_)
           _%val119139%_
           _%rebind?119147%_
           _%phi119141%_
           _%ctx119142%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx119152%_ _%val119153%_)
        (let* ((_%rebind?119155%_ '#f)
               (_%phi119157%_ (gx#current-expander-phi))
               (_%ctx119159%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx119152%_
           _%val119153%_
           _%rebind?119155%_
           _%phi119157%_
           _%ctx119159%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx119161%_ _%val119162%_ _%rebind?119163%_)
        (let* ((_%phi119165%_ (gx#current-expander-phi))
               (_%ctx119167%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx119161%_
           _%val119162%_
           _%rebind?119163%_
           _%phi119165%_
           _%ctx119167%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx119169%_ _%val119170%_ _%rebind?119171%_ _%phi119172%_)
        (let ((_%ctx119174%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx119169%_
           _%val119170%_
           _%rebind?119171%_
           _%phi119172%_
           _%ctx119174%_))))
    (define gx#bind-identifier!
      (lambda _g121551_
        (let ((_g121550_ (##length _g121551_)))
          (cond ((##fx= _g121550_ 2) (apply gx#bind-identifier!__0 _g121551_))
                ((##fx= _g121550_ 3) (apply gx#bind-identifier!__1 _g121551_))
                ((##fx= _g121550_ 4) (apply gx#bind-identifier!__2 _g121551_))
                ((##fx= _g121550_ 5) (apply gx#bind-identifier!__% _g121551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g121551_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx119104%_ _%phi119105%_ _%ctx119106%_)
        (let _%lp119108%_ ((_%e119110%_ _%stx119104%_)
                           (_%marks119111%_ (gx#current-expander-marks)))
          (if (symbol? _%e119110%_)
              (gx#core-resolve-binding
               _%e119110%_
               _%phi119105%_
               _%phi119105%_
               _%ctx119106%_
               (reverse _%marks119111%_))
              (if (gx#identifier-quote? _%e119110%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e119110%_ '1 '#f '#f)
                   _%phi119105%_
                   '0
                   (##unchecked-structure-ref _%e119110%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e119110%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e119110%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e119110%_ '1 '#f '#f)
                       _%phi119105%_
                       _%phi119105%_
                       _%ctx119106%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e119110%_ '3 '#f '#f)
                        _%marks119111%_))
                      (if (##structure-direct-instance-of?
                           _%e119110%_
                           'gx#syntax-wrap::t)
                          (_%lp119108%_
                           (##unchecked-structure-ref _%e119110%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e119110%_ '3 '#f '#f)
                            _%marks119111%_))
                          (if (##structure-instance-of?
                               _%e119110%_
                               'gerbil#AST::t)
                              (_%lp119108%_
                               (##unchecked-structure-ref
                                _%e119110%_
                                '1
                                '#f
                                '#f)
                               _%marks119111%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx119104%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx119122%_)
        (let* ((_%phi119124%_ (gx#current-expander-phi))
               (_%ctx119126%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx119122%_
           _%phi119124%_
           _%ctx119126%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx119128%_ _%phi119129%_)
        (let ((_%ctx119131%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx119128%_
           _%phi119129%_
           _%ctx119131%_))))
    (define gx#core-resolve-identifier
      (lambda _g121553_
        (let ((_g121552_ (##length _g121553_)))
          (cond ((##fx= _g121552_ 1)
                 (apply gx#core-resolve-identifier__0 _g121553_))
                ((##fx= _g121552_ 2)
                 (apply gx#core-resolve-identifier__1 _g121553_))
                ((##fx= _g121552_ 3)
                 (apply gx#core-resolve-identifier__% _g121553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g121553_))))))
    (define gx#core-resolve-binding
      (lambda (_%id119014%_
               _%phi119015%_
               _%src-phi119016%_
               _%ctx119017%_
               _%marks119018%_)
        (letrec ((_%resolve119020%_
                  (lambda (_%ctx119088%_ _%src-phi119089%_ _%key119090%_)
                    (let _%lp119092%_ ((_%ctx119094%_
                                        (gx#core-context-shift
                                         _%ctx119088%_
                                         _%phi119015%_))
                                       (_%dphi119095%_
                                        (fx- _%phi119015%_ _%src-phi119089%_)))
                      (let ((_%$e119097%_
                             (gx#core-context-resolve
                              _%ctx119094%_
                              _%key119090%_)))
                        (if _%$e119097%_
                            _%$e119097%_
                            (if (fxzero? _%dphi119095%_)
                                '#f
                                (if (fxpositive? _%dphi119095%_)
                                    (_%lp119092%_
                                     (gx#core-context-shift _%ctx119094%_ '-1)
                                     (##fx- _%dphi119095%_ '1))
                                    (_%lp119092%_
                                     (gx#core-context-shift _%ctx119094%_ '1)
                                     (##fx+ _%dphi119095%_ '1))))))))))
          (let _%lp119022%_ ((_%ctx119024%_ _%ctx119017%_)
                             (_%src-phi119025%_ _%src-phi119016%_)
                             (_%rest119026%_ _%marks119018%_))
            (let* ((_%rest119027119035%_ _%rest119026%_)
                   (_%else119029119043%_
                    (lambda ()
                      (_%resolve119020%_
                       _%ctx119024%_
                       _%src-phi119025%_
                       _%id119014%_)))
                   (_%K119031119076%_
                    (lambda (_%rest119046%_ _%hd119047%_)
                      (let* ((_%hd119048119054%_ _%hd119047%_)
                             (_%E119050119058%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd119048119054%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K119051119068%_
                              (lambda (_%subst119061%_)
                                (let ((_%$e119065%_
                                       (let ((_%key119063%_
                                              (if _%subst119061%_
                                                  (hash-get
                                                   _%subst119061%_
                                                   _%id119014%_)
                                                  '#f)))
                                         (if _%key119063%_
                                             (_%resolve119020%_
                                              _%ctx119024%_
                                              _%src-phi119025%_
                                              _%key119063%_)
                                             '#f))))
                                  (if _%$e119065%_
                                      _%$e119065%_
                                      (_%lp119022%_
                                       (##unchecked-structure-ref
                                        _%hd119047%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd119047%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest119046%_))))))
                        (if (##structure-instance-of?
                             _%hd119048119054%_
                             'gx#expander-mark::t)
                            (let* ((_%e119052119071%_
                                    (##unchecked-structure-ref
                                     _%hd119048119054%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst119074%_ _%e119052119071%_))
                              (_%K119051119068%_ _%subst119074%_))
                            (_%E119050119058%_))))))
              (if (pair? _%rest119027119035%_)
                  (let ((_%hd119032119079%_ (##car _%rest119027119035%_))
                        (_%tl119033119081%_ (##cdr _%rest119027119035%_)))
                    (let* ((_%hd119084%_ _%hd119032119079%_)
                           (_%rest119086%_ _%tl119033119081%_))
                      (_%K119031119076%_ _%rest119086%_ _%hd119084%_)))
                  (_%else119029119043%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key118884%_
               _%val118885%_
               _%rebind?118886%_
               _%phi118887%_
               _%ctx118888%_)
        (letrec ((_%update-binding118890%_
                  (lambda (_%xval118963%_)
                    (if (or (_%rebind?118886%_
                             _%ctx118888%_
                             _%xval118963%_
                             _%val118885%_)
                            (and (##structure-direct-instance-of?
                                  _%xval118963%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval118963%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val118885%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val118885%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval118963%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val118885%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val118885%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval118963%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val118885%_
                        (if (and (##structure-direct-instance-of?
                                  _%val118885%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val118885%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval118963%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val118885%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval118963%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval118963%_
                            (if (and (##structure-direct-instance-of?
                                      _%val118885%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval118963%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key118884%_
                                 (cons (##unchecked-structure-ref
                                        _%val118885%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val118885%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval118963%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval118963%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval118963%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval118963%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key118884%_
                                 _%val118885%_
                                 _%xval118963%_))))))
                 (_%gensubst118891%_
                  (lambda (_%subst118958%_ _%id118959%_)
                    (let ((_%eid118961%_
                           (gensym (if (uninterned-symbol? _%id118959%_)
                                       '%
                                       _%id118959%_))))
                      (hash-put! _%subst118958%_ _%id118959%_ _%eid118961%_)
                      _%eid118961%_)))
                 (_%subst!118892%_
                  (lambda (_%key118894%_)
                    (let* ((_%key118895118903%_ _%key118894%_)
                           (_%else118897118911%_ (lambda () _%key118894%_))
                           (_%K118899118946%_
                            (lambda (_%mark118914%_ _%id118915%_)
                              (let* ((_%mark118916118922%_ _%mark118914%_)
                                     (_%E118918118926%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark118916118922%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K118919118938%_
                                      (lambda (_%subst118929%_)
                                        (if (not _%subst118929%_)
                                            (let ((_%subst118932%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark118914%_
                                               _%subst118932%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst118891%_
                                               _%subst118932%_
                                               _%id118915%_))
                                            (let ((_%$e118934%_
                                                   (hash-get
                                                    _%subst118929%_
                                                    _%id118915%_)))
                                              (if _%$e118934%_
                                                  _%$e118934%_
                                                  (_%gensubst118891%_
                                                   _%subst118929%_
                                                   _%id118915%_)))))))
                                (if (##structure-instance-of?
                                     _%mark118916118922%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e118920118941%_
                                            (##unchecked-structure-ref
                                             _%mark118916118922%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst118944%_ _%e118920118941%_))
                                      (_%K118919118938%_ _%subst118944%_))
                                    (_%E118918118926%_))))))
                      (if (pair? _%key118895118903%_)
                          (let ((_%hd118900118949%_
                                 (##car _%key118895118903%_))
                                (_%tl118901118951%_
                                 (##cdr _%key118895118903%_)))
                            (let* ((_%id118954%_ _%hd118900118949%_)
                                   (_%mark118956%_ _%tl118901118951%_))
                              (_%K118899118946%_ _%mark118956%_ _%id118954%_)))
                          (_%else118897118911%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx118888%_ _%phi118887%_)
           (_%subst!118892%_ _%key118884%_)
           _%val118885%_
           _%update-binding118890%_))))
    (define gx#core-bind!__0
      (lambda (_%key118984%_ _%val118985%_)
        (let* ((_%rebind?118987%_ false)
               (_%phi118989%_ (gx#current-expander-phi))
               (_%ctx118991%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key118984%_
           _%val118985%_
           _%rebind?118987%_
           _%phi118989%_
           _%ctx118991%_))))
    (define gx#core-bind!__1
      (lambda (_%key118993%_ _%val118994%_ _%rebind?118995%_)
        (let* ((_%phi118997%_ (gx#current-expander-phi))
               (_%ctx118999%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key118993%_
           _%val118994%_
           _%rebind?118995%_
           _%phi118997%_
           _%ctx118999%_))))
    (define gx#core-bind!__2
      (lambda (_%key119001%_ _%val119002%_ _%rebind?119003%_ _%phi119004%_)
        (let ((_%ctx119006%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119001%_
           _%val119002%_
           _%rebind?119003%_
           _%phi119004%_
           _%ctx119006%_))))
    (define gx#core-bind!
      (lambda _g121555_
        (let ((_g121554_ (##length _g121555_)))
          (cond ((##fx= _g121554_ 2) (apply gx#core-bind!__0 _g121555_))
                ((##fx= _g121554_ 3) (apply gx#core-bind!__1 _g121555_))
                ((##fx= _g121554_ 4) (apply gx#core-bind!__2 _g121555_))
                ((##fx= _g121554_ 5) (apply gx#core-bind!__% _g121555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g121555_))))))
    (define gx#core-identifier-key
      (lambda (_%stx118815%_)
        (if (symbol? _%stx118815%_)
            (let* ((_%g118817118825%_ (gx#current-expander-marks))
                   (_%else118819118833%_ (lambda () _%stx118815%_))
                   (_%K118821118838%_
                    (lambda (_%hd118836%_) (cons _%stx118815%_ _%hd118836%_))))
              (if (pair? _%g118817118825%_)
                  (let* ((_%hd118822118841%_ (##car _%g118817118825%_))
                         (_%hd118844%_ _%hd118822118841%_))
                    (_%K118821118838%_ _%hd118844%_))
                  (_%else118819118833%_)))
            (if (gx#identifier? _%stx118815%_)
                (let* ((_%id118847%_ (gx#syntax-local-unwrap _%stx118815%_))
                       (_%eid118849%_ (gx#stx-e _%id118847%_))
                       (_%marks118851%_
                        (gx#stx-identifier-marks* _%id118847%_))
                       (_%marks118853118861%_ _%marks118851%_)
                       (_%else118855118869%_ (lambda () _%eid118849%_))
                       (_%K118857118874%_
                        (lambda (_%hd118872%_)
                          (cons _%eid118849%_ _%hd118872%_))))
                  (if (pair? _%marks118853118861%_)
                      (let* ((_%hd118858118877%_ (##car _%marks118853118861%_))
                             (_%hd118880%_ _%hd118858118877%_))
                        (_%K118857118874%_ _%hd118880%_))
                      (_%else118855118869%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx118815%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx118754%_ _%phi118755%_)
        (letrec ((_%make-phi118757%_
                  (lambda (_%super118813%_)
                    (let ((__obj121527
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj121527
                       (##gensym 'phi)
                       _%super118813%_)
                      __obj121527)))
                 (_%make-phi/up118758%_
                  (lambda (_%ctx118808%_ _%super118809%_)
                    (let ((_%ctx+1118811%_
                           (_%make-phi118757%_ _%super118809%_)))
                      (##unchecked-structure-set!
                       _%ctx118808%_
                       _%ctx+1118811%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1118811%_
                       _%ctx118808%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1118811%_)))
                 (_%make-phi/down118759%_
                  (lambda (_%ctx118803%_ _%super118804%_)
                    (let ((_%ctx-1118806%_
                           (_%make-phi118757%_ _%super118804%_)))
                      (##unchecked-structure-set!
                       _%ctx-1118806%_
                       _%ctx118803%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx118803%_
                       _%ctx-1118806%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1118806%_)))
                 (_%shift118760%_
                  (lambda (_%ctx118786%_
                           _%delta118787%_
                           _%make-delta-context118788%_
                           _%phi118789%_
                           _%K118790%_)
                    (let ((_%$e118792%_
                           (##unchecked-structure-ref
                            _%ctx118786%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e118792%_
                          ((lambda (_%super118795%_)
                             (let* ((_%super118797%_
                                     (_%K118790%_
                                      _%super118795%_
                                      _%delta118787%_))
                                    (_%ctx+d118799%_
                                     (_%make-delta-context118788%_
                                      _%ctx118786%_
                                      _%super118797%_)))
                               (_%K118790%_
                                _%ctx+d118799%_
                                (fx- _%phi118789%_ _%delta118787%_))))
                           _%$e118792%_)
                          (error '"Bad context" _%ctx118786%_))))))
          (let _%K118762%_ ((_%ctx118764%_ _%ctx118754%_)
                            (_%phi118765%_ _%phi118755%_))
            (if (fxzero? _%phi118765%_)
                _%ctx118764%_
                (if (##structure-instance-of? _%ctx118764%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi118765%_)
                        (let ((_%$e118769%_
                               (##unchecked-structure-ref
                                _%ctx118764%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e118769%_
                              ((lambda (_%g118771118773%_)
                                 (_%K118762%_
                                  _%g118771118773%_
                                  (##fx- _%phi118765%_ '1)))
                               _%$e118769%_)
                              (_%shift118760%_
                               _%ctx118764%_
                               '1
                               _%make-phi/up118758%_
                               _%phi118765%_
                               _%K118762%_)))
                        (let ((_%$e118777%_
                               (##unchecked-structure-ref
                                _%ctx118764%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e118777%_
                              ((lambda (_%g118779118781%_)
                                 (_%K118762%_
                                  _%g118779118781%_
                                  (##fx+ _%phi118765%_ '1)))
                               _%$e118777%_)
                              (_%shift118760%_
                               _%ctx118764%_
                               '-1
                               _%make-phi/down118759%_
                               _%phi118765%_
                               _%K118762%_))))
                    _%ctx118764%_))))))
    (define gx#core-context-get
      (lambda (_%ctx118751%_ _%key118752%_)
        (hash-get
         (##unchecked-structure-ref _%ctx118751%_ '2 '#f '#f)
         _%key118752%_)))
    (define gx#core-context-put!
      (lambda (_%ctx118747%_ _%key118748%_ _%val118749%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx118747%_ '2 '#f '#f)
         _%key118748%_
         _%val118749%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx118733%_ _%key118734%_)
        (let _%lp118736%_ ((_%ctx118738%_ _%ctx118733%_))
          (let ((_%$e118740%_
                 (gx#core-context-get _%ctx118738%_ _%key118734%_)))
            (if _%$e118740%_
                _%$e118740%_
                (let ((_%$e118743%_
                       (if (##structure-instance-of?
                            _%ctx118738%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx118738%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e118743%_ (_%lp118736%_ _%$e118743%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx118722%_ _%key118723%_ _%val118724%_ _%rebind118725%_)
        (let ((_%$e118727%_ (gx#core-context-get _%ctx118722%_ _%key118723%_)))
          (if _%$e118727%_
              ((lambda (_%xval118730%_)
                 (gx#core-context-put!
                  _%ctx118722%_
                  _%key118723%_
                  (_%rebind118725%_ _%xval118730%_)))
               _%$e118727%_)
              (gx#core-context-put!
               _%ctx118722%_
               _%key118723%_
               _%val118724%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx118697%_ _%stop?118698%_)
        (let _%lp118700%_ ((_%ctx118702%_ _%ctx118697%_))
          (if (_%stop?118698%_ _%ctx118702%_)
              _%ctx118702%_
              (if (##structure-instance-of? _%ctx118702%_ 'gx#phi-context::t)
                  (_%lp118700%_
                   (##unchecked-structure-ref _%ctx118702%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx118711%_ (gx#current-expander-context))
               (_%stop?118713%_ gx#top-context?))
          (gx#core-context-top__% _%ctx118711%_ _%stop?118713%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx118715%_)
        (let ((_%stop?118717%_ gx#top-context?))
          (gx#core-context-top__% _%ctx118715%_ _%stop?118717%_))))
    (define gx#core-context-top
      (lambda _g121557_
        (let ((_g121556_ (##length _g121557_)))
          (cond ((##fx= _g121556_ 0) (apply gx#core-context-top__0 _g121557_))
                ((##fx= _g121556_ 1) (apply gx#core-context-top__1 _g121557_))
                ((##fx= _g121556_ 2) (apply gx#core-context-top__% _g121557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g121557_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx118682%_)
        (let _%lp118684%_ ((_%ctx118686%_ _%ctx118682%_))
          (if (##structure-instance-of? _%ctx118686%_ 'gx#phi-context::t)
              (_%lp118684%_
               (##unchecked-structure-ref _%ctx118686%_ '3 '#f '#f))
              _%ctx118686%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx118692%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx118692%_))))
    (define gx#core-context-root
      (lambda _g121559_
        (let ((_g121558_ (##length _g121559_)))
          (cond ((##fx= _g121558_ 0) (apply gx#core-context-root__0 _g121559_))
                ((##fx= _g121558_ 1) (apply gx#core-context-root__% _g121559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g121559_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx118664%_ . _%ignore118665%_)
        (let ((_%$e118667%_ (gx#current-expander-allow-rebind?)))
          (if _%$e118667%_
              _%$e118667%_
              (if (##structure-instance-of? _%ctx118664%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx118664%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx118664%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx118674%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx118674%_))))
    (define gx#core-context-rebind?
      (lambda _g121561_
        (let ((_g121560_ (##length _g121561_)))
          (cond ((##fx= _g121560_ 0)
                 (apply gx#core-context-rebind?__0 _g121561_))
                ((##fx= _g121560_ 1)
                 (apply gx#core-context-rebind?__% _g121561_))
                ((##fx>= _g121560_ 1)
                 (apply gx#core-context-rebind?__% _g121561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g121561_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx118647%_)
        (let ((_%$e118649%_ (gx#core-context-top__1 _%ctx118647%_)))
          (if _%$e118649%_
              ((lambda (_%ctx118652%_)
                 (if (##structure-instance-of?
                      _%ctx118652%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx118652%_ '6 '#f '#f)
                     '#f))
               _%$e118649%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx118659%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx118659%_))))
    (define gx#core-context-namespace
      (lambda _g121563_
        (let ((_g121562_ (##length _g121563_)))
          (cond ((##fx= _g121562_ 0)
                 (apply gx#core-context-namespace__0 _g121563_))
                ((##fx= _g121562_ 1)
                 (apply gx#core-context-namespace__% _g121563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g121563_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind118633%_ _%is?118634%_)
        (if (##structure-direct-instance-of?
             _%bind118633%_
             'gx#syntax-binding::t)
            (_%is?118634%_
             (##unchecked-structure-ref _%bind118633%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind118639%_)
        (let ((_%is?118641%_ gx#expander?))
          (gx#expander-binding?__% _%bind118639%_ _%is?118641%_))))
    (define gx#expander-binding?
      (lambda _g121565_
        (let ((_g121564_ (##length _g121565_)))
          (cond ((##fx= _g121564_ 1) (apply gx#expander-binding?__0 _g121565_))
                ((##fx= _g121564_ 2) (apply gx#expander-binding?__% _g121565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g121565_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind118630%_)
        (gx#expander-binding?__% _%bind118630%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind118628%_)
        (gx#expander-binding?__% _%bind118628%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind118622%_)
        (letrec ((_%direct-special-form?118624%_
                  (lambda (_%obj118626%_)
                    (##structure-direct-instance-of?
                     _%obj118626%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind118622%_
           _%direct-special-form?118624%_))))
    (define gx#special-form-binding?
      (lambda (_%bind118620%_)
        (gx#expander-binding?__% _%bind118620%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind118611%_)
        (letrec ((_%feature?118613%_
                  (lambda (_%e118615%_)
                    (let ((_%$e118617%_
                           (##structure-instance-of?
                            _%e118615%_
                            'gx#feature-expander::t)))
                      (if _%$e118617%_
                          _%$e118617%_
                          (##structure-instance-of?
                           _%e118615%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind118611%_ _%feature?118613%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind118609%_)
        (gx#expander-binding?__% _%bind118609%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id118596%_ _%bound?118597%_)
        (if (gx#identifier? _%id118596%_)
            (_%bound?118597%_ (gx#resolve-identifier__0 _%id118596%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id118602%_)
        (let ((_%bound?118604%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id118602%_ _%bound?118604%_))))
    (define gx#core-bound-identifier?
      (lambda _g121567_
        (let ((_g121566_ (##length _g121567_)))
          (cond ((##fx= _g121566_ 1)
                 (apply gx#core-bound-identifier?__0 _g121567_))
                ((##fx= _g121566_ 2)
                 (apply gx#core-bound-identifier?__% _g121567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g121567_))))))
    (define gx#core-identifier=?
      (lambda (_%x118586%_ _%y118587%_)
        (letrec ((_%y=?118589%_
                  (lambda (_%xid118593%_)
                    ((if (list? _%y118587%_) memq eq?)
                     _%xid118593%_
                     _%y118587%_))))
          (let ((_%bind118591%_ (gx#resolve-identifier__0 _%x118586%_)))
            (if (##structure-instance-of? _%bind118591%_ 'gx#binding::t)
                (_%y=?118589%_
                 (##unchecked-structure-ref _%bind118591%_ '1 '#f '#f))
                (_%y=?118589%_ (gx#stx-e _%x118586%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e118584%_)
        (if (interned-symbol? _%e118584%_)
            (string-index__0 (symbol->string _%e118584%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx118537%_ _%src118538%_ _%ctx118539%_ _%marks118540%_)
        (if (##structure? _%stx118537%_)
            (let ((_%$e118542%_ (gx#sealed-syntax-unwrap _%stx118537%_)))
              (if _%$e118542%_
                  _%$e118542%_
                  (if (gx#identifier? _%stx118537%_)
                      (let ((_%id118546%_
                             (gx#stx-unwrap__% _%stx118537%_ _%marks118540%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id118546%_ '1 '#f '#f)
                         (let ((_%$e118548%_
                                (##unchecked-structure-ref
                                 _%id118546%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e118548%_ _%$e118548%_ _%src118538%_))
                         _%ctx118539%_
                         (##unchecked-structure-ref _%id118546%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx118537%_)
                       (let ((_%$e118552%_ (gx#stx-source _%stx118537%_)))
                         (if _%$e118552%_ _%$e118552%_ _%src118538%_))
                       _%ctx118539%_
                       (reverse _%marks118540%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx118537%_
             _%src118538%_
             _%ctx118539%_
             (reverse _%marks118540%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx118558%_)
        (let* ((_%src118560%_ '#f)
               (_%ctx118562%_ (gx#current-expander-context))
               (_%marks118564%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118558%_
           _%src118560%_
           _%ctx118562%_
           _%marks118564%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx118566%_ _%src118567%_)
        (let* ((_%ctx118569%_ (gx#current-expander-context))
               (_%marks118571%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118566%_
           _%src118567%_
           _%ctx118569%_
           _%marks118571%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx118573%_ _%src118574%_ _%ctx118575%_)
        (let ((_%marks118577%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118573%_
           _%src118574%_
           _%ctx118575%_
           _%marks118577%_))))
    (define gx#core-quote-syntax
      (lambda _g121569_
        (let ((_g121568_ (##length _g121569_)))
          (cond ((##fx= _g121568_ 1) (apply gx#core-quote-syntax__0 _g121569_))
                ((##fx= _g121568_ 2) (apply gx#core-quote-syntax__1 _g121569_))
                ((##fx= _g121568_ 3) (apply gx#core-quote-syntax__2 _g121569_))
                ((##fx= _g121568_ 4) (apply gx#core-quote-syntax__% _g121569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g121569_))))))
    (define gx#core-cons
      (lambda (_%hd118533%_ _%tl118534%_)
        (cons (gx#core-quote-syntax__0 _%hd118533%_) _%tl118534%_)))
    (define gx#core-list
      (lambda (_%hd118530%_ . _%rest118531%_)
        (cons (gx#core-quote-syntax__0 _%hd118530%_) _%rest118531%_)))
    (define gx#core-cons*
      (lambda (_%hd118527%_ . _%rest118528%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd118527%_) _%rest118528%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path118496%_ _%rel118497%_)
        (let ((_%path118514%_ (gx#stx-e _%stx-path118496%_))
              (_%reldir118515%_
               (let _%lp118499%_ ((_%relsrc118501%_
                                   (let ((_%$e118511%_
                                          (gx#stx-source _%stx-path118496%_)))
                                     (if _%$e118511%_
                                         _%$e118511%_
                                         _%rel118497%_))))
                 (if (##structure-instance-of? _%relsrc118501%_ 'gerbil#AST::t)
                     (_%lp118499%_
                      (let ((_%$e118504%_ (gx#stx-source _%relsrc118501%_)))
                        (if _%$e118504%_
                            _%$e118504%_
                            (gx#stx-e _%relsrc118501%_))))
                     (if (source-location-path? _%relsrc118501%_)
                         (path-directory
                          (source-location-path _%relsrc118501%_))
                         (if (string? _%relsrc118501%_)
                             (path-directory _%relsrc118501%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path118514%_ (path-normalize _%reldir118515%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path118520%_)
        (let ((_%rel118522%_ '#f))
          (gx#core-resolve-path__% _%stx-path118520%_ _%rel118522%_))))
    (define gx#core-resolve-path
      (lambda _g121571_
        (let ((_g121570_ (##length _g121571_)))
          (cond ((##fx= _g121570_ 1) (apply gx#core-resolve-path__0 _g121571_))
                ((##fx= _g121570_ 2) (apply gx#core-resolve-path__% _g121571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g121571_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr118452%_ _%ctx118453%_)
        (let* ((_%repr118454118461%_ _%repr118452%_)
               (_%E118456118465%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr118454118461%_
                         '([phi . subs]))
                  '#!void))
               (_%K118457118473%_
                (lambda (_%subs118468%_ _%phi118469%_)
                  (let ((_%subst118471%_
                         (if (null? _%subs118468%_)
                             '#f
                             (list->hash-table-eq _%subs118468%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst118471%_
                     _%ctx118453%_
                     _%phi118469%_
                     '#f)))))
          (if (pair? _%repr118454118461%_)
              (let ((_%hd118458118476%_ (##car _%repr118454118461%_))
                    (_%tl118459118478%_ (##cdr _%repr118454118461%_)))
                (let* ((_%phi118481%_ _%hd118458118476%_)
                       (_%subs118483%_ _%tl118459118478%_))
                  (_%K118457118473%_ _%subs118483%_ _%phi118481%_)))
              (_%E118456118465%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr118488%_)
        (let ((_%ctx118490%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr118488%_ _%ctx118490%_))))
    (define gx#core-deserialize-mark
      (lambda _g121573_
        (let ((_g121572_ (##length _g121573_)))
          (cond ((##fx= _g121572_ 1)
                 (apply gx#core-deserialize-mark__0 _g121573_))
                ((##fx= _g121572_ 2)
                 (apply gx#core-deserialize-mark__% _g121573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g121573_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx118449%_)
        (gx#stx-rewrap _%stx118449%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx118447%_)
        (gx#stx-unwrap__% _%stx118447%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx118417%_)
        (let* ((_%g118418118426%_ (gx#current-expander-marks))
               (_%else118420118434%_ (lambda () _%stx118417%_))
               (_%K118422118439%_
                (lambda (_%hd118437%_)
                  (gx#stx-apply-mark _%stx118417%_ _%hd118437%_))))
          (if (pair? _%g118418118426%_)
              (let* ((_%hd118423118442%_ (##car _%g118418118426%_))
                     (_%hd118445%_ _%hd118423118442%_))
                (_%K118422118439%_ _%hd118445%_))
              (_%else118420118434%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx118402%_ _%E118403%_)
        (let ((_%bind118405%_ (gx#resolve-identifier__0 _%stx118402%_)))
          (if (##structure-direct-instance-of?
               _%bind118405%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind118405%_ '4 '#f '#f)
              (_%E118403%_ _%stx118402%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx118410%_)
        (let ((_%E118412%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx118410%_ _%E118412%_))))
    (define gx#syntax-local-e
      (lambda _g121575_
        (let ((_g121574_ (##length _g121575_)))
          (cond ((##fx= _g121574_ 1) (apply gx#syntax-local-e__0 _g121575_))
                ((##fx= _g121574_ 2) (apply gx#syntax-local-e__% _g121575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g121575_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx118386%_ _%E118387%_)
        (let ((_%e118389%_ (gx#syntax-local-e__% _%stx118386%_ _%E118387%_)))
          (if (##structure-instance-of? _%e118389%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e118389%_ '1 '#f '#f)
              _%e118389%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx118394%_)
        (let ((_%E118396%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx118394%_ _%E118396%_))))
    (define gx#syntax-local-value
      (lambda _g121577_
        (let ((_g121576_ (##length _g121577_)))
          (cond ((##fx= _g121576_ 1)
                 (apply gx#syntax-local-value__0 _g121577_))
                ((##fx= _g121576_ 2)
                 (apply gx#syntax-local-value__% _g121577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g121577_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx118383%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx118383%_)))))
