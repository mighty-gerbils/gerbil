(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1713044315)
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
      (lambda _%$args119884%_
        (apply make-instance gx#expander-context::t _%$args119884%_)))
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
      (lambda _%$args119881%_
        (apply make-instance gx#root-context::t _%$args119881%_)))
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
      (lambda _%$args119878%_
        (apply make-instance gx#phi-context::t _%$args119878%_)))
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
      (lambda _%$args119875%_
        (apply make-instance gx#top-context::t _%$args119875%_)))
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
      (lambda _%$args119872%_
        (apply make-instance gx#module-context::t _%$args119872%_)))
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
      (lambda _%$args119869%_
        (apply make-instance gx#prelude-context::t _%$args119869%_)))
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
      (lambda _%$args119866%_
        (apply make-instance gx#local-context::t _%$args119866%_)))
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
      (lambda (_%self116772119837%_ _%id119839%_ _%super119840%_)
        (let* ((_%self119842%_ _%self116772119837%_)
               (_%self119844%_ _%self119842%_))
          (if (##fx< '3 (##structure-length _%self119844%_))
              (begin
                (##unchecked-structure-set!
                 _%self119844%_
                 _%id119839%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119844%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119844%_
                 _%super119840%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119844%_
                     '3
                     (##vector-length _%self119844%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self116772119857%_ _%id119858%_)
        (let ((_%super119860%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self116772119857%_
           _%id119858%_
           _%super119860%_))))
    (define gx#phi-context:::init!
      (lambda _g119927_
        (let ((_g119926_ (##length _g119927_)))
          (cond ((##fx= _g119926_ 2)
                 (apply gx#phi-context:::init!__0 _g119927_))
                ((##fx= _g119926_ 3)
                 (apply gx#phi-context:::init!__% _g119927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g119927_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self116773119688%_ _%super119690%_)
        (let* ((_%self119692%_ _%self116773119688%_)
               (_%self119694%_ _%self119692%_))
          (if (##fx< '3 (##structure-length _%self119694%_))
              (begin
                (##unchecked-structure-set!
                 _%self119694%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119694%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119694%_
                 _%super119690%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119694%_
                     '3
                     (##vector-length _%self119694%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self116773119707%_)
        (let ((_%super119709%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self116773119707%_ _%super119709%_))))
    (define gx#local-context:::init!
      (lambda _g119929_
        (let ((_g119928_ (##length _g119929_)))
          (cond ((##fx= _g119928_ 1)
                 (apply gx#local-context:::init!__0 _g119929_))
                ((##fx= _g119928_ 2)
                 (apply gx#local-context:::init!__% _g119929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g119929_))))))
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
      (lambda _%$args119562%_
        (apply make-instance gx#binding::t _%$args119562%_)))
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
      (lambda _%$args119559%_
        (apply make-instance gx#runtime-binding::t _%$args119559%_)))
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
      (lambda _%$args119556%_
        (apply make-instance gx#local-binding::t _%$args119556%_)))
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
      (lambda _%$args119553%_
        (apply make-instance gx#top-binding::t _%$args119553%_)))
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
      (lambda _%$args119550%_
        (apply make-instance gx#module-binding::t _%$args119550%_)))
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
      (lambda _%$args119547%_
        (apply make-instance gx#extern-binding::t _%$args119547%_)))
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
      (lambda _%$args119544%_
        (apply make-instance gx#syntax-binding::t _%$args119544%_)))
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
      (lambda _%$args119541%_
        (apply make-instance gx#import-binding::t _%$args119541%_)))
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
      (lambda _%$args119538%_
        (apply make-instance gx#alias-binding::t _%$args119538%_)))
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
      (lambda _%$args119535%_
        (apply make-instance gx#expander::t _%$args119535%_)))
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
      (lambda _%$args119532%_
        (apply make-instance gx#core-expander::t _%$args119532%_)))
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
      (lambda _%$args119529%_
        (apply make-instance gx#expression-form::t _%$args119529%_)))
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
      (lambda _%$args119526%_
        (apply make-instance gx#special-form::t _%$args119526%_)))
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
      (lambda _%$args119523%_
        (apply make-instance gx#definition-form::t _%$args119523%_)))
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
      (lambda _%$args119520%_
        (apply make-instance gx#top-special-form::t _%$args119520%_)))
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
      (lambda _%$args119517%_
        (apply make-instance gx#module-special-form::t _%$args119517%_)))
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
      (lambda _%$args119514%_
        (apply make-instance gx#feature-expander::t _%$args119514%_)))
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
      (lambda _%$args119511%_
        (apply make-instance gx#private-feature-expander::t _%$args119511%_)))
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
      (lambda _%$args119508%_
        (apply make-instance gx#reserved-expander::t _%$args119508%_)))
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
      (lambda _%$args119505%_
        (apply make-instance gx#macro-expander::t _%$args119505%_)))
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
      (lambda _%$args119502%_
        (apply make-instance gx#rename-macro-expander::t _%$args119502%_)))
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
      (lambda _%$args119499%_
        (apply make-instance gx#user-expander::t _%$args119499%_)))
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
      (lambda _%$args119496%_
        (apply make-instance gx#expander-mark::t _%$args119496%_)))
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
      (lambda (_%ctx119480%_
               _%message119481%_
               _%stx119482%_
               .
               _%details119483%_)
        (let ((_%ctx119494%_
               (let ((_%$e119485%_ _%ctx119480%_))
                 (if _%$e119485%_
                     _%$e119485%_
                     (let ((_%$e119488%_ (gx#core-context-top__0)))
                       (if _%$e119488%_
                           ((lambda (_%ctx119491%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx119491%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e119488%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message119481%_
                  (cons _%stx119482%_ _%details119483%_)
                  _%ctx119494%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx119467%_ _%expression?119468%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx119467%_ _%expression?119468%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx119473%_)
        (let ((_%expression?119475%_ '#f))
          (gx#eval-syntax__% _%stx119473%_ _%expression?119475%_))))
    (define gx#eval-syntax
      (lambda _g119931_
        (let ((_g119930_ (##length _g119931_)))
          (cond ((##fx= _g119930_ 1) (apply gx#eval-syntax__0 _g119931_))
                ((##fx= _g119930_ 2) (apply gx#eval-syntax__% _g119931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g119931_))))))
    (define gx#eval-syntax*
      (lambda (_%stx119464%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx119464%_))))
    (define gx#core-expand__%
      (lambda (_%stx119451%_ _%expression?119452%_)
        (if _%expression?119452%_
            (gx#core-expand-expression _%stx119451%_)
            (gx#core-expand-top _%stx119451%_))))
    (define gx#core-expand__0
      (lambda (_%stx119457%_)
        (let ((_%expression?119459%_ '#f))
          (gx#core-expand__% _%stx119457%_ _%expression?119459%_))))
    (define gx#core-expand
      (lambda _g119933_
        (let ((_g119932_ (##length _g119933_)))
          (cond ((##fx= _g119932_ 1) (apply gx#core-expand__0 _g119933_))
                ((##fx= _g119932_ 2) (apply gx#core-expand__% _g119933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g119933_))))))
    (define gx#core-expand-top
      (lambda (_%stx119418%_)
        (let* ((_%stx119420%_ (gx#core-expand*__0 _%stx119418%_))
               (_%e119421119428%_ _%stx119420%_)
               (_%E119423119432%_
                (lambda () (gx#core-expand-expression _%stx119420%_)))
               (_%E119422119446%_
                (lambda ()
                  (if (gx#stx-pair? _%e119421119428%_)
                      (let ((_%e119424119436%_
                             (gx#syntax-e _%e119421119428%_)))
                        (let ((_%hd119425119439%_ (##car _%e119424119436%_))
                              (_%tl119426119441%_ (##cdr _%e119424119436%_)))
                          (let ((_%form119444%_ _%hd119425119439%_))
                            (if (gx#core-bound-identifier?__0 _%form119444%_)
                                _%stx119420%_
                                (_%E119423119432%_)))))
                      (_%E119423119432%_)))))
          (_%E119422119446%_))))
    (define gx#core-expand-expression
      (lambda (_%stx119350%_)
        (letrec ((_%sealed-expression?119352%_
                  (lambda (_%hd119388%_)
                    (if (gx#sealed-syntax? _%hd119388%_)
                        (let* ((_%e119389119396%_ _%hd119388%_)
                               (_%E119391119400%_ (lambda () '#f))
                               (_%E119390119414%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e119389119396%_)
                                      (let ((_%e119392119404%_
                                             (gx#syntax-e _%e119389119396%_)))
                                        (let ((_%hd119393119407%_
                                               (##car _%e119392119404%_))
                                              (_%tl119394119409%_
                                               (##cdr _%e119392119404%_)))
                                          (let ((_%form119412%_
                                                 _%hd119393119407%_))
                                            (gx#core-bound-identifier?__%
                                             _%form119412%_
                                             gx#expression-form-binding?))))
                                      (_%E119391119400%_)))))
                          (_%E119390119414%_))
                        '#f)))
                 (_%illegal-expression119353%_
                  (lambda (_%hd119385%_ . _%_119386%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx119350%_
                     _%hd119385%_)))
                 (_%expand-e119354%_
                  (lambda (_%form119377%_ _%hd119378%_)
                    (let ((_%bind119380%_
                           (if (##structure-instance-of?
                                _%form119377%_
                                'gx#binding::t)
                               _%form119377%_
                               (gx#resolve-identifier__0 _%form119377%_))))
                      (if (gx#core-expander-binding? _%bind119380%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind119380%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd119378%_
                            (gx#stx-source _%stx119350%_)))
                          (if (##structure-direct-instance-of?
                               _%bind119380%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind119380%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd119378%_
                                 (gx#stx-source _%stx119350%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx119350%_
                               _%form119377%_)))))))
          (let ((_%hd119356%_ (gx#core-expand-head _%stx119350%_)))
            (if (_%sealed-expression?119352%_ _%hd119356%_)
                _%hd119356%_
                (if (gx#stx-pair? _%hd119356%_)
                    (let* ((_%form119360%_ (gx#stx-car _%hd119356%_))
                           (_%bind119362%_
                            (if (gx#identifier? _%form119360%_)
                                (gx#resolve-identifier__0 _%form119360%_)
                                '#f)))
                      (if (or (not _%bind119362%_)
                              (not (gx#core-expander-binding? _%bind119362%_)))
                          (_%expand-e119354%_
                           '%%app
                           (cons '%%app _%hd119356%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind119362%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd119356%_
                               _%illegal-expression119353%_)
                              (if (gx#expression-form-binding? _%bind119362%_)
                                  (_%expand-e119354%_
                                   _%bind119362%_
                                   _%hd119356%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind119362%_)
                                      (gx#core-expand-expression
                                       (_%expand-e119354%_
                                        _%bind119362%_
                                        _%hd119356%_))
                                      (_%illegal-expression119353%_
                                       _%hd119356%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd119356%_)
                        (_%illegal-expression119353%_ _%hd119356%_)
                        (if (gx#identifier? _%hd119356%_)
                            (_%expand-e119354%_
                             '%%ref
                             (cons '%%ref (cons _%hd119356%_ '())))
                            (if (gx#stx-datum? _%hd119356%_)
                                (_%expand-e119354%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd119356%_ '())))
                                (_%illegal-expression119353%_
                                 _%hd119356%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx119345%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx119348%_ (gx#core-expand-expression _%stx119345%_)))
             (values _%stx119348%_ (gx#eval-syntax* _%stx119348%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx119326%_ _%stop?119327%_)
        (let _%lp119329%_ ((_%stx119331%_ _%stx119326%_))
          (if (_%stop?119327%_ _%stx119331%_)
              _%stx119331%_
              (let ((_%rstx119333%_ (gx#core-expand1 _%stx119331%_)))
                (if (eq? _%stx119331%_ _%rstx119333%_)
                    _%stx119331%_
                    (_%lp119329%_ _%rstx119333%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx119338%_)
        (let ((_%stop?119340%_ false))
          (gx#core-expand*__% _%stx119338%_ _%stop?119340%_))))
    (define gx#core-expand*
      (lambda _g119935_
        (let ((_g119934_ (##length _g119935_)))
          (cond ((##fx= _g119934_ 1) (apply gx#core-expand*__0 _g119935_))
                ((##fx= _g119934_ 2) (apply gx#core-expand*__% _g119935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g119935_))))))
    (define gx#core-expand1
      (lambda (_%stx119278%_)
        (letrec ((_%step119280%_
                  (lambda (_%hd119317%_)
                    (let ((_%bind119319%_
                           (gx#resolve-identifier__0 _%hd119317%_)))
                      (if (##structure-instance-of?
                           _%bind119319%_
                           'gx#runtime-binding::t)
                          _%stx119278%_
                          (if (##structure-direct-instance-of?
                               _%bind119319%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind119319%_
                                '4
                                '#f
                                '#f)
                               _%stx119278%_)
                              (if (not _%bind119319%_)
                                  _%stx119278%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx119278%_))))))))
          (let* ((_%e119281119289%_ _%stx119278%_)
                 (_%E119287119293%_ (lambda () _%stx119278%_))
                 (_%E119283119299%_
                  (lambda ()
                    (let ((_%hd119297%_ _%e119281119289%_))
                      (if (gx#identifier? _%hd119297%_)
                          (_%step119280%_ _%hd119297%_)
                          (_%E119287119293%_)))))
                 (_%E119282119313%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119281119289%_)
                        (let ((_%e119284119303%_
                               (gx#syntax-e _%e119281119289%_)))
                          (let ((_%hd119285119306%_ (##car _%e119284119303%_))
                                (_%tl119286119308%_ (##cdr _%e119284119303%_)))
                            (let ((_%hd119311%_ _%hd119285119306%_))
                              (if (gx#identifier? _%hd119311%_)
                                  (_%step119280%_ _%hd119311%_)
                                  (_%E119283119299%_)))))
                        (_%E119283119299%_)))))
            (_%E119282119313%_)))))
    (define gx#core-expand-head
      (lambda (_%stx119244%_)
        (letrec ((_%stop?119246%_
                  (lambda (_%stx119248%_)
                    (let* ((_%e119249119256%_ _%stx119248%_)
                           (_%E119251119260%_ (lambda () '#f))
                           (_%E119250119274%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119249119256%_)
                                  (let ((_%e119252119264%_
                                         (gx#syntax-e _%e119249119256%_)))
                                    (let ((_%hd119253119267%_
                                           (##car _%e119252119264%_))
                                          (_%tl119254119269%_
                                           (##cdr _%e119252119264%_)))
                                      (let ((_%hd119272%_ _%hd119253119267%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd119272%_))))
                                  (_%E119251119260%_)))))
                      (_%E119250119274%_)))))
          (gx#core-expand*__% _%stx119244%_ _%stop?119246%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx119050%_
               _%expand-special119051%_
               _%begin-form119052%_
               _%expand-e119053%_)
        (letrec ((_%expand-splice119055%_
                  (lambda (_%hd119218%_
                           _%body119219%_
                           _%rest119220%_
                           _%r119221%_)
                    (if (gx#stx-list? _%body119219%_)
                        (_%K119059%_
                         (gx#stx-foldr cons _%rest119220%_ _%body119219%_)
                         _%r119221%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx119050%_
                         _%hd119218%_))))
                 (_%expand-cond-expand119056%_
                  (lambda (_%hd119214%_ _%rest119215%_ _%r119216%_)
                    (_%K119059%_
                     (cons (gx#core-expand-cond-expand% _%hd119214%_)
                           _%rest119215%_)
                     _%r119216%_)))
                 (_%expand-include119057%_
                  (lambda (_%hd119163%_ _%rest119164%_ _%r119165%_)
                    (let* ((_%e119166119176%_ _%hd119163%_)
                           (_%E119168119180%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e119166119176%_)))
                           (_%E119167119210%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119166119176%_)
                                  (let ((_%e119169119184%_
                                         (gx#syntax-e _%e119166119176%_)))
                                    (let ((_%hd119170119187%_
                                           (##car _%e119169119184%_))
                                          (_%tl119171119189%_
                                           (##cdr _%e119169119184%_)))
                                      (if (gx#stx-pair? _%tl119171119189%_)
                                          (let ((_%e119172119192%_
                                                 (gx#syntax-e
                                                  _%tl119171119189%_)))
                                            (let ((_%hd119173119195%_
                                                   (##car _%e119172119192%_))
                                                  (_%tl119174119197%_
                                                   (##cdr _%e119172119192%_)))
                                              (let ((_%path119200%_
                                                     _%hd119173119195%_))
                                                (if (gx#stx-null?
                                                     _%tl119174119197%_)
                                                    (if (gx#stx-string?
                                                         _%path119200%_)
                                                        (let* ((_%rpath119202%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path119200%_
                         (gx#stx-source _%hd119163%_)))
                       (_%block119204%_
                        (gx#core-expand-include%__%
                         _%hd119163%_
                         _%rpath119202%_))
                       (_%rbody119207%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block119204%_
                            _%expand-special119051%_
                            '#f
                            _%expand-e119053%_))
                         gx#current-expander-path
                         (cons _%rpath119202%_ (gx#current-expander-path)))))
                  (_%K119059%_
                   _%rest119164%_
                   (__foldr1 cons _%r119165%_ _%rbody119207%_)))
                (_%E119168119180%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119168119180%_)))))
                                          (_%E119168119180%_))))
                                  (_%E119168119180%_)))))
                      (_%E119167119210%_))))
                 (_%expand-expression119058%_
                  (lambda (_%hd119159%_ _%rest119160%_ _%r119161%_)
                    (_%K119059%_
                     _%rest119160%_
                     (cons (_%expand-e119053%_ _%hd119159%_) _%r119161%_))))
                 (_%K119059%_
                  (lambda (_%rest119089%_ _%r119090%_)
                    (let* ((_%e119091119098%_ _%rest119089%_)
                           (_%E119093119102%_
                            (lambda ()
                              (if _%begin-form119052%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form119052%_
                                    (reverse _%r119090%_))
                                   (gx#stx-source _%stx119050%_))
                                  _%r119090%_)))
                           (_%E119092119155%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119091119098%_)
                                  (let ((_%e119094119106%_
                                         (gx#syntax-e _%e119091119098%_)))
                                    (let ((_%hd119095119109%_
                                           (##car _%e119094119106%_))
                                          (_%tl119096119111%_
                                           (##cdr _%e119094119106%_)))
                                      (let* ((_%hd119114%_ _%hd119095119109%_)
                                             (_%rest119116%_
                                              _%tl119096119111%_)
                                             (_%hd119118%_
                                              (gx#core-expand-head
                                               _%hd119114%_))
                                             (_%e119119119126%_ _%hd119118%_)
                                             (_%E119121119130%_
                                              (lambda ()
                                                (_%expand-expression119058%_
                                                 _%hd119118%_
                                                 _%rest119116%_
                                                 _%r119090%_)))
                                             (_%E119120119151%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e119119119126%_)
                                                    (let ((_%e119122119134%_
                                                           (gx#syntax-e
                                                            _%e119119119126%_)))
                                                      (let ((_%hd119123119137%_
                                                             (##car _%e119122119134%_))
                                                            (_%tl119124119139%_
                                                             (##cdr _%e119122119134%_)))
                                                        (let* ((_%form119142%_
                                                                _%hd119123119137%_)
                                                               (_%body119144%_
                                                                _%tl119124119139%_)
                                                               (_%bind119146%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form119142%_)
                            (gx#resolve-identifier__0 _%form119142%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind119146%_)
                      (let ((_%$e119148%_
                             (##unchecked-structure-ref
                              _%bind119146%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e119148%_)
                            (_%expand-splice119055%_
                             _%hd119118%_
                             _%body119144%_
                             _%rest119116%_
                             _%r119090%_)
                            (if (eq? '%#cond-expand _%$e119148%_)
                                (_%expand-cond-expand119056%_
                                 _%hd119118%_
                                 _%rest119116%_
                                 _%r119090%_)
                                (if (eq? '%#include _%$e119148%_)
                                    (_%expand-include119057%_
                                     _%hd119118%_
                                     _%rest119116%_
                                     _%r119090%_)
                                    (_%expand-special119051%_
                                     _%hd119118%_
                                     _%K119059%_
                                     _%rest119116%_
                                     _%r119090%_)))))
                      (_%expand-expression119058%_
                       _%hd119118%_
                       _%rest119116%_
                       _%r119090%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119121119130%_)))))
                                        (_%E119120119151%_))))
                                  (_%E119093119102%_)))))
                      (_%E119092119155%_)))))
          (let* ((_%e119060119067%_ _%stx119050%_)
                 (_%E119062119071%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119060119067%_)))
                 (_%E119061119085%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119060119067%_)
                        (let ((_%e119063119075%_
                               (gx#syntax-e _%e119060119067%_)))
                          (let ((_%hd119064119078%_ (##car _%e119063119075%_))
                                (_%tl119065119080%_ (##cdr _%e119063119075%_)))
                            (let ((_%body119083%_ _%tl119065119080%_))
                              (if (gx#stx-list? _%body119083%_)
                                  (_%K119059%_ _%body119083%_ '())
                                  (_%E119062119071%_)))))
                        (_%E119062119071%_)))))
            (_%E119061119085%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx119226%_ _%expand-special119227%_)
        (let* ((_%begin-form119229%_ '%#begin)
               (_%expand-e119231%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx119226%_
           _%expand-special119227%_
           _%begin-form119229%_
           _%expand-e119231%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx119233%_ _%expand-special119234%_ _%begin-form119235%_)
        (let ((_%expand-e119237%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx119233%_
           _%expand-special119234%_
           _%begin-form119235%_
           _%expand-e119237%_))))
    (define gx#core-expand-block
      (lambda _g119937_
        (let ((_g119936_ (##length _g119937_)))
          (cond ((##fx= _g119936_ 2) (apply gx#core-expand-block__0 _g119937_))
                ((##fx= _g119936_ 3) (apply gx#core-expand-block__1 _g119937_))
                ((##fx= _g119936_ 4) (apply gx#core-expand-block__% _g119937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g119937_))))))
    (define gx#core-expand-block*
      (lambda (_%stx118998%_ _%expand-special118999%_)
        (let* ((_%g119000119011%_
                (gx#core-expand-block__1
                 _%stx118998%_
                 _%expand-special118999%_
                 '#f))
               (_%E119004119015%_
                (lambda ()
                  (error '"No clause matching"
                         _%g119000119011%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K119009119046%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx118998%_)))
                (_%K119006119032%_ (lambda (_%expr119030%_) _%expr119030%_))
                (_%K119005119021%_
                 (lambda (_%body119019%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body119019%_))
                    (gx#stx-source _%stx118998%_)))))
            (let ((_%try-match119002119042%_
                   (lambda ()
                     (if (##pair? _%g119000119011%_)
                         (let ((_%tl119008119037%_ (##cdr _%g119000119011%_))
                               (_%hd119007119035%_ (##car _%g119000119011%_)))
                           (if (##null? _%tl119008119037%_)
                               (let ((_%expr119040%_ _%hd119007119035%_))
                                 (_%K119006119032%_ _%expr119040%_))
                               (let ((_%body119024%_ _%g119000119011%_))
                                 (_%K119005119021%_ _%body119024%_))))
                         (let ((_%body119024%_ _%g119000119011%_))
                           (_%K119005119021%_ _%body119024%_))))))
              (if (##null? _%g119000119011%_)
                  (_%K119009119046%_)
                  (_%try-match119002119042%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx118823%_)
        (letrec ((_%satisfied?118825%_
                  (lambda (_%condition118926%_)
                    (let* ((_%e118927118942%_ _%condition118926%_)
                           (_%E118937118946%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118927118942%_)))
                           (_%E118930118965%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118927118942%_)
                                  (let ((_%e118938118950%_
                                         (gx#syntax-e _%e118927118942%_)))
                                    (let ((_%hd118939118953%_
                                           (##car _%e118938118950%_))
                                          (_%tl118940118955%_
                                           (##cdr _%e118938118950%_)))
                                      (let* ((_%combinator118958%_
                                              _%hd118939118953%_)
                                             (_%body118960%_
                                              _%tl118940118955%_))
                                        (if (gx#stx-list? _%body118960%_)
                                            (let ((_%$e118962%_
                                                   (gx#stx-e
                                                    _%combinator118958%_)))
                                              (if (eq? 'not _%$e118962%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?118825%_
                                                        _%body118960%_))
                                                  (if (eq? 'and _%$e118962%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?118825%_
                                                       _%body118960%_)
                                                      (if (eq? 'or
                                                               _%$e118962%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?118825%_
                                                           _%body118960%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e118962%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body118960%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx118823%_
                       _%combinator118958%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E118937118946%_)))))
                                  (_%E118937118946%_))))
                           (_%E118929118988%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118927118942%_)
                                  (let ((_%e118931118969%_
                                         (gx#syntax-e _%e118927118942%_)))
                                    (let ((_%hd118932118972%_
                                           (##car _%e118931118969%_))
                                          (_%tl118933118974%_
                                           (##cdr _%e118931118969%_)))
                                      (if (and (gx#identifier?
                                                _%hd118932118972%_)
                                               (gx#core-identifier=?
                                                _%hd118932118972%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl118933118974%_)
                                              (let ((_%e118934118977%_
                                                     (gx#syntax-e
                                                      _%tl118933118974%_)))
                                                (let ((_%hd118935118980%_
                                                       (##car _%e118934118977%_))
                                                      (_%tl118936118982%_
                                                       (##cdr _%e118934118977%_)))
                                                  (let ((_%expr118985%_
                                                         _%hd118935118980%_))
                                                    (if (gx#stx-null?
                                                         _%tl118936118982%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr118985%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E118930118965%_)))))
                                              (_%E118930118965%_))
                                          (_%E118930118965%_))))
                                  (_%E118930118965%_))))
                           (_%E118928118994%_
                            (lambda ()
                              (let ((_%id118992%_ _%e118927118942%_))
                                (if (gx#identifier? _%id118992%_)
                                    (gx#core-bound-identifier?__%
                                     _%id118992%_
                                     gx#feature-binding?)
                                    (_%E118929118988%_))))))
                      (_%E118928118994%_))))
                 (_%loop118826%_
                  (lambda (_%rest118856%_)
                    (let* ((_%e118857118865%_ _%rest118856%_)
                           (_%E118863118869%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118857118865%_)))
                           (_%E118859118873%_
                            (lambda ()
                              (if (gx#stx-null? _%e118857118865%_)
                                  '()
                                  (_%E118863118869%_))))
                           (_%E118858118922%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118857118865%_)
                                  (let ((_%e118860118877%_
                                         (gx#syntax-e _%e118857118865%_)))
                                    (let ((_%hd118861118880%_
                                           (##car _%e118860118877%_))
                                          (_%tl118862118882%_
                                           (##cdr _%e118860118877%_)))
                                      (let* ((_%hd118885%_ _%hd118861118880%_)
                                             (_%rest118887%_
                                              _%tl118862118882%_)
                                             (_%e118888118895%_ _%hd118885%_)
                                             (_%E118890118899%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e118888118895%_)))
                                             (_%E118889118918%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e118888118895%_)
                                                    (let ((_%e118891118903%_
                                                           (gx#syntax-e
                                                            _%e118888118895%_)))
                                                      (let ((_%hd118892118906%_
                                                             (##car _%e118891118903%_))
                                                            (_%tl118893118908%_
                                                             (##cdr _%e118891118903%_)))
                                                        (let* ((_%condition118911%_
                                                                _%hd118892118906%_)
                                                               (_%body118913%_
                                                                _%tl118893118908%_))
                                                          (if (gx#stx-eq?
                                                               _%condition118911%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest118887%_)
                          _%body118913%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx118823%_
                           _%hd118885%_))
                      (if (_%satisfied?118825%_ _%condition118911%_)
                          _%body118913%_
                          (_%loop118826%_ _%rest118887%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118890118899%_)))))
                                        (_%E118889118918%_))))
                                  (_%E118859118873%_)))))
                      (_%E118858118922%_)))))
          (let* ((_%e118827118834%_ _%stx118823%_)
                 (_%E118829118838%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118827118834%_)))
                 (_%E118828118852%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118827118834%_)
                        (let ((_%e118830118842%_
                               (gx#syntax-e _%e118827118834%_)))
                          (let ((_%hd118831118845%_ (##car _%e118830118842%_))
                                (_%tl118832118847%_ (##cdr _%e118830118842%_)))
                            (let ((_%clauses118850%_ _%tl118832118847%_))
                              (if (gx#stx-list? _%clauses118850%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop118826%_ _%clauses118850%_))
                                  (_%E118829118838%_)))))
                        (_%E118829118838%_)))))
            (_%E118828118852%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx118766%_ _%rpath118767%_)
        (let* ((_%e118768118778%_ _%stx118766%_)
               (_%E118770118782%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118768118778%_)))
               (_%E118769118809%_
                (lambda ()
                  (if (gx#stx-pair? _%e118768118778%_)
                      (let ((_%e118771118786%_
                             (gx#syntax-e _%e118768118778%_)))
                        (let ((_%hd118772118789%_ (##car _%e118771118786%_))
                              (_%tl118773118791%_ (##cdr _%e118771118786%_)))
                          (if (gx#stx-pair? _%tl118773118791%_)
                              (let ((_%e118774118794%_
                                     (gx#syntax-e _%tl118773118791%_)))
                                (let ((_%hd118775118797%_
                                       (##car _%e118774118794%_))
                                      (_%tl118776118799%_
                                       (##cdr _%e118774118794%_)))
                                  (let ((_%path118802%_ _%hd118775118797%_))
                                    (if (gx#stx-null? _%tl118776118799%_)
                                        (if (gx#stx-string? _%path118802%_)
                                            (let ((_%rpath118807%_
                                                   (let ((_%$e118804%_
                                                          _%rpath118767%_))
                                                     (if _%$e118804%_
                                                         _%$e118804%_
                                                         (gx#core-resolve-path__%
                                                          _%path118802%_
                                                          (gx#stx-source
                                                           _%stx118766%_))))))
                                              (if (member _%rpath118807%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx118766%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath118807%_))
                                                    (gx#stx-source
                                                     _%stx118766%_)))))
                                            (_%E118770118782%_))
                                        (_%E118770118782%_)))))
                              (_%E118770118782%_))))
                      (_%E118770118782%_)))))
          (_%E118769118809%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx118816%_)
        (let ((_%rpath118818%_ '#f))
          (gx#core-expand-include%__% _%stx118816%_ _%rpath118818%_))))
    (define gx#core-expand-include%
      (lambda _g119939_
        (let ((_g119938_ (##length _g119939_)))
          (cond ((##fx= _g119938_ 1)
                 (apply gx#core-expand-include%__0 _g119939_))
                ((##fx= _g119938_ 2)
                 (apply gx#core-expand-include%__% _g119939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g119939_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K118732%_ _%stx118733%_ _%method118734%_)
        (if (procedure? _%K118732%_)
            (let ((_%$e118737%_ (gx#stx-source _%stx118733%_)))
              (if _%$e118737%_
                  ((lambda (_%g118739118741%_)
                     (gx#stx-wrap-source
                      (_%K118732%_ _%stx118733%_)
                      _%g118739118741%_))
                   _%$e118737%_)
                  (_%K118732%_ _%stx118733%_)))
            (let ((_%$e118745%_
                   (bound-method-ref _%K118732%_ _%method118734%_)))
              (if _%$e118745%_
                  ((lambda (_%g118747118749%_)
                     (gx#core-apply-expander__%
                      _%g118747118749%_
                      _%stx118733%_
                      _%method118734%_))
                   _%$e118745%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx118733%_
                   _%method118734%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K118756%_ _%stx118757%_)
        (let ((_%method118759%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K118756%_
           _%stx118757%_
           _%method118759%_))))
    (define gx#core-apply-expander
      (lambda _g119941_
        (let ((_g119940_ (##length _g119941_)))
          (cond ((##fx= _g119940_ 2)
                 (apply gx#core-apply-expander__0 _g119941_))
                ((##fx= _g119940_ 3)
                 (apply gx#core-apply-expander__% _g119941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g119941_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116774118715%_ _%stx118717%_)
        (let* ((_%self118719%_ _%self116774118715%_)
               (_%self118721%_ _%self118719%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx118717%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116775118555%_ _%stx118557%_)
        (let* ((_%self118559%_ _%self116775118555%_)
               (_%self118561%_ _%self118559%_)
               (_%self118570118576%_ _%self118561%_)
               (_%E118572118580%_
                (lambda ()
                  (error '"No clause matching"
                         _%self118570118576%_
                         '((macro-expander K)))
                  '#!void))
               (_%K118573118585%_
                (lambda (_%K118583%_)
                  (gx#core-apply-expander__0 _%K118583%_ _%stx118557%_)))
               (_%e118574118588%_
                (##unchecked-structure-ref _%self118570118576%_ '1 '#f '#f))
               (_%K118591%_ _%e118574118588%_))
          (_%K118573118585%_ _%K118591%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116776118395%_ _%stx118397%_)
        (let* ((_%self118399%_ _%self116776118395%_)
               (_%self118401%_ _%self118399%_))
          (if (gx#sealed-syntax? _%stx118397%_)
              _%stx118397%_
              (let* ((_%self118410118416%_ _%self118401%_)
                     (_%E118412118420%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self118410118416%_
                               '((core-expander K)))
                        '#!void))
                     (_%K118413118425%_
                      (lambda (_%K118423%_)
                        (gx#core-apply-expander__0 _%K118423%_ _%stx118397%_)))
                     (_%e118414118428%_
                      (##unchecked-structure-ref
                       _%self118410118416%_
                       '1
                       '#f
                       '#f))
                     (_%K118431%_ _%e118414118428%_))
                (_%K118413118425%_ _%K118431%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116777118244%_ _%stx118246%_ _%top?118247%_)
        (let* ((_%self118249%_ _%self116777118244%_)
               (_%self118251%_ _%self118249%_))
          (if (_%top?118247%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self118251%_
               _%stx118246%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx118246%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116777118264%_ _%stx118265%_)
        (let ((_%top?118267%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116777118264%_
           _%stx118265%_
           _%top?118267%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g119943_
        (let ((_g119942_ (##length _g119943_)))
          (cond ((##fx= _g119942_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g119943_))
                ((##fx= _g119942_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g119943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g119943_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116778118105%_ _%stx118107%_)
        (let* ((_%self118109%_ _%self116778118105%_)
               (_%self118111%_ _%self118109%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self118111%_
           _%stx118107%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116779117917%_ _%stx117919%_)
        (let* ((_%self117921%_ _%self116779117917%_)
               (_%self117923%_ _%self117921%_)
               (_%self117932117938%_ _%self117923%_)
               (_%E117934117942%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117932117938%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K117935117975%_
                (lambda (_%id117945%_)
                  (let* ((_%e117946117953%_ _%stx117919%_)
                         (_%E117948117957%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e117946117953%_)))
                         (_%E117947117971%_
                          (lambda ()
                            (if (gx#stx-pair? _%e117946117953%_)
                                (let ((_%e117949117961%_
                                       (gx#syntax-e _%e117946117953%_)))
                                  (let ((_%hd117950117964%_
                                         (##car _%e117949117961%_))
                                        (_%tl117951117966%_
                                         (##cdr _%e117949117961%_)))
                                    (let ((_%body117969%_ _%tl117951117966%_))
                                      (gx#core-cons
                                       _%id117945%_
                                       _%body117969%_))))
                                (_%E117948117957%_)))))
                    (_%E117947117971%_))))
               (_%e117936117978%_
                (##unchecked-structure-ref _%self117932117938%_ '1 '#f '#f))
               (_%id117981%_ _%e117936117978%_))
          (_%K117935117975%_ _%id117981%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self117743%_ _%stx117744%_ _%method117745%_)
        (let* ((_%self117746117754%_ _%self117743%_)
               (_%E117748117758%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117746117754%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K117749117765%_
                (lambda (_%phi117761%_ _%ctx117762%_ _%K117763%_)
                  (gx#core-apply-user-macro
                   _%K117763%_
                   _%stx117744%_
                   _%ctx117762%_
                   _%phi117761%_
                   _%method117745%_))))
          (if (##structure-instance-of?
               _%self117746117754%_
               'gx#user-expander::t)
              (let* ((_%e117750117768%_
                      (##unchecked-structure-ref
                       _%self117746117754%_
                       '1
                       '#f
                       '#f))
                     (_%K117771%_ _%e117750117768%_)
                     (_%e117751117773%_
                      (##unchecked-structure-ref
                       _%self117746117754%_
                       '2
                       '#f
                       '#f))
                     (_%ctx117776%_ _%e117751117773%_)
                     (_%e117752117778%_
                      (##unchecked-structure-ref
                       _%self117746117754%_
                       '3
                       '#f
                       '#f))
                     (_%phi117781%_ _%e117752117778%_))
                (_%K117749117765%_ _%phi117781%_ _%ctx117776%_ _%K117771%_))
              (_%E117748117758%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self117786%_ _%stx117787%_)
        (let ((_%method117789%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self117786%_
           _%stx117787%_
           _%method117789%_))))
    (define gx#core-apply-user-expander
      (lambda _g119945_
        (let ((_g119944_ (##length _g119945_)))
          (cond ((##fx= _g119944_ 2)
                 (apply gx#core-apply-user-expander__0 _g119945_))
                ((##fx= _g119944_ 3)
                 (apply gx#core-apply-user-expander__% _g119945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g119945_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K117733%_
               _%stx117734%_
               _%ctx117735%_
               _%phi117736%_
               _%method117737%_)
        (let ((_%mark117739%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx117735%_
                _%phi117736%_
                _%stx117734%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K117733%_
               (gx#stx-apply-mark _%stx117734%_ _%mark117739%_)
               _%method117737%_)
              _%mark117739%_))
           gx#current-expander-marks
           (cons _%mark117739%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx117581%_ _%phi117582%_ _%ctx117583%_)
        (let _%lp117585%_ ((_%bind117587%_
                            (gx#core-resolve-identifier__%
                             _%stx117581%_
                             _%phi117582%_
                             _%ctx117583%_)))
          (if (##structure-direct-instance-of?
               _%bind117587%_
               'gx#import-binding::t)
              (_%lp117585%_
               (##unchecked-structure-ref _%bind117587%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind117587%_
                   'gx#alias-binding::t)
                  (_%lp117585%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind117587%_ '4 '#f '#f)
                    _%phi117582%_
                    _%ctx117583%_))
                  _%bind117587%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx117595%_)
        (let* ((_%phi117597%_ (gx#current-expander-phi))
               (_%ctx117599%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117595%_
           _%phi117597%_
           _%ctx117599%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx117601%_ _%phi117602%_)
        (let ((_%ctx117604%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117601%_
           _%phi117602%_
           _%ctx117604%_))))
    (define gx#resolve-identifier
      (lambda _g119947_
        (let ((_g119946_ (##length _g119947_)))
          (cond ((##fx= _g119946_ 1)
                 (apply gx#resolve-identifier__0 _g119947_))
                ((##fx= _g119946_ 2)
                 (apply gx#resolve-identifier__1 _g119947_))
                ((##fx= _g119946_ 3)
                 (apply gx#resolve-identifier__% _g119947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g119947_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx117536%_
               _%val117537%_
               _%rebind?117538%_
               _%phi117539%_
               _%ctx117540%_)
        (let ((_%rebind?117545%_
               (if (not _%rebind?117538%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?117538%_)
                       _%rebind?117538%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx117536%_)
           _%val117537%_
           _%rebind?117545%_
           _%phi117539%_
           _%ctx117540%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx117550%_ _%val117551%_)
        (let* ((_%rebind?117553%_ '#f)
               (_%phi117555%_ (gx#current-expander-phi))
               (_%ctx117557%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117550%_
           _%val117551%_
           _%rebind?117553%_
           _%phi117555%_
           _%ctx117557%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx117559%_ _%val117560%_ _%rebind?117561%_)
        (let* ((_%phi117563%_ (gx#current-expander-phi))
               (_%ctx117565%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117559%_
           _%val117560%_
           _%rebind?117561%_
           _%phi117563%_
           _%ctx117565%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx117567%_ _%val117568%_ _%rebind?117569%_ _%phi117570%_)
        (let ((_%ctx117572%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117567%_
           _%val117568%_
           _%rebind?117569%_
           _%phi117570%_
           _%ctx117572%_))))
    (define gx#bind-identifier!
      (lambda _g119949_
        (let ((_g119948_ (##length _g119949_)))
          (cond ((##fx= _g119948_ 2) (apply gx#bind-identifier!__0 _g119949_))
                ((##fx= _g119948_ 3) (apply gx#bind-identifier!__1 _g119949_))
                ((##fx= _g119948_ 4) (apply gx#bind-identifier!__2 _g119949_))
                ((##fx= _g119948_ 5) (apply gx#bind-identifier!__% _g119949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g119949_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx117502%_ _%phi117503%_ _%ctx117504%_)
        (let _%lp117506%_ ((_%e117508%_ _%stx117502%_)
                           (_%marks117509%_ (gx#current-expander-marks)))
          (if (symbol? _%e117508%_)
              (gx#core-resolve-binding
               _%e117508%_
               _%phi117503%_
               _%phi117503%_
               _%ctx117504%_
               (reverse _%marks117509%_))
              (if (gx#identifier-quote? _%e117508%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e117508%_ '1 '#f '#f)
                   _%phi117503%_
                   '0
                   (##unchecked-structure-ref _%e117508%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e117508%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e117508%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e117508%_ '1 '#f '#f)
                       _%phi117503%_
                       _%phi117503%_
                       _%ctx117504%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e117508%_ '3 '#f '#f)
                        _%marks117509%_))
                      (if (##structure-direct-instance-of?
                           _%e117508%_
                           'gx#syntax-wrap::t)
                          (_%lp117506%_
                           (##unchecked-structure-ref _%e117508%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e117508%_ '3 '#f '#f)
                            _%marks117509%_))
                          (if (##structure-instance-of?
                               _%e117508%_
                               'gerbil#AST::t)
                              (_%lp117506%_
                               (##unchecked-structure-ref
                                _%e117508%_
                                '1
                                '#f
                                '#f)
                               _%marks117509%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx117502%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx117520%_)
        (let* ((_%phi117522%_ (gx#current-expander-phi))
               (_%ctx117524%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117520%_
           _%phi117522%_
           _%ctx117524%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx117526%_ _%phi117527%_)
        (let ((_%ctx117529%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117526%_
           _%phi117527%_
           _%ctx117529%_))))
    (define gx#core-resolve-identifier
      (lambda _g119951_
        (let ((_g119950_ (##length _g119951_)))
          (cond ((##fx= _g119950_ 1)
                 (apply gx#core-resolve-identifier__0 _g119951_))
                ((##fx= _g119950_ 2)
                 (apply gx#core-resolve-identifier__1 _g119951_))
                ((##fx= _g119950_ 3)
                 (apply gx#core-resolve-identifier__% _g119951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g119951_))))))
    (define gx#core-resolve-binding
      (lambda (_%id117412%_
               _%phi117413%_
               _%src-phi117414%_
               _%ctx117415%_
               _%marks117416%_)
        (letrec ((_%resolve117418%_
                  (lambda (_%ctx117486%_ _%src-phi117487%_ _%key117488%_)
                    (let _%lp117490%_ ((_%ctx117492%_
                                        (gx#core-context-shift
                                         _%ctx117486%_
                                         _%phi117413%_))
                                       (_%dphi117493%_
                                        (fx- _%phi117413%_ _%src-phi117487%_)))
                      (let ((_%$e117495%_
                             (gx#core-context-resolve
                              _%ctx117492%_
                              _%key117488%_)))
                        (if _%$e117495%_
                            _%$e117495%_
                            (if (fxzero? _%dphi117493%_)
                                '#f
                                (if (fxpositive? _%dphi117493%_)
                                    (_%lp117490%_
                                     (gx#core-context-shift _%ctx117492%_ '-1)
                                     (##fx- _%dphi117493%_ '1))
                                    (_%lp117490%_
                                     (gx#core-context-shift _%ctx117492%_ '1)
                                     (##fx+ _%dphi117493%_ '1))))))))))
          (let _%lp117420%_ ((_%ctx117422%_ _%ctx117415%_)
                             (_%src-phi117423%_ _%src-phi117414%_)
                             (_%rest117424%_ _%marks117416%_))
            (let* ((_%rest117425117433%_ _%rest117424%_)
                   (_%else117427117441%_
                    (lambda ()
                      (_%resolve117418%_
                       _%ctx117422%_
                       _%src-phi117423%_
                       _%id117412%_)))
                   (_%K117429117474%_
                    (lambda (_%rest117444%_ _%hd117445%_)
                      (let* ((_%hd117446117452%_ _%hd117445%_)
                             (_%E117448117456%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd117446117452%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K117449117466%_
                              (lambda (_%subst117459%_)
                                (let ((_%$e117463%_
                                       (let ((_%key117461%_
                                              (if _%subst117459%_
                                                  (hash-get
                                                   _%subst117459%_
                                                   _%id117412%_)
                                                  '#f)))
                                         (if _%key117461%_
                                             (_%resolve117418%_
                                              _%ctx117422%_
                                              _%src-phi117423%_
                                              _%key117461%_)
                                             '#f))))
                                  (if _%$e117463%_
                                      _%$e117463%_
                                      (_%lp117420%_
                                       (##unchecked-structure-ref
                                        _%hd117445%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd117445%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest117444%_))))))
                        (if (##structure-instance-of?
                             _%hd117446117452%_
                             'gx#expander-mark::t)
                            (let* ((_%e117450117469%_
                                    (##unchecked-structure-ref
                                     _%hd117446117452%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst117472%_ _%e117450117469%_))
                              (_%K117449117466%_ _%subst117472%_))
                            (_%E117448117456%_))))))
              (if (##pair? _%rest117425117433%_)
                  (let ((_%hd117430117477%_ (##car _%rest117425117433%_))
                        (_%tl117431117479%_ (##cdr _%rest117425117433%_)))
                    (let* ((_%hd117482%_ _%hd117430117477%_)
                           (_%rest117484%_ _%tl117431117479%_))
                      (_%K117429117474%_ _%rest117484%_ _%hd117482%_)))
                  (_%else117427117441%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key117282%_
               _%val117283%_
               _%rebind?117284%_
               _%phi117285%_
               _%ctx117286%_)
        (letrec ((_%update-binding117288%_
                  (lambda (_%xval117361%_)
                    (if (or (_%rebind?117284%_
                             _%ctx117286%_
                             _%xval117361%_
                             _%val117283%_)
                            (and (##structure-direct-instance-of?
                                  _%xval117361%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval117361%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val117283%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val117283%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval117361%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val117283%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val117283%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval117361%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val117283%_
                        (if (and (##structure-direct-instance-of?
                                  _%val117283%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val117283%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval117361%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val117283%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval117361%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval117361%_
                            (if (and (##structure-direct-instance-of?
                                      _%val117283%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval117361%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key117282%_
                                 (cons (##unchecked-structure-ref
                                        _%val117283%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val117283%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval117361%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval117361%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval117361%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval117361%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key117282%_
                                 _%val117283%_
                                 _%xval117361%_))))))
                 (_%gensubst117289%_
                  (lambda (_%subst117356%_ _%id117357%_)
                    (let ((_%eid117359%_
                           (gensym (if (uninterned-symbol? _%id117357%_)
                                       '%
                                       _%id117357%_))))
                      (hash-put! _%subst117356%_ _%id117357%_ _%eid117359%_)
                      _%eid117359%_)))
                 (_%subst!117290%_
                  (lambda (_%key117292%_)
                    (let* ((_%key117293117301%_ _%key117292%_)
                           (_%else117295117309%_ (lambda () _%key117292%_))
                           (_%K117297117344%_
                            (lambda (_%mark117312%_ _%id117313%_)
                              (let* ((_%mark117314117320%_ _%mark117312%_)
                                     (_%E117316117324%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark117314117320%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K117317117336%_
                                      (lambda (_%subst117327%_)
                                        (if (not _%subst117327%_)
                                            (let ((_%subst117330%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark117312%_
                                               _%subst117330%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst117289%_
                                               _%subst117330%_
                                               _%id117313%_))
                                            (let ((_%$e117332%_
                                                   (hash-get
                                                    _%subst117327%_
                                                    _%id117313%_)))
                                              (if _%$e117332%_
                                                  _%$e117332%_
                                                  (_%gensubst117289%_
                                                   _%subst117327%_
                                                   _%id117313%_)))))))
                                (if (##structure-instance-of?
                                     _%mark117314117320%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e117318117339%_
                                            (##unchecked-structure-ref
                                             _%mark117314117320%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst117342%_ _%e117318117339%_))
                                      (_%K117317117336%_ _%subst117342%_))
                                    (_%E117316117324%_))))))
                      (if (##pair? _%key117293117301%_)
                          (let ((_%hd117298117347%_
                                 (##car _%key117293117301%_))
                                (_%tl117299117349%_
                                 (##cdr _%key117293117301%_)))
                            (let* ((_%id117352%_ _%hd117298117347%_)
                                   (_%mark117354%_ _%tl117299117349%_))
                              (_%K117297117344%_ _%mark117354%_ _%id117352%_)))
                          (_%else117295117309%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx117286%_ _%phi117285%_)
           (_%subst!117290%_ _%key117282%_)
           _%val117283%_
           _%update-binding117288%_))))
    (define gx#core-bind!__0
      (lambda (_%key117382%_ _%val117383%_)
        (let* ((_%rebind?117385%_ false)
               (_%phi117387%_ (gx#current-expander-phi))
               (_%ctx117389%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117382%_
           _%val117383%_
           _%rebind?117385%_
           _%phi117387%_
           _%ctx117389%_))))
    (define gx#core-bind!__1
      (lambda (_%key117391%_ _%val117392%_ _%rebind?117393%_)
        (let* ((_%phi117395%_ (gx#current-expander-phi))
               (_%ctx117397%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117391%_
           _%val117392%_
           _%rebind?117393%_
           _%phi117395%_
           _%ctx117397%_))))
    (define gx#core-bind!__2
      (lambda (_%key117399%_ _%val117400%_ _%rebind?117401%_ _%phi117402%_)
        (let ((_%ctx117404%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117399%_
           _%val117400%_
           _%rebind?117401%_
           _%phi117402%_
           _%ctx117404%_))))
    (define gx#core-bind!
      (lambda _g119953_
        (let ((_g119952_ (##length _g119953_)))
          (cond ((##fx= _g119952_ 2) (apply gx#core-bind!__0 _g119953_))
                ((##fx= _g119952_ 3) (apply gx#core-bind!__1 _g119953_))
                ((##fx= _g119952_ 4) (apply gx#core-bind!__2 _g119953_))
                ((##fx= _g119952_ 5) (apply gx#core-bind!__% _g119953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g119953_))))))
    (define gx#core-identifier-key
      (lambda (_%stx117213%_)
        (if (symbol? _%stx117213%_)
            (let* ((_%g117215117223%_ (gx#current-expander-marks))
                   (_%else117217117231%_ (lambda () _%stx117213%_))
                   (_%K117219117236%_
                    (lambda (_%hd117234%_) (cons _%stx117213%_ _%hd117234%_))))
              (if (##pair? _%g117215117223%_)
                  (let* ((_%hd117220117239%_ (##car _%g117215117223%_))
                         (_%hd117242%_ _%hd117220117239%_))
                    (_%K117219117236%_ _%hd117242%_))
                  (_%else117217117231%_)))
            (if (gx#identifier? _%stx117213%_)
                (let* ((_%id117245%_ (gx#syntax-local-unwrap _%stx117213%_))
                       (_%eid117247%_ (gx#stx-e _%id117245%_))
                       (_%marks117249%_
                        (gx#stx-identifier-marks* _%id117245%_))
                       (_%marks117251117259%_ _%marks117249%_)
                       (_%else117253117267%_ (lambda () _%eid117247%_))
                       (_%K117255117272%_
                        (lambda (_%hd117270%_)
                          (cons _%eid117247%_ _%hd117270%_))))
                  (if (##pair? _%marks117251117259%_)
                      (let* ((_%hd117256117275%_ (##car _%marks117251117259%_))
                             (_%hd117278%_ _%hd117256117275%_))
                        (_%K117255117272%_ _%hd117278%_))
                      (_%else117253117267%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx117213%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx117152%_ _%phi117153%_)
        (letrec ((_%make-phi117155%_
                  (lambda (_%super117211%_)
                    (let ((__obj119925
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj119925
                       (##gensym 'phi)
                       _%super117211%_)
                      __obj119925)))
                 (_%make-phi/up117156%_
                  (lambda (_%ctx117206%_ _%super117207%_)
                    (let ((_%ctx+1117209%_
                           (_%make-phi117155%_ _%super117207%_)))
                      (##unchecked-structure-set!
                       _%ctx117206%_
                       _%ctx+1117209%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1117209%_
                       _%ctx117206%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1117209%_)))
                 (_%make-phi/down117157%_
                  (lambda (_%ctx117201%_ _%super117202%_)
                    (let ((_%ctx-1117204%_
                           (_%make-phi117155%_ _%super117202%_)))
                      (##unchecked-structure-set!
                       _%ctx-1117204%_
                       _%ctx117201%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx117201%_
                       _%ctx-1117204%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1117204%_)))
                 (_%shift117158%_
                  (lambda (_%ctx117184%_
                           _%delta117185%_
                           _%make-delta-context117186%_
                           _%phi117187%_
                           _%K117188%_)
                    (let ((_%$e117190%_
                           (##unchecked-structure-ref
                            _%ctx117184%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e117190%_
                          ((lambda (_%super117193%_)
                             (let* ((_%super117195%_
                                     (_%K117188%_
                                      _%super117193%_
                                      _%delta117185%_))
                                    (_%ctx+d117197%_
                                     (_%make-delta-context117186%_
                                      _%ctx117184%_
                                      _%super117195%_)))
                               (_%K117188%_
                                _%ctx+d117197%_
                                (fx- _%phi117187%_ _%delta117185%_))))
                           _%$e117190%_)
                          (error '"Bad context" _%ctx117184%_))))))
          (let _%K117160%_ ((_%ctx117162%_ _%ctx117152%_)
                            (_%phi117163%_ _%phi117153%_))
            (if (fxzero? _%phi117163%_)
                _%ctx117162%_
                (if (##structure-instance-of? _%ctx117162%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi117163%_)
                        (let ((_%$e117167%_
                               (##unchecked-structure-ref
                                _%ctx117162%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e117167%_
                              ((lambda (_%g117169117171%_)
                                 (_%K117160%_
                                  _%g117169117171%_
                                  (##fx- _%phi117163%_ '1)))
                               _%$e117167%_)
                              (_%shift117158%_
                               _%ctx117162%_
                               '1
                               _%make-phi/up117156%_
                               _%phi117163%_
                               _%K117160%_)))
                        (let ((_%$e117175%_
                               (##unchecked-structure-ref
                                _%ctx117162%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e117175%_
                              ((lambda (_%g117177117179%_)
                                 (_%K117160%_
                                  _%g117177117179%_
                                  (##fx+ _%phi117163%_ '1)))
                               _%$e117175%_)
                              (_%shift117158%_
                               _%ctx117162%_
                               '-1
                               _%make-phi/down117157%_
                               _%phi117163%_
                               _%K117160%_))))
                    _%ctx117162%_))))))
    (define gx#core-context-get
      (lambda (_%ctx117149%_ _%key117150%_)
        (hash-get
         (##unchecked-structure-ref _%ctx117149%_ '2 '#f '#f)
         _%key117150%_)))
    (define gx#core-context-put!
      (lambda (_%ctx117145%_ _%key117146%_ _%val117147%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx117145%_ '2 '#f '#f)
         _%key117146%_
         _%val117147%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx117131%_ _%key117132%_)
        (let _%lp117134%_ ((_%ctx117136%_ _%ctx117131%_))
          (let ((_%$e117138%_
                 (gx#core-context-get _%ctx117136%_ _%key117132%_)))
            (if _%$e117138%_
                _%$e117138%_
                (let ((_%$e117141%_
                       (if (##structure-instance-of?
                            _%ctx117136%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx117136%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e117141%_ (_%lp117134%_ _%$e117141%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx117120%_ _%key117121%_ _%val117122%_ _%rebind117123%_)
        (let ((_%$e117125%_ (gx#core-context-get _%ctx117120%_ _%key117121%_)))
          (if _%$e117125%_
              ((lambda (_%xval117128%_)
                 (gx#core-context-put!
                  _%ctx117120%_
                  _%key117121%_
                  (_%rebind117123%_ _%xval117128%_)))
               _%$e117125%_)
              (gx#core-context-put!
               _%ctx117120%_
               _%key117121%_
               _%val117122%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx117095%_ _%stop?117096%_)
        (let _%lp117098%_ ((_%ctx117100%_ _%ctx117095%_))
          (if (_%stop?117096%_ _%ctx117100%_)
              _%ctx117100%_
              (if (##structure-instance-of? _%ctx117100%_ 'gx#phi-context::t)
                  (_%lp117098%_
                   (##unchecked-structure-ref _%ctx117100%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx117109%_ (gx#current-expander-context))
               (_%stop?117111%_ gx#top-context?))
          (gx#core-context-top__% _%ctx117109%_ _%stop?117111%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx117113%_)
        (let ((_%stop?117115%_ gx#top-context?))
          (gx#core-context-top__% _%ctx117113%_ _%stop?117115%_))))
    (define gx#core-context-top
      (lambda _g119955_
        (let ((_g119954_ (##length _g119955_)))
          (cond ((##fx= _g119954_ 0) (apply gx#core-context-top__0 _g119955_))
                ((##fx= _g119954_ 1) (apply gx#core-context-top__1 _g119955_))
                ((##fx= _g119954_ 2) (apply gx#core-context-top__% _g119955_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g119955_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx117080%_)
        (let _%lp117082%_ ((_%ctx117084%_ _%ctx117080%_))
          (if (##structure-instance-of? _%ctx117084%_ 'gx#phi-context::t)
              (_%lp117082%_
               (##unchecked-structure-ref _%ctx117084%_ '3 '#f '#f))
              _%ctx117084%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx117090%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx117090%_))))
    (define gx#core-context-root
      (lambda _g119957_
        (let ((_g119956_ (##length _g119957_)))
          (cond ((##fx= _g119956_ 0) (apply gx#core-context-root__0 _g119957_))
                ((##fx= _g119956_ 1) (apply gx#core-context-root__% _g119957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g119957_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx117062%_ . _%ignore117063%_)
        (let ((_%$e117065%_ (gx#current-expander-allow-rebind?)))
          (if _%$e117065%_
              _%$e117065%_
              (if (##structure-instance-of? _%ctx117062%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx117062%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx117062%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx117072%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx117072%_))))
    (define gx#core-context-rebind?
      (lambda _g119959_
        (let ((_g119958_ (##length _g119959_)))
          (cond ((##fx= _g119958_ 0)
                 (apply gx#core-context-rebind?__0 _g119959_))
                ((##fx= _g119958_ 1)
                 (apply gx#core-context-rebind?__% _g119959_))
                ((##fx>= _g119958_ 1)
                 (apply gx#core-context-rebind?__% _g119959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g119959_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx117045%_)
        (let ((_%$e117047%_ (gx#core-context-top__1 _%ctx117045%_)))
          (if _%$e117047%_
              ((lambda (_%ctx117050%_)
                 (if (##structure-instance-of?
                      _%ctx117050%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx117050%_ '6 '#f '#f)
                     '#f))
               _%$e117047%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx117057%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx117057%_))))
    (define gx#core-context-namespace
      (lambda _g119961_
        (let ((_g119960_ (##length _g119961_)))
          (cond ((##fx= _g119960_ 0)
                 (apply gx#core-context-namespace__0 _g119961_))
                ((##fx= _g119960_ 1)
                 (apply gx#core-context-namespace__% _g119961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g119961_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind117031%_ _%is?117032%_)
        (if (##structure-direct-instance-of?
             _%bind117031%_
             'gx#syntax-binding::t)
            (_%is?117032%_
             (##unchecked-structure-ref _%bind117031%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind117037%_)
        (let ((_%is?117039%_ gx#expander?))
          (gx#expander-binding?__% _%bind117037%_ _%is?117039%_))))
    (define gx#expander-binding?
      (lambda _g119963_
        (let ((_g119962_ (##length _g119963_)))
          (cond ((##fx= _g119962_ 1) (apply gx#expander-binding?__0 _g119963_))
                ((##fx= _g119962_ 2) (apply gx#expander-binding?__% _g119963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g119963_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind117028%_)
        (gx#expander-binding?__% _%bind117028%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind117026%_)
        (gx#expander-binding?__% _%bind117026%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind117020%_)
        (letrec ((_%direct-special-form?117022%_
                  (lambda (_%obj117024%_)
                    (##structure-direct-instance-of?
                     _%obj117024%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind117020%_
           _%direct-special-form?117022%_))))
    (define gx#special-form-binding?
      (lambda (_%bind117018%_)
        (gx#expander-binding?__% _%bind117018%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind117009%_)
        (letrec ((_%feature?117011%_
                  (lambda (_%e117013%_)
                    (let ((_%$e117015%_
                           (##structure-instance-of?
                            _%e117013%_
                            'gx#feature-expander::t)))
                      (if _%$e117015%_
                          _%$e117015%_
                          (##structure-instance-of?
                           _%e117013%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind117009%_ _%feature?117011%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind117007%_)
        (gx#expander-binding?__% _%bind117007%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id116994%_ _%bound?116995%_)
        (if (gx#identifier? _%id116994%_)
            (_%bound?116995%_ (gx#resolve-identifier__0 _%id116994%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id117000%_)
        (let ((_%bound?117002%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id117000%_ _%bound?117002%_))))
    (define gx#core-bound-identifier?
      (lambda _g119965_
        (let ((_g119964_ (##length _g119965_)))
          (cond ((##fx= _g119964_ 1)
                 (apply gx#core-bound-identifier?__0 _g119965_))
                ((##fx= _g119964_ 2)
                 (apply gx#core-bound-identifier?__% _g119965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g119965_))))))
    (define gx#core-identifier=?
      (lambda (_%x116984%_ _%y116985%_)
        (letrec ((_%y=?116987%_
                  (lambda (_%xid116991%_)
                    ((if (list? _%y116985%_) memq eq?)
                     _%xid116991%_
                     _%y116985%_))))
          (let ((_%bind116989%_ (gx#resolve-identifier__0 _%x116984%_)))
            (if (##structure-instance-of? _%bind116989%_ 'gx#binding::t)
                (_%y=?116987%_
                 (##unchecked-structure-ref _%bind116989%_ '1 '#f '#f))
                (_%y=?116987%_ (gx#stx-e _%x116984%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e116982%_)
        (if (interned-symbol? _%e116982%_)
            (string-index__0 (symbol->string _%e116982%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx116935%_ _%src116936%_ _%ctx116937%_ _%marks116938%_)
        (if (##structure? _%stx116935%_)
            (let ((_%$e116940%_ (gx#sealed-syntax-unwrap _%stx116935%_)))
              (if _%$e116940%_
                  _%$e116940%_
                  (if (gx#identifier? _%stx116935%_)
                      (let ((_%id116944%_
                             (gx#stx-unwrap__% _%stx116935%_ _%marks116938%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id116944%_ '1 '#f '#f)
                         (let ((_%$e116946%_
                                (##unchecked-structure-ref
                                 _%id116944%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e116946%_ _%$e116946%_ _%src116936%_))
                         _%ctx116937%_
                         (##unchecked-structure-ref _%id116944%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx116935%_)
                       (let ((_%$e116950%_ (gx#stx-source _%stx116935%_)))
                         (if _%$e116950%_ _%$e116950%_ _%src116936%_))
                       _%ctx116937%_
                       (reverse _%marks116938%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx116935%_
             _%src116936%_
             _%ctx116937%_
             (reverse _%marks116938%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx116956%_)
        (let* ((_%src116958%_ '#f)
               (_%ctx116960%_ (gx#current-expander-context))
               (_%marks116962%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116956%_
           _%src116958%_
           _%ctx116960%_
           _%marks116962%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx116964%_ _%src116965%_)
        (let* ((_%ctx116967%_ (gx#current-expander-context))
               (_%marks116969%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116964%_
           _%src116965%_
           _%ctx116967%_
           _%marks116969%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx116971%_ _%src116972%_ _%ctx116973%_)
        (let ((_%marks116975%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116971%_
           _%src116972%_
           _%ctx116973%_
           _%marks116975%_))))
    (define gx#core-quote-syntax
      (lambda _g119967_
        (let ((_g119966_ (##length _g119967_)))
          (cond ((##fx= _g119966_ 1) (apply gx#core-quote-syntax__0 _g119967_))
                ((##fx= _g119966_ 2) (apply gx#core-quote-syntax__1 _g119967_))
                ((##fx= _g119966_ 3) (apply gx#core-quote-syntax__2 _g119967_))
                ((##fx= _g119966_ 4) (apply gx#core-quote-syntax__% _g119967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g119967_))))))
    (define gx#core-cons
      (lambda (_%hd116931%_ _%tl116932%_)
        (cons (gx#core-quote-syntax__0 _%hd116931%_) _%tl116932%_)))
    (define gx#core-list
      (lambda (_%hd116928%_ . _%rest116929%_)
        (cons (gx#core-quote-syntax__0 _%hd116928%_) _%rest116929%_)))
    (define gx#core-cons*
      (lambda (_%hd116925%_ . _%rest116926%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd116925%_) _%rest116926%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path116894%_ _%rel116895%_)
        (let ((_%path116912%_ (gx#stx-e _%stx-path116894%_))
              (_%reldir116913%_
               (let _%lp116897%_ ((_%relsrc116899%_
                                   (let ((_%$e116909%_
                                          (gx#stx-source _%stx-path116894%_)))
                                     (if _%$e116909%_
                                         _%$e116909%_
                                         _%rel116895%_))))
                 (if (##structure-instance-of? _%relsrc116899%_ 'gerbil#AST::t)
                     (_%lp116897%_
                      (let ((_%$e116902%_ (gx#stx-source _%relsrc116899%_)))
                        (if _%$e116902%_
                            _%$e116902%_
                            (gx#stx-e _%relsrc116899%_))))
                     (if (source-location-path? _%relsrc116899%_)
                         (path-directory
                          (source-location-path _%relsrc116899%_))
                         (if (string? _%relsrc116899%_)
                             (path-directory _%relsrc116899%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path116912%_ (path-normalize _%reldir116913%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path116918%_)
        (let ((_%rel116920%_ '#f))
          (gx#core-resolve-path__% _%stx-path116918%_ _%rel116920%_))))
    (define gx#core-resolve-path
      (lambda _g119969_
        (let ((_g119968_ (##length _g119969_)))
          (cond ((##fx= _g119968_ 1) (apply gx#core-resolve-path__0 _g119969_))
                ((##fx= _g119968_ 2) (apply gx#core-resolve-path__% _g119969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g119969_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr116850%_ _%ctx116851%_)
        (let* ((_%repr116852116859%_ _%repr116850%_)
               (_%E116854116863%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr116852116859%_
                         '([phi . subs]))
                  '#!void))
               (_%K116855116871%_
                (lambda (_%subs116866%_ _%phi116867%_)
                  (let ((_%subst116869%_
                         (if (null? _%subs116866%_)
                             '#f
                             (list->hash-table-eq _%subs116866%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst116869%_
                     _%ctx116851%_
                     _%phi116867%_
                     '#f)))))
          (if (##pair? _%repr116852116859%_)
              (let ((_%hd116856116874%_ (##car _%repr116852116859%_))
                    (_%tl116857116876%_ (##cdr _%repr116852116859%_)))
                (let* ((_%phi116879%_ _%hd116856116874%_)
                       (_%subs116881%_ _%tl116857116876%_))
                  (_%K116855116871%_ _%subs116881%_ _%phi116879%_)))
              (_%E116854116863%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr116886%_)
        (let ((_%ctx116888%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr116886%_ _%ctx116888%_))))
    (define gx#core-deserialize-mark
      (lambda _g119971_
        (let ((_g119970_ (##length _g119971_)))
          (cond ((##fx= _g119970_ 1)
                 (apply gx#core-deserialize-mark__0 _g119971_))
                ((##fx= _g119970_ 2)
                 (apply gx#core-deserialize-mark__% _g119971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g119971_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx116847%_)
        (gx#stx-rewrap _%stx116847%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx116845%_)
        (gx#stx-unwrap__% _%stx116845%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx116815%_)
        (let* ((_%g116816116824%_ (gx#current-expander-marks))
               (_%else116818116832%_ (lambda () _%stx116815%_))
               (_%K116820116837%_
                (lambda (_%hd116835%_)
                  (gx#stx-apply-mark _%stx116815%_ _%hd116835%_))))
          (if (##pair? _%g116816116824%_)
              (let* ((_%hd116821116840%_ (##car _%g116816116824%_))
                     (_%hd116843%_ _%hd116821116840%_))
                (_%K116820116837%_ _%hd116843%_))
              (_%else116818116832%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx116800%_ _%E116801%_)
        (let ((_%bind116803%_ (gx#resolve-identifier__0 _%stx116800%_)))
          (if (##structure-direct-instance-of?
               _%bind116803%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind116803%_ '4 '#f '#f)
              (_%E116801%_ _%stx116800%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx116808%_)
        (let ((_%E116810%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx116808%_ _%E116810%_))))
    (define gx#syntax-local-e
      (lambda _g119973_
        (let ((_g119972_ (##length _g119973_)))
          (cond ((##fx= _g119972_ 1) (apply gx#syntax-local-e__0 _g119973_))
                ((##fx= _g119972_ 2) (apply gx#syntax-local-e__% _g119973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g119973_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx116784%_ _%E116785%_)
        (let ((_%e116787%_ (gx#syntax-local-e__% _%stx116784%_ _%E116785%_)))
          (if (##structure-instance-of? _%e116787%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e116787%_ '1 '#f '#f)
              _%e116787%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx116792%_)
        (let ((_%E116794%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx116792%_ _%E116794%_))))
    (define gx#syntax-local-value
      (lambda _g119975_
        (let ((_g119974_ (##length _g119975_)))
          (cond ((##fx= _g119974_ 1)
                 (apply gx#syntax-local-value__0 _g119975_))
                ((##fx= _g119974_ 2)
                 (apply gx#syntax-local-value__% _g119975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g119975_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx116781%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx116781%_)))))
