(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1734278444)
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
      (lambda _%$args122484%_
        (apply make-instance gx#expander-context::t _%$args122484%_)))
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
      (lambda _%$args122481%_
        (apply make-instance gx#root-context::t _%$args122481%_)))
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
      (lambda _%$args122478%_
        (apply make-instance gx#phi-context::t _%$args122478%_)))
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
      (lambda _%$args122475%_
        (apply make-instance gx#top-context::t _%$args122475%_)))
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
      (lambda _%$args122472%_
        (apply make-instance gx#module-context::t _%$args122472%_)))
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
      (lambda _%$args122469%_
        (apply make-instance gx#prelude-context::t _%$args122469%_)))
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
      (lambda _%$args122466%_
        (apply make-instance gx#local-context::t _%$args122466%_)))
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
      (lambda (_%self119372122437%_ _%id122439%_ _%super122440%_)
        (let* ((_%self122442%_ _%self119372122437%_)
               (_%self122444%_ _%self122442%_))
          (if (##fx< '3 (##structure-length _%self122444%_))
              (begin
                (##unchecked-structure-set!
                 _%self122444%_
                 _%id122439%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122444%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122444%_
                 _%super122440%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self122444%_
                     '3
                     (##vector-length _%self122444%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self119372122457%_ _%id122458%_)
        (let ((_%super122460%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self119372122457%_
           _%id122458%_
           _%super122460%_))))
    (define gx#phi-context:::init!
      (lambda _g122527_
        (let ((_g122526_ (##length _g122527_)))
          (cond ((##fx= _g122526_ 2)
                 (apply gx#phi-context:::init!__0 _g122527_))
                ((##fx= _g122526_ 3)
                 (apply gx#phi-context:::init!__% _g122527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g122527_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self119373122288%_ _%super122290%_)
        (let* ((_%self122292%_ _%self119373122288%_)
               (_%self122294%_ _%self122292%_))
          (if (##fx< '3 (##structure-length _%self122294%_))
              (begin
                (##unchecked-structure-set!
                 _%self122294%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122294%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self122294%_
                 _%super122290%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self122294%_
                     '3
                     (##vector-length _%self122294%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self119373122307%_)
        (let ((_%super122309%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self119373122307%_ _%super122309%_))))
    (define gx#local-context:::init!
      (lambda _g122529_
        (let ((_g122528_ (##length _g122529_)))
          (cond ((##fx= _g122528_ 1)
                 (apply gx#local-context:::init!__0 _g122529_))
                ((##fx= _g122528_ 2)
                 (apply gx#local-context:::init!__% _g122529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g122529_))))))
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
      (lambda _%$args122162%_
        (apply make-instance gx#binding::t _%$args122162%_)))
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
      (lambda _%$args122159%_
        (apply make-instance gx#runtime-binding::t _%$args122159%_)))
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
      (lambda _%$args122156%_
        (apply make-instance gx#local-binding::t _%$args122156%_)))
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
      (lambda _%$args122153%_
        (apply make-instance gx#top-binding::t _%$args122153%_)))
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
      (lambda _%$args122150%_
        (apply make-instance gx#module-binding::t _%$args122150%_)))
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
      (lambda _%$args122147%_
        (apply make-instance gx#extern-binding::t _%$args122147%_)))
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
      (lambda _%$args122144%_
        (apply make-instance gx#syntax-binding::t _%$args122144%_)))
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
      (lambda _%$args122141%_
        (apply make-instance gx#import-binding::t _%$args122141%_)))
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
      (lambda _%$args122138%_
        (apply make-instance gx#alias-binding::t _%$args122138%_)))
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
      (lambda _%$args122135%_
        (apply make-instance gx#expander::t _%$args122135%_)))
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
      (lambda _%$args122132%_
        (apply make-instance gx#core-expander::t _%$args122132%_)))
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
      (lambda _%$args122129%_
        (apply make-instance gx#expression-form::t _%$args122129%_)))
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
      (lambda _%$args122126%_
        (apply make-instance gx#special-form::t _%$args122126%_)))
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
      (lambda _%$args122123%_
        (apply make-instance gx#definition-form::t _%$args122123%_)))
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
      (lambda _%$args122120%_
        (apply make-instance gx#top-special-form::t _%$args122120%_)))
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
      (lambda _%$args122117%_
        (apply make-instance gx#module-special-form::t _%$args122117%_)))
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
      (lambda _%$args122114%_
        (apply make-instance gx#feature-expander::t _%$args122114%_)))
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
      (lambda _%$args122111%_
        (apply make-instance gx#private-feature-expander::t _%$args122111%_)))
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
      (lambda _%$args122108%_
        (apply make-instance gx#reserved-expander::t _%$args122108%_)))
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
      (lambda _%$args122105%_
        (apply make-instance gx#macro-expander::t _%$args122105%_)))
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
      (lambda _%$args122102%_
        (apply make-instance gx#rename-macro-expander::t _%$args122102%_)))
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
      (lambda _%$args122099%_
        (apply make-instance gx#user-expander::t _%$args122099%_)))
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
      (lambda _%$args122096%_
        (apply make-instance gx#expander-mark::t _%$args122096%_)))
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
      (lambda (_%ctx122080%_
               _%message122081%_
               _%stx122082%_
               .
               _%details122083%_)
        (let ((_%ctx122094%_
               (let ((_%$e122085%_ _%ctx122080%_))
                 (if _%$e122085%_
                     _%$e122085%_
                     (let ((_%$e122088%_ (gx#core-context-top__0)))
                       (if _%$e122088%_
                           ((lambda (_%ctx122091%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx122091%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e122088%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message122081%_
                  (cons _%stx122082%_ _%details122083%_)
                  _%ctx122094%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx122067%_ _%expression?122068%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx122067%_ _%expression?122068%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx122073%_)
        (let ((_%expression?122075%_ '#f))
          (gx#eval-syntax__% _%stx122073%_ _%expression?122075%_))))
    (define gx#eval-syntax
      (lambda _g122531_
        (let ((_g122530_ (##length _g122531_)))
          (cond ((##fx= _g122530_ 1) (apply gx#eval-syntax__0 _g122531_))
                ((##fx= _g122530_ 2) (apply gx#eval-syntax__% _g122531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g122531_))))))
    (define gx#eval-syntax*
      (lambda (_%stx122064%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx122064%_))))
    (define gx#core-expand__%
      (lambda (_%stx122051%_ _%expression?122052%_)
        (if _%expression?122052%_
            (gx#core-expand-expression _%stx122051%_)
            (gx#core-expand-top _%stx122051%_))))
    (define gx#core-expand__0
      (lambda (_%stx122057%_)
        (let ((_%expression?122059%_ '#f))
          (gx#core-expand__% _%stx122057%_ _%expression?122059%_))))
    (define gx#core-expand
      (lambda _g122533_
        (let ((_g122532_ (##length _g122533_)))
          (cond ((##fx= _g122532_ 1) (apply gx#core-expand__0 _g122533_))
                ((##fx= _g122532_ 2) (apply gx#core-expand__% _g122533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g122533_))))))
    (define gx#core-expand-top
      (lambda (_%stx122018%_)
        (let* ((_%stx122020%_ (gx#core-expand*__0 _%stx122018%_))
               (_%e122021122028%_ _%stx122020%_)
               (_%E122023122032%_
                (lambda () (gx#core-expand-expression _%stx122020%_)))
               (_%E122022122046%_
                (lambda ()
                  (if (gx#stx-pair? _%e122021122028%_)
                      (let ((_%e122024122036%_
                             (gx#syntax-e _%e122021122028%_)))
                        (let ((_%hd122025122039%_ (##car _%e122024122036%_))
                              (_%tl122026122041%_ (##cdr _%e122024122036%_)))
                          (let ((_%form122044%_ _%hd122025122039%_))
                            (if (gx#core-bound-identifier?__0 _%form122044%_)
                                _%stx122020%_
                                (_%E122023122032%_)))))
                      (_%E122023122032%_)))))
          (_%E122022122046%_))))
    (define gx#core-expand-expression
      (lambda (_%stx121950%_)
        (letrec ((_%sealed-expression?121952%_
                  (lambda (_%hd121988%_)
                    (if (gx#sealed-syntax? _%hd121988%_)
                        (let* ((_%e121989121996%_ _%hd121988%_)
                               (_%E121991122000%_ (lambda () '#f))
                               (_%E121990122014%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e121989121996%_)
                                      (let ((_%e121992122004%_
                                             (gx#syntax-e _%e121989121996%_)))
                                        (let ((_%hd121993122007%_
                                               (##car _%e121992122004%_))
                                              (_%tl121994122009%_
                                               (##cdr _%e121992122004%_)))
                                          (let ((_%form122012%_
                                                 _%hd121993122007%_))
                                            (gx#core-bound-identifier?__%
                                             _%form122012%_
                                             gx#expression-form-binding?))))
                                      (_%E121991122000%_)))))
                          (_%E121990122014%_))
                        '#f)))
                 (_%illegal-expression121953%_
                  (lambda (_%hd121985%_ . _%_121986%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx121950%_
                     _%hd121985%_)))
                 (_%expand-e121954%_
                  (lambda (_%form121977%_ _%hd121978%_)
                    (let ((_%bind121980%_
                           (if (##structure-instance-of?
                                _%form121977%_
                                'gx#binding::t)
                               _%form121977%_
                               (gx#resolve-identifier__0 _%form121977%_))))
                      (if (gx#core-expander-binding? _%bind121980%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind121980%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd121978%_
                            (gx#stx-source _%stx121950%_)))
                          (if (##structure-direct-instance-of?
                               _%bind121980%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind121980%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd121978%_
                                 (gx#stx-source _%stx121950%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx121950%_
                               _%form121977%_)))))))
          (let ((_%hd121956%_ (gx#core-expand-head _%stx121950%_)))
            (if (_%sealed-expression?121952%_ _%hd121956%_)
                _%hd121956%_
                (if (gx#stx-pair? _%hd121956%_)
                    (let* ((_%form121960%_ (gx#stx-car _%hd121956%_))
                           (_%bind121962%_
                            (if (gx#identifier? _%form121960%_)
                                (gx#resolve-identifier__0 _%form121960%_)
                                '#f)))
                      (if (or (not _%bind121962%_)
                              (not (gx#core-expander-binding? _%bind121962%_)))
                          (_%expand-e121954%_
                           '%%app
                           (cons '%%app _%hd121956%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind121962%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd121956%_
                               _%illegal-expression121953%_)
                              (if (gx#expression-form-binding? _%bind121962%_)
                                  (_%expand-e121954%_
                                   _%bind121962%_
                                   _%hd121956%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind121962%_)
                                      (gx#core-expand-expression
                                       (_%expand-e121954%_
                                        _%bind121962%_
                                        _%hd121956%_))
                                      (_%illegal-expression121953%_
                                       _%hd121956%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd121956%_)
                        (_%illegal-expression121953%_ _%hd121956%_)
                        (if (gx#identifier? _%hd121956%_)
                            (_%expand-e121954%_
                             '%%ref
                             (cons '%%ref (cons _%hd121956%_ '())))
                            (if (gx#stx-datum? _%hd121956%_)
                                (_%expand-e121954%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd121956%_ '())))
                                (_%illegal-expression121953%_
                                 _%hd121956%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx121945%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx121948%_ (gx#core-expand-expression _%stx121945%_)))
             (values _%stx121948%_ (gx#eval-syntax* _%stx121948%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx121926%_ _%stop?121927%_)
        (let _%lp121929%_ ((_%stx121931%_ _%stx121926%_))
          (if (_%stop?121927%_ _%stx121931%_)
              _%stx121931%_
              (let ((_%rstx121933%_ (gx#core-expand1 _%stx121931%_)))
                (if (eq? _%stx121931%_ _%rstx121933%_)
                    _%stx121931%_
                    (_%lp121929%_ _%rstx121933%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx121938%_)
        (let ((_%stop?121940%_ false))
          (gx#core-expand*__% _%stx121938%_ _%stop?121940%_))))
    (define gx#core-expand*
      (lambda _g122535_
        (let ((_g122534_ (##length _g122535_)))
          (cond ((##fx= _g122534_ 1) (apply gx#core-expand*__0 _g122535_))
                ((##fx= _g122534_ 2) (apply gx#core-expand*__% _g122535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g122535_))))))
    (define gx#core-expand1
      (lambda (_%stx121878%_)
        (letrec ((_%step121880%_
                  (lambda (_%hd121917%_)
                    (let ((_%bind121919%_
                           (gx#resolve-identifier__0 _%hd121917%_)))
                      (if (##structure-instance-of?
                           _%bind121919%_
                           'gx#runtime-binding::t)
                          _%stx121878%_
                          (if (##structure-direct-instance-of?
                               _%bind121919%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind121919%_
                                '4
                                '#f
                                '#f)
                               _%stx121878%_)
                              (if (not _%bind121919%_)
                                  _%stx121878%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx121878%_))))))))
          (let* ((_%e121881121889%_ _%stx121878%_)
                 (_%E121887121893%_ (lambda () _%stx121878%_))
                 (_%E121883121899%_
                  (lambda ()
                    (let ((_%hd121897%_ _%e121881121889%_))
                      (if (gx#identifier? _%hd121897%_)
                          (_%step121880%_ _%hd121897%_)
                          (_%E121887121893%_)))))
                 (_%E121882121913%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121881121889%_)
                        (let ((_%e121884121903%_
                               (gx#syntax-e _%e121881121889%_)))
                          (let ((_%hd121885121906%_ (##car _%e121884121903%_))
                                (_%tl121886121908%_ (##cdr _%e121884121903%_)))
                            (let ((_%hd121911%_ _%hd121885121906%_))
                              (if (gx#identifier? _%hd121911%_)
                                  (_%step121880%_ _%hd121911%_)
                                  (_%E121883121899%_)))))
                        (_%E121883121899%_)))))
            (_%E121882121913%_)))))
    (define gx#core-expand-head
      (lambda (_%stx121844%_)
        (letrec ((_%stop?121846%_
                  (lambda (_%stx121848%_)
                    (let* ((_%e121849121856%_ _%stx121848%_)
                           (_%E121851121860%_ (lambda () '#f))
                           (_%E121850121874%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121849121856%_)
                                  (let ((_%e121852121864%_
                                         (gx#syntax-e _%e121849121856%_)))
                                    (let ((_%hd121853121867%_
                                           (##car _%e121852121864%_))
                                          (_%tl121854121869%_
                                           (##cdr _%e121852121864%_)))
                                      (let ((_%hd121872%_ _%hd121853121867%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd121872%_))))
                                  (_%E121851121860%_)))))
                      (_%E121850121874%_)))))
          (gx#core-expand*__% _%stx121844%_ _%stop?121846%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx121650%_
               _%expand-special121651%_
               _%begin-form121652%_
               _%expand-e121653%_)
        (letrec ((_%expand-splice121655%_
                  (lambda (_%hd121818%_
                           _%body121819%_
                           _%rest121820%_
                           _%r121821%_)
                    (if (gx#stx-list? _%body121819%_)
                        (_%K121659%_
                         (gx#stx-foldr cons _%rest121820%_ _%body121819%_)
                         _%r121821%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx121650%_
                         _%hd121818%_))))
                 (_%expand-cond-expand121656%_
                  (lambda (_%hd121814%_ _%rest121815%_ _%r121816%_)
                    (_%K121659%_
                     (cons (gx#core-expand-cond-expand% _%hd121814%_)
                           _%rest121815%_)
                     _%r121816%_)))
                 (_%expand-include121657%_
                  (lambda (_%hd121763%_ _%rest121764%_ _%r121765%_)
                    (let* ((_%e121766121776%_ _%hd121763%_)
                           (_%E121768121780%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121766121776%_)))
                           (_%E121767121810%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121766121776%_)
                                  (let ((_%e121769121784%_
                                         (gx#syntax-e _%e121766121776%_)))
                                    (let ((_%hd121770121787%_
                                           (##car _%e121769121784%_))
                                          (_%tl121771121789%_
                                           (##cdr _%e121769121784%_)))
                                      (if (gx#stx-pair? _%tl121771121789%_)
                                          (let ((_%e121772121792%_
                                                 (gx#syntax-e
                                                  _%tl121771121789%_)))
                                            (let ((_%hd121773121795%_
                                                   (##car _%e121772121792%_))
                                                  (_%tl121774121797%_
                                                   (##cdr _%e121772121792%_)))
                                              (let ((_%path121800%_
                                                     _%hd121773121795%_))
                                                (if (gx#stx-null?
                                                     _%tl121774121797%_)
                                                    (if (gx#stx-string?
                                                         _%path121800%_)
                                                        (let* ((_%rpath121802%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path121800%_
                         (gx#stx-source _%hd121763%_)))
                       (_%block121804%_
                        (gx#core-expand-include%__%
                         _%hd121763%_
                         _%rpath121802%_))
                       (_%rbody121807%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block121804%_
                            _%expand-special121651%_
                            '#f
                            _%expand-e121653%_))
                         gx#current-expander-path
                         (cons _%rpath121802%_ (gx#current-expander-path)))))
                  (_%K121659%_
                   _%rest121764%_
                   (__foldr1 cons _%r121765%_ _%rbody121807%_)))
                (_%E121768121780%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121768121780%_)))))
                                          (_%E121768121780%_))))
                                  (_%E121768121780%_)))))
                      (_%E121767121810%_))))
                 (_%expand-expression121658%_
                  (lambda (_%hd121759%_ _%rest121760%_ _%r121761%_)
                    (_%K121659%_
                     _%rest121760%_
                     (cons (_%expand-e121653%_ _%hd121759%_) _%r121761%_))))
                 (_%K121659%_
                  (lambda (_%rest121689%_ _%r121690%_)
                    (let* ((_%e121691121698%_ _%rest121689%_)
                           (_%E121693121702%_
                            (lambda ()
                              (if _%begin-form121652%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form121652%_
                                    (reverse _%r121690%_))
                                   (gx#stx-source _%stx121650%_))
                                  _%r121690%_)))
                           (_%E121692121755%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121691121698%_)
                                  (let ((_%e121694121706%_
                                         (gx#syntax-e _%e121691121698%_)))
                                    (let ((_%hd121695121709%_
                                           (##car _%e121694121706%_))
                                          (_%tl121696121711%_
                                           (##cdr _%e121694121706%_)))
                                      (let* ((_%hd121714%_ _%hd121695121709%_)
                                             (_%rest121716%_
                                              _%tl121696121711%_)
                                             (_%hd121718%_
                                              (gx#core-expand-head
                                               _%hd121714%_))
                                             (_%e121719121726%_ _%hd121718%_)
                                             (_%E121721121730%_
                                              (lambda ()
                                                (_%expand-expression121658%_
                                                 _%hd121718%_
                                                 _%rest121716%_
                                                 _%r121690%_)))
                                             (_%E121720121751%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e121719121726%_)
                                                    (let ((_%e121722121734%_
                                                           (gx#syntax-e
                                                            _%e121719121726%_)))
                                                      (let ((_%hd121723121737%_
                                                             (##car _%e121722121734%_))
                                                            (_%tl121724121739%_
                                                             (##cdr _%e121722121734%_)))
                                                        (let* ((_%form121742%_
                                                                _%hd121723121737%_)
                                                               (_%body121744%_
                                                                _%tl121724121739%_)
                                                               (_%bind121746%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form121742%_)
                            (gx#resolve-identifier__0 _%form121742%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind121746%_)
                      (let ((_%$e121748%_
                             (##unchecked-structure-ref
                              _%bind121746%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e121748%_)
                            (_%expand-splice121655%_
                             _%hd121718%_
                             _%body121744%_
                             _%rest121716%_
                             _%r121690%_)
                            (if (eq? '%#cond-expand _%$e121748%_)
                                (_%expand-cond-expand121656%_
                                 _%hd121718%_
                                 _%rest121716%_
                                 _%r121690%_)
                                (if (eq? '%#include _%$e121748%_)
                                    (_%expand-include121657%_
                                     _%hd121718%_
                                     _%rest121716%_
                                     _%r121690%_)
                                    (_%expand-special121651%_
                                     _%hd121718%_
                                     _%K121659%_
                                     _%rest121716%_
                                     _%r121690%_)))))
                      (_%expand-expression121658%_
                       _%hd121718%_
                       _%rest121716%_
                       _%r121690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121721121730%_)))))
                                        (_%E121720121751%_))))
                                  (_%E121693121702%_)))))
                      (_%E121692121755%_)))))
          (let* ((_%e121660121667%_ _%stx121650%_)
                 (_%E121662121671%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121660121667%_)))
                 (_%E121661121685%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121660121667%_)
                        (let ((_%e121663121675%_
                               (gx#syntax-e _%e121660121667%_)))
                          (let ((_%hd121664121678%_ (##car _%e121663121675%_))
                                (_%tl121665121680%_ (##cdr _%e121663121675%_)))
                            (let ((_%body121683%_ _%tl121665121680%_))
                              (if (gx#stx-list? _%body121683%_)
                                  (_%K121659%_ _%body121683%_ '())
                                  (_%E121662121671%_)))))
                        (_%E121662121671%_)))))
            (_%E121661121685%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx121826%_ _%expand-special121827%_)
        (let* ((_%begin-form121829%_ '%#begin)
               (_%expand-e121831%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121826%_
           _%expand-special121827%_
           _%begin-form121829%_
           _%expand-e121831%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx121833%_ _%expand-special121834%_ _%begin-form121835%_)
        (let ((_%expand-e121837%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx121833%_
           _%expand-special121834%_
           _%begin-form121835%_
           _%expand-e121837%_))))
    (define gx#core-expand-block
      (lambda _g122537_
        (let ((_g122536_ (##length _g122537_)))
          (cond ((##fx= _g122536_ 2) (apply gx#core-expand-block__0 _g122537_))
                ((##fx= _g122536_ 3) (apply gx#core-expand-block__1 _g122537_))
                ((##fx= _g122536_ 4) (apply gx#core-expand-block__% _g122537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g122537_))))))
    (define gx#core-expand-block*
      (lambda (_%stx121598%_ _%expand-special121599%_)
        (let* ((_%g121600121611%_
                (gx#core-expand-block__1
                 _%stx121598%_
                 _%expand-special121599%_
                 '#f))
               (_%E121604121615%_
                (lambda ()
                  (error '"No clause matching"
                         _%g121600121611%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K121609121646%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx121598%_)))
                (_%K121606121632%_ (lambda (_%expr121630%_) _%expr121630%_))
                (_%K121605121621%_
                 (lambda (_%body121619%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body121619%_))
                    (gx#stx-source _%stx121598%_)))))
            (let ((_%try-match121602121642%_
                   (lambda ()
                     (if (pair? _%g121600121611%_)
                         (let ((_%tl121608121637%_ (##cdr _%g121600121611%_))
                               (_%hd121607121635%_ (##car _%g121600121611%_)))
                           (if (null? _%tl121608121637%_)
                               (let ((_%expr121640%_ _%hd121607121635%_))
                                 (_%K121606121632%_ _%expr121640%_))
                               (let ((_%body121624%_ _%g121600121611%_))
                                 (_%K121605121621%_ _%body121624%_))))
                         (let ((_%body121624%_ _%g121600121611%_))
                           (_%K121605121621%_ _%body121624%_))))))
              (if (null? _%g121600121611%_)
                  (_%K121609121646%_)
                  (_%try-match121602121642%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx121423%_)
        (letrec ((_%satisfied?121425%_
                  (lambda (_%condition121526%_)
                    (let* ((_%e121527121542%_ _%condition121526%_)
                           (_%E121537121546%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121527121542%_)))
                           (_%E121530121565%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121527121542%_)
                                  (let ((_%e121538121550%_
                                         (gx#syntax-e _%e121527121542%_)))
                                    (let ((_%hd121539121553%_
                                           (##car _%e121538121550%_))
                                          (_%tl121540121555%_
                                           (##cdr _%e121538121550%_)))
                                      (let* ((_%combinator121558%_
                                              _%hd121539121553%_)
                                             (_%body121560%_
                                              _%tl121540121555%_))
                                        (if (gx#stx-list? _%body121560%_)
                                            (let ((_%$e121562%_
                                                   (gx#stx-e
                                                    _%combinator121558%_)))
                                              (if (eq? 'not _%$e121562%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?121425%_
                                                        _%body121560%_))
                                                  (if (eq? 'and _%$e121562%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?121425%_
                                                       _%body121560%_)
                                                      (if (eq? 'or
                                                               _%$e121562%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?121425%_
                                                           _%body121560%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e121562%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body121560%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx121423%_
                       _%combinator121558%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E121537121546%_)))))
                                  (_%E121537121546%_))))
                           (_%E121529121588%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121527121542%_)
                                  (let ((_%e121531121569%_
                                         (gx#syntax-e _%e121527121542%_)))
                                    (let ((_%hd121532121572%_
                                           (##car _%e121531121569%_))
                                          (_%tl121533121574%_
                                           (##cdr _%e121531121569%_)))
                                      (if (and (gx#identifier?
                                                _%hd121532121572%_)
                                               (gx#core-identifier=?
                                                _%hd121532121572%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl121533121574%_)
                                              (let ((_%e121534121577%_
                                                     (gx#syntax-e
                                                      _%tl121533121574%_)))
                                                (let ((_%hd121535121580%_
                                                       (##car _%e121534121577%_))
                                                      (_%tl121536121582%_
                                                       (##cdr _%e121534121577%_)))
                                                  (let ((_%expr121585%_
                                                         _%hd121535121580%_))
                                                    (if (gx#stx-null?
                                                         _%tl121536121582%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr121585%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E121530121565%_)))))
                                              (_%E121530121565%_))
                                          (_%E121530121565%_))))
                                  (_%E121530121565%_))))
                           (_%E121528121594%_
                            (lambda ()
                              (let ((_%id121592%_ _%e121527121542%_))
                                (if (gx#identifier? _%id121592%_)
                                    (gx#core-bound-identifier?__%
                                     _%id121592%_
                                     gx#feature-binding?)
                                    (_%E121529121588%_))))))
                      (_%E121528121594%_))))
                 (_%loop121426%_
                  (lambda (_%rest121456%_)
                    (let* ((_%e121457121465%_ _%rest121456%_)
                           (_%E121463121469%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121457121465%_)))
                           (_%E121459121473%_
                            (lambda ()
                              (if (gx#stx-null? _%e121457121465%_)
                                  '()
                                  (_%E121463121469%_))))
                           (_%E121458121522%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121457121465%_)
                                  (let ((_%e121460121477%_
                                         (gx#syntax-e _%e121457121465%_)))
                                    (let ((_%hd121461121480%_
                                           (##car _%e121460121477%_))
                                          (_%tl121462121482%_
                                           (##cdr _%e121460121477%_)))
                                      (let* ((_%hd121485%_ _%hd121461121480%_)
                                             (_%rest121487%_
                                              _%tl121462121482%_)
                                             (_%e121488121495%_ _%hd121485%_)
                                             (_%E121490121499%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e121488121495%_)))
                                             (_%E121489121518%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e121488121495%_)
                                                    (let ((_%e121491121503%_
                                                           (gx#syntax-e
                                                            _%e121488121495%_)))
                                                      (let ((_%hd121492121506%_
                                                             (##car _%e121491121503%_))
                                                            (_%tl121493121508%_
                                                             (##cdr _%e121491121503%_)))
                                                        (let* ((_%condition121511%_
                                                                _%hd121492121506%_)
                                                               (_%body121513%_
                                                                _%tl121493121508%_))
                                                          (if (gx#stx-eq?
                                                               _%condition121511%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest121487%_)
                          _%body121513%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx121423%_
                           _%hd121485%_))
                      (if (_%satisfied?121425%_ _%condition121511%_)
                          _%body121513%_
                          (_%loop121426%_ _%rest121487%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121490121499%_)))))
                                        (_%E121489121518%_))))
                                  (_%E121459121473%_)))))
                      (_%E121458121522%_)))))
          (let* ((_%e121427121434%_ _%stx121423%_)
                 (_%E121429121438%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121427121434%_)))
                 (_%E121428121452%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121427121434%_)
                        (let ((_%e121430121442%_
                               (gx#syntax-e _%e121427121434%_)))
                          (let ((_%hd121431121445%_ (##car _%e121430121442%_))
                                (_%tl121432121447%_ (##cdr _%e121430121442%_)))
                            (let ((_%clauses121450%_ _%tl121432121447%_))
                              (if (gx#stx-list? _%clauses121450%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop121426%_ _%clauses121450%_))
                                  (_%E121429121438%_)))))
                        (_%E121429121438%_)))))
            (_%E121428121452%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx121366%_ _%rpath121367%_)
        (let* ((_%e121368121378%_ _%stx121366%_)
               (_%E121370121382%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121368121378%_)))
               (_%E121369121409%_
                (lambda ()
                  (if (gx#stx-pair? _%e121368121378%_)
                      (let ((_%e121371121386%_
                             (gx#syntax-e _%e121368121378%_)))
                        (let ((_%hd121372121389%_ (##car _%e121371121386%_))
                              (_%tl121373121391%_ (##cdr _%e121371121386%_)))
                          (if (gx#stx-pair? _%tl121373121391%_)
                              (let ((_%e121374121394%_
                                     (gx#syntax-e _%tl121373121391%_)))
                                (let ((_%hd121375121397%_
                                       (##car _%e121374121394%_))
                                      (_%tl121376121399%_
                                       (##cdr _%e121374121394%_)))
                                  (let ((_%path121402%_ _%hd121375121397%_))
                                    (if (gx#stx-null? _%tl121376121399%_)
                                        (if (gx#stx-string? _%path121402%_)
                                            (let ((_%rpath121407%_
                                                   (let ((_%$e121404%_
                                                          _%rpath121367%_))
                                                     (if _%$e121404%_
                                                         _%$e121404%_
                                                         (gx#core-resolve-path__%
                                                          _%path121402%_
                                                          (gx#stx-source
                                                           _%stx121366%_))))))
                                              (if (member _%rpath121407%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx121366%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath121407%_))
                                                    (gx#stx-source
                                                     _%stx121366%_)))))
                                            (_%E121370121382%_))
                                        (_%E121370121382%_)))))
                              (_%E121370121382%_))))
                      (_%E121370121382%_)))))
          (_%E121369121409%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx121416%_)
        (let ((_%rpath121418%_ '#f))
          (gx#core-expand-include%__% _%stx121416%_ _%rpath121418%_))))
    (define gx#core-expand-include%
      (lambda _g122539_
        (let ((_g122538_ (##length _g122539_)))
          (cond ((##fx= _g122538_ 1)
                 (apply gx#core-expand-include%__0 _g122539_))
                ((##fx= _g122538_ 2)
                 (apply gx#core-expand-include%__% _g122539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g122539_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K121332%_ _%stx121333%_ _%method121334%_)
        (if (procedure? _%K121332%_)
            (let ((_%$e121337%_ (gx#stx-source _%stx121333%_)))
              (if _%$e121337%_
                  ((lambda (_%g121339121341%_)
                     (gx#stx-wrap-source
                      (_%K121332%_ _%stx121333%_)
                      _%g121339121341%_))
                   _%$e121337%_)
                  (_%K121332%_ _%stx121333%_)))
            (let ((_%$e121345%_
                   (bound-method-ref _%K121332%_ _%method121334%_)))
              (if _%$e121345%_
                  ((lambda (_%g121347121349%_)
                     (gx#core-apply-expander__%
                      _%g121347121349%_
                      _%stx121333%_
                      _%method121334%_))
                   _%$e121345%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx121333%_
                   _%method121334%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K121356%_ _%stx121357%_)
        (let ((_%method121359%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K121356%_
           _%stx121357%_
           _%method121359%_))))
    (define gx#core-apply-expander
      (lambda _g122541_
        (let ((_g122540_ (##length _g122541_)))
          (cond ((##fx= _g122540_ 2)
                 (apply gx#core-apply-expander__0 _g122541_))
                ((##fx= _g122540_ 3)
                 (apply gx#core-apply-expander__% _g122541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g122541_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self119374121315%_ _%stx121317%_)
        (let* ((_%self121319%_ _%self119374121315%_)
               (_%self121321%_ _%self121319%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx121317%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self119375121155%_ _%stx121157%_)
        (let* ((_%self121159%_ _%self119375121155%_)
               (_%self121161%_ _%self121159%_)
               (_%self121170121176%_ _%self121161%_)
               (_%E121172121180%_
                (lambda ()
                  (error '"No clause matching"
                         _%self121170121176%_
                         '((macro-expander K)))
                  '#!void))
               (_%K121173121185%_
                (lambda (_%K121183%_)
                  (gx#core-apply-expander__0 _%K121183%_ _%stx121157%_)))
               (_%e121174121188%_
                (##unchecked-structure-ref _%self121170121176%_ '1 '#f '#f))
               (_%K121191%_ _%e121174121188%_))
          (_%K121173121185%_ _%K121191%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self119376120995%_ _%stx120997%_)
        (let* ((_%self120999%_ _%self119376120995%_)
               (_%self121001%_ _%self120999%_))
          (if (gx#sealed-syntax? _%stx120997%_)
              _%stx120997%_
              (let* ((_%self121010121016%_ _%self121001%_)
                     (_%E121012121020%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self121010121016%_
                               '((core-expander K)))
                        '#!void))
                     (_%K121013121025%_
                      (lambda (_%K121023%_)
                        (gx#core-apply-expander__0 _%K121023%_ _%stx120997%_)))
                     (_%e121014121028%_
                      (##unchecked-structure-ref
                       _%self121010121016%_
                       '1
                       '#f
                       '#f))
                     (_%K121031%_ _%e121014121028%_))
                (_%K121013121025%_ _%K121031%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self119377120844%_ _%stx120846%_ _%top?120847%_)
        (let* ((_%self120849%_ _%self119377120844%_)
               (_%self120851%_ _%self120849%_))
          (if (_%top?120847%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self120851%_
               _%stx120846%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx120846%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self119377120864%_ _%stx120865%_)
        (let ((_%top?120867%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self119377120864%_
           _%stx120865%_
           _%top?120867%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g122543_
        (let ((_g122542_ (##length _g122543_)))
          (cond ((##fx= _g122542_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g122543_))
                ((##fx= _g122542_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g122543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g122543_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self119378120705%_ _%stx120707%_)
        (let* ((_%self120709%_ _%self119378120705%_)
               (_%self120711%_ _%self120709%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self120711%_
           _%stx120707%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self119379120517%_ _%stx120519%_)
        (let* ((_%self120521%_ _%self119379120517%_)
               (_%self120523%_ _%self120521%_)
               (_%self120532120538%_ _%self120523%_)
               (_%E120534120542%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120532120538%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K120535120575%_
                (lambda (_%id120545%_)
                  (let* ((_%e120546120553%_ _%stx120519%_)
                         (_%E120548120557%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e120546120553%_)))
                         (_%E120547120571%_
                          (lambda ()
                            (if (gx#stx-pair? _%e120546120553%_)
                                (let ((_%e120549120561%_
                                       (gx#syntax-e _%e120546120553%_)))
                                  (let ((_%hd120550120564%_
                                         (##car _%e120549120561%_))
                                        (_%tl120551120566%_
                                         (##cdr _%e120549120561%_)))
                                    (let ((_%body120569%_ _%tl120551120566%_))
                                      (gx#core-cons
                                       _%id120545%_
                                       _%body120569%_))))
                                (_%E120548120557%_)))))
                    (_%E120547120571%_))))
               (_%e120536120578%_
                (##unchecked-structure-ref _%self120532120538%_ '1 '#f '#f))
               (_%id120581%_ _%e120536120578%_))
          (_%K120535120575%_ _%id120581%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self120343%_ _%stx120344%_ _%method120345%_)
        (let* ((_%self120346120354%_ _%self120343%_)
               (_%E120348120358%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120346120354%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K120349120365%_
                (lambda (_%phi120361%_ _%ctx120362%_ _%K120363%_)
                  (gx#core-apply-user-macro
                   _%K120363%_
                   _%stx120344%_
                   _%ctx120362%_
                   _%phi120361%_
                   _%method120345%_))))
          (if (##structure-instance-of?
               _%self120346120354%_
               'gx#user-expander::t)
              (let* ((_%e120350120368%_
                      (##unchecked-structure-ref
                       _%self120346120354%_
                       '1
                       '#f
                       '#f))
                     (_%K120371%_ _%e120350120368%_)
                     (_%e120351120373%_
                      (##unchecked-structure-ref
                       _%self120346120354%_
                       '2
                       '#f
                       '#f))
                     (_%ctx120376%_ _%e120351120373%_)
                     (_%e120352120378%_
                      (##unchecked-structure-ref
                       _%self120346120354%_
                       '3
                       '#f
                       '#f))
                     (_%phi120381%_ _%e120352120378%_))
                (_%K120349120365%_ _%phi120381%_ _%ctx120376%_ _%K120371%_))
              (_%E120348120358%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self120386%_ _%stx120387%_)
        (let ((_%method120389%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self120386%_
           _%stx120387%_
           _%method120389%_))))
    (define gx#core-apply-user-expander
      (lambda _g122545_
        (let ((_g122544_ (##length _g122545_)))
          (cond ((##fx= _g122544_ 2)
                 (apply gx#core-apply-user-expander__0 _g122545_))
                ((##fx= _g122544_ 3)
                 (apply gx#core-apply-user-expander__% _g122545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g122545_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K120333%_
               _%stx120334%_
               _%ctx120335%_
               _%phi120336%_
               _%method120337%_)
        (let ((_%mark120339%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx120335%_
                _%phi120336%_
                _%stx120334%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K120333%_
               (gx#stx-apply-mark _%stx120334%_ _%mark120339%_)
               _%method120337%_)
              _%mark120339%_))
           gx#current-expander-marks
           (cons _%mark120339%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx120181%_ _%phi120182%_ _%ctx120183%_)
        (let _%lp120185%_ ((_%bind120187%_
                            (gx#core-resolve-identifier__%
                             _%stx120181%_
                             _%phi120182%_
                             _%ctx120183%_)))
          (if (##structure-direct-instance-of?
               _%bind120187%_
               'gx#import-binding::t)
              (_%lp120185%_
               (##unchecked-structure-ref _%bind120187%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind120187%_
                   'gx#alias-binding::t)
                  (_%lp120185%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind120187%_ '4 '#f '#f)
                    _%phi120182%_
                    _%ctx120183%_))
                  _%bind120187%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx120195%_)
        (let* ((_%phi120197%_ (gx#current-expander-phi))
               (_%ctx120199%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx120195%_
           _%phi120197%_
           _%ctx120199%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx120201%_ _%phi120202%_)
        (let ((_%ctx120204%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx120201%_
           _%phi120202%_
           _%ctx120204%_))))
    (define gx#resolve-identifier
      (lambda _g122547_
        (let ((_g122546_ (##length _g122547_)))
          (cond ((##fx= _g122546_ 1)
                 (apply gx#resolve-identifier__0 _g122547_))
                ((##fx= _g122546_ 2)
                 (apply gx#resolve-identifier__1 _g122547_))
                ((##fx= _g122546_ 3)
                 (apply gx#resolve-identifier__% _g122547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g122547_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx120136%_
               _%val120137%_
               _%rebind?120138%_
               _%phi120139%_
               _%ctx120140%_)
        (let ((_%rebind?120145%_
               (if (not _%rebind?120138%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?120138%_)
                       _%rebind?120138%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx120136%_)
           _%val120137%_
           _%rebind?120145%_
           _%phi120139%_
           _%ctx120140%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx120150%_ _%val120151%_)
        (let* ((_%rebind?120153%_ '#f)
               (_%phi120155%_ (gx#current-expander-phi))
               (_%ctx120157%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120150%_
           _%val120151%_
           _%rebind?120153%_
           _%phi120155%_
           _%ctx120157%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx120159%_ _%val120160%_ _%rebind?120161%_)
        (let* ((_%phi120163%_ (gx#current-expander-phi))
               (_%ctx120165%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120159%_
           _%val120160%_
           _%rebind?120161%_
           _%phi120163%_
           _%ctx120165%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx120167%_ _%val120168%_ _%rebind?120169%_ _%phi120170%_)
        (let ((_%ctx120172%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx120167%_
           _%val120168%_
           _%rebind?120169%_
           _%phi120170%_
           _%ctx120172%_))))
    (define gx#bind-identifier!
      (lambda _g122549_
        (let ((_g122548_ (##length _g122549_)))
          (cond ((##fx= _g122548_ 2) (apply gx#bind-identifier!__0 _g122549_))
                ((##fx= _g122548_ 3) (apply gx#bind-identifier!__1 _g122549_))
                ((##fx= _g122548_ 4) (apply gx#bind-identifier!__2 _g122549_))
                ((##fx= _g122548_ 5) (apply gx#bind-identifier!__% _g122549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g122549_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx120102%_ _%phi120103%_ _%ctx120104%_)
        (let _%lp120106%_ ((_%e120108%_ _%stx120102%_)
                           (_%marks120109%_ (gx#current-expander-marks)))
          (if (symbol? _%e120108%_)
              (gx#core-resolve-binding
               _%e120108%_
               _%phi120103%_
               _%phi120103%_
               _%ctx120104%_
               (reverse _%marks120109%_))
              (if (gx#identifier-quote? _%e120108%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e120108%_ '1 '#f '#f)
                   _%phi120103%_
                   '0
                   (##unchecked-structure-ref _%e120108%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e120108%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e120108%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e120108%_ '1 '#f '#f)
                       _%phi120103%_
                       _%phi120103%_
                       _%ctx120104%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e120108%_ '3 '#f '#f)
                        _%marks120109%_))
                      (if (##structure-direct-instance-of?
                           _%e120108%_
                           'gx#syntax-wrap::t)
                          (_%lp120106%_
                           (##unchecked-structure-ref _%e120108%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e120108%_ '3 '#f '#f)
                            _%marks120109%_))
                          (if (##structure-instance-of?
                               _%e120108%_
                               'gerbil#AST::t)
                              (_%lp120106%_
                               (##unchecked-structure-ref
                                _%e120108%_
                                '1
                                '#f
                                '#f)
                               _%marks120109%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx120102%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx120120%_)
        (let* ((_%phi120122%_ (gx#current-expander-phi))
               (_%ctx120124%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx120120%_
           _%phi120122%_
           _%ctx120124%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx120126%_ _%phi120127%_)
        (let ((_%ctx120129%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx120126%_
           _%phi120127%_
           _%ctx120129%_))))
    (define gx#core-resolve-identifier
      (lambda _g122551_
        (let ((_g122550_ (##length _g122551_)))
          (cond ((##fx= _g122550_ 1)
                 (apply gx#core-resolve-identifier__0 _g122551_))
                ((##fx= _g122550_ 2)
                 (apply gx#core-resolve-identifier__1 _g122551_))
                ((##fx= _g122550_ 3)
                 (apply gx#core-resolve-identifier__% _g122551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g122551_))))))
    (define gx#core-resolve-binding
      (lambda (_%id120012%_
               _%phi120013%_
               _%src-phi120014%_
               _%ctx120015%_
               _%marks120016%_)
        (letrec ((_%resolve120018%_
                  (lambda (_%ctx120086%_ _%src-phi120087%_ _%key120088%_)
                    (let _%lp120090%_ ((_%ctx120092%_
                                        (gx#core-context-shift
                                         _%ctx120086%_
                                         _%phi120013%_))
                                       (_%dphi120093%_
                                        (fx- _%phi120013%_ _%src-phi120087%_)))
                      (let ((_%$e120095%_
                             (gx#core-context-resolve
                              _%ctx120092%_
                              _%key120088%_)))
                        (if _%$e120095%_
                            _%$e120095%_
                            (if (fxzero? _%dphi120093%_)
                                '#f
                                (if (fxpositive? _%dphi120093%_)
                                    (_%lp120090%_
                                     (gx#core-context-shift _%ctx120092%_ '-1)
                                     (##fx- _%dphi120093%_ '1))
                                    (_%lp120090%_
                                     (gx#core-context-shift _%ctx120092%_ '1)
                                     (##fx+ _%dphi120093%_ '1))))))))))
          (let _%lp120020%_ ((_%ctx120022%_ _%ctx120015%_)
                             (_%src-phi120023%_ _%src-phi120014%_)
                             (_%rest120024%_ _%marks120016%_))
            (let* ((_%rest120025120033%_ _%rest120024%_)
                   (_%else120027120041%_
                    (lambda ()
                      (_%resolve120018%_
                       _%ctx120022%_
                       _%src-phi120023%_
                       _%id120012%_)))
                   (_%K120029120074%_
                    (lambda (_%rest120044%_ _%hd120045%_)
                      (let* ((_%hd120046120052%_ _%hd120045%_)
                             (_%E120048120056%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd120046120052%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K120049120066%_
                              (lambda (_%subst120059%_)
                                (let ((_%$e120063%_
                                       (let ((_%key120061%_
                                              (if _%subst120059%_
                                                  (hash-get
                                                   _%subst120059%_
                                                   _%id120012%_)
                                                  '#f)))
                                         (if _%key120061%_
                                             (_%resolve120018%_
                                              _%ctx120022%_
                                              _%src-phi120023%_
                                              _%key120061%_)
                                             '#f))))
                                  (if _%$e120063%_
                                      _%$e120063%_
                                      (_%lp120020%_
                                       (##unchecked-structure-ref
                                        _%hd120045%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd120045%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest120044%_))))))
                        (if (##structure-instance-of?
                             _%hd120046120052%_
                             'gx#expander-mark::t)
                            (let* ((_%e120050120069%_
                                    (##unchecked-structure-ref
                                     _%hd120046120052%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst120072%_ _%e120050120069%_))
                              (_%K120049120066%_ _%subst120072%_))
                            (_%E120048120056%_))))))
              (if (pair? _%rest120025120033%_)
                  (let ((_%hd120030120077%_ (##car _%rest120025120033%_))
                        (_%tl120031120079%_ (##cdr _%rest120025120033%_)))
                    (let* ((_%hd120082%_ _%hd120030120077%_)
                           (_%rest120084%_ _%tl120031120079%_))
                      (_%K120029120074%_ _%rest120084%_ _%hd120082%_)))
                  (_%else120027120041%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key119882%_
               _%val119883%_
               _%rebind?119884%_
               _%phi119885%_
               _%ctx119886%_)
        (letrec ((_%update-binding119888%_
                  (lambda (_%xval119961%_)
                    (if (or (_%rebind?119884%_
                             _%ctx119886%_
                             _%xval119961%_
                             _%val119883%_)
                            (and (##structure-direct-instance-of?
                                  _%xval119961%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval119961%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val119883%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val119883%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval119961%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val119883%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val119883%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval119961%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val119883%_
                        (if (and (##structure-direct-instance-of?
                                  _%val119883%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val119883%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval119961%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val119883%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval119961%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval119961%_
                            (if (and (##structure-direct-instance-of?
                                      _%val119883%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval119961%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key119882%_
                                 (cons (##unchecked-structure-ref
                                        _%val119883%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val119883%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval119961%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval119961%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval119961%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval119961%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key119882%_
                                 _%val119883%_
                                 _%xval119961%_))))))
                 (_%gensubst119889%_
                  (lambda (_%subst119956%_ _%id119957%_)
                    (let ((_%eid119959%_
                           (gensym (if (uninterned-symbol? _%id119957%_)
                                       '%
                                       _%id119957%_))))
                      (hash-put! _%subst119956%_ _%id119957%_ _%eid119959%_)
                      _%eid119959%_)))
                 (_%subst!119890%_
                  (lambda (_%key119892%_)
                    (let* ((_%key119893119901%_ _%key119892%_)
                           (_%else119895119909%_ (lambda () _%key119892%_))
                           (_%K119897119944%_
                            (lambda (_%mark119912%_ _%id119913%_)
                              (let* ((_%mark119914119920%_ _%mark119912%_)
                                     (_%E119916119924%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark119914119920%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K119917119936%_
                                      (lambda (_%subst119927%_)
                                        (if (not _%subst119927%_)
                                            (let ((_%subst119930%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark119912%_
                                               _%subst119930%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst119889%_
                                               _%subst119930%_
                                               _%id119913%_))
                                            (let ((_%$e119932%_
                                                   (hash-get
                                                    _%subst119927%_
                                                    _%id119913%_)))
                                              (if _%$e119932%_
                                                  _%$e119932%_
                                                  (_%gensubst119889%_
                                                   _%subst119927%_
                                                   _%id119913%_)))))))
                                (if (##structure-instance-of?
                                     _%mark119914119920%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e119918119939%_
                                            (##unchecked-structure-ref
                                             _%mark119914119920%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst119942%_ _%e119918119939%_))
                                      (_%K119917119936%_ _%subst119942%_))
                                    (_%E119916119924%_))))))
                      (if (pair? _%key119893119901%_)
                          (let ((_%hd119898119947%_
                                 (##car _%key119893119901%_))
                                (_%tl119899119949%_
                                 (##cdr _%key119893119901%_)))
                            (let* ((_%id119952%_ _%hd119898119947%_)
                                   (_%mark119954%_ _%tl119899119949%_))
                              (_%K119897119944%_ _%mark119954%_ _%id119952%_)))
                          (_%else119895119909%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx119886%_ _%phi119885%_)
           (_%subst!119890%_ _%key119882%_)
           _%val119883%_
           _%update-binding119888%_))))
    (define gx#core-bind!__0
      (lambda (_%key119982%_ _%val119983%_)
        (let* ((_%rebind?119985%_ false)
               (_%phi119987%_ (gx#current-expander-phi))
               (_%ctx119989%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119982%_
           _%val119983%_
           _%rebind?119985%_
           _%phi119987%_
           _%ctx119989%_))))
    (define gx#core-bind!__1
      (lambda (_%key119991%_ _%val119992%_ _%rebind?119993%_)
        (let* ((_%phi119995%_ (gx#current-expander-phi))
               (_%ctx119997%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119991%_
           _%val119992%_
           _%rebind?119993%_
           _%phi119995%_
           _%ctx119997%_))))
    (define gx#core-bind!__2
      (lambda (_%key119999%_ _%val120000%_ _%rebind?120001%_ _%phi120002%_)
        (let ((_%ctx120004%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119999%_
           _%val120000%_
           _%rebind?120001%_
           _%phi120002%_
           _%ctx120004%_))))
    (define gx#core-bind!
      (lambda _g122553_
        (let ((_g122552_ (##length _g122553_)))
          (cond ((##fx= _g122552_ 2) (apply gx#core-bind!__0 _g122553_))
                ((##fx= _g122552_ 3) (apply gx#core-bind!__1 _g122553_))
                ((##fx= _g122552_ 4) (apply gx#core-bind!__2 _g122553_))
                ((##fx= _g122552_ 5) (apply gx#core-bind!__% _g122553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g122553_))))))
    (define gx#core-identifier-key
      (lambda (_%stx119813%_)
        (if (symbol? _%stx119813%_)
            (let* ((_%g119815119823%_ (gx#current-expander-marks))
                   (_%else119817119831%_ (lambda () _%stx119813%_))
                   (_%K119819119836%_
                    (lambda (_%hd119834%_) (cons _%stx119813%_ _%hd119834%_))))
              (if (pair? _%g119815119823%_)
                  (let* ((_%hd119820119839%_ (##car _%g119815119823%_))
                         (_%hd119842%_ _%hd119820119839%_))
                    (_%K119819119836%_ _%hd119842%_))
                  (_%else119817119831%_)))
            (if (gx#identifier? _%stx119813%_)
                (let* ((_%id119845%_ (gx#syntax-local-unwrap _%stx119813%_))
                       (_%eid119847%_ (gx#stx-e _%id119845%_))
                       (_%marks119849%_
                        (gx#stx-identifier-marks* _%id119845%_))
                       (_%marks119851119859%_ _%marks119849%_)
                       (_%else119853119867%_ (lambda () _%eid119847%_))
                       (_%K119855119872%_
                        (lambda (_%hd119870%_)
                          (cons _%eid119847%_ _%hd119870%_))))
                  (if (pair? _%marks119851119859%_)
                      (let* ((_%hd119856119875%_ (##car _%marks119851119859%_))
                             (_%hd119878%_ _%hd119856119875%_))
                        (_%K119855119872%_ _%hd119878%_))
                      (_%else119853119867%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx119813%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx119752%_ _%phi119753%_)
        (letrec ((_%make-phi119755%_
                  (lambda (_%super119811%_)
                    (let ((__obj122525
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj122525
                       (##gensym 'phi)
                       _%super119811%_)
                      __obj122525)))
                 (_%make-phi/up119756%_
                  (lambda (_%ctx119806%_ _%super119807%_)
                    (let ((_%ctx+1119809%_
                           (_%make-phi119755%_ _%super119807%_)))
                      (##unchecked-structure-set!
                       _%ctx119806%_
                       _%ctx+1119809%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1119809%_
                       _%ctx119806%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1119809%_)))
                 (_%make-phi/down119757%_
                  (lambda (_%ctx119801%_ _%super119802%_)
                    (let ((_%ctx-1119804%_
                           (_%make-phi119755%_ _%super119802%_)))
                      (##unchecked-structure-set!
                       _%ctx-1119804%_
                       _%ctx119801%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx119801%_
                       _%ctx-1119804%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1119804%_)))
                 (_%shift119758%_
                  (lambda (_%ctx119784%_
                           _%delta119785%_
                           _%make-delta-context119786%_
                           _%phi119787%_
                           _%K119788%_)
                    (let ((_%$e119790%_
                           (##unchecked-structure-ref
                            _%ctx119784%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e119790%_
                          ((lambda (_%super119793%_)
                             (let* ((_%super119795%_
                                     (_%K119788%_
                                      _%super119793%_
                                      _%delta119785%_))
                                    (_%ctx+d119797%_
                                     (_%make-delta-context119786%_
                                      _%ctx119784%_
                                      _%super119795%_)))
                               (_%K119788%_
                                _%ctx+d119797%_
                                (fx- _%phi119787%_ _%delta119785%_))))
                           _%$e119790%_)
                          (error '"Bad context" _%ctx119784%_))))))
          (let _%K119760%_ ((_%ctx119762%_ _%ctx119752%_)
                            (_%phi119763%_ _%phi119753%_))
            (if (fxzero? _%phi119763%_)
                _%ctx119762%_
                (if (##structure-instance-of? _%ctx119762%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi119763%_)
                        (let ((_%$e119767%_
                               (##unchecked-structure-ref
                                _%ctx119762%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e119767%_
                              ((lambda (_%g119769119771%_)
                                 (_%K119760%_
                                  _%g119769119771%_
                                  (##fx- _%phi119763%_ '1)))
                               _%$e119767%_)
                              (_%shift119758%_
                               _%ctx119762%_
                               '1
                               _%make-phi/up119756%_
                               _%phi119763%_
                               _%K119760%_)))
                        (let ((_%$e119775%_
                               (##unchecked-structure-ref
                                _%ctx119762%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e119775%_
                              ((lambda (_%g119777119779%_)
                                 (_%K119760%_
                                  _%g119777119779%_
                                  (##fx+ _%phi119763%_ '1)))
                               _%$e119775%_)
                              (_%shift119758%_
                               _%ctx119762%_
                               '-1
                               _%make-phi/down119757%_
                               _%phi119763%_
                               _%K119760%_))))
                    _%ctx119762%_))))))
    (define gx#core-context-get
      (lambda (_%ctx119749%_ _%key119750%_)
        (hash-get
         (##unchecked-structure-ref _%ctx119749%_ '2 '#f '#f)
         _%key119750%_)))
    (define gx#core-context-put!
      (lambda (_%ctx119745%_ _%key119746%_ _%val119747%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx119745%_ '2 '#f '#f)
         _%key119746%_
         _%val119747%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx119731%_ _%key119732%_)
        (let _%lp119734%_ ((_%ctx119736%_ _%ctx119731%_))
          (let ((_%$e119738%_
                 (gx#core-context-get _%ctx119736%_ _%key119732%_)))
            (if _%$e119738%_
                _%$e119738%_
                (let ((_%$e119741%_
                       (if (##structure-instance-of?
                            _%ctx119736%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx119736%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e119741%_ (_%lp119734%_ _%$e119741%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx119720%_ _%key119721%_ _%val119722%_ _%rebind119723%_)
        (let ((_%$e119725%_ (gx#core-context-get _%ctx119720%_ _%key119721%_)))
          (if _%$e119725%_
              ((lambda (_%xval119728%_)
                 (gx#core-context-put!
                  _%ctx119720%_
                  _%key119721%_
                  (_%rebind119723%_ _%xval119728%_)))
               _%$e119725%_)
              (gx#core-context-put!
               _%ctx119720%_
               _%key119721%_
               _%val119722%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx119695%_ _%stop?119696%_)
        (let _%lp119698%_ ((_%ctx119700%_ _%ctx119695%_))
          (if (_%stop?119696%_ _%ctx119700%_)
              _%ctx119700%_
              (if (##structure-instance-of? _%ctx119700%_ 'gx#phi-context::t)
                  (_%lp119698%_
                   (##unchecked-structure-ref _%ctx119700%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx119709%_ (gx#current-expander-context))
               (_%stop?119711%_ gx#top-context?))
          (gx#core-context-top__% _%ctx119709%_ _%stop?119711%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx119713%_)
        (let ((_%stop?119715%_ gx#top-context?))
          (gx#core-context-top__% _%ctx119713%_ _%stop?119715%_))))
    (define gx#core-context-top
      (lambda _g122555_
        (let ((_g122554_ (##length _g122555_)))
          (cond ((##fx= _g122554_ 0) (apply gx#core-context-top__0 _g122555_))
                ((##fx= _g122554_ 1) (apply gx#core-context-top__1 _g122555_))
                ((##fx= _g122554_ 2) (apply gx#core-context-top__% _g122555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g122555_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx119680%_)
        (let _%lp119682%_ ((_%ctx119684%_ _%ctx119680%_))
          (if (##structure-instance-of? _%ctx119684%_ 'gx#phi-context::t)
              (_%lp119682%_
               (##unchecked-structure-ref _%ctx119684%_ '3 '#f '#f))
              _%ctx119684%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx119690%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx119690%_))))
    (define gx#core-context-root
      (lambda _g122557_
        (let ((_g122556_ (##length _g122557_)))
          (cond ((##fx= _g122556_ 0) (apply gx#core-context-root__0 _g122557_))
                ((##fx= _g122556_ 1) (apply gx#core-context-root__% _g122557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g122557_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx119662%_ . _%ignore119663%_)
        (let ((_%$e119665%_ (gx#current-expander-allow-rebind?)))
          (if _%$e119665%_
              _%$e119665%_
              (if (##structure-instance-of? _%ctx119662%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx119662%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx119662%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx119672%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx119672%_))))
    (define gx#core-context-rebind?
      (lambda _g122559_
        (let ((_g122558_ (##length _g122559_)))
          (cond ((##fx= _g122558_ 0)
                 (apply gx#core-context-rebind?__0 _g122559_))
                ((##fx= _g122558_ 1)
                 (apply gx#core-context-rebind?__% _g122559_))
                ((##fx>= _g122558_ 1)
                 (apply gx#core-context-rebind?__% _g122559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g122559_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx119645%_)
        (let ((_%$e119647%_ (gx#core-context-top__1 _%ctx119645%_)))
          (if _%$e119647%_
              ((lambda (_%ctx119650%_)
                 (if (##structure-instance-of?
                      _%ctx119650%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx119650%_ '6 '#f '#f)
                     '#f))
               _%$e119647%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx119657%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx119657%_))))
    (define gx#core-context-namespace
      (lambda _g122561_
        (let ((_g122560_ (##length _g122561_)))
          (cond ((##fx= _g122560_ 0)
                 (apply gx#core-context-namespace__0 _g122561_))
                ((##fx= _g122560_ 1)
                 (apply gx#core-context-namespace__% _g122561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g122561_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind119631%_ _%is?119632%_)
        (if (##structure-direct-instance-of?
             _%bind119631%_
             'gx#syntax-binding::t)
            (_%is?119632%_
             (##unchecked-structure-ref _%bind119631%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind119637%_)
        (let ((_%is?119639%_ gx#expander?))
          (gx#expander-binding?__% _%bind119637%_ _%is?119639%_))))
    (define gx#expander-binding?
      (lambda _g122563_
        (let ((_g122562_ (##length _g122563_)))
          (cond ((##fx= _g122562_ 1) (apply gx#expander-binding?__0 _g122563_))
                ((##fx= _g122562_ 2) (apply gx#expander-binding?__% _g122563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g122563_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind119628%_)
        (gx#expander-binding?__% _%bind119628%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind119626%_)
        (gx#expander-binding?__% _%bind119626%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind119620%_)
        (letrec ((_%direct-special-form?119622%_
                  (lambda (_%obj119624%_)
                    (##structure-direct-instance-of?
                     _%obj119624%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind119620%_
           _%direct-special-form?119622%_))))
    (define gx#special-form-binding?
      (lambda (_%bind119618%_)
        (gx#expander-binding?__% _%bind119618%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind119609%_)
        (letrec ((_%feature?119611%_
                  (lambda (_%e119613%_)
                    (let ((_%$e119615%_
                           (##structure-instance-of?
                            _%e119613%_
                            'gx#feature-expander::t)))
                      (if _%$e119615%_
                          _%$e119615%_
                          (##structure-instance-of?
                           _%e119613%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind119609%_ _%feature?119611%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind119607%_)
        (gx#expander-binding?__% _%bind119607%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id119594%_ _%bound?119595%_)
        (if (gx#identifier? _%id119594%_)
            (_%bound?119595%_ (gx#resolve-identifier__0 _%id119594%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id119600%_)
        (let ((_%bound?119602%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id119600%_ _%bound?119602%_))))
    (define gx#core-bound-identifier?
      (lambda _g122565_
        (let ((_g122564_ (##length _g122565_)))
          (cond ((##fx= _g122564_ 1)
                 (apply gx#core-bound-identifier?__0 _g122565_))
                ((##fx= _g122564_ 2)
                 (apply gx#core-bound-identifier?__% _g122565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g122565_))))))
    (define gx#core-identifier=?
      (lambda (_%x119584%_ _%y119585%_)
        (letrec ((_%y=?119587%_
                  (lambda (_%xid119591%_)
                    ((if (list? _%y119585%_) memq eq?)
                     _%xid119591%_
                     _%y119585%_))))
          (let ((_%bind119589%_ (gx#resolve-identifier__0 _%x119584%_)))
            (if (##structure-instance-of? _%bind119589%_ 'gx#binding::t)
                (_%y=?119587%_
                 (##unchecked-structure-ref _%bind119589%_ '1 '#f '#f))
                (_%y=?119587%_ (gx#stx-e _%x119584%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e119582%_)
        (if (interned-symbol? _%e119582%_)
            (string-index__0 (symbol->string _%e119582%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx119535%_ _%src119536%_ _%ctx119537%_ _%marks119538%_)
        (if (##structure? _%stx119535%_)
            (let ((_%$e119540%_ (gx#sealed-syntax-unwrap _%stx119535%_)))
              (if _%$e119540%_
                  _%$e119540%_
                  (if (gx#identifier? _%stx119535%_)
                      (let ((_%id119544%_
                             (gx#stx-unwrap__% _%stx119535%_ _%marks119538%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id119544%_ '1 '#f '#f)
                         (let ((_%$e119546%_
                                (##unchecked-structure-ref
                                 _%id119544%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e119546%_ _%$e119546%_ _%src119536%_))
                         _%ctx119537%_
                         (##unchecked-structure-ref _%id119544%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx119535%_)
                       (let ((_%$e119550%_ (gx#stx-source _%stx119535%_)))
                         (if _%$e119550%_ _%$e119550%_ _%src119536%_))
                       _%ctx119537%_
                       (reverse _%marks119538%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx119535%_
             _%src119536%_
             _%ctx119537%_
             (reverse _%marks119538%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx119556%_)
        (let* ((_%src119558%_ '#f)
               (_%ctx119560%_ (gx#current-expander-context))
               (_%marks119562%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119556%_
           _%src119558%_
           _%ctx119560%_
           _%marks119562%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx119564%_ _%src119565%_)
        (let* ((_%ctx119567%_ (gx#current-expander-context))
               (_%marks119569%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119564%_
           _%src119565%_
           _%ctx119567%_
           _%marks119569%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx119571%_ _%src119572%_ _%ctx119573%_)
        (let ((_%marks119575%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx119571%_
           _%src119572%_
           _%ctx119573%_
           _%marks119575%_))))
    (define gx#core-quote-syntax
      (lambda _g122567_
        (let ((_g122566_ (##length _g122567_)))
          (cond ((##fx= _g122566_ 1) (apply gx#core-quote-syntax__0 _g122567_))
                ((##fx= _g122566_ 2) (apply gx#core-quote-syntax__1 _g122567_))
                ((##fx= _g122566_ 3) (apply gx#core-quote-syntax__2 _g122567_))
                ((##fx= _g122566_ 4) (apply gx#core-quote-syntax__% _g122567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g122567_))))))
    (define gx#core-cons
      (lambda (_%hd119531%_ _%tl119532%_)
        (cons (gx#core-quote-syntax__0 _%hd119531%_) _%tl119532%_)))
    (define gx#core-list
      (lambda (_%hd119528%_ . _%rest119529%_)
        (cons (gx#core-quote-syntax__0 _%hd119528%_) _%rest119529%_)))
    (define gx#core-cons*
      (lambda (_%hd119525%_ . _%rest119526%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd119525%_) _%rest119526%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path119494%_ _%rel119495%_)
        (let ((_%path119512%_ (gx#stx-e _%stx-path119494%_))
              (_%reldir119513%_
               (let _%lp119497%_ ((_%relsrc119499%_
                                   (let ((_%$e119509%_
                                          (gx#stx-source _%stx-path119494%_)))
                                     (if _%$e119509%_
                                         _%$e119509%_
                                         _%rel119495%_))))
                 (if (##structure-instance-of? _%relsrc119499%_ 'gerbil#AST::t)
                     (_%lp119497%_
                      (let ((_%$e119502%_ (gx#stx-source _%relsrc119499%_)))
                        (if _%$e119502%_
                            _%$e119502%_
                            (gx#stx-e _%relsrc119499%_))))
                     (if (source-location-path? _%relsrc119499%_)
                         (path-directory
                          (source-location-path _%relsrc119499%_))
                         (if (string? _%relsrc119499%_)
                             (path-directory _%relsrc119499%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path119512%_ (path-normalize _%reldir119513%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path119518%_)
        (let ((_%rel119520%_ '#f))
          (gx#core-resolve-path__% _%stx-path119518%_ _%rel119520%_))))
    (define gx#core-resolve-path
      (lambda _g122569_
        (let ((_g122568_ (##length _g122569_)))
          (cond ((##fx= _g122568_ 1) (apply gx#core-resolve-path__0 _g122569_))
                ((##fx= _g122568_ 2) (apply gx#core-resolve-path__% _g122569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g122569_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr119450%_ _%ctx119451%_)
        (let* ((_%repr119452119459%_ _%repr119450%_)
               (_%E119454119463%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr119452119459%_
                         '([phi . subs]))
                  '#!void))
               (_%K119455119471%_
                (lambda (_%subs119466%_ _%phi119467%_)
                  (let ((_%subst119469%_
                         (if (null? _%subs119466%_)
                             '#f
                             (list->hash-table-eq _%subs119466%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst119469%_
                     _%ctx119451%_
                     _%phi119467%_
                     '#f)))))
          (if (pair? _%repr119452119459%_)
              (let ((_%hd119456119474%_ (##car _%repr119452119459%_))
                    (_%tl119457119476%_ (##cdr _%repr119452119459%_)))
                (let* ((_%phi119479%_ _%hd119456119474%_)
                       (_%subs119481%_ _%tl119457119476%_))
                  (_%K119455119471%_ _%subs119481%_ _%phi119479%_)))
              (_%E119454119463%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr119486%_)
        (let ((_%ctx119488%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr119486%_ _%ctx119488%_))))
    (define gx#core-deserialize-mark
      (lambda _g122571_
        (let ((_g122570_ (##length _g122571_)))
          (cond ((##fx= _g122570_ 1)
                 (apply gx#core-deserialize-mark__0 _g122571_))
                ((##fx= _g122570_ 2)
                 (apply gx#core-deserialize-mark__% _g122571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g122571_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx119447%_)
        (gx#stx-rewrap _%stx119447%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx119445%_)
        (gx#stx-unwrap__% _%stx119445%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx119415%_)
        (let* ((_%g119416119424%_ (gx#current-expander-marks))
               (_%else119418119432%_ (lambda () _%stx119415%_))
               (_%K119420119437%_
                (lambda (_%hd119435%_)
                  (gx#stx-apply-mark _%stx119415%_ _%hd119435%_))))
          (if (pair? _%g119416119424%_)
              (let* ((_%hd119421119440%_ (##car _%g119416119424%_))
                     (_%hd119443%_ _%hd119421119440%_))
                (_%K119420119437%_ _%hd119443%_))
              (_%else119418119432%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx119400%_ _%E119401%_)
        (let ((_%bind119403%_ (gx#resolve-identifier__0 _%stx119400%_)))
          (if (##structure-direct-instance-of?
               _%bind119403%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind119403%_ '4 '#f '#f)
              (_%E119401%_ _%stx119400%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx119408%_)
        (let ((_%E119410%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx119408%_ _%E119410%_))))
    (define gx#syntax-local-e
      (lambda _g122573_
        (let ((_g122572_ (##length _g122573_)))
          (cond ((##fx= _g122572_ 1) (apply gx#syntax-local-e__0 _g122573_))
                ((##fx= _g122572_ 2) (apply gx#syntax-local-e__% _g122573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g122573_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx119384%_ _%E119385%_)
        (let ((_%e119387%_ (gx#syntax-local-e__% _%stx119384%_ _%E119385%_)))
          (if (##structure-instance-of? _%e119387%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e119387%_ '1 '#f '#f)
              _%e119387%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx119392%_)
        (let ((_%E119394%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx119392%_ _%E119394%_))))
    (define gx#syntax-local-value
      (lambda _g122575_
        (let ((_g122574_ (##length _g122575_)))
          (cond ((##fx= _g122574_ 1)
                 (apply gx#syntax-local-value__0 _g122575_))
                ((##fx= _g122574_ 2)
                 (apply gx#syntax-local-value__% _g122575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g122575_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx119381%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx119381%_)))))
