(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1733687559)
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
      (lambda _%$args121449%_
        (apply make-instance gx#expander-context::t _%$args121449%_)))
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
      (lambda _%$args121446%_
        (apply make-instance gx#root-context::t _%$args121446%_)))
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
      (lambda _%$args121443%_
        (apply make-instance gx#phi-context::t _%$args121443%_)))
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
      (lambda _%$args121440%_
        (apply make-instance gx#top-context::t _%$args121440%_)))
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
      (lambda _%$args121437%_
        (apply make-instance gx#module-context::t _%$args121437%_)))
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
      (lambda _%$args121434%_
        (apply make-instance gx#prelude-context::t _%$args121434%_)))
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
      (lambda _%$args121431%_
        (apply make-instance gx#local-context::t _%$args121431%_)))
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
      (lambda (_%self118337121402%_ _%id121404%_ _%super121405%_)
        (let* ((_%self121407%_ _%self118337121402%_)
               (_%self121409%_ _%self121407%_))
          (if (##fx< '3 (##structure-length _%self121409%_))
              (begin
                (##unchecked-structure-set!
                 _%self121409%_
                 _%id121404%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121409%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121409%_
                 _%super121405%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self121409%_
                     '3
                     (##vector-length _%self121409%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self118337121422%_ _%id121423%_)
        (let ((_%super121425%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self118337121422%_
           _%id121423%_
           _%super121425%_))))
    (define gx#phi-context:::init!
      (lambda _g121492_
        (let ((_g121491_ (##length _g121492_)))
          (cond ((##fx= _g121491_ 2)
                 (apply gx#phi-context:::init!__0 _g121492_))
                ((##fx= _g121491_ 3)
                 (apply gx#phi-context:::init!__% _g121492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g121492_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self118338121253%_ _%super121255%_)
        (let* ((_%self121257%_ _%self118338121253%_)
               (_%self121259%_ _%self121257%_))
          (if (##fx< '3 (##structure-length _%self121259%_))
              (begin
                (##unchecked-structure-set!
                 _%self121259%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121259%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121259%_
                 _%super121255%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self121259%_
                     '3
                     (##vector-length _%self121259%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self118338121272%_)
        (let ((_%super121274%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self118338121272%_ _%super121274%_))))
    (define gx#local-context:::init!
      (lambda _g121494_
        (let ((_g121493_ (##length _g121494_)))
          (cond ((##fx= _g121493_ 1)
                 (apply gx#local-context:::init!__0 _g121494_))
                ((##fx= _g121493_ 2)
                 (apply gx#local-context:::init!__% _g121494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g121494_))))))
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
      (lambda _%$args121127%_
        (apply make-instance gx#binding::t _%$args121127%_)))
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
      (lambda _%$args121124%_
        (apply make-instance gx#runtime-binding::t _%$args121124%_)))
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
      (lambda _%$args121121%_
        (apply make-instance gx#local-binding::t _%$args121121%_)))
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
      (lambda _%$args121118%_
        (apply make-instance gx#top-binding::t _%$args121118%_)))
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
      (lambda _%$args121115%_
        (apply make-instance gx#module-binding::t _%$args121115%_)))
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
      (lambda _%$args121112%_
        (apply make-instance gx#extern-binding::t _%$args121112%_)))
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
      (lambda _%$args121109%_
        (apply make-instance gx#syntax-binding::t _%$args121109%_)))
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
      (lambda _%$args121106%_
        (apply make-instance gx#import-binding::t _%$args121106%_)))
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
      (lambda _%$args121103%_
        (apply make-instance gx#alias-binding::t _%$args121103%_)))
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
      (lambda _%$args121100%_
        (apply make-instance gx#expander::t _%$args121100%_)))
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
      (lambda _%$args121097%_
        (apply make-instance gx#core-expander::t _%$args121097%_)))
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
      (lambda _%$args121094%_
        (apply make-instance gx#expression-form::t _%$args121094%_)))
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
      (lambda _%$args121091%_
        (apply make-instance gx#special-form::t _%$args121091%_)))
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
      (lambda _%$args121088%_
        (apply make-instance gx#definition-form::t _%$args121088%_)))
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
      (lambda _%$args121085%_
        (apply make-instance gx#top-special-form::t _%$args121085%_)))
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
      (lambda _%$args121082%_
        (apply make-instance gx#module-special-form::t _%$args121082%_)))
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
      (lambda _%$args121079%_
        (apply make-instance gx#feature-expander::t _%$args121079%_)))
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
      (lambda _%$args121076%_
        (apply make-instance gx#private-feature-expander::t _%$args121076%_)))
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
      (lambda _%$args121073%_
        (apply make-instance gx#reserved-expander::t _%$args121073%_)))
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
      (lambda _%$args121070%_
        (apply make-instance gx#macro-expander::t _%$args121070%_)))
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
      (lambda _%$args121067%_
        (apply make-instance gx#rename-macro-expander::t _%$args121067%_)))
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
      (lambda _%$args121064%_
        (apply make-instance gx#user-expander::t _%$args121064%_)))
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
      (lambda _%$args121061%_
        (apply make-instance gx#expander-mark::t _%$args121061%_)))
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
      (lambda (_%ctx121045%_
               _%message121046%_
               _%stx121047%_
               .
               _%details121048%_)
        (let ((_%ctx121059%_
               (let ((_%$e121050%_ _%ctx121045%_))
                 (if _%$e121050%_
                     _%$e121050%_
                     (let ((_%$e121053%_ (gx#core-context-top__0)))
                       (if _%$e121053%_
                           ((lambda (_%ctx121056%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx121056%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e121053%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message121046%_
                  (cons _%stx121047%_ _%details121048%_)
                  _%ctx121059%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx121032%_ _%expression?121033%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx121032%_ _%expression?121033%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx121038%_)
        (let ((_%expression?121040%_ '#f))
          (gx#eval-syntax__% _%stx121038%_ _%expression?121040%_))))
    (define gx#eval-syntax
      (lambda _g121496_
        (let ((_g121495_ (##length _g121496_)))
          (cond ((##fx= _g121495_ 1) (apply gx#eval-syntax__0 _g121496_))
                ((##fx= _g121495_ 2) (apply gx#eval-syntax__% _g121496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g121496_))))))
    (define gx#eval-syntax*
      (lambda (_%stx121029%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx121029%_))))
    (define gx#core-expand__%
      (lambda (_%stx121016%_ _%expression?121017%_)
        (if _%expression?121017%_
            (gx#core-expand-expression _%stx121016%_)
            (gx#core-expand-top _%stx121016%_))))
    (define gx#core-expand__0
      (lambda (_%stx121022%_)
        (let ((_%expression?121024%_ '#f))
          (gx#core-expand__% _%stx121022%_ _%expression?121024%_))))
    (define gx#core-expand
      (lambda _g121498_
        (let ((_g121497_ (##length _g121498_)))
          (cond ((##fx= _g121497_ 1) (apply gx#core-expand__0 _g121498_))
                ((##fx= _g121497_ 2) (apply gx#core-expand__% _g121498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g121498_))))))
    (define gx#core-expand-top
      (lambda (_%stx120983%_)
        (let* ((_%stx120985%_ (gx#core-expand*__0 _%stx120983%_))
               (_%e120986120993%_ _%stx120985%_)
               (_%E120988120997%_
                (lambda () (gx#core-expand-expression _%stx120985%_)))
               (_%E120987121011%_
                (lambda ()
                  (if (gx#stx-pair? _%e120986120993%_)
                      (let ((_%e120989121001%_
                             (gx#syntax-e _%e120986120993%_)))
                        (let ((_%hd120990121004%_ (##car _%e120989121001%_))
                              (_%tl120991121006%_ (##cdr _%e120989121001%_)))
                          (let ((_%form121009%_ _%hd120990121004%_))
                            (if (gx#core-bound-identifier?__0 _%form121009%_)
                                _%stx120985%_
                                (_%E120988120997%_)))))
                      (_%E120988120997%_)))))
          (_%E120987121011%_))))
    (define gx#core-expand-expression
      (lambda (_%stx120915%_)
        (letrec ((_%sealed-expression?120917%_
                  (lambda (_%hd120953%_)
                    (if (gx#sealed-syntax? _%hd120953%_)
                        (let* ((_%e120954120961%_ _%hd120953%_)
                               (_%E120956120965%_ (lambda () '#f))
                               (_%E120955120979%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e120954120961%_)
                                      (let ((_%e120957120969%_
                                             (gx#syntax-e _%e120954120961%_)))
                                        (let ((_%hd120958120972%_
                                               (##car _%e120957120969%_))
                                              (_%tl120959120974%_
                                               (##cdr _%e120957120969%_)))
                                          (let ((_%form120977%_
                                                 _%hd120958120972%_))
                                            (gx#core-bound-identifier?__%
                                             _%form120977%_
                                             gx#expression-form-binding?))))
                                      (_%E120956120965%_)))))
                          (_%E120955120979%_))
                        '#f)))
                 (_%illegal-expression120918%_
                  (lambda (_%hd120950%_ . _%_120951%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx120915%_
                     _%hd120950%_)))
                 (_%expand-e120919%_
                  (lambda (_%form120942%_ _%hd120943%_)
                    (let ((_%bind120945%_
                           (if (##structure-instance-of?
                                _%form120942%_
                                'gx#binding::t)
                               _%form120942%_
                               (gx#resolve-identifier__0 _%form120942%_))))
                      (if (gx#core-expander-binding? _%bind120945%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind120945%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd120943%_
                            (gx#stx-source _%stx120915%_)))
                          (if (##structure-direct-instance-of?
                               _%bind120945%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind120945%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd120943%_
                                 (gx#stx-source _%stx120915%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx120915%_
                               _%form120942%_)))))))
          (let ((_%hd120921%_ (gx#core-expand-head _%stx120915%_)))
            (if (_%sealed-expression?120917%_ _%hd120921%_)
                _%hd120921%_
                (if (gx#stx-pair? _%hd120921%_)
                    (let* ((_%form120925%_ (gx#stx-car _%hd120921%_))
                           (_%bind120927%_
                            (if (gx#identifier? _%form120925%_)
                                (gx#resolve-identifier__0 _%form120925%_)
                                '#f)))
                      (if (or (not _%bind120927%_)
                              (not (gx#core-expander-binding? _%bind120927%_)))
                          (_%expand-e120919%_
                           '%%app
                           (cons '%%app _%hd120921%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind120927%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd120921%_
                               _%illegal-expression120918%_)
                              (if (gx#expression-form-binding? _%bind120927%_)
                                  (_%expand-e120919%_
                                   _%bind120927%_
                                   _%hd120921%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind120927%_)
                                      (gx#core-expand-expression
                                       (_%expand-e120919%_
                                        _%bind120927%_
                                        _%hd120921%_))
                                      (_%illegal-expression120918%_
                                       _%hd120921%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd120921%_)
                        (_%illegal-expression120918%_ _%hd120921%_)
                        (if (gx#identifier? _%hd120921%_)
                            (_%expand-e120919%_
                             '%%ref
                             (cons '%%ref (cons _%hd120921%_ '())))
                            (if (gx#stx-datum? _%hd120921%_)
                                (_%expand-e120919%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd120921%_ '())))
                                (_%illegal-expression120918%_
                                 _%hd120921%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx120910%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx120913%_ (gx#core-expand-expression _%stx120910%_)))
             (values _%stx120913%_ (gx#eval-syntax* _%stx120913%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx120891%_ _%stop?120892%_)
        (let _%lp120894%_ ((_%stx120896%_ _%stx120891%_))
          (if (_%stop?120892%_ _%stx120896%_)
              _%stx120896%_
              (let ((_%rstx120898%_ (gx#core-expand1 _%stx120896%_)))
                (if (eq? _%stx120896%_ _%rstx120898%_)
                    _%stx120896%_
                    (_%lp120894%_ _%rstx120898%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx120903%_)
        (let ((_%stop?120905%_ false))
          (gx#core-expand*__% _%stx120903%_ _%stop?120905%_))))
    (define gx#core-expand*
      (lambda _g121500_
        (let ((_g121499_ (##length _g121500_)))
          (cond ((##fx= _g121499_ 1) (apply gx#core-expand*__0 _g121500_))
                ((##fx= _g121499_ 2) (apply gx#core-expand*__% _g121500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g121500_))))))
    (define gx#core-expand1
      (lambda (_%stx120843%_)
        (letrec ((_%step120845%_
                  (lambda (_%hd120882%_)
                    (let ((_%bind120884%_
                           (gx#resolve-identifier__0 _%hd120882%_)))
                      (if (##structure-instance-of?
                           _%bind120884%_
                           'gx#runtime-binding::t)
                          _%stx120843%_
                          (if (##structure-direct-instance-of?
                               _%bind120884%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind120884%_
                                '4
                                '#f
                                '#f)
                               _%stx120843%_)
                              (if (not _%bind120884%_)
                                  _%stx120843%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx120843%_))))))))
          (let* ((_%e120846120854%_ _%stx120843%_)
                 (_%E120852120858%_ (lambda () _%stx120843%_))
                 (_%E120848120864%_
                  (lambda ()
                    (let ((_%hd120862%_ _%e120846120854%_))
                      (if (gx#identifier? _%hd120862%_)
                          (_%step120845%_ _%hd120862%_)
                          (_%E120852120858%_)))))
                 (_%E120847120878%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120846120854%_)
                        (let ((_%e120849120868%_
                               (gx#syntax-e _%e120846120854%_)))
                          (let ((_%hd120850120871%_ (##car _%e120849120868%_))
                                (_%tl120851120873%_ (##cdr _%e120849120868%_)))
                            (let ((_%hd120876%_ _%hd120850120871%_))
                              (if (gx#identifier? _%hd120876%_)
                                  (_%step120845%_ _%hd120876%_)
                                  (_%E120848120864%_)))))
                        (_%E120848120864%_)))))
            (_%E120847120878%_)))))
    (define gx#core-expand-head
      (lambda (_%stx120809%_)
        (letrec ((_%stop?120811%_
                  (lambda (_%stx120813%_)
                    (let* ((_%e120814120821%_ _%stx120813%_)
                           (_%E120816120825%_ (lambda () '#f))
                           (_%E120815120839%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120814120821%_)
                                  (let ((_%e120817120829%_
                                         (gx#syntax-e _%e120814120821%_)))
                                    (let ((_%hd120818120832%_
                                           (##car _%e120817120829%_))
                                          (_%tl120819120834%_
                                           (##cdr _%e120817120829%_)))
                                      (let ((_%hd120837%_ _%hd120818120832%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd120837%_))))
                                  (_%E120816120825%_)))))
                      (_%E120815120839%_)))))
          (gx#core-expand*__% _%stx120809%_ _%stop?120811%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx120615%_
               _%expand-special120616%_
               _%begin-form120617%_
               _%expand-e120618%_)
        (letrec ((_%expand-splice120620%_
                  (lambda (_%hd120783%_
                           _%body120784%_
                           _%rest120785%_
                           _%r120786%_)
                    (if (gx#stx-list? _%body120784%_)
                        (_%K120624%_
                         (gx#stx-foldr cons _%rest120785%_ _%body120784%_)
                         _%r120786%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx120615%_
                         _%hd120783%_))))
                 (_%expand-cond-expand120621%_
                  (lambda (_%hd120779%_ _%rest120780%_ _%r120781%_)
                    (_%K120624%_
                     (cons (gx#core-expand-cond-expand% _%hd120779%_)
                           _%rest120780%_)
                     _%r120781%_)))
                 (_%expand-include120622%_
                  (lambda (_%hd120728%_ _%rest120729%_ _%r120730%_)
                    (let* ((_%e120731120741%_ _%hd120728%_)
                           (_%E120733120745%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120731120741%_)))
                           (_%E120732120775%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120731120741%_)
                                  (let ((_%e120734120749%_
                                         (gx#syntax-e _%e120731120741%_)))
                                    (let ((_%hd120735120752%_
                                           (##car _%e120734120749%_))
                                          (_%tl120736120754%_
                                           (##cdr _%e120734120749%_)))
                                      (if (gx#stx-pair? _%tl120736120754%_)
                                          (let ((_%e120737120757%_
                                                 (gx#syntax-e
                                                  _%tl120736120754%_)))
                                            (let ((_%hd120738120760%_
                                                   (##car _%e120737120757%_))
                                                  (_%tl120739120762%_
                                                   (##cdr _%e120737120757%_)))
                                              (let ((_%path120765%_
                                                     _%hd120738120760%_))
                                                (if (gx#stx-null?
                                                     _%tl120739120762%_)
                                                    (if (gx#stx-string?
                                                         _%path120765%_)
                                                        (let* ((_%rpath120767%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path120765%_
                         (gx#stx-source _%hd120728%_)))
                       (_%block120769%_
                        (gx#core-expand-include%__%
                         _%hd120728%_
                         _%rpath120767%_))
                       (_%rbody120772%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block120769%_
                            _%expand-special120616%_
                            '#f
                            _%expand-e120618%_))
                         gx#current-expander-path
                         (cons _%rpath120767%_ (gx#current-expander-path)))))
                  (_%K120624%_
                   _%rest120729%_
                   (__foldr1 cons _%r120730%_ _%rbody120772%_)))
                (_%E120733120745%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120733120745%_)))))
                                          (_%E120733120745%_))))
                                  (_%E120733120745%_)))))
                      (_%E120732120775%_))))
                 (_%expand-expression120623%_
                  (lambda (_%hd120724%_ _%rest120725%_ _%r120726%_)
                    (_%K120624%_
                     _%rest120725%_
                     (cons (_%expand-e120618%_ _%hd120724%_) _%r120726%_))))
                 (_%K120624%_
                  (lambda (_%rest120654%_ _%r120655%_)
                    (let* ((_%e120656120663%_ _%rest120654%_)
                           (_%E120658120667%_
                            (lambda ()
                              (if _%begin-form120617%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form120617%_
                                    (reverse _%r120655%_))
                                   (gx#stx-source _%stx120615%_))
                                  _%r120655%_)))
                           (_%E120657120720%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120656120663%_)
                                  (let ((_%e120659120671%_
                                         (gx#syntax-e _%e120656120663%_)))
                                    (let ((_%hd120660120674%_
                                           (##car _%e120659120671%_))
                                          (_%tl120661120676%_
                                           (##cdr _%e120659120671%_)))
                                      (let* ((_%hd120679%_ _%hd120660120674%_)
                                             (_%rest120681%_
                                              _%tl120661120676%_)
                                             (_%hd120683%_
                                              (gx#core-expand-head
                                               _%hd120679%_))
                                             (_%e120684120691%_ _%hd120683%_)
                                             (_%E120686120695%_
                                              (lambda ()
                                                (_%expand-expression120623%_
                                                 _%hd120683%_
                                                 _%rest120681%_
                                                 _%r120655%_)))
                                             (_%E120685120716%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e120684120691%_)
                                                    (let ((_%e120687120699%_
                                                           (gx#syntax-e
                                                            _%e120684120691%_)))
                                                      (let ((_%hd120688120702%_
                                                             (##car _%e120687120699%_))
                                                            (_%tl120689120704%_
                                                             (##cdr _%e120687120699%_)))
                                                        (let* ((_%form120707%_
                                                                _%hd120688120702%_)
                                                               (_%body120709%_
                                                                _%tl120689120704%_)
                                                               (_%bind120711%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form120707%_)
                            (gx#resolve-identifier__0 _%form120707%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind120711%_)
                      (let ((_%$e120713%_
                             (##unchecked-structure-ref
                              _%bind120711%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e120713%_)
                            (_%expand-splice120620%_
                             _%hd120683%_
                             _%body120709%_
                             _%rest120681%_
                             _%r120655%_)
                            (if (eq? '%#cond-expand _%$e120713%_)
                                (_%expand-cond-expand120621%_
                                 _%hd120683%_
                                 _%rest120681%_
                                 _%r120655%_)
                                (if (eq? '%#include _%$e120713%_)
                                    (_%expand-include120622%_
                                     _%hd120683%_
                                     _%rest120681%_
                                     _%r120655%_)
                                    (_%expand-special120616%_
                                     _%hd120683%_
                                     _%K120624%_
                                     _%rest120681%_
                                     _%r120655%_)))))
                      (_%expand-expression120623%_
                       _%hd120683%_
                       _%rest120681%_
                       _%r120655%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120686120695%_)))))
                                        (_%E120685120716%_))))
                                  (_%E120658120667%_)))))
                      (_%E120657120720%_)))))
          (let* ((_%e120625120632%_ _%stx120615%_)
                 (_%E120627120636%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120625120632%_)))
                 (_%E120626120650%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120625120632%_)
                        (let ((_%e120628120640%_
                               (gx#syntax-e _%e120625120632%_)))
                          (let ((_%hd120629120643%_ (##car _%e120628120640%_))
                                (_%tl120630120645%_ (##cdr _%e120628120640%_)))
                            (let ((_%body120648%_ _%tl120630120645%_))
                              (if (gx#stx-list? _%body120648%_)
                                  (_%K120624%_ _%body120648%_ '())
                                  (_%E120627120636%_)))))
                        (_%E120627120636%_)))))
            (_%E120626120650%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx120791%_ _%expand-special120792%_)
        (let* ((_%begin-form120794%_ '%#begin)
               (_%expand-e120796%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx120791%_
           _%expand-special120792%_
           _%begin-form120794%_
           _%expand-e120796%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx120798%_ _%expand-special120799%_ _%begin-form120800%_)
        (let ((_%expand-e120802%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx120798%_
           _%expand-special120799%_
           _%begin-form120800%_
           _%expand-e120802%_))))
    (define gx#core-expand-block
      (lambda _g121502_
        (let ((_g121501_ (##length _g121502_)))
          (cond ((##fx= _g121501_ 2) (apply gx#core-expand-block__0 _g121502_))
                ((##fx= _g121501_ 3) (apply gx#core-expand-block__1 _g121502_))
                ((##fx= _g121501_ 4) (apply gx#core-expand-block__% _g121502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g121502_))))))
    (define gx#core-expand-block*
      (lambda (_%stx120563%_ _%expand-special120564%_)
        (let* ((_%g120565120576%_
                (gx#core-expand-block__1
                 _%stx120563%_
                 _%expand-special120564%_
                 '#f))
               (_%E120569120580%_
                (lambda ()
                  (error '"No clause matching"
                         _%g120565120576%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K120574120611%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx120563%_)))
                (_%K120571120597%_ (lambda (_%expr120595%_) _%expr120595%_))
                (_%K120570120586%_
                 (lambda (_%body120584%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body120584%_))
                    (gx#stx-source _%stx120563%_)))))
            (let ((_%try-match120567120607%_
                   (lambda ()
                     (if (pair? _%g120565120576%_)
                         (let ((_%tl120573120602%_ (##cdr _%g120565120576%_))
                               (_%hd120572120600%_ (##car _%g120565120576%_)))
                           (if (null? _%tl120573120602%_)
                               (let ((_%expr120605%_ _%hd120572120600%_))
                                 (_%K120571120597%_ _%expr120605%_))
                               (let ((_%body120589%_ _%g120565120576%_))
                                 (_%K120570120586%_ _%body120589%_))))
                         (let ((_%body120589%_ _%g120565120576%_))
                           (_%K120570120586%_ _%body120589%_))))))
              (if (null? _%g120565120576%_)
                  (_%K120574120611%_)
                  (_%try-match120567120607%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx120388%_)
        (letrec ((_%satisfied?120390%_
                  (lambda (_%condition120491%_)
                    (let* ((_%e120492120507%_ _%condition120491%_)
                           (_%E120502120511%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120492120507%_)))
                           (_%E120495120530%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120492120507%_)
                                  (let ((_%e120503120515%_
                                         (gx#syntax-e _%e120492120507%_)))
                                    (let ((_%hd120504120518%_
                                           (##car _%e120503120515%_))
                                          (_%tl120505120520%_
                                           (##cdr _%e120503120515%_)))
                                      (let* ((_%combinator120523%_
                                              _%hd120504120518%_)
                                             (_%body120525%_
                                              _%tl120505120520%_))
                                        (if (gx#stx-list? _%body120525%_)
                                            (let ((_%$e120527%_
                                                   (gx#stx-e
                                                    _%combinator120523%_)))
                                              (if (eq? 'not _%$e120527%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?120390%_
                                                        _%body120525%_))
                                                  (if (eq? 'and _%$e120527%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?120390%_
                                                       _%body120525%_)
                                                      (if (eq? 'or
                                                               _%$e120527%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?120390%_
                                                           _%body120525%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e120527%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body120525%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx120388%_
                       _%combinator120523%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E120502120511%_)))))
                                  (_%E120502120511%_))))
                           (_%E120494120553%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120492120507%_)
                                  (let ((_%e120496120534%_
                                         (gx#syntax-e _%e120492120507%_)))
                                    (let ((_%hd120497120537%_
                                           (##car _%e120496120534%_))
                                          (_%tl120498120539%_
                                           (##cdr _%e120496120534%_)))
                                      (if (and (gx#identifier?
                                                _%hd120497120537%_)
                                               (gx#core-identifier=?
                                                _%hd120497120537%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl120498120539%_)
                                              (let ((_%e120499120542%_
                                                     (gx#syntax-e
                                                      _%tl120498120539%_)))
                                                (let ((_%hd120500120545%_
                                                       (##car _%e120499120542%_))
                                                      (_%tl120501120547%_
                                                       (##cdr _%e120499120542%_)))
                                                  (let ((_%expr120550%_
                                                         _%hd120500120545%_))
                                                    (if (gx#stx-null?
                                                         _%tl120501120547%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr120550%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E120495120530%_)))))
                                              (_%E120495120530%_))
                                          (_%E120495120530%_))))
                                  (_%E120495120530%_))))
                           (_%E120493120559%_
                            (lambda ()
                              (let ((_%id120557%_ _%e120492120507%_))
                                (if (gx#identifier? _%id120557%_)
                                    (gx#core-bound-identifier?__%
                                     _%id120557%_
                                     gx#feature-binding?)
                                    (_%E120494120553%_))))))
                      (_%E120493120559%_))))
                 (_%loop120391%_
                  (lambda (_%rest120421%_)
                    (let* ((_%e120422120430%_ _%rest120421%_)
                           (_%E120428120434%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120422120430%_)))
                           (_%E120424120438%_
                            (lambda ()
                              (if (gx#stx-null? _%e120422120430%_)
                                  '()
                                  (_%E120428120434%_))))
                           (_%E120423120487%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120422120430%_)
                                  (let ((_%e120425120442%_
                                         (gx#syntax-e _%e120422120430%_)))
                                    (let ((_%hd120426120445%_
                                           (##car _%e120425120442%_))
                                          (_%tl120427120447%_
                                           (##cdr _%e120425120442%_)))
                                      (let* ((_%hd120450%_ _%hd120426120445%_)
                                             (_%rest120452%_
                                              _%tl120427120447%_)
                                             (_%e120453120460%_ _%hd120450%_)
                                             (_%E120455120464%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e120453120460%_)))
                                             (_%E120454120483%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e120453120460%_)
                                                    (let ((_%e120456120468%_
                                                           (gx#syntax-e
                                                            _%e120453120460%_)))
                                                      (let ((_%hd120457120471%_
                                                             (##car _%e120456120468%_))
                                                            (_%tl120458120473%_
                                                             (##cdr _%e120456120468%_)))
                                                        (let* ((_%condition120476%_
                                                                _%hd120457120471%_)
                                                               (_%body120478%_
                                                                _%tl120458120473%_))
                                                          (if (gx#stx-eq?
                                                               _%condition120476%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest120452%_)
                          _%body120478%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx120388%_
                           _%hd120450%_))
                      (if (_%satisfied?120390%_ _%condition120476%_)
                          _%body120478%_
                          (_%loop120391%_ _%rest120452%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120455120464%_)))))
                                        (_%E120454120483%_))))
                                  (_%E120424120438%_)))))
                      (_%E120423120487%_)))))
          (let* ((_%e120392120399%_ _%stx120388%_)
                 (_%E120394120403%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120392120399%_)))
                 (_%E120393120417%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120392120399%_)
                        (let ((_%e120395120407%_
                               (gx#syntax-e _%e120392120399%_)))
                          (let ((_%hd120396120410%_ (##car _%e120395120407%_))
                                (_%tl120397120412%_ (##cdr _%e120395120407%_)))
                            (let ((_%clauses120415%_ _%tl120397120412%_))
                              (if (gx#stx-list? _%clauses120415%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop120391%_ _%clauses120415%_))
                                  (_%E120394120403%_)))))
                        (_%E120394120403%_)))))
            (_%E120393120417%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx120331%_ _%rpath120332%_)
        (let* ((_%e120333120343%_ _%stx120331%_)
               (_%E120335120347%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120333120343%_)))
               (_%E120334120374%_
                (lambda ()
                  (if (gx#stx-pair? _%e120333120343%_)
                      (let ((_%e120336120351%_
                             (gx#syntax-e _%e120333120343%_)))
                        (let ((_%hd120337120354%_ (##car _%e120336120351%_))
                              (_%tl120338120356%_ (##cdr _%e120336120351%_)))
                          (if (gx#stx-pair? _%tl120338120356%_)
                              (let ((_%e120339120359%_
                                     (gx#syntax-e _%tl120338120356%_)))
                                (let ((_%hd120340120362%_
                                       (##car _%e120339120359%_))
                                      (_%tl120341120364%_
                                       (##cdr _%e120339120359%_)))
                                  (let ((_%path120367%_ _%hd120340120362%_))
                                    (if (gx#stx-null? _%tl120341120364%_)
                                        (if (gx#stx-string? _%path120367%_)
                                            (let ((_%rpath120372%_
                                                   (let ((_%$e120369%_
                                                          _%rpath120332%_))
                                                     (if _%$e120369%_
                                                         _%$e120369%_
                                                         (gx#core-resolve-path__%
                                                          _%path120367%_
                                                          (gx#stx-source
                                                           _%stx120331%_))))))
                                              (if (member _%rpath120372%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx120331%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath120372%_))
                                                    (gx#stx-source
                                                     _%stx120331%_)))))
                                            (_%E120335120347%_))
                                        (_%E120335120347%_)))))
                              (_%E120335120347%_))))
                      (_%E120335120347%_)))))
          (_%E120334120374%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx120381%_)
        (let ((_%rpath120383%_ '#f))
          (gx#core-expand-include%__% _%stx120381%_ _%rpath120383%_))))
    (define gx#core-expand-include%
      (lambda _g121504_
        (let ((_g121503_ (##length _g121504_)))
          (cond ((##fx= _g121503_ 1)
                 (apply gx#core-expand-include%__0 _g121504_))
                ((##fx= _g121503_ 2)
                 (apply gx#core-expand-include%__% _g121504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g121504_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K120297%_ _%stx120298%_ _%method120299%_)
        (if (procedure? _%K120297%_)
            (let ((_%$e120302%_ (gx#stx-source _%stx120298%_)))
              (if _%$e120302%_
                  ((lambda (_%g120304120306%_)
                     (gx#stx-wrap-source
                      (_%K120297%_ _%stx120298%_)
                      _%g120304120306%_))
                   _%$e120302%_)
                  (_%K120297%_ _%stx120298%_)))
            (let ((_%$e120310%_
                   (bound-method-ref _%K120297%_ _%method120299%_)))
              (if _%$e120310%_
                  ((lambda (_%g120312120314%_)
                     (gx#core-apply-expander__%
                      _%g120312120314%_
                      _%stx120298%_
                      _%method120299%_))
                   _%$e120310%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx120298%_
                   _%method120299%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K120321%_ _%stx120322%_)
        (let ((_%method120324%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K120321%_
           _%stx120322%_
           _%method120324%_))))
    (define gx#core-apply-expander
      (lambda _g121506_
        (let ((_g121505_ (##length _g121506_)))
          (cond ((##fx= _g121505_ 2)
                 (apply gx#core-apply-expander__0 _g121506_))
                ((##fx= _g121505_ 3)
                 (apply gx#core-apply-expander__% _g121506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g121506_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self118339120280%_ _%stx120282%_)
        (let* ((_%self120284%_ _%self118339120280%_)
               (_%self120286%_ _%self120284%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx120282%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self118340120120%_ _%stx120122%_)
        (let* ((_%self120124%_ _%self118340120120%_)
               (_%self120126%_ _%self120124%_)
               (_%self120135120141%_ _%self120126%_)
               (_%E120137120145%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120135120141%_
                         '((macro-expander K)))
                  '#!void))
               (_%K120138120150%_
                (lambda (_%K120148%_)
                  (gx#core-apply-expander__0 _%K120148%_ _%stx120122%_)))
               (_%e120139120153%_
                (##unchecked-structure-ref _%self120135120141%_ '1 '#f '#f))
               (_%K120156%_ _%e120139120153%_))
          (_%K120138120150%_ _%K120156%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self118341119960%_ _%stx119962%_)
        (let* ((_%self119964%_ _%self118341119960%_)
               (_%self119966%_ _%self119964%_))
          (if (gx#sealed-syntax? _%stx119962%_)
              _%stx119962%_
              (let* ((_%self119975119981%_ _%self119966%_)
                     (_%E119977119985%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self119975119981%_
                               '((core-expander K)))
                        '#!void))
                     (_%K119978119990%_
                      (lambda (_%K119988%_)
                        (gx#core-apply-expander__0 _%K119988%_ _%stx119962%_)))
                     (_%e119979119993%_
                      (##unchecked-structure-ref
                       _%self119975119981%_
                       '1
                       '#f
                       '#f))
                     (_%K119996%_ _%e119979119993%_))
                (_%K119978119990%_ _%K119996%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self118342119809%_ _%stx119811%_ _%top?119812%_)
        (let* ((_%self119814%_ _%self118342119809%_)
               (_%self119816%_ _%self119814%_))
          (if (_%top?119812%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self119816%_
               _%stx119811%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx119811%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self118342119829%_ _%stx119830%_)
        (let ((_%top?119832%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self118342119829%_
           _%stx119830%_
           _%top?119832%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g121508_
        (let ((_g121507_ (##length _g121508_)))
          (cond ((##fx= _g121507_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g121508_))
                ((##fx= _g121507_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g121508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g121508_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self118343119670%_ _%stx119672%_)
        (let* ((_%self119674%_ _%self118343119670%_)
               (_%self119676%_ _%self119674%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self119676%_
           _%stx119672%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self118344119482%_ _%stx119484%_)
        (let* ((_%self119486%_ _%self118344119482%_)
               (_%self119488%_ _%self119486%_)
               (_%self119497119503%_ _%self119488%_)
               (_%E119499119507%_
                (lambda ()
                  (error '"No clause matching"
                         _%self119497119503%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K119500119540%_
                (lambda (_%id119510%_)
                  (let* ((_%e119511119518%_ _%stx119484%_)
                         (_%E119513119522%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e119511119518%_)))
                         (_%E119512119536%_
                          (lambda ()
                            (if (gx#stx-pair? _%e119511119518%_)
                                (let ((_%e119514119526%_
                                       (gx#syntax-e _%e119511119518%_)))
                                  (let ((_%hd119515119529%_
                                         (##car _%e119514119526%_))
                                        (_%tl119516119531%_
                                         (##cdr _%e119514119526%_)))
                                    (let ((_%body119534%_ _%tl119516119531%_))
                                      (gx#core-cons
                                       _%id119510%_
                                       _%body119534%_))))
                                (_%E119513119522%_)))))
                    (_%E119512119536%_))))
               (_%e119501119543%_
                (##unchecked-structure-ref _%self119497119503%_ '1 '#f '#f))
               (_%id119546%_ _%e119501119543%_))
          (_%K119500119540%_ _%id119546%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self119308%_ _%stx119309%_ _%method119310%_)
        (let* ((_%self119311119319%_ _%self119308%_)
               (_%E119313119323%_
                (lambda ()
                  (error '"No clause matching"
                         _%self119311119319%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K119314119330%_
                (lambda (_%phi119326%_ _%ctx119327%_ _%K119328%_)
                  (gx#core-apply-user-macro
                   _%K119328%_
                   _%stx119309%_
                   _%ctx119327%_
                   _%phi119326%_
                   _%method119310%_))))
          (if (##structure-instance-of?
               _%self119311119319%_
               'gx#user-expander::t)
              (let* ((_%e119315119333%_
                      (##unchecked-structure-ref
                       _%self119311119319%_
                       '1
                       '#f
                       '#f))
                     (_%K119336%_ _%e119315119333%_)
                     (_%e119316119338%_
                      (##unchecked-structure-ref
                       _%self119311119319%_
                       '2
                       '#f
                       '#f))
                     (_%ctx119341%_ _%e119316119338%_)
                     (_%e119317119343%_
                      (##unchecked-structure-ref
                       _%self119311119319%_
                       '3
                       '#f
                       '#f))
                     (_%phi119346%_ _%e119317119343%_))
                (_%K119314119330%_ _%phi119346%_ _%ctx119341%_ _%K119336%_))
              (_%E119313119323%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self119351%_ _%stx119352%_)
        (let ((_%method119354%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self119351%_
           _%stx119352%_
           _%method119354%_))))
    (define gx#core-apply-user-expander
      (lambda _g121510_
        (let ((_g121509_ (##length _g121510_)))
          (cond ((##fx= _g121509_ 2)
                 (apply gx#core-apply-user-expander__0 _g121510_))
                ((##fx= _g121509_ 3)
                 (apply gx#core-apply-user-expander__% _g121510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g121510_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K119298%_
               _%stx119299%_
               _%ctx119300%_
               _%phi119301%_
               _%method119302%_)
        (let ((_%mark119304%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx119300%_
                _%phi119301%_
                _%stx119299%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K119298%_
               (gx#stx-apply-mark _%stx119299%_ _%mark119304%_)
               _%method119302%_)
              _%mark119304%_))
           gx#current-expander-marks
           (cons _%mark119304%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx119146%_ _%phi119147%_ _%ctx119148%_)
        (let _%lp119150%_ ((_%bind119152%_
                            (gx#core-resolve-identifier__%
                             _%stx119146%_
                             _%phi119147%_
                             _%ctx119148%_)))
          (if (##structure-direct-instance-of?
               _%bind119152%_
               'gx#import-binding::t)
              (_%lp119150%_
               (##unchecked-structure-ref _%bind119152%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind119152%_
                   'gx#alias-binding::t)
                  (_%lp119150%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind119152%_ '4 '#f '#f)
                    _%phi119147%_
                    _%ctx119148%_))
                  _%bind119152%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx119160%_)
        (let* ((_%phi119162%_ (gx#current-expander-phi))
               (_%ctx119164%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx119160%_
           _%phi119162%_
           _%ctx119164%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx119166%_ _%phi119167%_)
        (let ((_%ctx119169%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx119166%_
           _%phi119167%_
           _%ctx119169%_))))
    (define gx#resolve-identifier
      (lambda _g121512_
        (let ((_g121511_ (##length _g121512_)))
          (cond ((##fx= _g121511_ 1)
                 (apply gx#resolve-identifier__0 _g121512_))
                ((##fx= _g121511_ 2)
                 (apply gx#resolve-identifier__1 _g121512_))
                ((##fx= _g121511_ 3)
                 (apply gx#resolve-identifier__% _g121512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g121512_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx119101%_
               _%val119102%_
               _%rebind?119103%_
               _%phi119104%_
               _%ctx119105%_)
        (let ((_%rebind?119110%_
               (if (not _%rebind?119103%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?119103%_)
                       _%rebind?119103%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx119101%_)
           _%val119102%_
           _%rebind?119110%_
           _%phi119104%_
           _%ctx119105%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx119115%_ _%val119116%_)
        (let* ((_%rebind?119118%_ '#f)
               (_%phi119120%_ (gx#current-expander-phi))
               (_%ctx119122%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx119115%_
           _%val119116%_
           _%rebind?119118%_
           _%phi119120%_
           _%ctx119122%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx119124%_ _%val119125%_ _%rebind?119126%_)
        (let* ((_%phi119128%_ (gx#current-expander-phi))
               (_%ctx119130%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx119124%_
           _%val119125%_
           _%rebind?119126%_
           _%phi119128%_
           _%ctx119130%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx119132%_ _%val119133%_ _%rebind?119134%_ _%phi119135%_)
        (let ((_%ctx119137%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx119132%_
           _%val119133%_
           _%rebind?119134%_
           _%phi119135%_
           _%ctx119137%_))))
    (define gx#bind-identifier!
      (lambda _g121514_
        (let ((_g121513_ (##length _g121514_)))
          (cond ((##fx= _g121513_ 2) (apply gx#bind-identifier!__0 _g121514_))
                ((##fx= _g121513_ 3) (apply gx#bind-identifier!__1 _g121514_))
                ((##fx= _g121513_ 4) (apply gx#bind-identifier!__2 _g121514_))
                ((##fx= _g121513_ 5) (apply gx#bind-identifier!__% _g121514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g121514_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx119067%_ _%phi119068%_ _%ctx119069%_)
        (let _%lp119071%_ ((_%e119073%_ _%stx119067%_)
                           (_%marks119074%_ (gx#current-expander-marks)))
          (if (symbol? _%e119073%_)
              (gx#core-resolve-binding
               _%e119073%_
               _%phi119068%_
               _%phi119068%_
               _%ctx119069%_
               (reverse _%marks119074%_))
              (if (gx#identifier-quote? _%e119073%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e119073%_ '1 '#f '#f)
                   _%phi119068%_
                   '0
                   (##unchecked-structure-ref _%e119073%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e119073%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e119073%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e119073%_ '1 '#f '#f)
                       _%phi119068%_
                       _%phi119068%_
                       _%ctx119069%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e119073%_ '3 '#f '#f)
                        _%marks119074%_))
                      (if (##structure-direct-instance-of?
                           _%e119073%_
                           'gx#syntax-wrap::t)
                          (_%lp119071%_
                           (##unchecked-structure-ref _%e119073%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e119073%_ '3 '#f '#f)
                            _%marks119074%_))
                          (if (##structure-instance-of?
                               _%e119073%_
                               'gerbil#AST::t)
                              (_%lp119071%_
                               (##unchecked-structure-ref
                                _%e119073%_
                                '1
                                '#f
                                '#f)
                               _%marks119074%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx119067%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx119085%_)
        (let* ((_%phi119087%_ (gx#current-expander-phi))
               (_%ctx119089%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx119085%_
           _%phi119087%_
           _%ctx119089%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx119091%_ _%phi119092%_)
        (let ((_%ctx119094%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx119091%_
           _%phi119092%_
           _%ctx119094%_))))
    (define gx#core-resolve-identifier
      (lambda _g121516_
        (let ((_g121515_ (##length _g121516_)))
          (cond ((##fx= _g121515_ 1)
                 (apply gx#core-resolve-identifier__0 _g121516_))
                ((##fx= _g121515_ 2)
                 (apply gx#core-resolve-identifier__1 _g121516_))
                ((##fx= _g121515_ 3)
                 (apply gx#core-resolve-identifier__% _g121516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g121516_))))))
    (define gx#core-resolve-binding
      (lambda (_%id118977%_
               _%phi118978%_
               _%src-phi118979%_
               _%ctx118980%_
               _%marks118981%_)
        (letrec ((_%resolve118983%_
                  (lambda (_%ctx119051%_ _%src-phi119052%_ _%key119053%_)
                    (let _%lp119055%_ ((_%ctx119057%_
                                        (gx#core-context-shift
                                         _%ctx119051%_
                                         _%phi118978%_))
                                       (_%dphi119058%_
                                        (fx- _%phi118978%_ _%src-phi119052%_)))
                      (let ((_%$e119060%_
                             (gx#core-context-resolve
                              _%ctx119057%_
                              _%key119053%_)))
                        (if _%$e119060%_
                            _%$e119060%_
                            (if (fxzero? _%dphi119058%_)
                                '#f
                                (if (fxpositive? _%dphi119058%_)
                                    (_%lp119055%_
                                     (gx#core-context-shift _%ctx119057%_ '-1)
                                     (##fx- _%dphi119058%_ '1))
                                    (_%lp119055%_
                                     (gx#core-context-shift _%ctx119057%_ '1)
                                     (##fx+ _%dphi119058%_ '1))))))))))
          (let _%lp118985%_ ((_%ctx118987%_ _%ctx118980%_)
                             (_%src-phi118988%_ _%src-phi118979%_)
                             (_%rest118989%_ _%marks118981%_))
            (let* ((_%rest118990118998%_ _%rest118989%_)
                   (_%else118992119006%_
                    (lambda ()
                      (_%resolve118983%_
                       _%ctx118987%_
                       _%src-phi118988%_
                       _%id118977%_)))
                   (_%K118994119039%_
                    (lambda (_%rest119009%_ _%hd119010%_)
                      (let* ((_%hd119011119017%_ _%hd119010%_)
                             (_%E119013119021%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd119011119017%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K119014119031%_
                              (lambda (_%subst119024%_)
                                (let ((_%$e119028%_
                                       (let ((_%key119026%_
                                              (if _%subst119024%_
                                                  (hash-get
                                                   _%subst119024%_
                                                   _%id118977%_)
                                                  '#f)))
                                         (if _%key119026%_
                                             (_%resolve118983%_
                                              _%ctx118987%_
                                              _%src-phi118988%_
                                              _%key119026%_)
                                             '#f))))
                                  (if _%$e119028%_
                                      _%$e119028%_
                                      (_%lp118985%_
                                       (##unchecked-structure-ref
                                        _%hd119010%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd119010%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest119009%_))))))
                        (if (##structure-instance-of?
                             _%hd119011119017%_
                             'gx#expander-mark::t)
                            (let* ((_%e119015119034%_
                                    (##unchecked-structure-ref
                                     _%hd119011119017%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst119037%_ _%e119015119034%_))
                              (_%K119014119031%_ _%subst119037%_))
                            (_%E119013119021%_))))))
              (if (pair? _%rest118990118998%_)
                  (let ((_%hd118995119042%_ (##car _%rest118990118998%_))
                        (_%tl118996119044%_ (##cdr _%rest118990118998%_)))
                    (let* ((_%hd119047%_ _%hd118995119042%_)
                           (_%rest119049%_ _%tl118996119044%_))
                      (_%K118994119039%_ _%rest119049%_ _%hd119047%_)))
                  (_%else118992119006%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key118847%_
               _%val118848%_
               _%rebind?118849%_
               _%phi118850%_
               _%ctx118851%_)
        (letrec ((_%update-binding118853%_
                  (lambda (_%xval118926%_)
                    (if (or (_%rebind?118849%_
                             _%ctx118851%_
                             _%xval118926%_
                             _%val118848%_)
                            (and (##structure-direct-instance-of?
                                  _%xval118926%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval118926%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val118848%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val118848%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval118926%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val118848%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val118848%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval118926%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val118848%_
                        (if (and (##structure-direct-instance-of?
                                  _%val118848%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val118848%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval118926%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val118848%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval118926%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval118926%_
                            (if (and (##structure-direct-instance-of?
                                      _%val118848%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval118926%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key118847%_
                                 (cons (##unchecked-structure-ref
                                        _%val118848%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val118848%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval118926%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval118926%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval118926%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval118926%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key118847%_
                                 _%val118848%_
                                 _%xval118926%_))))))
                 (_%gensubst118854%_
                  (lambda (_%subst118921%_ _%id118922%_)
                    (let ((_%eid118924%_
                           (gensym (if (uninterned-symbol? _%id118922%_)
                                       '%
                                       _%id118922%_))))
                      (hash-put! _%subst118921%_ _%id118922%_ _%eid118924%_)
                      _%eid118924%_)))
                 (_%subst!118855%_
                  (lambda (_%key118857%_)
                    (let* ((_%key118858118866%_ _%key118857%_)
                           (_%else118860118874%_ (lambda () _%key118857%_))
                           (_%K118862118909%_
                            (lambda (_%mark118877%_ _%id118878%_)
                              (let* ((_%mark118879118885%_ _%mark118877%_)
                                     (_%E118881118889%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark118879118885%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K118882118901%_
                                      (lambda (_%subst118892%_)
                                        (if (not _%subst118892%_)
                                            (let ((_%subst118895%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark118877%_
                                               _%subst118895%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst118854%_
                                               _%subst118895%_
                                               _%id118878%_))
                                            (let ((_%$e118897%_
                                                   (hash-get
                                                    _%subst118892%_
                                                    _%id118878%_)))
                                              (if _%$e118897%_
                                                  _%$e118897%_
                                                  (_%gensubst118854%_
                                                   _%subst118892%_
                                                   _%id118878%_)))))))
                                (if (##structure-instance-of?
                                     _%mark118879118885%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e118883118904%_
                                            (##unchecked-structure-ref
                                             _%mark118879118885%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst118907%_ _%e118883118904%_))
                                      (_%K118882118901%_ _%subst118907%_))
                                    (_%E118881118889%_))))))
                      (if (pair? _%key118858118866%_)
                          (let ((_%hd118863118912%_
                                 (##car _%key118858118866%_))
                                (_%tl118864118914%_
                                 (##cdr _%key118858118866%_)))
                            (let* ((_%id118917%_ _%hd118863118912%_)
                                   (_%mark118919%_ _%tl118864118914%_))
                              (_%K118862118909%_ _%mark118919%_ _%id118917%_)))
                          (_%else118860118874%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx118851%_ _%phi118850%_)
           (_%subst!118855%_ _%key118847%_)
           _%val118848%_
           _%update-binding118853%_))))
    (define gx#core-bind!__0
      (lambda (_%key118947%_ _%val118948%_)
        (let* ((_%rebind?118950%_ false)
               (_%phi118952%_ (gx#current-expander-phi))
               (_%ctx118954%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key118947%_
           _%val118948%_
           _%rebind?118950%_
           _%phi118952%_
           _%ctx118954%_))))
    (define gx#core-bind!__1
      (lambda (_%key118956%_ _%val118957%_ _%rebind?118958%_)
        (let* ((_%phi118960%_ (gx#current-expander-phi))
               (_%ctx118962%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key118956%_
           _%val118957%_
           _%rebind?118958%_
           _%phi118960%_
           _%ctx118962%_))))
    (define gx#core-bind!__2
      (lambda (_%key118964%_ _%val118965%_ _%rebind?118966%_ _%phi118967%_)
        (let ((_%ctx118969%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key118964%_
           _%val118965%_
           _%rebind?118966%_
           _%phi118967%_
           _%ctx118969%_))))
    (define gx#core-bind!
      (lambda _g121518_
        (let ((_g121517_ (##length _g121518_)))
          (cond ((##fx= _g121517_ 2) (apply gx#core-bind!__0 _g121518_))
                ((##fx= _g121517_ 3) (apply gx#core-bind!__1 _g121518_))
                ((##fx= _g121517_ 4) (apply gx#core-bind!__2 _g121518_))
                ((##fx= _g121517_ 5) (apply gx#core-bind!__% _g121518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g121518_))))))
    (define gx#core-identifier-key
      (lambda (_%stx118778%_)
        (if (symbol? _%stx118778%_)
            (let* ((_%g118780118788%_ (gx#current-expander-marks))
                   (_%else118782118796%_ (lambda () _%stx118778%_))
                   (_%K118784118801%_
                    (lambda (_%hd118799%_) (cons _%stx118778%_ _%hd118799%_))))
              (if (pair? _%g118780118788%_)
                  (let* ((_%hd118785118804%_ (##car _%g118780118788%_))
                         (_%hd118807%_ _%hd118785118804%_))
                    (_%K118784118801%_ _%hd118807%_))
                  (_%else118782118796%_)))
            (if (gx#identifier? _%stx118778%_)
                (let* ((_%id118810%_ (gx#syntax-local-unwrap _%stx118778%_))
                       (_%eid118812%_ (gx#stx-e _%id118810%_))
                       (_%marks118814%_
                        (gx#stx-identifier-marks* _%id118810%_))
                       (_%marks118816118824%_ _%marks118814%_)
                       (_%else118818118832%_ (lambda () _%eid118812%_))
                       (_%K118820118837%_
                        (lambda (_%hd118835%_)
                          (cons _%eid118812%_ _%hd118835%_))))
                  (if (pair? _%marks118816118824%_)
                      (let* ((_%hd118821118840%_ (##car _%marks118816118824%_))
                             (_%hd118843%_ _%hd118821118840%_))
                        (_%K118820118837%_ _%hd118843%_))
                      (_%else118818118832%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx118778%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx118717%_ _%phi118718%_)
        (letrec ((_%make-phi118720%_
                  (lambda (_%super118776%_)
                    (let ((__obj121490
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj121490
                       (##gensym 'phi)
                       _%super118776%_)
                      __obj121490)))
                 (_%make-phi/up118721%_
                  (lambda (_%ctx118771%_ _%super118772%_)
                    (let ((_%ctx+1118774%_
                           (_%make-phi118720%_ _%super118772%_)))
                      (##unchecked-structure-set!
                       _%ctx118771%_
                       _%ctx+1118774%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1118774%_
                       _%ctx118771%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1118774%_)))
                 (_%make-phi/down118722%_
                  (lambda (_%ctx118766%_ _%super118767%_)
                    (let ((_%ctx-1118769%_
                           (_%make-phi118720%_ _%super118767%_)))
                      (##unchecked-structure-set!
                       _%ctx-1118769%_
                       _%ctx118766%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx118766%_
                       _%ctx-1118769%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1118769%_)))
                 (_%shift118723%_
                  (lambda (_%ctx118749%_
                           _%delta118750%_
                           _%make-delta-context118751%_
                           _%phi118752%_
                           _%K118753%_)
                    (let ((_%$e118755%_
                           (##unchecked-structure-ref
                            _%ctx118749%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e118755%_
                          ((lambda (_%super118758%_)
                             (let* ((_%super118760%_
                                     (_%K118753%_
                                      _%super118758%_
                                      _%delta118750%_))
                                    (_%ctx+d118762%_
                                     (_%make-delta-context118751%_
                                      _%ctx118749%_
                                      _%super118760%_)))
                               (_%K118753%_
                                _%ctx+d118762%_
                                (fx- _%phi118752%_ _%delta118750%_))))
                           _%$e118755%_)
                          (error '"Bad context" _%ctx118749%_))))))
          (let _%K118725%_ ((_%ctx118727%_ _%ctx118717%_)
                            (_%phi118728%_ _%phi118718%_))
            (if (fxzero? _%phi118728%_)
                _%ctx118727%_
                (if (##structure-instance-of? _%ctx118727%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi118728%_)
                        (let ((_%$e118732%_
                               (##unchecked-structure-ref
                                _%ctx118727%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e118732%_
                              ((lambda (_%g118734118736%_)
                                 (_%K118725%_
                                  _%g118734118736%_
                                  (##fx- _%phi118728%_ '1)))
                               _%$e118732%_)
                              (_%shift118723%_
                               _%ctx118727%_
                               '1
                               _%make-phi/up118721%_
                               _%phi118728%_
                               _%K118725%_)))
                        (let ((_%$e118740%_
                               (##unchecked-structure-ref
                                _%ctx118727%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e118740%_
                              ((lambda (_%g118742118744%_)
                                 (_%K118725%_
                                  _%g118742118744%_
                                  (##fx+ _%phi118728%_ '1)))
                               _%$e118740%_)
                              (_%shift118723%_
                               _%ctx118727%_
                               '-1
                               _%make-phi/down118722%_
                               _%phi118728%_
                               _%K118725%_))))
                    _%ctx118727%_))))))
    (define gx#core-context-get
      (lambda (_%ctx118714%_ _%key118715%_)
        (hash-get
         (##unchecked-structure-ref _%ctx118714%_ '2 '#f '#f)
         _%key118715%_)))
    (define gx#core-context-put!
      (lambda (_%ctx118710%_ _%key118711%_ _%val118712%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx118710%_ '2 '#f '#f)
         _%key118711%_
         _%val118712%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx118696%_ _%key118697%_)
        (let _%lp118699%_ ((_%ctx118701%_ _%ctx118696%_))
          (let ((_%$e118703%_
                 (gx#core-context-get _%ctx118701%_ _%key118697%_)))
            (if _%$e118703%_
                _%$e118703%_
                (let ((_%$e118706%_
                       (if (##structure-instance-of?
                            _%ctx118701%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx118701%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e118706%_ (_%lp118699%_ _%$e118706%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx118685%_ _%key118686%_ _%val118687%_ _%rebind118688%_)
        (let ((_%$e118690%_ (gx#core-context-get _%ctx118685%_ _%key118686%_)))
          (if _%$e118690%_
              ((lambda (_%xval118693%_)
                 (gx#core-context-put!
                  _%ctx118685%_
                  _%key118686%_
                  (_%rebind118688%_ _%xval118693%_)))
               _%$e118690%_)
              (gx#core-context-put!
               _%ctx118685%_
               _%key118686%_
               _%val118687%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx118660%_ _%stop?118661%_)
        (let _%lp118663%_ ((_%ctx118665%_ _%ctx118660%_))
          (if (_%stop?118661%_ _%ctx118665%_)
              _%ctx118665%_
              (if (##structure-instance-of? _%ctx118665%_ 'gx#phi-context::t)
                  (_%lp118663%_
                   (##unchecked-structure-ref _%ctx118665%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx118674%_ (gx#current-expander-context))
               (_%stop?118676%_ gx#top-context?))
          (gx#core-context-top__% _%ctx118674%_ _%stop?118676%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx118678%_)
        (let ((_%stop?118680%_ gx#top-context?))
          (gx#core-context-top__% _%ctx118678%_ _%stop?118680%_))))
    (define gx#core-context-top
      (lambda _g121520_
        (let ((_g121519_ (##length _g121520_)))
          (cond ((##fx= _g121519_ 0) (apply gx#core-context-top__0 _g121520_))
                ((##fx= _g121519_ 1) (apply gx#core-context-top__1 _g121520_))
                ((##fx= _g121519_ 2) (apply gx#core-context-top__% _g121520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g121520_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx118645%_)
        (let _%lp118647%_ ((_%ctx118649%_ _%ctx118645%_))
          (if (##structure-instance-of? _%ctx118649%_ 'gx#phi-context::t)
              (_%lp118647%_
               (##unchecked-structure-ref _%ctx118649%_ '3 '#f '#f))
              _%ctx118649%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx118655%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx118655%_))))
    (define gx#core-context-root
      (lambda _g121522_
        (let ((_g121521_ (##length _g121522_)))
          (cond ((##fx= _g121521_ 0) (apply gx#core-context-root__0 _g121522_))
                ((##fx= _g121521_ 1) (apply gx#core-context-root__% _g121522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g121522_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx118627%_ . _%ignore118628%_)
        (let ((_%$e118630%_ (gx#current-expander-allow-rebind?)))
          (if _%$e118630%_
              _%$e118630%_
              (if (##structure-instance-of? _%ctx118627%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx118627%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx118627%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx118637%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx118637%_))))
    (define gx#core-context-rebind?
      (lambda _g121524_
        (let ((_g121523_ (##length _g121524_)))
          (cond ((##fx= _g121523_ 0)
                 (apply gx#core-context-rebind?__0 _g121524_))
                ((##fx= _g121523_ 1)
                 (apply gx#core-context-rebind?__% _g121524_))
                ((##fx>= _g121523_ 1)
                 (apply gx#core-context-rebind?__% _g121524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g121524_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx118610%_)
        (let ((_%$e118612%_ (gx#core-context-top__1 _%ctx118610%_)))
          (if _%$e118612%_
              ((lambda (_%ctx118615%_)
                 (if (##structure-instance-of?
                      _%ctx118615%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx118615%_ '6 '#f '#f)
                     '#f))
               _%$e118612%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx118622%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx118622%_))))
    (define gx#core-context-namespace
      (lambda _g121526_
        (let ((_g121525_ (##length _g121526_)))
          (cond ((##fx= _g121525_ 0)
                 (apply gx#core-context-namespace__0 _g121526_))
                ((##fx= _g121525_ 1)
                 (apply gx#core-context-namespace__% _g121526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g121526_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind118596%_ _%is?118597%_)
        (if (##structure-direct-instance-of?
             _%bind118596%_
             'gx#syntax-binding::t)
            (_%is?118597%_
             (##unchecked-structure-ref _%bind118596%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind118602%_)
        (let ((_%is?118604%_ gx#expander?))
          (gx#expander-binding?__% _%bind118602%_ _%is?118604%_))))
    (define gx#expander-binding?
      (lambda _g121528_
        (let ((_g121527_ (##length _g121528_)))
          (cond ((##fx= _g121527_ 1) (apply gx#expander-binding?__0 _g121528_))
                ((##fx= _g121527_ 2) (apply gx#expander-binding?__% _g121528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g121528_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind118593%_)
        (gx#expander-binding?__% _%bind118593%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind118591%_)
        (gx#expander-binding?__% _%bind118591%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind118585%_)
        (letrec ((_%direct-special-form?118587%_
                  (lambda (_%obj118589%_)
                    (##structure-direct-instance-of?
                     _%obj118589%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind118585%_
           _%direct-special-form?118587%_))))
    (define gx#special-form-binding?
      (lambda (_%bind118583%_)
        (gx#expander-binding?__% _%bind118583%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind118574%_)
        (letrec ((_%feature?118576%_
                  (lambda (_%e118578%_)
                    (let ((_%$e118580%_
                           (##structure-instance-of?
                            _%e118578%_
                            'gx#feature-expander::t)))
                      (if _%$e118580%_
                          _%$e118580%_
                          (##structure-instance-of?
                           _%e118578%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind118574%_ _%feature?118576%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind118572%_)
        (gx#expander-binding?__% _%bind118572%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id118559%_ _%bound?118560%_)
        (if (gx#identifier? _%id118559%_)
            (_%bound?118560%_ (gx#resolve-identifier__0 _%id118559%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id118565%_)
        (let ((_%bound?118567%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id118565%_ _%bound?118567%_))))
    (define gx#core-bound-identifier?
      (lambda _g121530_
        (let ((_g121529_ (##length _g121530_)))
          (cond ((##fx= _g121529_ 1)
                 (apply gx#core-bound-identifier?__0 _g121530_))
                ((##fx= _g121529_ 2)
                 (apply gx#core-bound-identifier?__% _g121530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g121530_))))))
    (define gx#core-identifier=?
      (lambda (_%x118549%_ _%y118550%_)
        (letrec ((_%y=?118552%_
                  (lambda (_%xid118556%_)
                    ((if (list? _%y118550%_) memq eq?)
                     _%xid118556%_
                     _%y118550%_))))
          (let ((_%bind118554%_ (gx#resolve-identifier__0 _%x118549%_)))
            (if (##structure-instance-of? _%bind118554%_ 'gx#binding::t)
                (_%y=?118552%_
                 (##unchecked-structure-ref _%bind118554%_ '1 '#f '#f))
                (_%y=?118552%_ (gx#stx-e _%x118549%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e118547%_)
        (if (interned-symbol? _%e118547%_)
            (string-index__0 (symbol->string _%e118547%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx118500%_ _%src118501%_ _%ctx118502%_ _%marks118503%_)
        (if (##structure? _%stx118500%_)
            (let ((_%$e118505%_ (gx#sealed-syntax-unwrap _%stx118500%_)))
              (if _%$e118505%_
                  _%$e118505%_
                  (if (gx#identifier? _%stx118500%_)
                      (let ((_%id118509%_
                             (gx#stx-unwrap__% _%stx118500%_ _%marks118503%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id118509%_ '1 '#f '#f)
                         (let ((_%$e118511%_
                                (##unchecked-structure-ref
                                 _%id118509%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e118511%_ _%$e118511%_ _%src118501%_))
                         _%ctx118502%_
                         (##unchecked-structure-ref _%id118509%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx118500%_)
                       (let ((_%$e118515%_ (gx#stx-source _%stx118500%_)))
                         (if _%$e118515%_ _%$e118515%_ _%src118501%_))
                       _%ctx118502%_
                       (reverse _%marks118503%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx118500%_
             _%src118501%_
             _%ctx118502%_
             (reverse _%marks118503%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx118521%_)
        (let* ((_%src118523%_ '#f)
               (_%ctx118525%_ (gx#current-expander-context))
               (_%marks118527%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118521%_
           _%src118523%_
           _%ctx118525%_
           _%marks118527%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx118529%_ _%src118530%_)
        (let* ((_%ctx118532%_ (gx#current-expander-context))
               (_%marks118534%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118529%_
           _%src118530%_
           _%ctx118532%_
           _%marks118534%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx118536%_ _%src118537%_ _%ctx118538%_)
        (let ((_%marks118540%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118536%_
           _%src118537%_
           _%ctx118538%_
           _%marks118540%_))))
    (define gx#core-quote-syntax
      (lambda _g121532_
        (let ((_g121531_ (##length _g121532_)))
          (cond ((##fx= _g121531_ 1) (apply gx#core-quote-syntax__0 _g121532_))
                ((##fx= _g121531_ 2) (apply gx#core-quote-syntax__1 _g121532_))
                ((##fx= _g121531_ 3) (apply gx#core-quote-syntax__2 _g121532_))
                ((##fx= _g121531_ 4) (apply gx#core-quote-syntax__% _g121532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g121532_))))))
    (define gx#core-cons
      (lambda (_%hd118496%_ _%tl118497%_)
        (cons (gx#core-quote-syntax__0 _%hd118496%_) _%tl118497%_)))
    (define gx#core-list
      (lambda (_%hd118493%_ . _%rest118494%_)
        (cons (gx#core-quote-syntax__0 _%hd118493%_) _%rest118494%_)))
    (define gx#core-cons*
      (lambda (_%hd118490%_ . _%rest118491%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd118490%_) _%rest118491%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path118459%_ _%rel118460%_)
        (let ((_%path118477%_ (gx#stx-e _%stx-path118459%_))
              (_%reldir118478%_
               (let _%lp118462%_ ((_%relsrc118464%_
                                   (let ((_%$e118474%_
                                          (gx#stx-source _%stx-path118459%_)))
                                     (if _%$e118474%_
                                         _%$e118474%_
                                         _%rel118460%_))))
                 (if (##structure-instance-of? _%relsrc118464%_ 'gerbil#AST::t)
                     (_%lp118462%_
                      (let ((_%$e118467%_ (gx#stx-source _%relsrc118464%_)))
                        (if _%$e118467%_
                            _%$e118467%_
                            (gx#stx-e _%relsrc118464%_))))
                     (if (source-location-path? _%relsrc118464%_)
                         (path-directory
                          (source-location-path _%relsrc118464%_))
                         (if (string? _%relsrc118464%_)
                             (path-directory _%relsrc118464%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path118477%_ (path-normalize _%reldir118478%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path118483%_)
        (let ((_%rel118485%_ '#f))
          (gx#core-resolve-path__% _%stx-path118483%_ _%rel118485%_))))
    (define gx#core-resolve-path
      (lambda _g121534_
        (let ((_g121533_ (##length _g121534_)))
          (cond ((##fx= _g121533_ 1) (apply gx#core-resolve-path__0 _g121534_))
                ((##fx= _g121533_ 2) (apply gx#core-resolve-path__% _g121534_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g121534_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr118415%_ _%ctx118416%_)
        (let* ((_%repr118417118424%_ _%repr118415%_)
               (_%E118419118428%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr118417118424%_
                         '([phi . subs]))
                  '#!void))
               (_%K118420118436%_
                (lambda (_%subs118431%_ _%phi118432%_)
                  (let ((_%subst118434%_
                         (if (null? _%subs118431%_)
                             '#f
                             (list->hash-table-eq _%subs118431%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst118434%_
                     _%ctx118416%_
                     _%phi118432%_
                     '#f)))))
          (if (pair? _%repr118417118424%_)
              (let ((_%hd118421118439%_ (##car _%repr118417118424%_))
                    (_%tl118422118441%_ (##cdr _%repr118417118424%_)))
                (let* ((_%phi118444%_ _%hd118421118439%_)
                       (_%subs118446%_ _%tl118422118441%_))
                  (_%K118420118436%_ _%subs118446%_ _%phi118444%_)))
              (_%E118419118428%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr118451%_)
        (let ((_%ctx118453%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr118451%_ _%ctx118453%_))))
    (define gx#core-deserialize-mark
      (lambda _g121536_
        (let ((_g121535_ (##length _g121536_)))
          (cond ((##fx= _g121535_ 1)
                 (apply gx#core-deserialize-mark__0 _g121536_))
                ((##fx= _g121535_ 2)
                 (apply gx#core-deserialize-mark__% _g121536_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g121536_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx118412%_)
        (gx#stx-rewrap _%stx118412%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx118410%_)
        (gx#stx-unwrap__% _%stx118410%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx118380%_)
        (let* ((_%g118381118389%_ (gx#current-expander-marks))
               (_%else118383118397%_ (lambda () _%stx118380%_))
               (_%K118385118402%_
                (lambda (_%hd118400%_)
                  (gx#stx-apply-mark _%stx118380%_ _%hd118400%_))))
          (if (pair? _%g118381118389%_)
              (let* ((_%hd118386118405%_ (##car _%g118381118389%_))
                     (_%hd118408%_ _%hd118386118405%_))
                (_%K118385118402%_ _%hd118408%_))
              (_%else118383118397%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx118365%_ _%E118366%_)
        (let ((_%bind118368%_ (gx#resolve-identifier__0 _%stx118365%_)))
          (if (##structure-direct-instance-of?
               _%bind118368%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind118368%_ '4 '#f '#f)
              (_%E118366%_ _%stx118365%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx118373%_)
        (let ((_%E118375%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx118373%_ _%E118375%_))))
    (define gx#syntax-local-e
      (lambda _g121538_
        (let ((_g121537_ (##length _g121538_)))
          (cond ((##fx= _g121537_ 1) (apply gx#syntax-local-e__0 _g121538_))
                ((##fx= _g121537_ 2) (apply gx#syntax-local-e__% _g121538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g121538_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx118349%_ _%E118350%_)
        (let ((_%e118352%_ (gx#syntax-local-e__% _%stx118349%_ _%E118350%_)))
          (if (##structure-instance-of? _%e118352%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e118352%_ '1 '#f '#f)
              _%e118352%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx118357%_)
        (let ((_%E118359%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx118357%_ _%E118359%_))))
    (define gx#syntax-local-value
      (lambda _g121540_
        (let ((_g121539_ (##length _g121540_)))
          (cond ((##fx= _g121539_ 1)
                 (apply gx#syntax-local-value__0 _g121540_))
                ((##fx= _g121539_ 2)
                 (apply gx#syntax-local-value__% _g121540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g121540_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx118346%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx118346%_)))))
