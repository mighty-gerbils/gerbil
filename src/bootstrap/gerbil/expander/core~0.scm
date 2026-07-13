(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1783939348)
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
      (lambda _%$args184253%_
        (apply make-instance gx#expander-context::t _%$args184253%_)))
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
      (lambda _%$args184250%_
        (apply make-instance gx#root-context::t _%$args184250%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#phi-context? (__make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _%$args184247%_
        (apply make-instance gx#phi-context::t _%$args184247%_)))
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
      (lambda _%$args184244%_
        (apply make-instance gx#top-context::t _%$args184244%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#module-context? (__make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _%$args184241%_
        (apply make-instance gx#module-context::t _%$args184241%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#prelude-context? (__make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _%$args184238%_
        (apply make-instance gx#prelude-context::t _%$args184238%_)))
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
      (lambda _%$args184235%_
        (apply make-instance gx#local-context::t _%$args184235%_)))
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
      (lambda (_%self184208%_ _%id184209%_ _%super184210%_)
        (let ((_%self184213%_ _%self184208%_))
          (if (##fx< '3 (##structure-length _%self184213%_))
              (begin
                (##unchecked-structure-set!
                 _%self184213%_
                 _%id184209%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self184213%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self184213%_
                 _%super184210%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self184213%_
                     '3
                     (##structure-length _%self184213%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self184226%_ _%id184227%_)
        (let ((_%super184229%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self184226%_
           _%id184227%_
           _%super184229%_))))
    (define gx#phi-context:::init!
      (lambda _g184295_
        (let ((_g184296_ (##length _g184295_)))
          (cond ((##fx= _g184296_ 2)
                 (apply gx#phi-context:::init!__0 _g184295_))
                ((##fx= _g184296_ 3)
                 (apply gx#phi-context:::init!__% _g184295_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g184295_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self184061%_ _%super184062%_)
        (let ((_%self184065%_ _%self184061%_))
          (if (##fx< '3 (##structure-length _%self184065%_))
              (begin
                (##unchecked-structure-set!
                 _%self184065%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self184065%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self184065%_
                 _%super184062%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self184065%_
                     '3
                     (##structure-length _%self184065%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self184078%_)
        (let ((_%super184080%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self184078%_ _%super184080%_))))
    (define gx#local-context:::init!
      (lambda _g184297_
        (let ((_g184298_ (##length _g184297_)))
          (cond ((##fx= _g184298_ 1)
                 (apply gx#local-context:::init!__0 _g184297_))
                ((##fx= _g184298_ 2)
                 (apply gx#local-context:::init!__% _g184297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g184297_))))))
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
       '(id key phi properties)
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args183935%_
        (apply make-instance gx#binding::t _%$args183935%_)))
    (define gx#binding-id (__make-class-slot-accessor gx#binding::t 'id))
    (define gx#binding-key (__make-class-slot-accessor gx#binding::t 'key))
    (define gx#binding-phi (__make-class-slot-accessor gx#binding::t 'phi))
    (define gx#binding-properties
      (__make-class-slot-accessor gx#binding::t 'properties))
    (define gx#binding-id-set! (__make-class-slot-mutator gx#binding::t 'id))
    (define gx#binding-key-set! (__make-class-slot-mutator gx#binding::t 'key))
    (define gx#binding-phi-set! (__make-class-slot-mutator gx#binding::t 'phi))
    (define gx#binding-properties-set!
      (__make-class-slot-mutator gx#binding::t 'properties))
    (define gx#&binding-id
      (__make-class-slot-unchecked-accessor gx#binding::t 'id))
    (define gx#&binding-key
      (__make-class-slot-unchecked-accessor gx#binding::t 'key))
    (define gx#&binding-phi
      (__make-class-slot-unchecked-accessor gx#binding::t 'phi))
    (define gx#&binding-properties
      (__make-class-slot-unchecked-accessor gx#binding::t 'properties))
    (define gx#&binding-id-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'id))
    (define gx#&binding-key-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'key))
    (define gx#&binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'phi))
    (define gx#&binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'properties))
    (define gx#binding:::init!
      (lambda (_%self183918%_ _%id183919%_ _%key183920%_ _%phi183921%_)
        (let ((_%self183924%_ _%self183918%_))
          (##unchecked-structure-set! _%self183924%_ _%id183919%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self183924%_ _%key183920%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self183924%_
           _%phi183921%_
           '3
           '#f
           '#f))))
    (__bind-method!__% gx#binding::t ':init! gx#binding:::init! '#f)
    (define gx#runtime-binding::t
      (__make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '(type macro)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args183793%_
        (apply make-instance gx#runtime-binding::t _%$args183793%_)))
    (define gx#runtime-binding-type
      (__make-class-slot-accessor gx#runtime-binding::t 'type))
    (define gx#runtime-binding-macro
      (__make-class-slot-accessor gx#runtime-binding::t 'macro))
    (define gx#runtime-binding-id
      (__make-class-slot-accessor gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key
      (__make-class-slot-accessor gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi
      (__make-class-slot-accessor gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-properties
      (__make-class-slot-accessor gx#runtime-binding::t 'properties))
    (define gx#runtime-binding-type-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'type))
    (define gx#runtime-binding-macro-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'macro))
    (define gx#runtime-binding-id-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-properties-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'properties))
    (define gx#&runtime-binding-type
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'type))
    (define gx#&runtime-binding-macro
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'macro))
    (define gx#&runtime-binding-id
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-properties
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'properties))
    (define gx#&runtime-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'type))
    (define gx#&runtime-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'macro))
    (define gx#&runtime-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'properties))
    (define gx#local-binding::t
      (__make-class-type
       'gx#local-binding::t
       'local-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args183790%_
        (apply make-instance gx#local-binding::t _%$args183790%_)))
    (define gx#local-binding-type
      (__make-class-slot-accessor gx#local-binding::t 'type))
    (define gx#local-binding-macro
      (__make-class-slot-accessor gx#local-binding::t 'macro))
    (define gx#local-binding-id
      (__make-class-slot-accessor gx#local-binding::t 'id))
    (define gx#local-binding-key
      (__make-class-slot-accessor gx#local-binding::t 'key))
    (define gx#local-binding-phi
      (__make-class-slot-accessor gx#local-binding::t 'phi))
    (define gx#local-binding-properties
      (__make-class-slot-accessor gx#local-binding::t 'properties))
    (define gx#local-binding-type-set!
      (__make-class-slot-mutator gx#local-binding::t 'type))
    (define gx#local-binding-macro-set!
      (__make-class-slot-mutator gx#local-binding::t 'macro))
    (define gx#local-binding-id-set!
      (__make-class-slot-mutator gx#local-binding::t 'id))
    (define gx#local-binding-key-set!
      (__make-class-slot-mutator gx#local-binding::t 'key))
    (define gx#local-binding-phi-set!
      (__make-class-slot-mutator gx#local-binding::t 'phi))
    (define gx#local-binding-properties-set!
      (__make-class-slot-mutator gx#local-binding::t 'properties))
    (define gx#&local-binding-type
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'type))
    (define gx#&local-binding-macro
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'macro))
    (define gx#&local-binding-id
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'id))
    (define gx#&local-binding-key
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'key))
    (define gx#&local-binding-phi
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'phi))
    (define gx#&local-binding-properties
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'properties))
    (define gx#&local-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'type))
    (define gx#&local-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'macro))
    (define gx#&local-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'id))
    (define gx#&local-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'key))
    (define gx#&local-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'phi))
    (define gx#&local-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'properties))
    (define gx#top-binding::t
      (__make-class-type
       'gx#top-binding::t
       'top-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args183787%_
        (apply make-instance gx#top-binding::t _%$args183787%_)))
    (define gx#top-binding-type
      (__make-class-slot-accessor gx#top-binding::t 'type))
    (define gx#top-binding-macro
      (__make-class-slot-accessor gx#top-binding::t 'macro))
    (define gx#top-binding-id
      (__make-class-slot-accessor gx#top-binding::t 'id))
    (define gx#top-binding-key
      (__make-class-slot-accessor gx#top-binding::t 'key))
    (define gx#top-binding-phi
      (__make-class-slot-accessor gx#top-binding::t 'phi))
    (define gx#top-binding-properties
      (__make-class-slot-accessor gx#top-binding::t 'properties))
    (define gx#top-binding-type-set!
      (__make-class-slot-mutator gx#top-binding::t 'type))
    (define gx#top-binding-macro-set!
      (__make-class-slot-mutator gx#top-binding::t 'macro))
    (define gx#top-binding-id-set!
      (__make-class-slot-mutator gx#top-binding::t 'id))
    (define gx#top-binding-key-set!
      (__make-class-slot-mutator gx#top-binding::t 'key))
    (define gx#top-binding-phi-set!
      (__make-class-slot-mutator gx#top-binding::t 'phi))
    (define gx#top-binding-properties-set!
      (__make-class-slot-mutator gx#top-binding::t 'properties))
    (define gx#&top-binding-type
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'type))
    (define gx#&top-binding-macro
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'macro))
    (define gx#&top-binding-id
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'id))
    (define gx#&top-binding-key
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'key))
    (define gx#&top-binding-phi
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'phi))
    (define gx#&top-binding-properties
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'properties))
    (define gx#&top-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'type))
    (define gx#&top-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'macro))
    (define gx#&top-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'id))
    (define gx#&top-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'key))
    (define gx#&top-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'phi))
    (define gx#&top-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'properties))
    (define gx#module-binding::t
      (__make-class-type
       'gx#module-binding::t
       'module-binding
       (list gx#top-binding::t)
       '(context)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args183784%_
        (apply make-instance gx#module-binding::t _%$args183784%_)))
    (define gx#module-binding-context
      (__make-class-slot-accessor gx#module-binding::t 'context))
    (define gx#module-binding-type
      (__make-class-slot-accessor gx#module-binding::t 'type))
    (define gx#module-binding-macro
      (__make-class-slot-accessor gx#module-binding::t 'macro))
    (define gx#module-binding-id
      (__make-class-slot-accessor gx#module-binding::t 'id))
    (define gx#module-binding-key
      (__make-class-slot-accessor gx#module-binding::t 'key))
    (define gx#module-binding-phi
      (__make-class-slot-accessor gx#module-binding::t 'phi))
    (define gx#module-binding-properties
      (__make-class-slot-accessor gx#module-binding::t 'properties))
    (define gx#module-binding-context-set!
      (__make-class-slot-mutator gx#module-binding::t 'context))
    (define gx#module-binding-type-set!
      (__make-class-slot-mutator gx#module-binding::t 'type))
    (define gx#module-binding-macro-set!
      (__make-class-slot-mutator gx#module-binding::t 'macro))
    (define gx#module-binding-id-set!
      (__make-class-slot-mutator gx#module-binding::t 'id))
    (define gx#module-binding-key-set!
      (__make-class-slot-mutator gx#module-binding::t 'key))
    (define gx#module-binding-phi-set!
      (__make-class-slot-mutator gx#module-binding::t 'phi))
    (define gx#module-binding-properties-set!
      (__make-class-slot-mutator gx#module-binding::t 'properties))
    (define gx#&module-binding-context
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'context))
    (define gx#&module-binding-type
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'type))
    (define gx#&module-binding-macro
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'macro))
    (define gx#&module-binding-id
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'id))
    (define gx#&module-binding-key
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'key))
    (define gx#&module-binding-phi
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'phi))
    (define gx#&module-binding-properties
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'properties))
    (define gx#&module-binding-context-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'context))
    (define gx#&module-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'type))
    (define gx#&module-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'macro))
    (define gx#&module-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'id))
    (define gx#&module-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'key))
    (define gx#&module-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'phi))
    (define gx#&module-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'properties))
    (define gx#extern-binding::t
      (__make-class-type
       'gx#extern-binding::t
       'extern-binding
       (list gx#top-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args183781%_
        (apply make-instance gx#extern-binding::t _%$args183781%_)))
    (define gx#extern-binding-type
      (__make-class-slot-accessor gx#extern-binding::t 'type))
    (define gx#extern-binding-macro
      (__make-class-slot-accessor gx#extern-binding::t 'macro))
    (define gx#extern-binding-id
      (__make-class-slot-accessor gx#extern-binding::t 'id))
    (define gx#extern-binding-key
      (__make-class-slot-accessor gx#extern-binding::t 'key))
    (define gx#extern-binding-phi
      (__make-class-slot-accessor gx#extern-binding::t 'phi))
    (define gx#extern-binding-properties
      (__make-class-slot-accessor gx#extern-binding::t 'properties))
    (define gx#extern-binding-type-set!
      (__make-class-slot-mutator gx#extern-binding::t 'type))
    (define gx#extern-binding-macro-set!
      (__make-class-slot-mutator gx#extern-binding::t 'macro))
    (define gx#extern-binding-id-set!
      (__make-class-slot-mutator gx#extern-binding::t 'id))
    (define gx#extern-binding-key-set!
      (__make-class-slot-mutator gx#extern-binding::t 'key))
    (define gx#extern-binding-phi-set!
      (__make-class-slot-mutator gx#extern-binding::t 'phi))
    (define gx#extern-binding-properties-set!
      (__make-class-slot-mutator gx#extern-binding::t 'properties))
    (define gx#&extern-binding-type
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'type))
    (define gx#&extern-binding-macro
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'macro))
    (define gx#&extern-binding-id
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'id))
    (define gx#&extern-binding-key
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'phi))
    (define gx#&extern-binding-properties
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'properties))
    (define gx#&extern-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'type))
    (define gx#&extern-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'macro))
    (define gx#&extern-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'id))
    (define gx#&extern-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'phi))
    (define gx#&extern-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'properties))
    (define gx#runtime-binding:::init! gx#binding:::init!)
    (__bind-method!__%
     gx#runtime-binding::t
     ':init!
     gx#runtime-binding:::init!
     '#f)
    (define gx#local-binding:::init! gx#binding:::init!)
    (__bind-method!__%
     gx#local-binding::t
     ':init!
     gx#local-binding:::init!
     '#f)
    (define gx#top-binding:::init! gx#binding:::init!)
    (__bind-method!__% gx#top-binding::t ':init! gx#top-binding:::init! '#f)
    (define gx#module-binding:::init!
      (lambda (_%self183397%_
               _%id183398%_
               _%key183399%_
               _%phi183400%_
               _%ctx183401%_)
        (let ((_%self183404%_ _%self183397%_))
          (gx#binding:::init!
           _%self183404%_
           _%id183398%_
           _%key183399%_
           _%phi183400%_)
          (##unchecked-structure-set!
           _%self183404%_
           _%ctx183401%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#module-binding::t
     ':init!
     gx#module-binding:::init!
     '#f)
    (define gx#extern-binding:::init! gx#binding:::init!)
    (__bind-method!__%
     gx#extern-binding::t
     ':init!
     gx#extern-binding:::init!
     '#f)
    (define gx#syntax-binding::t
      (__make-class-type
       'gx#syntax-binding::t
       'syntax-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args183150%_
        (apply make-instance gx#syntax-binding::t _%$args183150%_)))
    (define gx#syntax-binding-e
      (__make-class-slot-accessor gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id
      (__make-class-slot-accessor gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key
      (__make-class-slot-accessor gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi
      (__make-class-slot-accessor gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-properties
      (__make-class-slot-accessor gx#syntax-binding::t 'properties))
    (define gx#syntax-binding-e-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-properties-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'properties))
    (define gx#&syntax-binding-e
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-properties
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'properties))
    (define gx#&syntax-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'properties))
    (define gx#import-binding::t
      (__make-class-type
       'gx#import-binding::t
       'import-binding
       (list gx#binding::t)
       '(e context weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args183147%_
        (apply make-instance gx#import-binding::t _%$args183147%_)))
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
    (define gx#import-binding-properties
      (__make-class-slot-accessor gx#import-binding::t 'properties))
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
    (define gx#import-binding-properties-set!
      (__make-class-slot-mutator gx#import-binding::t 'properties))
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
    (define gx#&import-binding-properties
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'properties))
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
    (define gx#&import-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'properties))
    (define gx#alias-binding::t
      (__make-class-type
       'gx#alias-binding::t
       'alias-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: e))))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args183144%_
        (apply make-instance gx#alias-binding::t _%$args183144%_)))
    (define gx#alias-binding-e
      (__make-class-slot-accessor gx#alias-binding::t 'e))
    (define gx#alias-binding-id
      (__make-class-slot-accessor gx#alias-binding::t 'id))
    (define gx#alias-binding-key
      (__make-class-slot-accessor gx#alias-binding::t 'key))
    (define gx#alias-binding-phi
      (__make-class-slot-accessor gx#alias-binding::t 'phi))
    (define gx#alias-binding-properties
      (__make-class-slot-accessor gx#alias-binding::t 'properties))
    (define gx#alias-binding-e-set!
      (__make-class-slot-mutator gx#alias-binding::t 'e))
    (define gx#alias-binding-id-set!
      (__make-class-slot-mutator gx#alias-binding::t 'id))
    (define gx#alias-binding-key-set!
      (__make-class-slot-mutator gx#alias-binding::t 'key))
    (define gx#alias-binding-phi-set!
      (__make-class-slot-mutator gx#alias-binding::t 'phi))
    (define gx#alias-binding-properties-set!
      (__make-class-slot-mutator gx#alias-binding::t 'properties))
    (define gx#&alias-binding-e
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'e))
    (define gx#&alias-binding-id
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'id))
    (define gx#&alias-binding-key
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'phi))
    (define gx#&alias-binding-properties
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'properties))
    (define gx#&alias-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'e))
    (define gx#&alias-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'id))
    (define gx#&alias-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'phi))
    (define gx#&alias-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'properties))
    (define gx#syntax-binding:::init!
      (lambda (_%self183126%_
               _%id183127%_
               _%key183128%_
               _%phi183129%_
               _%e183130%_)
        (let ((_%self183133%_ _%self183126%_))
          (gx#binding:::init!
           _%self183133%_
           _%id183127%_
           _%key183128%_
           _%phi183129%_)
          (##unchecked-structure-set! _%self183133%_ _%e183130%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self182984%_
               _%id182985%_
               _%key182986%_
               _%phi182987%_
               _%e182988%_
               _%ctx182989%_
               _%weak?182990%_)
        (let ((_%self182993%_ _%self182984%_))
          (gx#binding:::init!
           _%self182993%_
           _%id182985%_
           _%key182986%_
           _%phi182987%_)
          (##unchecked-structure-set! _%self182993%_ _%e182988%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self182993%_ _%ctx182989%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self182993%_
           _%weak?182990%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self182844%_
               _%id182845%_
               _%key182846%_
               _%phi182847%_
               _%e182848%_)
        (let ((_%self182851%_ _%self182844%_))
          (gx#binding:::init!
           _%self182851%_
           _%id182845%_
           _%key182846%_
           _%phi182847%_)
          (##unchecked-structure-set! _%self182851%_ _%e182848%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#alias-binding::t
     ':init!
     gx#alias-binding:::init!
     '#f)
    (define gx#expander::t
      (__make-class-type
       'gx#expander::t
       'expander
       (list)
       '(e)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args182719%_
        (apply make-instance gx#expander::t _%$args182719%_)))
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
       (cons (cons 'struct: '#t) '((print: id)))
       '#f))
    (define gx#core-expander? (__make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _%$args182716%_
        (apply make-instance gx#core-expander::t _%$args182716%_)))
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
      (lambda _%$args182713%_
        (apply make-instance gx#expression-form::t _%$args182713%_)))
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
      (lambda _%$args182710%_
        (apply make-instance gx#special-form::t _%$args182710%_)))
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
      (lambda _%$args182707%_
        (apply make-instance gx#definition-form::t _%$args182707%_)))
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
      (lambda _%$args182704%_
        (apply make-instance gx#top-special-form::t _%$args182704%_)))
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
      (lambda _%$args182701%_
        (apply make-instance gx#module-special-form::t _%$args182701%_)))
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
      (lambda _%$args182698%_
        (apply make-instance gx#feature-expander::t _%$args182698%_)))
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
      (lambda _%$args182695%_
        (apply make-instance gx#private-feature-expander::t _%$args182695%_)))
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
      (lambda _%$args182692%_
        (apply make-instance gx#reserved-expander::t _%$args182692%_)))
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
      (lambda _%$args182689%_
        (apply make-instance gx#macro-expander::t _%$args182689%_)))
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
      (lambda _%$args182686%_
        (apply make-instance gx#rename-macro-expander::t _%$args182686%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#user-expander? (__make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _%$args182683%_
        (apply make-instance gx#user-expander::t _%$args182683%_)))
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
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander-mark? (__make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _%$args182680%_
        (apply make-instance gx#expander-mark::t _%$args182680%_)))
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
      (lambda (_%ctx182664%_
               _%message182665%_
               _%stx182666%_
               .
               _%details182667%_)
        (let ((_%ctx182678%_
               (let ((_%$e182669%_ _%ctx182664%_))
                 (if _%$e182669%_
                     _%$e182669%_
                     (let ((_%$e182672%_ (gx#core-context-top__0)))
                       (if _%$e182672%_
                           (cons 'expand
                                 (cons (##structure-ref
                                        _%$e182672%_
                                        '1
                                        gx#expander-context::t
                                        '#f)
                                       '()))
                           '#f))))))
          (raise (make-syntax-error
                  _%message182665%_
                  (cons _%stx182666%_ _%details182667%_)
                  _%ctx182678%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx182651%_ _%expression?182652%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx182651%_ _%expression?182652%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx182657%_)
        (let ((_%expression?182659%_ '#f))
          (gx#eval-syntax__% _%stx182657%_ _%expression?182659%_))))
    (define gx#eval-syntax
      (lambda _g184299_
        (let ((_g184300_ (##length _g184299_)))
          (cond ((##fx= _g184300_ 1) (apply gx#eval-syntax__0 _g184299_))
                ((##fx= _g184300_ 2) (apply gx#eval-syntax__% _g184299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g184299_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx182636%_ _%expression?182637%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx182636%_ _%expression?182637%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx182643%_)
        (let ((_%expression?182645%_ '#f))
          (gx#eval-syntax+1__% _%stx182643%_ _%expression?182645%_))))
    (define gx#eval-syntax+1
      (lambda _g184301_
        (let ((_g184302_ (##length _g184301_)))
          (cond ((##fx= _g184302_ 1) (apply gx#eval-syntax+1__0 _g184301_))
                ((##fx= _g184302_ 2) (apply gx#eval-syntax+1__% _g184301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g184301_))))))
    (define gx#eval-expression+1
      (lambda (_%stx182633%_) (gx#eval-syntax+1__% _%stx182633%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx182631%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx182631%_))))
    (define gx#core-expand__%
      (lambda (_%stx182618%_ _%expression?182619%_)
        (if _%expression?182619%_
            (gx#core-expand-expression _%stx182618%_)
            (gx#core-expand-top _%stx182618%_))))
    (define gx#core-expand__0
      (lambda (_%stx182624%_)
        (let ((_%expression?182626%_ '#f))
          (gx#core-expand__% _%stx182624%_ _%expression?182626%_))))
    (define gx#core-expand
      (lambda _g184303_
        (let ((_g184304_ (##length _g184303_)))
          (cond ((##fx= _g184304_ 1) (apply gx#core-expand__0 _g184303_))
                ((##fx= _g184304_ 2) (apply gx#core-expand__% _g184303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g184303_))))))
    (define gx#core-expand-top
      (lambda (_%stx182585%_)
        (let* ((_%stx182587%_ (gx#core-expand*__0 _%stx182585%_))
               (_%$%e182588182595%_ _%stx182587%_)
               (_%$%E182590182599%_
                (lambda () (gx#core-expand-expression _%stx182587%_)))
               (_%$%E182589182613%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182588182595%_)
                      (let ((_%$%e182591182603%_
                             (gx#syntax-e _%$%e182588182595%_)))
                        (let ((_%$%hd182592182606%_
                               (##car _%$%e182591182603%_))
                              (_%$%tl182593182608%_
                               (##cdr _%$%e182591182603%_)))
                          (let ((_%form182611%_ _%$%hd182592182606%_))
                            (if (gx#core-bound-identifier?__0 _%form182611%_)
                                _%stx182587%_
                                (_%$%E182590182599%_)))))
                      (_%$%E182590182599%_)))))
          (_%$%E182589182613%_))))
    (define gx#core-expand-expression
      (lambda (_%stx182517%_)
        (letrec ((_%sealed-expression?182519%_
                  (lambda (_%hd182555%_)
                    (if (gx#sealed-syntax? _%hd182555%_)
                        (let* ((_%$%e182556182563%_ _%hd182555%_)
                               (_%$%E182558182567%_ (lambda () '#f))
                               (_%$%E182557182581%_
                                (lambda ()
                                  (if (gx#stx-pair? _%$%e182556182563%_)
                                      (let ((_%$%e182559182571%_
                                             (gx#syntax-e
                                              _%$%e182556182563%_)))
                                        (let ((_%$%hd182560182574%_
                                               (##car _%$%e182559182571%_))
                                              (_%$%tl182561182576%_
                                               (##cdr _%$%e182559182571%_)))
                                          (let ((_%form182579%_
                                                 _%$%hd182560182574%_))
                                            (gx#core-bound-identifier?__%
                                             _%form182579%_
                                             gx#expression-form-binding?))))
                                      (_%$%E182558182567%_)))))
                          (_%$%E182557182581%_))
                        '#f)))
                 (_%illegal-expression182520%_
                  (lambda (_%hd182552%_ . _%_182553%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx182517%_
                     _%hd182552%_)))
                 (_%expand-e182521%_
                  (lambda (_%form182544%_ _%hd182545%_)
                    (let ((_%bind182547%_
                           (if (##structure-instance-of?
                                _%form182544%_
                                'gx#binding::t)
                               _%form182544%_
                               (gx#resolve-identifier__0 _%form182544%_))))
                      (if (gx#core-expander-binding? _%bind182547%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind182547%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd182545%_
                            (gx#stx-source _%stx182517%_)))
                          (if (##structure-direct-instance-of?
                               _%bind182547%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind182547%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd182545%_
                                 (gx#stx-source _%stx182517%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx182517%_
                               _%form182544%_)))))))
          (let ((_%hd182523%_ (gx#core-expand-head _%stx182517%_)))
            (if (_%sealed-expression?182519%_ _%hd182523%_)
                _%hd182523%_
                (if (gx#stx-pair? _%hd182523%_)
                    (let* ((_%form182527%_ (gx#stx-car _%hd182523%_))
                           (_%bind182529%_
                            (if (gx#identifier? _%form182527%_)
                                (gx#resolve-identifier__0 _%form182527%_)
                                '#f)))
                      (if (or (not _%bind182529%_)
                              (not (gx#core-expander-binding? _%bind182529%_)))
                          (_%expand-e182521%_
                           '%%app
                           (cons '%%app _%hd182523%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind182529%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd182523%_
                               _%illegal-expression182520%_)
                              (if (gx#expression-form-binding? _%bind182529%_)
                                  (_%expand-e182521%_
                                   _%bind182529%_
                                   _%hd182523%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind182529%_)
                                      (gx#core-expand-expression
                                       (_%expand-e182521%_
                                        _%bind182529%_
                                        _%hd182523%_))
                                      (_%illegal-expression182520%_
                                       _%hd182523%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd182523%_)
                        (_%illegal-expression182520%_ _%hd182523%_)
                        (if (gx#identifier? _%hd182523%_)
                            (_%expand-e182521%_
                             '%%ref
                             (cons '%%ref (cons _%hd182523%_ '())))
                            (if (gx#stx-datum? _%hd182523%_)
                                (_%expand-e182521%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd182523%_ '())))
                                (_%illegal-expression182520%_
                                 _%hd182523%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx182512%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx182515%_ (gx#core-expand-expression _%stx182512%_)))
             (values _%stx182515%_ (gx#eval-syntax* _%stx182515%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx182493%_ _%stop?182494%_)
        (let _%lp182496%_ ((_%stx182498%_ _%stx182493%_))
          (if (_%stop?182494%_ _%stx182498%_)
              _%stx182498%_
              (let ((_%rstx182500%_ (gx#core-expand1 _%stx182498%_)))
                (if (eq? _%stx182498%_ _%rstx182500%_)
                    _%stx182498%_
                    (_%lp182496%_ _%rstx182500%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx182505%_)
        (let ((_%stop?182507%_ false))
          (gx#core-expand*__% _%stx182505%_ _%stop?182507%_))))
    (define gx#core-expand*
      (lambda _g184305_
        (let ((_g184306_ (##length _g184305_)))
          (cond ((##fx= _g184306_ 1) (apply gx#core-expand*__0 _g184305_))
                ((##fx= _g184306_ 2) (apply gx#core-expand*__% _g184305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g184305_))))))
    (define gx#core-expand1
      (lambda (_%stx182445%_)
        (letrec ((_%step182447%_
                  (lambda (_%hd182484%_)
                    (let ((_%bind182486%_
                           (gx#resolve-identifier__0 _%hd182484%_)))
                      (if (##structure-instance-of?
                           _%bind182486%_
                           'gx#runtime-binding::t)
                          _%stx182445%_
                          (if (##structure-direct-instance-of?
                               _%bind182486%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind182486%_
                                '5
                                '#f
                                '#f)
                               _%stx182445%_)
                              (if (not _%bind182486%_)
                                  _%stx182445%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx182445%_))))))))
          (let* ((_%$%e182448182456%_ _%stx182445%_)
                 (_%$%E182454182460%_ (lambda () _%stx182445%_))
                 (_%$%E182450182466%_
                  (lambda ()
                    (let ((_%hd182464%_ _%$%e182448182456%_))
                      (if (gx#identifier? _%hd182464%_)
                          (_%step182447%_ _%hd182464%_)
                          (_%$%E182454182460%_)))))
                 (_%$%E182449182480%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e182448182456%_)
                        (let ((_%$%e182451182470%_
                               (gx#syntax-e _%$%e182448182456%_)))
                          (let ((_%$%hd182452182473%_
                                 (##car _%$%e182451182470%_))
                                (_%$%tl182453182475%_
                                 (##cdr _%$%e182451182470%_)))
                            (let ((_%hd182478%_ _%$%hd182452182473%_))
                              (if (gx#identifier? _%hd182478%_)
                                  (_%step182447%_ _%hd182478%_)
                                  (_%$%E182450182466%_)))))
                        (_%$%E182450182466%_)))))
            (_%$%E182449182480%_)))))
    (define gx#core-expand-head
      (lambda (_%stx182411%_)
        (letrec ((_%stop?182413%_
                  (lambda (_%stx182415%_)
                    (let* ((_%$%e182416182423%_ _%stx182415%_)
                           (_%$%E182418182427%_ (lambda () '#f))
                           (_%$%E182417182441%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e182416182423%_)
                                  (let ((_%$%e182419182431%_
                                         (gx#syntax-e _%$%e182416182423%_)))
                                    (let ((_%$%hd182420182434%_
                                           (##car _%$%e182419182431%_))
                                          (_%$%tl182421182436%_
                                           (##cdr _%$%e182419182431%_)))
                                      (let ((_%hd182439%_
                                             _%$%hd182420182434%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd182439%_))))
                                  (_%$%E182418182427%_)))))
                      (_%$%E182417182441%_)))))
          (gx#core-expand*__% _%stx182411%_ _%stop?182413%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx182217%_
               _%expand-special182218%_
               _%begin-form182219%_
               _%expand-e182220%_)
        (letrec ((_%expand-splice182222%_
                  (lambda (_%hd182385%_
                           _%body182386%_
                           _%rest182387%_
                           _%r182388%_)
                    (if (gx#stx-list? _%body182386%_)
                        (_%K182226%_
                         (gx#stx-foldr cons _%rest182387%_ _%body182386%_)
                         _%r182388%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx182217%_
                         _%hd182385%_))))
                 (_%expand-cond-expand182223%_
                  (lambda (_%hd182381%_ _%rest182382%_ _%r182383%_)
                    (_%K182226%_
                     (cons (gx#core-expand-cond-expand% _%hd182381%_)
                           _%rest182382%_)
                     _%r182383%_)))
                 (_%expand-include182224%_
                  (lambda (_%hd182330%_ _%rest182331%_ _%r182332%_)
                    (let* ((_%$%e182333182343%_ _%hd182330%_)
                           (_%$%E182335182347%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e182333182343%_)))
                           (_%$%E182334182377%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e182333182343%_)
                                  (let ((_%$%e182336182351%_
                                         (gx#syntax-e _%$%e182333182343%_)))
                                    (let ((_%$%hd182337182354%_
                                           (##car _%$%e182336182351%_))
                                          (_%$%tl182338182356%_
                                           (##cdr _%$%e182336182351%_)))
                                      (if (gx#stx-pair? _%$%tl182338182356%_)
                                          (let ((_%$%e182339182359%_
                                                 (gx#syntax-e
                                                  _%$%tl182338182356%_)))
                                            (let ((_%$%hd182340182362%_
                                                   (##car _%$%e182339182359%_))
                                                  (_%$%tl182341182364%_
                                                   (##cdr _%$%e182339182359%_)))
                                              (let ((_%path182367%_
                                                     _%$%hd182340182362%_))
                                                (if (gx#stx-null?
                                                     _%$%tl182341182364%_)
                                                    (if (gx#stx-string?
                                                         _%path182367%_)
                                                        (let* ((_%rpath182369%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path182367%_
                         (gx#stx-source _%hd182330%_)))
                       (_%block182371%_
                        (gx#core-expand-include%__%
                         _%hd182330%_
                         _%rpath182369%_))
                       (_%rbody182374%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block182371%_
                            _%expand-special182218%_
                            '#f
                            _%expand-e182220%_))
                         gx#current-expander-path
                         (cons _%rpath182369%_ (gx#current-expander-path)))))
                  (_%K182226%_
                   _%rest182331%_
                   (foldr__0 cons _%r182332%_ _%rbody182374%_)))
                (_%$%E182335182347%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E182335182347%_)))))
                                          (_%$%E182335182347%_))))
                                  (_%$%E182335182347%_)))))
                      (_%$%E182334182377%_))))
                 (_%expand-expression182225%_
                  (lambda (_%hd182326%_ _%rest182327%_ _%r182328%_)
                    (_%K182226%_
                     _%rest182327%_
                     (cons (_%expand-e182220%_ _%hd182326%_) _%r182328%_))))
                 (_%K182226%_
                  (lambda (_%rest182256%_ _%r182257%_)
                    (let* ((_%$%e182258182265%_ _%rest182256%_)
                           (_%$%E182260182269%_
                            (lambda ()
                              (if _%begin-form182219%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form182219%_
                                    (reverse _%r182257%_))
                                   (gx#stx-source _%stx182217%_))
                                  _%r182257%_)))
                           (_%$%E182259182322%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e182258182265%_)
                                  (let ((_%$%e182261182273%_
                                         (gx#syntax-e _%$%e182258182265%_)))
                                    (let ((_%$%hd182262182276%_
                                           (##car _%$%e182261182273%_))
                                          (_%$%tl182263182278%_
                                           (##cdr _%$%e182261182273%_)))
                                      (let* ((_%hd182281%_
                                              _%$%hd182262182276%_)
                                             (_%rest182283%_
                                              _%$%tl182263182278%_)
                                             (_%hd182285%_
                                              (gx#core-expand-head
                                               _%hd182281%_))
                                             (_%$%e182286182293%_ _%hd182285%_)
                                             (_%$%E182288182297%_
                                              (lambda ()
                                                (_%expand-expression182225%_
                                                 _%hd182285%_
                                                 _%rest182283%_
                                                 _%r182257%_)))
                                             (_%$%E182287182318%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e182286182293%_)
                                                    (let ((_%$%e182289182301%_
                                                           (gx#syntax-e
                                                            _%$%e182286182293%_)))
                                                      (let ((_%$%hd182290182304%_
                                                             (##car _%$%e182289182301%_))
                                                            (_%$%tl182291182306%_
                                                             (##cdr _%$%e182289182301%_)))
                                                        (let* ((_%form182309%_
                                                                _%$%hd182290182304%_)
                                                               (_%body182311%_
                                                                _%$%tl182291182306%_)
                                                               (_%bind182313%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form182309%_)
                            (gx#resolve-identifier__0 _%form182309%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind182313%_)
                      (let ((_%$e182315%_
                             (##unchecked-structure-ref
                              _%bind182313%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e182315%_)
                            (_%expand-splice182222%_
                             _%hd182285%_
                             _%body182311%_
                             _%rest182283%_
                             _%r182257%_)
                            (if (eq? '%#cond-expand _%$e182315%_)
                                (_%expand-cond-expand182223%_
                                 _%hd182285%_
                                 _%rest182283%_
                                 _%r182257%_)
                                (if (eq? '%#include _%$e182315%_)
                                    (_%expand-include182224%_
                                     _%hd182285%_
                                     _%rest182283%_
                                     _%r182257%_)
                                    (_%expand-special182218%_
                                     _%hd182285%_
                                     _%K182226%_
                                     _%rest182283%_
                                     _%r182257%_)))))
                      (_%expand-expression182225%_
                       _%hd182285%_
                       _%rest182283%_
                       _%r182257%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E182288182297%_)))))
                                        (_%$%E182287182318%_))))
                                  (_%$%E182260182269%_)))))
                      (_%$%E182259182322%_)))))
          (let* ((_%$%e182227182234%_ _%stx182217%_)
                 (_%$%E182229182238%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e182227182234%_)))
                 (_%$%E182228182252%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e182227182234%_)
                        (let ((_%$%e182230182242%_
                               (gx#syntax-e _%$%e182227182234%_)))
                          (let ((_%$%hd182231182245%_
                                 (##car _%$%e182230182242%_))
                                (_%$%tl182232182247%_
                                 (##cdr _%$%e182230182242%_)))
                            (let ((_%body182250%_ _%$%tl182232182247%_))
                              (if (gx#stx-list? _%body182250%_)
                                  (_%K182226%_ _%body182250%_ '())
                                  (_%$%E182229182238%_)))))
                        (_%$%E182229182238%_)))))
            (_%$%E182228182252%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx182393%_ _%expand-special182394%_)
        (let* ((_%begin-form182396%_ '%#begin)
               (_%expand-e182398%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx182393%_
           _%expand-special182394%_
           _%begin-form182396%_
           _%expand-e182398%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx182400%_ _%expand-special182401%_ _%begin-form182402%_)
        (let ((_%expand-e182404%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx182400%_
           _%expand-special182401%_
           _%begin-form182402%_
           _%expand-e182404%_))))
    (define gx#core-expand-block
      (lambda _g184307_
        (let ((_g184308_ (##length _g184307_)))
          (cond ((##fx= _g184308_ 2) (apply gx#core-expand-block__0 _g184307_))
                ((##fx= _g184308_ 3) (apply gx#core-expand-block__1 _g184307_))
                ((##fx= _g184308_ 4) (apply gx#core-expand-block__% _g184307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g184307_))))))
    (define gx#core-expand-block*
      (lambda (_%stx182165%_ _%expand-special182166%_)
        (let* ((_%$%g182167182178%_
                (gx#core-expand-block__1
                 _%stx182165%_
                 _%expand-special182166%_
                 '#f))
               (_%$%E182171182182%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g182167182178%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%$%K182176182213%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx182165%_)))
                (_%$%K182173182199%_ (lambda (_%expr182197%_) _%expr182197%_))
                (_%$%K182172182188%_
                 (lambda (_%body182186%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body182186%_))
                    (gx#stx-source _%stx182165%_)))))
            (let ((_%$%try-match182169182209%_
                   (lambda ()
                     (if (pair? _%$%g182167182178%_)
                         (let ((_%$%tl182175182204%_
                                (##cdr _%$%g182167182178%_))
                               (_%$%hd182174182202%_
                                (##car _%$%g182167182178%_)))
                           (if (null? _%$%tl182175182204%_)
                               (let ((_%expr182207%_ _%$%hd182174182202%_))
                                 (_%$%K182173182199%_ _%expr182207%_))
                               (let ((_%body182191%_ _%$%g182167182178%_))
                                 (_%$%K182172182188%_ _%body182191%_))))
                         (let ((_%body182191%_ _%$%g182167182178%_))
                           (_%$%K182172182188%_ _%body182191%_))))))
              (if (null? _%$%g182167182178%_)
                  (_%$%K182176182213%_)
                  (_%$%try-match182169182209%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx181991%_)
        (letrec ((_%satisfied?181993%_
                  (lambda (_%condition182094%_)
                    (let* ((_%$%e182095182110%_ _%condition182094%_)
                           (_%$%E182105182114%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e182095182110%_)))
                           (_%$%E182098182133%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e182095182110%_)
                                  (let ((_%$%e182106182118%_
                                         (gx#syntax-e _%$%e182095182110%_)))
                                    (let ((_%$%hd182107182121%_
                                           (##car _%$%e182106182118%_))
                                          (_%$%tl182108182123%_
                                           (##cdr _%$%e182106182118%_)))
                                      (let* ((_%combinator182126%_
                                              _%$%hd182107182121%_)
                                             (_%body182128%_
                                              _%$%tl182108182123%_))
                                        (if (gx#stx-list? _%body182128%_)
                                            (let ((_%$e182130%_
                                                   (gx#stx-e
                                                    _%combinator182126%_)))
                                              (if (eq? 'not _%$e182130%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?181993%_
                                                        _%body182128%_))
                                                  (if (eq? 'and _%$e182130%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?181993%_
                                                       _%body182128%_)
                                                      (if (eq? 'or
                                                               _%$e182130%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?181993%_
                                                           _%body182128%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e182130%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body182128%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx181991%_
                       _%combinator182126%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E182105182114%_)))))
                                  (_%$%E182105182114%_))))
                           (_%$%E182097182155%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e182095182110%_)
                                  (let ((_%$%e182099182137%_
                                         (gx#syntax-e _%$%e182095182110%_)))
                                    (let ((_%$%hd182100182140%_
                                           (##car _%$%e182099182137%_))
                                          (_%$%tl182101182142%_
                                           (##cdr _%$%e182099182137%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd182100182140%_)
                                               (gx#core-identifier=?
                                                _%$%hd182100182140%_
                                                'unquote))
                                          (if (gx#stx-pair?
                                               _%$%tl182101182142%_)
                                              (let ((_%$%e182102182145%_
                                                     (gx#syntax-e
                                                      _%$%tl182101182142%_)))
                                                (let ((_%$%hd182103182148%_
                                                       (##car _%$%e182102182145%_))
                                                      (_%$%tl182104182150%_
                                                       (##cdr _%$%e182102182145%_)))
                                                  (let ((_%expr182153%_
                                                         _%$%hd182103182148%_))
                                                    (if (gx#stx-null?
                                                         _%$%tl182104182150%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr182153%_)
                                                        (_%$%E182098182133%_)))))
                                              (_%$%E182098182133%_))
                                          (_%$%E182098182133%_))))
                                  (_%$%E182098182133%_))))
                           (_%$%E182096182161%_
                            (lambda ()
                              (let ((_%id182159%_ _%$%e182095182110%_))
                                (if (gx#identifier? _%id182159%_)
                                    (gx#core-bound-identifier?__%
                                     _%id182159%_
                                     gx#feature-binding?)
                                    (_%$%E182097182155%_))))))
                      (_%$%E182096182161%_))))
                 (_%loop181994%_
                  (lambda (_%rest182024%_)
                    (let* ((_%$%e182025182033%_ _%rest182024%_)
                           (_%$%E182031182037%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e182025182033%_)))
                           (_%$%E182027182041%_
                            (lambda ()
                              (if (gx#stx-null? _%$%e182025182033%_)
                                  '()
                                  (_%$%E182031182037%_))))
                           (_%$%E182026182090%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e182025182033%_)
                                  (let ((_%$%e182028182045%_
                                         (gx#syntax-e _%$%e182025182033%_)))
                                    (let ((_%$%hd182029182048%_
                                           (##car _%$%e182028182045%_))
                                          (_%$%tl182030182050%_
                                           (##cdr _%$%e182028182045%_)))
                                      (let* ((_%hd182053%_
                                              _%$%hd182029182048%_)
                                             (_%rest182055%_
                                              _%$%tl182030182050%_)
                                             (_%$%e182056182063%_ _%hd182053%_)
                                             (_%$%E182058182067%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%$%e182056182063%_)))
                                             (_%$%E182057182086%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e182056182063%_)
                                                    (let ((_%$%e182059182071%_
                                                           (gx#syntax-e
                                                            _%$%e182056182063%_)))
                                                      (let ((_%$%hd182060182074%_
                                                             (##car _%$%e182059182071%_))
                                                            (_%$%tl182061182076%_
                                                             (##cdr _%$%e182059182071%_)))
                                                        (let* ((_%condition182079%_
                                                                _%$%hd182060182074%_)
                                                               (_%body182081%_
                                                                _%$%tl182061182076%_))
                                                          (if (gx#stx-eq?
                                                               _%condition182079%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest182055%_)
                          _%body182081%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx181991%_
                           _%hd182053%_))
                      (if (_%satisfied?181993%_ _%condition182079%_)
                          _%body182081%_
                          (_%loop181994%_ _%rest182055%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E182058182067%_)))))
                                        (_%$%E182057182086%_))))
                                  (_%$%E182027182041%_)))))
                      (_%$%E182026182090%_)))))
          (let* ((_%$%e181995182002%_ _%stx181991%_)
                 (_%$%E181997182006%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e181995182002%_)))
                 (_%$%E181996182020%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e181995182002%_)
                        (let ((_%$%e181998182010%_
                               (gx#syntax-e _%$%e181995182002%_)))
                          (let ((_%$%hd181999182013%_
                                 (##car _%$%e181998182010%_))
                                (_%$%tl182000182015%_
                                 (##cdr _%$%e181998182010%_)))
                            (let ((_%clauses182018%_ _%$%tl182000182015%_))
                              (if (gx#stx-list? _%clauses182018%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop181994%_ _%clauses182018%_))
                                  (_%$%E181997182006%_)))))
                        (_%$%E181997182006%_)))))
            (_%$%E181996182020%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx181934%_ _%rpath181935%_)
        (let* ((_%$%e181936181946%_ _%stx181934%_)
               (_%$%E181938181950%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e181936181946%_)))
               (_%$%E181937181977%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e181936181946%_)
                      (let ((_%$%e181939181954%_
                             (gx#syntax-e _%$%e181936181946%_)))
                        (let ((_%$%hd181940181957%_
                               (##car _%$%e181939181954%_))
                              (_%$%tl181941181959%_
                               (##cdr _%$%e181939181954%_)))
                          (if (gx#stx-pair? _%$%tl181941181959%_)
                              (let ((_%$%e181942181962%_
                                     (gx#syntax-e _%$%tl181941181959%_)))
                                (let ((_%$%hd181943181965%_
                                       (##car _%$%e181942181962%_))
                                      (_%$%tl181944181967%_
                                       (##cdr _%$%e181942181962%_)))
                                  (let ((_%path181970%_ _%$%hd181943181965%_))
                                    (if (gx#stx-null? _%$%tl181944181967%_)
                                        (if (gx#stx-string? _%path181970%_)
                                            (let ((_%rpath181975%_
                                                   (let ((_%$e181972%_
                                                          _%rpath181935%_))
                                                     (if _%$e181972%_
                                                         _%$e181972%_
                                                         (gx#core-resolve-path__%
                                                          _%path181970%_
                                                          (gx#stx-source
                                                           _%stx181934%_))))))
                                              (if (member _%rpath181975%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx181934%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath181975%_))
                                                    (gx#stx-source
                                                     _%stx181934%_)))))
                                            (_%$%E181938181950%_))
                                        (_%$%E181938181950%_)))))
                              (_%$%E181938181950%_))))
                      (_%$%E181938181950%_)))))
          (_%$%E181937181977%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx181984%_)
        (let ((_%rpath181986%_ '#f))
          (gx#core-expand-include%__% _%stx181984%_ _%rpath181986%_))))
    (define gx#core-expand-include%
      (lambda _g184309_
        (let ((_g184310_ (##length _g184309_)))
          (cond ((##fx= _g184310_ 1)
                 (apply gx#core-expand-include%__0 _g184309_))
                ((##fx= _g184310_ 2)
                 (apply gx#core-expand-include%__% _g184309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g184309_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K181900%_ _%stx181901%_ _%method181902%_)
        (if (procedure? _%K181900%_)
            (let ((_%$e181905%_ (gx#stx-source _%stx181901%_)))
              (if _%$e181905%_
                  (gx#stx-wrap-source (_%K181900%_ _%stx181901%_) _%$e181905%_)
                  (_%K181900%_ _%stx181901%_)))
            (let ((_%$e181913%_
                   (bound-method-ref _%K181900%_ _%method181902%_)))
              (if _%$e181913%_
                  (gx#core-apply-expander__%
                   _%$e181913%_
                   _%stx181901%_
                   _%method181902%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx181901%_
                   _%method181902%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K181924%_ _%stx181925%_)
        (let ((_%method181927%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K181924%_
           _%stx181925%_
           _%method181927%_))))
    (define gx#core-apply-expander
      (lambda _g184311_
        (let ((_g184312_ (##length _g184311_)))
          (cond ((##fx= _g184312_ 2)
                 (apply gx#core-apply-expander__0 _g184311_))
                ((##fx= _g184312_ 3)
                 (apply gx#core-apply-expander__% _g184311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g184311_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self181885%_ _%stx181886%_)
        (let ((_%self181889%_ _%self181885%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx181886%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self181728%_ _%stx181729%_)
        (let* ((_%self181732%_ _%self181728%_)
               (_%$%self181741181747%_ _%self181732%_)
               (_%$%E181743181750%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self181741181747%_
                         '((macro-expander K)))
                  '#!void))
               (_%$%K181744181755%_
                (lambda (_%K181753%_)
                  (gx#core-apply-expander__0 _%K181753%_ _%stx181729%_)))
               (_%$%e181745181758%_
                (##unchecked-structure-ref _%$%self181741181747%_ '1 '#f '#f))
               (_%K181761%_ _%$%e181745181758%_))
          (_%$%K181744181755%_ _%K181761%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self181571%_ _%stx181572%_)
        (let ((_%self181575%_ _%self181571%_))
          (if (gx#sealed-syntax? _%stx181572%_)
              _%stx181572%_
              (let* ((_%$%self181584181590%_ _%self181575%_)
                     (_%$%E181586181593%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%self181584181590%_
                               '((core-expander K)))
                        '#!void))
                     (_%$%K181587181598%_
                      (lambda (_%K181596%_)
                        (gx#core-apply-expander__0 _%K181596%_ _%stx181572%_)))
                     (_%$%e181588181601%_
                      (##unchecked-structure-ref
                       _%$%self181584181590%_
                       '1
                       '#f
                       '#f))
                     (_%K181604%_ _%$%e181588181601%_))
                (_%$%K181587181598%_ _%K181604%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self181421%_ _%stx181422%_ _%top?181423%_)
        (let ((_%self181426%_ _%self181421%_))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin
                (displayln '"@expand " (gx#syntax->datum _%stx181422%_))
                (force-output))
              '#!void)
          (if (_%top?181423%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self181426%_
               _%stx181422%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx181422%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self181440%_ _%stx181441%_)
        (let ((_%top?181443%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self181440%_
           _%stx181441%_
           _%top?181443%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g184313_
        (let ((_g184314_ (##length _g184313_)))
          (cond ((##fx= _g184314_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g184313_))
                ((##fx= _g184314_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g184313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g184313_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self181284%_ _%stx181285%_)
        (let ((_%self181288%_ _%self181284%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self181288%_
           _%stx181285%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self181099%_ _%stx181100%_)
        (let* ((_%self181103%_ _%self181099%_)
               (_%$%self181112181118%_ _%self181103%_)
               (_%$%E181114181121%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self181112181118%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%$%K181115181154%_
                (lambda (_%id181124%_)
                  (let* ((_%$%e181125181132%_ _%stx181100%_)
                         (_%$%E181127181136%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%$%e181125181132%_)))
                         (_%$%E181126181150%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e181125181132%_)
                                (let ((_%$%e181128181140%_
                                       (gx#syntax-e _%$%e181125181132%_)))
                                  (let ((_%$%hd181129181143%_
                                         (##car _%$%e181128181140%_))
                                        (_%$%tl181130181145%_
                                         (##cdr _%$%e181128181140%_)))
                                    (let ((_%body181148%_
                                           _%$%tl181130181145%_))
                                      (gx#core-cons
                                       _%id181124%_
                                       _%body181148%_))))
                                (_%$%E181127181136%_)))))
                    (_%$%E181126181150%_))))
               (_%$%e181116181157%_
                (##unchecked-structure-ref _%$%self181112181118%_ '1 '#f '#f))
               (_%id181160%_ _%$%e181116181157%_))
          (_%$%K181115181154%_ _%id181160%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self180926%_ _%stx180927%_ _%method180928%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx180927%_))
              (force-output))
            '#!void)
        (let* ((_%$%self180929180937%_ _%self180926%_)
               (_%$%E180931180940%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self180929180937%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%$%K180932180947%_
                (lambda (_%phi180943%_ _%ctx180944%_ _%K180945%_)
                  (gx#core-apply-user-macro
                   _%K180945%_
                   _%stx180927%_
                   _%ctx180944%_
                   _%phi180943%_
                   _%method180928%_))))
          (if (##structure-instance-of?
               _%$%self180929180937%_
               'gx#user-expander::t)
              (let* ((_%$%e180933180950%_
                      (##unchecked-structure-ref
                       _%$%self180929180937%_
                       '1
                       '#f
                       '#f))
                     (_%K180953%_ _%$%e180933180950%_)
                     (_%$%e180934180955%_
                      (##unchecked-structure-ref
                       _%$%self180929180937%_
                       '2
                       '#f
                       '#f))
                     (_%ctx180958%_ _%$%e180934180955%_)
                     (_%$%e180935180960%_
                      (##unchecked-structure-ref
                       _%$%self180929180937%_
                       '3
                       '#f
                       '#f))
                     (_%phi180963%_ _%$%e180935180960%_))
                (_%$%K180932180947%_ _%phi180963%_ _%ctx180958%_ _%K180953%_))
              (_%$%E180931180940%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self180968%_ _%stx180969%_)
        (let ((_%method180971%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self180968%_
           _%stx180969%_
           _%method180971%_))))
    (define gx#core-apply-user-expander
      (lambda _g184315_
        (let ((_g184316_ (##length _g184315_)))
          (cond ((##fx= _g184316_ 2)
                 (apply gx#core-apply-user-expander__0 _g184315_))
                ((##fx= _g184316_ 3)
                 (apply gx#core-apply-user-expander__% _g184315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g184315_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K180916%_
               _%stx180917%_
               _%ctx180918%_
               _%phi180919%_
               _%method180920%_)
        (let ((_%mark180922%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx180918%_
                _%phi180919%_
                _%stx180917%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K180916%_
               (gx#stx-apply-mark _%stx180917%_ _%mark180922%_)
               _%method180920%_)
              _%mark180922%_))
           gx#current-expander-marks
           (cons _%mark180922%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx180764%_ _%phi180765%_ _%ctx180766%_)
        (let _%lp180768%_ ((_%bind180770%_
                            (gx#core-resolve-identifier__%
                             _%stx180764%_
                             _%phi180765%_
                             _%ctx180766%_)))
          (if (##structure-direct-instance-of?
               _%bind180770%_
               'gx#import-binding::t)
              (_%lp180768%_
               (##unchecked-structure-ref _%bind180770%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind180770%_
                   'gx#alias-binding::t)
                  (_%lp180768%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind180770%_ '5 '#f '#f)
                    _%phi180765%_
                    _%ctx180766%_))
                  _%bind180770%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx180778%_)
        (let* ((_%phi180780%_ (gx#current-expander-phi))
               (_%ctx180782%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx180778%_
           _%phi180780%_
           _%ctx180782%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx180784%_ _%phi180785%_)
        (let ((_%ctx180787%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx180784%_
           _%phi180785%_
           _%ctx180787%_))))
    (define gx#resolve-identifier
      (lambda _g184317_
        (let ((_g184318_ (##length _g184317_)))
          (cond ((##fx= _g184318_ 1)
                 (apply gx#resolve-identifier__0 _g184317_))
                ((##fx= _g184318_ 2)
                 (apply gx#resolve-identifier__1 _g184317_))
                ((##fx= _g184318_ 3)
                 (apply gx#resolve-identifier__% _g184317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g184317_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx180719%_
               _%val180720%_
               _%rebind?180721%_
               _%phi180722%_
               _%ctx180723%_)
        (let ((_%rebind?180728%_
               (if (not _%rebind?180721%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?180721%_)
                       _%rebind?180721%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx180719%_)
           _%val180720%_
           _%rebind?180728%_
           _%phi180722%_
           _%ctx180723%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx180733%_ _%val180734%_)
        (let* ((_%rebind?180736%_ '#f)
               (_%phi180738%_ (gx#current-expander-phi))
               (_%ctx180740%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx180733%_
           _%val180734%_
           _%rebind?180736%_
           _%phi180738%_
           _%ctx180740%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx180742%_ _%val180743%_ _%rebind?180744%_)
        (let* ((_%phi180746%_ (gx#current-expander-phi))
               (_%ctx180748%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx180742%_
           _%val180743%_
           _%rebind?180744%_
           _%phi180746%_
           _%ctx180748%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx180750%_ _%val180751%_ _%rebind?180752%_ _%phi180753%_)
        (let ((_%ctx180755%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx180750%_
           _%val180751%_
           _%rebind?180752%_
           _%phi180753%_
           _%ctx180755%_))))
    (define gx#bind-identifier!
      (lambda _g184319_
        (let ((_g184320_ (##length _g184319_)))
          (cond ((##fx= _g184320_ 2) (apply gx#bind-identifier!__0 _g184319_))
                ((##fx= _g184320_ 3) (apply gx#bind-identifier!__1 _g184319_))
                ((##fx= _g184320_ 4) (apply gx#bind-identifier!__2 _g184319_))
                ((##fx= _g184320_ 5) (apply gx#bind-identifier!__% _g184319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g184319_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx180685%_ _%phi180686%_ _%ctx180687%_)
        (let _%lp180689%_ ((_%e180691%_ _%stx180685%_)
                           (_%marks180692%_ (gx#current-expander-marks)))
          (if (symbol? _%e180691%_)
              (gx#core-resolve-binding
               _%e180691%_
               _%phi180686%_
               _%phi180686%_
               _%ctx180687%_
               (reverse _%marks180692%_))
              (if (gx#identifier-quote? _%e180691%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e180691%_ '1 '#f '#f)
                   _%phi180686%_
                   '0
                   (##unchecked-structure-ref _%e180691%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e180691%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e180691%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e180691%_ '1 '#f '#f)
                       _%phi180686%_
                       _%phi180686%_
                       _%ctx180687%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e180691%_ '3 '#f '#f)
                        _%marks180692%_))
                      (if (##structure-direct-instance-of?
                           _%e180691%_
                           'gx#syntax-wrap::t)
                          (_%lp180689%_
                           (##unchecked-structure-ref _%e180691%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e180691%_ '3 '#f '#f)
                            _%marks180692%_))
                          (if (##structure-instance-of?
                               _%e180691%_
                               'gerbil#AST::t)
                              (_%lp180689%_
                               (##unchecked-structure-ref
                                _%e180691%_
                                '1
                                '#f
                                '#f)
                               _%marks180692%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx180685%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx180703%_)
        (let* ((_%phi180705%_ (gx#current-expander-phi))
               (_%ctx180707%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx180703%_
           _%phi180705%_
           _%ctx180707%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx180709%_ _%phi180710%_)
        (let ((_%ctx180712%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx180709%_
           _%phi180710%_
           _%ctx180712%_))))
    (define gx#core-resolve-identifier
      (lambda _g184321_
        (let ((_g184322_ (##length _g184321_)))
          (cond ((##fx= _g184322_ 1)
                 (apply gx#core-resolve-identifier__0 _g184321_))
                ((##fx= _g184322_ 2)
                 (apply gx#core-resolve-identifier__1 _g184321_))
                ((##fx= _g184322_ 3)
                 (apply gx#core-resolve-identifier__% _g184321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g184321_))))))
    (define gx#core-resolve-binding
      (lambda (_%id180596%_
               _%phi180597%_
               _%src-phi180598%_
               _%ctx180599%_
               _%marks180600%_)
        (letrec ((_%resolve180602%_
                  (lambda (_%ctx180669%_ _%src-phi180670%_ _%key180671%_)
                    (let _%lp180673%_ ((_%ctx180675%_
                                        (gx#core-context-shift
                                         _%ctx180669%_
                                         _%phi180597%_))
                                       (_%dphi180676%_
                                        (fx- _%phi180597%_ _%src-phi180670%_)))
                      (let ((_%$e180678%_
                             (gx#core-context-resolve
                              _%ctx180675%_
                              _%key180671%_)))
                        (if _%$e180678%_
                            _%$e180678%_
                            (if (fxzero? _%dphi180676%_)
                                '#f
                                (if (fxpositive? _%dphi180676%_)
                                    (_%lp180673%_
                                     (gx#core-context-shift _%ctx180675%_ '-1)
                                     (##fx- _%dphi180676%_ '1))
                                    (_%lp180673%_
                                     (gx#core-context-shift _%ctx180675%_ '1)
                                     (##fx+ _%dphi180676%_ '1))))))))))
          (let _%lp180604%_ ((_%ctx180606%_ _%ctx180599%_)
                             (_%src-phi180607%_ _%src-phi180598%_)
                             (_%rest180608%_ _%marks180600%_))
            (let* ((_%$%rest180609180617%_ _%rest180608%_)
                   (_%$%else180611180625%_
                    (lambda ()
                      (_%resolve180602%_
                       _%ctx180606%_
                       _%src-phi180607%_
                       _%id180596%_)))
                   (_%$%K180613180657%_
                    (lambda (_%rest180628%_ _%hd180629%_)
                      (let* ((_%$%hd180630180636%_ _%hd180629%_)
                             (_%$%E180632180639%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%hd180630180636%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%$%K180633180649%_
                              (lambda (_%subst180642%_)
                                (let ((_%$e180646%_
                                       (let ((_%key180644%_
                                              (if _%subst180642%_
                                                  (hash-get
                                                   _%subst180642%_
                                                   _%id180596%_)
                                                  '#f)))
                                         (if _%key180644%_
                                             (_%resolve180602%_
                                              _%ctx180606%_
                                              _%src-phi180607%_
                                              _%key180644%_)
                                             '#f))))
                                  (if _%$e180646%_
                                      _%$e180646%_
                                      (_%lp180604%_
                                       (##unchecked-structure-ref
                                        _%hd180629%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd180629%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest180628%_))))))
                        (if (##structure-instance-of?
                             _%$%hd180630180636%_
                             'gx#expander-mark::t)
                            (let* ((_%$%e180634180652%_
                                    (##unchecked-structure-ref
                                     _%$%hd180630180636%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst180655%_ _%$%e180634180652%_))
                              (_%$%K180633180649%_ _%subst180655%_))
                            (_%$%E180632180639%_))))))
              (if (pair? _%$%rest180609180617%_)
                  (let ((_%$%hd180614180660%_ (##car _%$%rest180609180617%_))
                        (_%$%tl180615180662%_ (##cdr _%$%rest180609180617%_)))
                    (let* ((_%hd180665%_ _%$%hd180614180660%_)
                           (_%rest180667%_ _%$%tl180615180662%_))
                      (_%$%K180613180657%_ _%rest180667%_ _%hd180665%_)))
                  (_%$%else180611180625%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key180467%_
               _%val180468%_
               _%rebind?180469%_
               _%phi180470%_
               _%ctx180471%_)
        (letrec ((_%update-binding180473%_
                  (lambda (_%xval180545%_)
                    (if (or (_%rebind?180469%_
                             _%ctx180471%_
                             _%xval180545%_
                             _%val180468%_)
                            (and (##structure-direct-instance-of?
                                  _%xval180545%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval180545%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val180468%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val180468%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval180545%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val180468%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val180468%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval180545%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val180468%_
                        (if (and (##structure-direct-instance-of?
                                  _%val180468%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val180468%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval180545%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val180468%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval180545%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval180545%_
                            (if (and (##structure-direct-instance-of?
                                      _%val180468%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval180545%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key180467%_
                                 (cons (##unchecked-structure-ref
                                        _%val180468%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val180468%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval180545%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval180545%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval180545%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval180545%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key180467%_
                                 _%val180468%_
                                 _%xval180545%_))))))
                 (_%gensubst180474%_
                  (lambda (_%subst180540%_ _%id180541%_)
                    (let ((_%eid180543%_
                           (gensym (if (uninterned-symbol? _%id180541%_)
                                       '%
                                       _%id180541%_))))
                      (hash-put! _%subst180540%_ _%id180541%_ _%eid180543%_)
                      _%eid180543%_)))
                 (_%subst!180475%_
                  (lambda (_%key180477%_)
                    (let* ((_%$%key180478180486%_ _%key180477%_)
                           (_%$%else180480180494%_ (lambda () _%key180477%_))
                           (_%$%K180482180528%_
                            (lambda (_%mark180497%_ _%id180498%_)
                              (let* ((_%$%mark180499180505%_ _%mark180497%_)
                                     (_%$%E180501180508%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark180499180505%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K180502180520%_
                                      (lambda (_%subst180511%_)
                                        (if (not _%subst180511%_)
                                            (let ((_%subst180514%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark180497%_
                                               _%subst180514%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst180474%_
                                               _%subst180514%_
                                               _%id180498%_))
                                            (let ((_%$e180516%_
                                                   (hash-get
                                                    _%subst180511%_
                                                    _%id180498%_)))
                                              (if _%$e180516%_
                                                  _%$e180516%_
                                                  (_%gensubst180474%_
                                                   _%subst180511%_
                                                   _%id180498%_)))))))
                                (if (##structure-instance-of?
                                     _%$%mark180499180505%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e180503180523%_
                                            (##unchecked-structure-ref
                                             _%$%mark180499180505%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst180526%_
                                            _%$%e180503180523%_))
                                      (_%$%K180502180520%_ _%subst180526%_))
                                    (_%$%E180501180508%_))))))
                      (if (pair? _%$%key180478180486%_)
                          (let ((_%$%hd180483180531%_
                                 (##car _%$%key180478180486%_))
                                (_%$%tl180484180533%_
                                 (##cdr _%$%key180478180486%_)))
                            (let* ((_%id180536%_ _%$%hd180483180531%_)
                                   (_%mark180538%_ _%$%tl180484180533%_))
                              (_%$%K180482180528%_
                               _%mark180538%_
                               _%id180536%_)))
                          (_%$%else180480180494%_))))))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin (displayln '"@bind " _%key180467%_) (force-output))
              '#!void)
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx180471%_ _%phi180470%_)
           (_%subst!180475%_ _%key180467%_)
           _%val180468%_
           _%update-binding180473%_))))
    (define gx#core-bind!__0
      (lambda (_%key180566%_ _%val180567%_)
        (let* ((_%rebind?180569%_ false)
               (_%phi180571%_ (gx#current-expander-phi))
               (_%ctx180573%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key180566%_
           _%val180567%_
           _%rebind?180569%_
           _%phi180571%_
           _%ctx180573%_))))
    (define gx#core-bind!__1
      (lambda (_%key180575%_ _%val180576%_ _%rebind?180577%_)
        (let* ((_%phi180579%_ (gx#current-expander-phi))
               (_%ctx180581%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key180575%_
           _%val180576%_
           _%rebind?180577%_
           _%phi180579%_
           _%ctx180581%_))))
    (define gx#core-bind!__2
      (lambda (_%key180583%_ _%val180584%_ _%rebind?180585%_ _%phi180586%_)
        (let ((_%ctx180588%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key180583%_
           _%val180584%_
           _%rebind?180585%_
           _%phi180586%_
           _%ctx180588%_))))
    (define gx#core-bind!
      (lambda _g184323_
        (let ((_g184324_ (##length _g184323_)))
          (cond ((##fx= _g184324_ 2) (apply gx#core-bind!__0 _g184323_))
                ((##fx= _g184324_ 3) (apply gx#core-bind!__1 _g184323_))
                ((##fx= _g184324_ 4) (apply gx#core-bind!__2 _g184323_))
                ((##fx= _g184324_ 5) (apply gx#core-bind!__% _g184323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g184323_))))))
    (define gx#core-identifier-key
      (lambda (_%stx180398%_)
        (if (symbol? _%stx180398%_)
            (let* ((_%$%g180400180408%_ (gx#current-expander-marks))
                   (_%$%else180402180416%_ (lambda () _%stx180398%_))
                   (_%$%K180404180421%_
                    (lambda (_%hd180419%_) (cons _%stx180398%_ _%hd180419%_))))
              (if (pair? _%$%g180400180408%_)
                  (let* ((_%$%hd180405180424%_ (##car _%$%g180400180408%_))
                         (_%hd180427%_ _%$%hd180405180424%_))
                    (_%$%K180404180421%_ _%hd180427%_))
                  (_%$%else180402180416%_)))
            (if (gx#identifier? _%stx180398%_)
                (let* ((_%id180430%_ (gx#syntax-local-unwrap _%stx180398%_))
                       (_%eid180432%_ (gx#stx-e _%id180430%_))
                       (_%marks180434%_
                        (gx#stx-identifier-marks* _%id180430%_))
                       (_%$%marks180436180444%_ _%marks180434%_)
                       (_%$%else180438180452%_ (lambda () _%eid180432%_))
                       (_%$%K180440180457%_
                        (lambda (_%hd180455%_)
                          (cons _%eid180432%_ _%hd180455%_))))
                  (if (pair? _%$%marks180436180444%_)
                      (let* ((_%$%hd180441180460%_
                              (##car _%$%marks180436180444%_))
                             (_%hd180463%_ _%$%hd180441180460%_))
                        (_%$%K180440180457%_ _%hd180463%_))
                      (_%$%else180438180452%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx180398%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx180337%_ _%phi180338%_)
        (letrec ((_%make-phi180340%_
                  (lambda (_%super180396%_)
                    (let ((__obj184294
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj184294
                       (##gensym 'phi)
                       _%super180396%_)
                      __obj184294)))
                 (_%make-phi/up180341%_
                  (lambda (_%ctx180391%_ _%super180392%_)
                    (let ((_%ctx+1180394%_
                           (_%make-phi180340%_ _%super180392%_)))
                      (##unchecked-structure-set!
                       _%ctx180391%_
                       _%ctx+1180394%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1180394%_
                       _%ctx180391%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1180394%_)))
                 (_%make-phi/down180342%_
                  (lambda (_%ctx180386%_ _%super180387%_)
                    (let ((_%ctx-1180389%_
                           (_%make-phi180340%_ _%super180387%_)))
                      (##unchecked-structure-set!
                       _%ctx-1180389%_
                       _%ctx180386%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx180386%_
                       _%ctx-1180389%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1180389%_)))
                 (_%shift180343%_
                  (lambda (_%ctx180369%_
                           _%delta180370%_
                           _%make-delta-context180371%_
                           _%phi180372%_
                           _%K180373%_)
                    (let ((_%$e180375%_
                           (##unchecked-structure-ref
                            _%ctx180369%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e180375%_
                          (let* ((_%super180380%_
                                  (_%K180373%_ _%$e180375%_ _%delta180370%_))
                                 (_%ctx+d180382%_
                                  (_%make-delta-context180371%_
                                   _%ctx180369%_
                                   _%super180380%_)))
                            (_%K180373%_
                             _%ctx+d180382%_
                             (fx- _%phi180372%_ _%delta180370%_)))
                          (error '"Bad context" _%ctx180369%_))))))
          (let _%K180345%_ ((_%ctx180347%_ _%ctx180337%_)
                            (_%phi180348%_ _%phi180338%_))
            (if (fxzero? _%phi180348%_)
                _%ctx180347%_
                (if (##structure-instance-of? _%ctx180347%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi180348%_)
                        (let ((_%$e180352%_
                               (##unchecked-structure-ref
                                _%ctx180347%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e180352%_
                              (_%K180345%_
                               _%$e180352%_
                               (##fx- _%phi180348%_ '1))
                              (_%shift180343%_
                               _%ctx180347%_
                               '1
                               _%make-phi/up180341%_
                               _%phi180348%_
                               _%K180345%_)))
                        (let ((_%$e180360%_
                               (##unchecked-structure-ref
                                _%ctx180347%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e180360%_
                              (_%K180345%_
                               _%$e180360%_
                               (##fx+ _%phi180348%_ '1))
                              (_%shift180343%_
                               _%ctx180347%_
                               '-1
                               _%make-phi/down180342%_
                               _%phi180348%_
                               _%K180345%_))))
                    _%ctx180347%_))))))
    (define gx#core-context-get
      (lambda (_%ctx180334%_ _%key180335%_)
        (hash-get
         (##unchecked-structure-ref _%ctx180334%_ '2 '#f '#f)
         _%key180335%_)))
    (define gx#core-context-put!
      (lambda (_%ctx180330%_ _%key180331%_ _%val180332%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx180330%_ '2 '#f '#f)
         _%key180331%_
         _%val180332%_)
        _%val180332%_))
    (define gx#core-context-resolve
      (lambda (_%ctx180316%_ _%key180317%_)
        (let _%lp180319%_ ((_%ctx180321%_ _%ctx180316%_))
          (let ((_%$e180323%_
                 (gx#core-context-get _%ctx180321%_ _%key180317%_)))
            (if _%$e180323%_
                _%$e180323%_
                (let ((_%$e180326%_
                       (if (##structure-instance-of?
                            _%ctx180321%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx180321%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e180326%_ (_%lp180319%_ _%$e180326%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx180305%_ _%key180306%_ _%val180307%_ _%rebind180308%_)
        (let ((_%$e180310%_ (gx#core-context-get _%ctx180305%_ _%key180306%_)))
          (if _%$e180310%_
              (gx#core-context-put!
               _%ctx180305%_
               _%key180306%_
               (_%rebind180308%_ _%$e180310%_))
              (gx#core-context-put!
               _%ctx180305%_
               _%key180306%_
               _%val180307%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx180280%_ _%stop?180281%_)
        (let _%lp180283%_ ((_%ctx180285%_ _%ctx180280%_))
          (if (_%stop?180281%_ _%ctx180285%_)
              _%ctx180285%_
              (if (##structure-instance-of? _%ctx180285%_ 'gx#phi-context::t)
                  (_%lp180283%_
                   (##unchecked-structure-ref _%ctx180285%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx180294%_ (gx#current-expander-context))
               (_%stop?180296%_ gx#top-context?))
          (gx#core-context-top__% _%ctx180294%_ _%stop?180296%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx180298%_)
        (let ((_%stop?180300%_ gx#top-context?))
          (gx#core-context-top__% _%ctx180298%_ _%stop?180300%_))))
    (define gx#core-context-top
      (lambda _g184325_
        (let ((_g184326_ (##length _g184325_)))
          (cond ((##fx= _g184326_ 0) (apply gx#core-context-top__0 _g184325_))
                ((##fx= _g184326_ 1) (apply gx#core-context-top__1 _g184325_))
                ((##fx= _g184326_ 2) (apply gx#core-context-top__% _g184325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g184325_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx180265%_)
        (let _%lp180267%_ ((_%ctx180269%_ _%ctx180265%_))
          (if (##structure-instance-of? _%ctx180269%_ 'gx#phi-context::t)
              (_%lp180267%_
               (##unchecked-structure-ref _%ctx180269%_ '3 '#f '#f))
              _%ctx180269%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx180275%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx180275%_))))
    (define gx#core-context-root
      (lambda _g184327_
        (let ((_g184328_ (##length _g184327_)))
          (cond ((##fx= _g184328_ 0) (apply gx#core-context-root__0 _g184327_))
                ((##fx= _g184328_ 1) (apply gx#core-context-root__% _g184327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g184327_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx180247%_ . _%ignore180248%_)
        (let ((_%$e180250%_ (gx#current-expander-allow-rebind?)))
          (if _%$e180250%_
              _%$e180250%_
              (if (##structure-instance-of? _%ctx180247%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx180247%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx180247%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx180257%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx180257%_))))
    (define gx#core-context-rebind?
      (lambda _g184329_
        (let ((_g184330_ (##length _g184329_)))
          (cond ((##fx= _g184330_ 0)
                 (apply gx#core-context-rebind?__0 _g184329_))
                ((##fx= _g184330_ 1)
                 (apply gx#core-context-rebind?__% _g184329_))
                ((##fx>= _g184330_ 1)
                 (apply gx#core-context-rebind?__% _g184329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g184329_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx180230%_)
        (let ((_%$e180232%_ (gx#core-context-top__1 _%ctx180230%_)))
          (if _%$e180232%_
              (if (##structure-instance-of? _%$e180232%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e180232%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx180242%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx180242%_))))
    (define gx#core-context-namespace
      (lambda _g184331_
        (let ((_g184332_ (##length _g184331_)))
          (cond ((##fx= _g184332_ 0)
                 (apply gx#core-context-namespace__0 _g184331_))
                ((##fx= _g184332_ 1)
                 (apply gx#core-context-namespace__% _g184331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g184331_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind180216%_ _%is?180217%_)
        (if (##structure-direct-instance-of?
             _%bind180216%_
             'gx#syntax-binding::t)
            (_%is?180217%_
             (##unchecked-structure-ref _%bind180216%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind180222%_)
        (let ((_%is?180224%_ gx#expander?))
          (gx#expander-binding?__% _%bind180222%_ _%is?180224%_))))
    (define gx#expander-binding?
      (lambda _g184333_
        (let ((_g184334_ (##length _g184333_)))
          (cond ((##fx= _g184334_ 1) (apply gx#expander-binding?__0 _g184333_))
                ((##fx= _g184334_ 2) (apply gx#expander-binding?__% _g184333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g184333_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind180213%_)
        (gx#expander-binding?__% _%bind180213%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind180211%_)
        (gx#expander-binding?__% _%bind180211%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind180205%_)
        (letrec ((_%direct-special-form?180207%_
                  (lambda (_%obj180209%_)
                    (##structure-direct-instance-of?
                     _%obj180209%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind180205%_
           _%direct-special-form?180207%_))))
    (define gx#special-form-binding?
      (lambda (_%bind180203%_)
        (gx#expander-binding?__% _%bind180203%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind180194%_)
        (letrec ((_%feature?180196%_
                  (lambda (_%e180198%_)
                    (let ((_%$e180200%_
                           (##structure-instance-of?
                            _%e180198%_
                            'gx#feature-expander::t)))
                      (if _%$e180200%_
                          _%$e180200%_
                          (##structure-instance-of?
                           _%e180198%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind180194%_ _%feature?180196%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind180192%_)
        (gx#expander-binding?__% _%bind180192%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id180179%_ _%bound?180180%_)
        (if (gx#identifier? _%id180179%_)
            (_%bound?180180%_ (gx#resolve-identifier__0 _%id180179%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id180185%_)
        (let ((_%bound?180187%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id180185%_ _%bound?180187%_))))
    (define gx#core-bound-identifier?
      (lambda _g184335_
        (let ((_g184336_ (##length _g184335_)))
          (cond ((##fx= _g184336_ 1)
                 (apply gx#core-bound-identifier?__0 _g184335_))
                ((##fx= _g184336_ 2)
                 (apply gx#core-bound-identifier?__% _g184335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g184335_))))))
    (define gx#core-identifier=?
      (lambda (_%x180169%_ _%y180170%_)
        (letrec ((_%y=?180172%_
                  (lambda (_%xid180176%_)
                    ((if (list? _%y180170%_) memq eq?)
                     _%xid180176%_
                     _%y180170%_))))
          (let ((_%bind180174%_ (gx#resolve-identifier__0 _%x180169%_)))
            (if (##structure-instance-of? _%bind180174%_ 'gx#binding::t)
                (_%y=?180172%_
                 (##unchecked-structure-ref _%bind180174%_ '1 '#f '#f))
                (_%y=?180172%_ (gx#stx-e _%x180169%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e180167%_)
        (if (interned-symbol? _%e180167%_)
            (string-index__0 (symbol->string _%e180167%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx180120%_ _%src180121%_ _%ctx180122%_ _%marks180123%_)
        (if (##structure? _%stx180120%_)
            (let ((_%$e180125%_ (gx#sealed-syntax-unwrap _%stx180120%_)))
              (if _%$e180125%_
                  _%$e180125%_
                  (if (gx#identifier? _%stx180120%_)
                      (let ((_%id180129%_
                             (gx#stx-unwrap__% _%stx180120%_ _%marks180123%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id180129%_ '1 '#f '#f)
                         (let ((_%$e180131%_
                                (##unchecked-structure-ref
                                 _%id180129%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e180131%_ _%$e180131%_ _%src180121%_))
                         _%ctx180122%_
                         (##unchecked-structure-ref _%id180129%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx180120%_)
                       (let ((_%$e180135%_ (gx#stx-source _%stx180120%_)))
                         (if _%$e180135%_ _%$e180135%_ _%src180121%_))
                       _%ctx180122%_
                       (reverse _%marks180123%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx180120%_
             _%src180121%_
             _%ctx180122%_
             (reverse _%marks180123%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx180141%_)
        (let* ((_%src180143%_ '#f)
               (_%ctx180145%_ (gx#current-expander-context))
               (_%marks180147%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx180141%_
           _%src180143%_
           _%ctx180145%_
           _%marks180147%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx180149%_ _%src180150%_)
        (let* ((_%ctx180152%_ (gx#current-expander-context))
               (_%marks180154%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx180149%_
           _%src180150%_
           _%ctx180152%_
           _%marks180154%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx180156%_ _%src180157%_ _%ctx180158%_)
        (let ((_%marks180160%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx180156%_
           _%src180157%_
           _%ctx180158%_
           _%marks180160%_))))
    (define gx#core-quote-syntax
      (lambda _g184337_
        (let ((_g184338_ (##length _g184337_)))
          (cond ((##fx= _g184338_ 1) (apply gx#core-quote-syntax__0 _g184337_))
                ((##fx= _g184338_ 2) (apply gx#core-quote-syntax__1 _g184337_))
                ((##fx= _g184338_ 3) (apply gx#core-quote-syntax__2 _g184337_))
                ((##fx= _g184338_ 4) (apply gx#core-quote-syntax__% _g184337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g184337_))))))
    (define gx#core-cons
      (lambda (_%hd180116%_ _%tl180117%_)
        (cons (gx#core-quote-syntax__0 _%hd180116%_) _%tl180117%_)))
    (define gx#core-list
      (lambda (_%hd180113%_ . _%rest180114%_)
        (cons (gx#core-quote-syntax__0 _%hd180113%_) _%rest180114%_)))
    (define gx#core-cons*
      (lambda (_%hd180110%_ . _%rest180111%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd180110%_) _%rest180111%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path180079%_ _%rel180080%_)
        (let ((_%path180097%_ (gx#stx-e _%stx-path180079%_))
              (_%reldir180098%_
               (let _%lp180082%_ ((_%relsrc180084%_
                                   (let ((_%$e180094%_
                                          (gx#stx-source _%stx-path180079%_)))
                                     (if _%$e180094%_
                                         _%$e180094%_
                                         _%rel180080%_))))
                 (if (##structure-instance-of? _%relsrc180084%_ 'gerbil#AST::t)
                     (_%lp180082%_
                      (let ((_%$e180087%_ (gx#stx-source _%relsrc180084%_)))
                        (if _%$e180087%_
                            _%$e180087%_
                            (gx#stx-e _%relsrc180084%_))))
                     (if (source-location-path? _%relsrc180084%_)
                         (path-directory
                          (source-location-path _%relsrc180084%_))
                         (if (string? _%relsrc180084%_)
                             (path-directory _%relsrc180084%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path180097%_ (path-normalize _%reldir180098%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path180103%_)
        (let ((_%rel180105%_ '#f))
          (gx#core-resolve-path__% _%stx-path180103%_ _%rel180105%_))))
    (define gx#core-resolve-path
      (lambda _g184339_
        (let ((_g184340_ (##length _g184339_)))
          (cond ((##fx= _g184340_ 1) (apply gx#core-resolve-path__0 _g184339_))
                ((##fx= _g184340_ 2) (apply gx#core-resolve-path__% _g184339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g184339_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr180035%_ _%ctx180036%_)
        (let* ((_%$%repr180037180044%_ _%repr180035%_)
               (_%$%E180039180048%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%repr180037180044%_
                         '([phi . subs]))
                  '#!void))
               (_%$%K180040180056%_
                (lambda (_%subs180051%_ _%phi180052%_)
                  (let ((_%subst180054%_
                         (if (null? _%subs180051%_)
                             '#f
                             (list->hash-table-eq _%subs180051%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst180054%_
                     _%ctx180036%_
                     _%phi180052%_
                     '#f)))))
          (if (pair? _%$%repr180037180044%_)
              (let ((_%$%hd180041180059%_ (##car _%$%repr180037180044%_))
                    (_%$%tl180042180061%_ (##cdr _%$%repr180037180044%_)))
                (let* ((_%phi180064%_ _%$%hd180041180059%_)
                       (_%subs180066%_ _%$%tl180042180061%_))
                  (_%$%K180040180056%_ _%subs180066%_ _%phi180064%_)))
              (_%$%E180039180048%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr180071%_)
        (let ((_%ctx180073%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr180071%_ _%ctx180073%_))))
    (define gx#core-deserialize-mark
      (lambda _g184341_
        (let ((_g184342_ (##length _g184341_)))
          (cond ((##fx= _g184342_ 1)
                 (apply gx#core-deserialize-mark__0 _g184341_))
                ((##fx= _g184342_ 2)
                 (apply gx#core-deserialize-mark__% _g184341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g184341_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx180032%_)
        (gx#stx-rewrap _%stx180032%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx180030%_)
        (gx#stx-unwrap__% _%stx180030%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx180000%_)
        (let* ((_%$%g180001180009%_ (gx#current-expander-marks))
               (_%$%else180003180017%_ (lambda () _%stx180000%_))
               (_%$%K180005180022%_
                (lambda (_%hd180020%_)
                  (gx#stx-apply-mark _%stx180000%_ _%hd180020%_))))
          (if (pair? _%$%g180001180009%_)
              (let* ((_%$%hd180006180025%_ (##car _%$%g180001180009%_))
                     (_%hd180028%_ _%$%hd180006180025%_))
                (_%$%K180005180022%_ _%hd180028%_))
              (_%$%else180003180017%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym179998%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym179998%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx179983%_ _%E179984%_)
        (let ((_%bind179986%_ (gx#resolve-identifier__0 _%stx179983%_)))
          (if (##structure-direct-instance-of?
               _%bind179986%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind179986%_ '5 '#f '#f)
              (_%E179984%_ _%stx179983%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx179991%_)
        (let ((_%E179993%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx179991%_ _%E179993%_))))
    (define gx#syntax-local-e
      (lambda _g184343_
        (let ((_g184344_ (##length _g184343_)))
          (cond ((##fx= _g184344_ 1) (apply gx#syntax-local-e__0 _g184343_))
                ((##fx= _g184344_ 2) (apply gx#syntax-local-e__% _g184343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g184343_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx179967%_ _%E179968%_)
        (let ((_%e179970%_ (gx#syntax-local-e__% _%stx179967%_ _%E179968%_)))
          (if (##structure-instance-of? _%e179970%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e179970%_ '1 '#f '#f)
              _%e179970%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx179975%_)
        (let ((_%E179977%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx179975%_ _%E179977%_))))
    (define gx#syntax-local-value
      (lambda _g184345_
        (let ((_g184346_ (##length _g184345_)))
          (cond ((##fx= _g184346_ 1)
                 (apply gx#syntax-local-value__0 _g184345_))
                ((##fx= _g184346_ 2)
                 (apply gx#syntax-local-value__% _g184345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g184345_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx179964%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx179964%_)))))
