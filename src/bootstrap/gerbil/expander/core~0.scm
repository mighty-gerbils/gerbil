(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1781138353)
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
      (lambda _%$args179949%_
        (apply make-instance gx#expander-context::t _%$args179949%_)))
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
      (lambda _%$args179946%_
        (apply make-instance gx#root-context::t _%$args179946%_)))
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
      (lambda _%$args179943%_
        (apply make-instance gx#phi-context::t _%$args179943%_)))
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
      (lambda _%$args179940%_
        (apply make-instance gx#top-context::t _%$args179940%_)))
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
      (lambda _%$args179937%_
        (apply make-instance gx#module-context::t _%$args179937%_)))
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
      (lambda _%$args179934%_
        (apply make-instance gx#prelude-context::t _%$args179934%_)))
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
      (lambda _%$args179931%_
        (apply make-instance gx#local-context::t _%$args179931%_)))
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
      (lambda (_%self179904%_ _%id179905%_ _%super179906%_)
        (let ((_%self179909%_ _%self179904%_))
          (if (##fx< '3 (##structure-length _%self179909%_))
              (begin
                (##unchecked-structure-set!
                 _%self179909%_
                 _%id179905%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179909%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179909%_
                 _%super179906%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self179909%_
                     '3
                     (##structure-length _%self179909%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self179922%_ _%id179923%_)
        (let ((_%super179925%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self179922%_
           _%id179923%_
           _%super179925%_))))
    (define gx#phi-context:::init!
      (lambda _g179991_
        (let ((_g179992_ (##length _g179991_)))
          (cond ((##fx= _g179992_ 2)
                 (apply gx#phi-context:::init!__0 _g179991_))
                ((##fx= _g179992_ 3)
                 (apply gx#phi-context:::init!__% _g179991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g179991_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self179757%_ _%super179758%_)
        (let ((_%self179761%_ _%self179757%_))
          (if (##fx< '3 (##structure-length _%self179761%_))
              (begin
                (##unchecked-structure-set!
                 _%self179761%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179761%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179761%_
                 _%super179758%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self179761%_
                     '3
                     (##structure-length _%self179761%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self179774%_)
        (let ((_%super179776%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self179774%_ _%super179776%_))))
    (define gx#local-context:::init!
      (lambda _g179993_
        (let ((_g179994_ (##length _g179993_)))
          (cond ((##fx= _g179994_ 1)
                 (apply gx#local-context:::init!__0 _g179993_))
                ((##fx= _g179994_ 2)
                 (apply gx#local-context:::init!__% _g179993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g179993_))))))
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
      (lambda _%$args179631%_
        (apply make-instance gx#binding::t _%$args179631%_)))
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
      (lambda (_%self179614%_ _%id179615%_ _%key179616%_ _%phi179617%_)
        (let ((_%self179620%_ _%self179614%_))
          (##unchecked-structure-set! _%self179620%_ _%id179615%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self179620%_ _%key179616%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self179620%_
           _%phi179617%_
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
      (lambda _%$args179489%_
        (apply make-instance gx#runtime-binding::t _%$args179489%_)))
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
      (lambda _%$args179486%_
        (apply make-instance gx#local-binding::t _%$args179486%_)))
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
      (lambda _%$args179483%_
        (apply make-instance gx#top-binding::t _%$args179483%_)))
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
      (lambda _%$args179480%_
        (apply make-instance gx#module-binding::t _%$args179480%_)))
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
      (lambda _%$args179477%_
        (apply make-instance gx#extern-binding::t _%$args179477%_)))
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
      (lambda (_%self179093%_
               _%id179094%_
               _%key179095%_
               _%phi179096%_
               _%ctx179097%_)
        (let ((_%self179100%_ _%self179093%_))
          (gx#binding:::init!
           _%self179100%_
           _%id179094%_
           _%key179095%_
           _%phi179096%_)
          (##unchecked-structure-set!
           _%self179100%_
           _%ctx179097%_
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
      (lambda _%$args178846%_
        (apply make-instance gx#syntax-binding::t _%$args178846%_)))
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
      (lambda _%$args178843%_
        (apply make-instance gx#import-binding::t _%$args178843%_)))
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
      (lambda _%$args178840%_
        (apply make-instance gx#alias-binding::t _%$args178840%_)))
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
      (lambda (_%self178822%_
               _%id178823%_
               _%key178824%_
               _%phi178825%_
               _%e178826%_)
        (let ((_%self178829%_ _%self178822%_))
          (gx#binding:::init!
           _%self178829%_
           _%id178823%_
           _%key178824%_
           _%phi178825%_)
          (##unchecked-structure-set! _%self178829%_ _%e178826%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self178680%_
               _%id178681%_
               _%key178682%_
               _%phi178683%_
               _%e178684%_
               _%ctx178685%_
               _%weak?178686%_)
        (let ((_%self178689%_ _%self178680%_))
          (gx#binding:::init!
           _%self178689%_
           _%id178681%_
           _%key178682%_
           _%phi178683%_)
          (##unchecked-structure-set! _%self178689%_ _%e178684%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self178689%_ _%ctx178685%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self178689%_
           _%weak?178686%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self178540%_
               _%id178541%_
               _%key178542%_
               _%phi178543%_
               _%e178544%_)
        (let ((_%self178547%_ _%self178540%_))
          (gx#binding:::init!
           _%self178547%_
           _%id178541%_
           _%key178542%_
           _%phi178543%_)
          (##unchecked-structure-set! _%self178547%_ _%e178544%_ '5 '#f '#f))))
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
      (lambda _%$args178415%_
        (apply make-instance gx#expander::t _%$args178415%_)))
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
      (lambda _%$args178412%_
        (apply make-instance gx#core-expander::t _%$args178412%_)))
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
      (lambda _%$args178409%_
        (apply make-instance gx#expression-form::t _%$args178409%_)))
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
      (lambda _%$args178406%_
        (apply make-instance gx#special-form::t _%$args178406%_)))
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
      (lambda _%$args178403%_
        (apply make-instance gx#definition-form::t _%$args178403%_)))
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
      (lambda _%$args178400%_
        (apply make-instance gx#top-special-form::t _%$args178400%_)))
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
      (lambda _%$args178397%_
        (apply make-instance gx#module-special-form::t _%$args178397%_)))
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
      (lambda _%$args178394%_
        (apply make-instance gx#feature-expander::t _%$args178394%_)))
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
      (lambda _%$args178391%_
        (apply make-instance gx#private-feature-expander::t _%$args178391%_)))
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
      (lambda _%$args178388%_
        (apply make-instance gx#reserved-expander::t _%$args178388%_)))
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
      (lambda _%$args178385%_
        (apply make-instance gx#macro-expander::t _%$args178385%_)))
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
      (lambda _%$args178382%_
        (apply make-instance gx#rename-macro-expander::t _%$args178382%_)))
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
      (lambda _%$args178379%_
        (apply make-instance gx#user-expander::t _%$args178379%_)))
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
      (lambda _%$args178376%_
        (apply make-instance gx#expander-mark::t _%$args178376%_)))
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
      (lambda (_%ctx178360%_
               _%message178361%_
               _%stx178362%_
               .
               _%details178363%_)
        (let ((_%ctx178374%_
               (let ((_%$e178365%_ _%ctx178360%_))
                 (if _%$e178365%_
                     _%$e178365%_
                     (let ((_%$e178368%_ (gx#core-context-top__0)))
                       (if _%$e178368%_
                           (cons 'expand
                                 (cons (##structure-ref
                                        _%$e178368%_
                                        '1
                                        gx#expander-context::t
                                        '#f)
                                       '()))
                           '#f))))))
          (raise (make-syntax-error
                  _%message178361%_
                  (cons _%stx178362%_ _%details178363%_)
                  _%ctx178374%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx178347%_ _%expression?178348%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx178347%_ _%expression?178348%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx178353%_)
        (let ((_%expression?178355%_ '#f))
          (gx#eval-syntax__% _%stx178353%_ _%expression?178355%_))))
    (define gx#eval-syntax
      (lambda _g179995_
        (let ((_g179996_ (##length _g179995_)))
          (cond ((##fx= _g179996_ 1) (apply gx#eval-syntax__0 _g179995_))
                ((##fx= _g179996_ 2) (apply gx#eval-syntax__% _g179995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g179995_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx178332%_ _%expression?178333%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx178332%_ _%expression?178333%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx178339%_)
        (let ((_%expression?178341%_ '#f))
          (gx#eval-syntax+1__% _%stx178339%_ _%expression?178341%_))))
    (define gx#eval-syntax+1
      (lambda _g179997_
        (let ((_g179998_ (##length _g179997_)))
          (cond ((##fx= _g179998_ 1) (apply gx#eval-syntax+1__0 _g179997_))
                ((##fx= _g179998_ 2) (apply gx#eval-syntax+1__% _g179997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g179997_))))))
    (define gx#eval-expression+1
      (lambda (_%stx178329%_) (gx#eval-syntax+1__% _%stx178329%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx178327%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx178327%_))))
    (define gx#core-expand__%
      (lambda (_%stx178314%_ _%expression?178315%_)
        (if _%expression?178315%_
            (gx#core-expand-expression _%stx178314%_)
            (gx#core-expand-top _%stx178314%_))))
    (define gx#core-expand__0
      (lambda (_%stx178320%_)
        (let ((_%expression?178322%_ '#f))
          (gx#core-expand__% _%stx178320%_ _%expression?178322%_))))
    (define gx#core-expand
      (lambda _g179999_
        (let ((_g180000_ (##length _g179999_)))
          (cond ((##fx= _g180000_ 1) (apply gx#core-expand__0 _g179999_))
                ((##fx= _g180000_ 2) (apply gx#core-expand__% _g179999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g179999_))))))
    (define gx#core-expand-top
      (lambda (_%stx178281%_)
        (let* ((_%stx178283%_ (gx#core-expand*__0 _%stx178281%_))
               (_%$%e178284178291%_ _%stx178283%_)
               (_%$%E178286178295%_
                (lambda () (gx#core-expand-expression _%stx178283%_)))
               (_%$%E178285178309%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e178284178291%_)
                      (let ((_%$%e178287178299%_
                             (gx#syntax-e _%$%e178284178291%_)))
                        (let ((_%$%hd178288178302%_
                               (##car _%$%e178287178299%_))
                              (_%$%tl178289178304%_
                               (##cdr _%$%e178287178299%_)))
                          (let ((_%form178307%_ _%$%hd178288178302%_))
                            (if (gx#core-bound-identifier?__0 _%form178307%_)
                                _%stx178283%_
                                (_%$%E178286178295%_)))))
                      (_%$%E178286178295%_)))))
          (_%$%E178285178309%_))))
    (define gx#core-expand-expression
      (lambda (_%stx178213%_)
        (letrec ((_%sealed-expression?178215%_
                  (lambda (_%hd178251%_)
                    (if (gx#sealed-syntax? _%hd178251%_)
                        (let* ((_%$%e178252178259%_ _%hd178251%_)
                               (_%$%E178254178263%_ (lambda () '#f))
                               (_%$%E178253178277%_
                                (lambda ()
                                  (if (gx#stx-pair? _%$%e178252178259%_)
                                      (let ((_%$%e178255178267%_
                                             (gx#syntax-e
                                              _%$%e178252178259%_)))
                                        (let ((_%$%hd178256178270%_
                                               (##car _%$%e178255178267%_))
                                              (_%$%tl178257178272%_
                                               (##cdr _%$%e178255178267%_)))
                                          (let ((_%form178275%_
                                                 _%$%hd178256178270%_))
                                            (gx#core-bound-identifier?__%
                                             _%form178275%_
                                             gx#expression-form-binding?))))
                                      (_%$%E178254178263%_)))))
                          (_%$%E178253178277%_))
                        '#f)))
                 (_%illegal-expression178216%_
                  (lambda (_%hd178248%_ . _%_178249%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx178213%_
                     _%hd178248%_)))
                 (_%expand-e178217%_
                  (lambda (_%form178240%_ _%hd178241%_)
                    (let ((_%bind178243%_
                           (if (##structure-instance-of?
                                _%form178240%_
                                'gx#binding::t)
                               _%form178240%_
                               (gx#resolve-identifier__0 _%form178240%_))))
                      (if (gx#core-expander-binding? _%bind178243%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind178243%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd178241%_
                            (gx#stx-source _%stx178213%_)))
                          (if (##structure-direct-instance-of?
                               _%bind178243%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind178243%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd178241%_
                                 (gx#stx-source _%stx178213%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx178213%_
                               _%form178240%_)))))))
          (let ((_%hd178219%_ (gx#core-expand-head _%stx178213%_)))
            (if (_%sealed-expression?178215%_ _%hd178219%_)
                _%hd178219%_
                (if (gx#stx-pair? _%hd178219%_)
                    (let* ((_%form178223%_ (gx#stx-car _%hd178219%_))
                           (_%bind178225%_
                            (if (gx#identifier? _%form178223%_)
                                (gx#resolve-identifier__0 _%form178223%_)
                                '#f)))
                      (if (or (not _%bind178225%_)
                              (not (gx#core-expander-binding? _%bind178225%_)))
                          (_%expand-e178217%_
                           '%%app
                           (cons '%%app _%hd178219%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind178225%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd178219%_
                               _%illegal-expression178216%_)
                              (if (gx#expression-form-binding? _%bind178225%_)
                                  (_%expand-e178217%_
                                   _%bind178225%_
                                   _%hd178219%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind178225%_)
                                      (gx#core-expand-expression
                                       (_%expand-e178217%_
                                        _%bind178225%_
                                        _%hd178219%_))
                                      (_%illegal-expression178216%_
                                       _%hd178219%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd178219%_)
                        (_%illegal-expression178216%_ _%hd178219%_)
                        (if (gx#identifier? _%hd178219%_)
                            (_%expand-e178217%_
                             '%%ref
                             (cons '%%ref (cons _%hd178219%_ '())))
                            (if (gx#stx-datum? _%hd178219%_)
                                (_%expand-e178217%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd178219%_ '())))
                                (_%illegal-expression178216%_
                                 _%hd178219%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx178208%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx178211%_ (gx#core-expand-expression _%stx178208%_)))
             (values _%stx178211%_ (gx#eval-syntax* _%stx178211%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx178189%_ _%stop?178190%_)
        (let _%lp178192%_ ((_%stx178194%_ _%stx178189%_))
          (if (_%stop?178190%_ _%stx178194%_)
              _%stx178194%_
              (let ((_%rstx178196%_ (gx#core-expand1 _%stx178194%_)))
                (if (eq? _%stx178194%_ _%rstx178196%_)
                    _%stx178194%_
                    (_%lp178192%_ _%rstx178196%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx178201%_)
        (let ((_%stop?178203%_ false))
          (gx#core-expand*__% _%stx178201%_ _%stop?178203%_))))
    (define gx#core-expand*
      (lambda _g180001_
        (let ((_g180002_ (##length _g180001_)))
          (cond ((##fx= _g180002_ 1) (apply gx#core-expand*__0 _g180001_))
                ((##fx= _g180002_ 2) (apply gx#core-expand*__% _g180001_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g180001_))))))
    (define gx#core-expand1
      (lambda (_%stx178141%_)
        (letrec ((_%step178143%_
                  (lambda (_%hd178180%_)
                    (let ((_%bind178182%_
                           (gx#resolve-identifier__0 _%hd178180%_)))
                      (if (##structure-instance-of?
                           _%bind178182%_
                           'gx#runtime-binding::t)
                          _%stx178141%_
                          (if (##structure-direct-instance-of?
                               _%bind178182%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind178182%_
                                '5
                                '#f
                                '#f)
                               _%stx178141%_)
                              (if (not _%bind178182%_)
                                  _%stx178141%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx178141%_))))))))
          (let* ((_%$%e178144178152%_ _%stx178141%_)
                 (_%$%E178150178156%_ (lambda () _%stx178141%_))
                 (_%$%E178146178162%_
                  (lambda ()
                    (let ((_%hd178160%_ _%$%e178144178152%_))
                      (if (gx#identifier? _%hd178160%_)
                          (_%step178143%_ _%hd178160%_)
                          (_%$%E178150178156%_)))))
                 (_%$%E178145178176%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e178144178152%_)
                        (let ((_%$%e178147178166%_
                               (gx#syntax-e _%$%e178144178152%_)))
                          (let ((_%$%hd178148178169%_
                                 (##car _%$%e178147178166%_))
                                (_%$%tl178149178171%_
                                 (##cdr _%$%e178147178166%_)))
                            (let ((_%hd178174%_ _%$%hd178148178169%_))
                              (if (gx#identifier? _%hd178174%_)
                                  (_%step178143%_ _%hd178174%_)
                                  (_%$%E178146178162%_)))))
                        (_%$%E178146178162%_)))))
            (_%$%E178145178176%_)))))
    (define gx#core-expand-head
      (lambda (_%stx178107%_)
        (letrec ((_%stop?178109%_
                  (lambda (_%stx178111%_)
                    (let* ((_%$%e178112178119%_ _%stx178111%_)
                           (_%$%E178114178123%_ (lambda () '#f))
                           (_%$%E178113178137%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e178112178119%_)
                                  (let ((_%$%e178115178127%_
                                         (gx#syntax-e _%$%e178112178119%_)))
                                    (let ((_%$%hd178116178130%_
                                           (##car _%$%e178115178127%_))
                                          (_%$%tl178117178132%_
                                           (##cdr _%$%e178115178127%_)))
                                      (let ((_%hd178135%_
                                             _%$%hd178116178130%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd178135%_))))
                                  (_%$%E178114178123%_)))))
                      (_%$%E178113178137%_)))))
          (gx#core-expand*__% _%stx178107%_ _%stop?178109%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx177913%_
               _%expand-special177914%_
               _%begin-form177915%_
               _%expand-e177916%_)
        (letrec ((_%expand-splice177918%_
                  (lambda (_%hd178081%_
                           _%body178082%_
                           _%rest178083%_
                           _%r178084%_)
                    (if (gx#stx-list? _%body178082%_)
                        (_%K177922%_
                         (gx#stx-foldr cons _%rest178083%_ _%body178082%_)
                         _%r178084%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx177913%_
                         _%hd178081%_))))
                 (_%expand-cond-expand177919%_
                  (lambda (_%hd178077%_ _%rest178078%_ _%r178079%_)
                    (_%K177922%_
                     (cons (gx#core-expand-cond-expand% _%hd178077%_)
                           _%rest178078%_)
                     _%r178079%_)))
                 (_%expand-include177920%_
                  (lambda (_%hd178026%_ _%rest178027%_ _%r178028%_)
                    (let* ((_%$%e178029178039%_ _%hd178026%_)
                           (_%$%E178031178043%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e178029178039%_)))
                           (_%$%E178030178073%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e178029178039%_)
                                  (let ((_%$%e178032178047%_
                                         (gx#syntax-e _%$%e178029178039%_)))
                                    (let ((_%$%hd178033178050%_
                                           (##car _%$%e178032178047%_))
                                          (_%$%tl178034178052%_
                                           (##cdr _%$%e178032178047%_)))
                                      (if (gx#stx-pair? _%$%tl178034178052%_)
                                          (let ((_%$%e178035178055%_
                                                 (gx#syntax-e
                                                  _%$%tl178034178052%_)))
                                            (let ((_%$%hd178036178058%_
                                                   (##car _%$%e178035178055%_))
                                                  (_%$%tl178037178060%_
                                                   (##cdr _%$%e178035178055%_)))
                                              (let ((_%path178063%_
                                                     _%$%hd178036178058%_))
                                                (if (gx#stx-null?
                                                     _%$%tl178037178060%_)
                                                    (if (gx#stx-string?
                                                         _%path178063%_)
                                                        (let* ((_%rpath178065%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path178063%_
                         (gx#stx-source _%hd178026%_)))
                       (_%block178067%_
                        (gx#core-expand-include%__%
                         _%hd178026%_
                         _%rpath178065%_))
                       (_%rbody178070%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block178067%_
                            _%expand-special177914%_
                            '#f
                            _%expand-e177916%_))
                         gx#current-expander-path
                         (cons _%rpath178065%_ (gx#current-expander-path)))))
                  (_%K177922%_
                   _%rest178027%_
                   (foldr__0 cons _%r178028%_ _%rbody178070%_)))
                (_%$%E178031178043%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E178031178043%_)))))
                                          (_%$%E178031178043%_))))
                                  (_%$%E178031178043%_)))))
                      (_%$%E178030178073%_))))
                 (_%expand-expression177921%_
                  (lambda (_%hd178022%_ _%rest178023%_ _%r178024%_)
                    (_%K177922%_
                     _%rest178023%_
                     (cons (_%expand-e177916%_ _%hd178022%_) _%r178024%_))))
                 (_%K177922%_
                  (lambda (_%rest177952%_ _%r177953%_)
                    (let* ((_%$%e177954177961%_ _%rest177952%_)
                           (_%$%E177956177965%_
                            (lambda ()
                              (if _%begin-form177915%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form177915%_
                                    (reverse _%r177953%_))
                                   (gx#stx-source _%stx177913%_))
                                  _%r177953%_)))
                           (_%$%E177955178018%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e177954177961%_)
                                  (let ((_%$%e177957177969%_
                                         (gx#syntax-e _%$%e177954177961%_)))
                                    (let ((_%$%hd177958177972%_
                                           (##car _%$%e177957177969%_))
                                          (_%$%tl177959177974%_
                                           (##cdr _%$%e177957177969%_)))
                                      (let* ((_%hd177977%_
                                              _%$%hd177958177972%_)
                                             (_%rest177979%_
                                              _%$%tl177959177974%_)
                                             (_%hd177981%_
                                              (gx#core-expand-head
                                               _%hd177977%_))
                                             (_%$%e177982177989%_ _%hd177981%_)
                                             (_%$%E177984177993%_
                                              (lambda ()
                                                (_%expand-expression177921%_
                                                 _%hd177981%_
                                                 _%rest177979%_
                                                 _%r177953%_)))
                                             (_%$%E177983178014%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e177982177989%_)
                                                    (let ((_%$%e177985177997%_
                                                           (gx#syntax-e
                                                            _%$%e177982177989%_)))
                                                      (let ((_%$%hd177986178000%_
                                                             (##car _%$%e177985177997%_))
                                                            (_%$%tl177987178002%_
                                                             (##cdr _%$%e177985177997%_)))
                                                        (let* ((_%form178005%_
                                                                _%$%hd177986178000%_)
                                                               (_%body178007%_
                                                                _%$%tl177987178002%_)
                                                               (_%bind178009%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form178005%_)
                            (gx#resolve-identifier__0 _%form178005%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind178009%_)
                      (let ((_%$e178011%_
                             (##unchecked-structure-ref
                              _%bind178009%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e178011%_)
                            (_%expand-splice177918%_
                             _%hd177981%_
                             _%body178007%_
                             _%rest177979%_
                             _%r177953%_)
                            (if (eq? '%#cond-expand _%$e178011%_)
                                (_%expand-cond-expand177919%_
                                 _%hd177981%_
                                 _%rest177979%_
                                 _%r177953%_)
                                (if (eq? '%#include _%$e178011%_)
                                    (_%expand-include177920%_
                                     _%hd177981%_
                                     _%rest177979%_
                                     _%r177953%_)
                                    (_%expand-special177914%_
                                     _%hd177981%_
                                     _%K177922%_
                                     _%rest177979%_
                                     _%r177953%_)))))
                      (_%expand-expression177921%_
                       _%hd177981%_
                       _%rest177979%_
                       _%r177953%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E177984177993%_)))))
                                        (_%$%E177983178014%_))))
                                  (_%$%E177956177965%_)))))
                      (_%$%E177955178018%_)))))
          (let* ((_%$%e177923177930%_ _%stx177913%_)
                 (_%$%E177925177934%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e177923177930%_)))
                 (_%$%E177924177948%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e177923177930%_)
                        (let ((_%$%e177926177938%_
                               (gx#syntax-e _%$%e177923177930%_)))
                          (let ((_%$%hd177927177941%_
                                 (##car _%$%e177926177938%_))
                                (_%$%tl177928177943%_
                                 (##cdr _%$%e177926177938%_)))
                            (let ((_%body177946%_ _%$%tl177928177943%_))
                              (if (gx#stx-list? _%body177946%_)
                                  (_%K177922%_ _%body177946%_ '())
                                  (_%$%E177925177934%_)))))
                        (_%$%E177925177934%_)))))
            (_%$%E177924177948%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx178089%_ _%expand-special178090%_)
        (let* ((_%begin-form178092%_ '%#begin)
               (_%expand-e178094%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx178089%_
           _%expand-special178090%_
           _%begin-form178092%_
           _%expand-e178094%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx178096%_ _%expand-special178097%_ _%begin-form178098%_)
        (let ((_%expand-e178100%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx178096%_
           _%expand-special178097%_
           _%begin-form178098%_
           _%expand-e178100%_))))
    (define gx#core-expand-block
      (lambda _g180003_
        (let ((_g180004_ (##length _g180003_)))
          (cond ((##fx= _g180004_ 2) (apply gx#core-expand-block__0 _g180003_))
                ((##fx= _g180004_ 3) (apply gx#core-expand-block__1 _g180003_))
                ((##fx= _g180004_ 4) (apply gx#core-expand-block__% _g180003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g180003_))))))
    (define gx#core-expand-block*
      (lambda (_%stx177861%_ _%expand-special177862%_)
        (let* ((_%$%g177863177874%_
                (gx#core-expand-block__1
                 _%stx177861%_
                 _%expand-special177862%_
                 '#f))
               (_%$%E177867177878%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g177863177874%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%$%K177872177909%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx177861%_)))
                (_%$%K177869177895%_ (lambda (_%expr177893%_) _%expr177893%_))
                (_%$%K177868177884%_
                 (lambda (_%body177882%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body177882%_))
                    (gx#stx-source _%stx177861%_)))))
            (let ((_%$%try-match177865177905%_
                   (lambda ()
                     (if (pair? _%$%g177863177874%_)
                         (let ((_%$%tl177871177900%_
                                (##cdr _%$%g177863177874%_))
                               (_%$%hd177870177898%_
                                (##car _%$%g177863177874%_)))
                           (if (null? _%$%tl177871177900%_)
                               (let ((_%expr177903%_ _%$%hd177870177898%_))
                                 (_%$%K177869177895%_ _%expr177903%_))
                               (let ((_%body177887%_ _%$%g177863177874%_))
                                 (_%$%K177868177884%_ _%body177887%_))))
                         (let ((_%body177887%_ _%$%g177863177874%_))
                           (_%$%K177868177884%_ _%body177887%_))))))
              (if (null? _%$%g177863177874%_)
                  (_%$%K177872177909%_)
                  (_%$%try-match177865177905%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx177687%_)
        (letrec ((_%satisfied?177689%_
                  (lambda (_%condition177790%_)
                    (let* ((_%$%e177791177806%_ _%condition177790%_)
                           (_%$%E177801177810%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e177791177806%_)))
                           (_%$%E177794177829%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e177791177806%_)
                                  (let ((_%$%e177802177814%_
                                         (gx#syntax-e _%$%e177791177806%_)))
                                    (let ((_%$%hd177803177817%_
                                           (##car _%$%e177802177814%_))
                                          (_%$%tl177804177819%_
                                           (##cdr _%$%e177802177814%_)))
                                      (let* ((_%combinator177822%_
                                              _%$%hd177803177817%_)
                                             (_%body177824%_
                                              _%$%tl177804177819%_))
                                        (if (gx#stx-list? _%body177824%_)
                                            (let ((_%$e177826%_
                                                   (gx#stx-e
                                                    _%combinator177822%_)))
                                              (if (eq? 'not _%$e177826%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?177689%_
                                                        _%body177824%_))
                                                  (if (eq? 'and _%$e177826%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?177689%_
                                                       _%body177824%_)
                                                      (if (eq? 'or
                                                               _%$e177826%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?177689%_
                                                           _%body177824%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e177826%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body177824%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx177687%_
                       _%combinator177822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E177801177810%_)))))
                                  (_%$%E177801177810%_))))
                           (_%$%E177793177851%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e177791177806%_)
                                  (let ((_%$%e177795177833%_
                                         (gx#syntax-e _%$%e177791177806%_)))
                                    (let ((_%$%hd177796177836%_
                                           (##car _%$%e177795177833%_))
                                          (_%$%tl177797177838%_
                                           (##cdr _%$%e177795177833%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd177796177836%_)
                                               (gx#core-identifier=?
                                                _%$%hd177796177836%_
                                                'unquote))
                                          (if (gx#stx-pair?
                                               _%$%tl177797177838%_)
                                              (let ((_%$%e177798177841%_
                                                     (gx#syntax-e
                                                      _%$%tl177797177838%_)))
                                                (let ((_%$%hd177799177844%_
                                                       (##car _%$%e177798177841%_))
                                                      (_%$%tl177800177846%_
                                                       (##cdr _%$%e177798177841%_)))
                                                  (let ((_%expr177849%_
                                                         _%$%hd177799177844%_))
                                                    (if (gx#stx-null?
                                                         _%$%tl177800177846%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr177849%_)
                                                        (_%$%E177794177829%_)))))
                                              (_%$%E177794177829%_))
                                          (_%$%E177794177829%_))))
                                  (_%$%E177794177829%_))))
                           (_%$%E177792177857%_
                            (lambda ()
                              (let ((_%id177855%_ _%$%e177791177806%_))
                                (if (gx#identifier? _%id177855%_)
                                    (gx#core-bound-identifier?__%
                                     _%id177855%_
                                     gx#feature-binding?)
                                    (_%$%E177793177851%_))))))
                      (_%$%E177792177857%_))))
                 (_%loop177690%_
                  (lambda (_%rest177720%_)
                    (let* ((_%$%e177721177729%_ _%rest177720%_)
                           (_%$%E177727177733%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e177721177729%_)))
                           (_%$%E177723177737%_
                            (lambda ()
                              (if (gx#stx-null? _%$%e177721177729%_)
                                  '()
                                  (_%$%E177727177733%_))))
                           (_%$%E177722177786%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e177721177729%_)
                                  (let ((_%$%e177724177741%_
                                         (gx#syntax-e _%$%e177721177729%_)))
                                    (let ((_%$%hd177725177744%_
                                           (##car _%$%e177724177741%_))
                                          (_%$%tl177726177746%_
                                           (##cdr _%$%e177724177741%_)))
                                      (let* ((_%hd177749%_
                                              _%$%hd177725177744%_)
                                             (_%rest177751%_
                                              _%$%tl177726177746%_)
                                             (_%$%e177752177759%_ _%hd177749%_)
                                             (_%$%E177754177763%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%$%e177752177759%_)))
                                             (_%$%E177753177782%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e177752177759%_)
                                                    (let ((_%$%e177755177767%_
                                                           (gx#syntax-e
                                                            _%$%e177752177759%_)))
                                                      (let ((_%$%hd177756177770%_
                                                             (##car _%$%e177755177767%_))
                                                            (_%$%tl177757177772%_
                                                             (##cdr _%$%e177755177767%_)))
                                                        (let* ((_%condition177775%_
                                                                _%$%hd177756177770%_)
                                                               (_%body177777%_
                                                                _%$%tl177757177772%_))
                                                          (if (gx#stx-eq?
                                                               _%condition177775%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest177751%_)
                          _%body177777%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx177687%_
                           _%hd177749%_))
                      (if (_%satisfied?177689%_ _%condition177775%_)
                          _%body177777%_
                          (_%loop177690%_ _%rest177751%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E177754177763%_)))))
                                        (_%$%E177753177782%_))))
                                  (_%$%E177723177737%_)))))
                      (_%$%E177722177786%_)))))
          (let* ((_%$%e177691177698%_ _%stx177687%_)
                 (_%$%E177693177702%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e177691177698%_)))
                 (_%$%E177692177716%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e177691177698%_)
                        (let ((_%$%e177694177706%_
                               (gx#syntax-e _%$%e177691177698%_)))
                          (let ((_%$%hd177695177709%_
                                 (##car _%$%e177694177706%_))
                                (_%$%tl177696177711%_
                                 (##cdr _%$%e177694177706%_)))
                            (let ((_%clauses177714%_ _%$%tl177696177711%_))
                              (if (gx#stx-list? _%clauses177714%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop177690%_ _%clauses177714%_))
                                  (_%$%E177693177702%_)))))
                        (_%$%E177693177702%_)))))
            (_%$%E177692177716%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx177630%_ _%rpath177631%_)
        (let* ((_%$%e177632177642%_ _%stx177630%_)
               (_%$%E177634177646%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e177632177642%_)))
               (_%$%E177633177673%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e177632177642%_)
                      (let ((_%$%e177635177650%_
                             (gx#syntax-e _%$%e177632177642%_)))
                        (let ((_%$%hd177636177653%_
                               (##car _%$%e177635177650%_))
                              (_%$%tl177637177655%_
                               (##cdr _%$%e177635177650%_)))
                          (if (gx#stx-pair? _%$%tl177637177655%_)
                              (let ((_%$%e177638177658%_
                                     (gx#syntax-e _%$%tl177637177655%_)))
                                (let ((_%$%hd177639177661%_
                                       (##car _%$%e177638177658%_))
                                      (_%$%tl177640177663%_
                                       (##cdr _%$%e177638177658%_)))
                                  (let ((_%path177666%_ _%$%hd177639177661%_))
                                    (if (gx#stx-null? _%$%tl177640177663%_)
                                        (if (gx#stx-string? _%path177666%_)
                                            (let ((_%rpath177671%_
                                                   (let ((_%$e177668%_
                                                          _%rpath177631%_))
                                                     (if _%$e177668%_
                                                         _%$e177668%_
                                                         (gx#core-resolve-path__%
                                                          _%path177666%_
                                                          (gx#stx-source
                                                           _%stx177630%_))))))
                                              (if (member _%rpath177671%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx177630%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath177671%_))
                                                    (gx#stx-source
                                                     _%stx177630%_)))))
                                            (_%$%E177634177646%_))
                                        (_%$%E177634177646%_)))))
                              (_%$%E177634177646%_))))
                      (_%$%E177634177646%_)))))
          (_%$%E177633177673%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx177680%_)
        (let ((_%rpath177682%_ '#f))
          (gx#core-expand-include%__% _%stx177680%_ _%rpath177682%_))))
    (define gx#core-expand-include%
      (lambda _g180005_
        (let ((_g180006_ (##length _g180005_)))
          (cond ((##fx= _g180006_ 1)
                 (apply gx#core-expand-include%__0 _g180005_))
                ((##fx= _g180006_ 2)
                 (apply gx#core-expand-include%__% _g180005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g180005_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K177596%_ _%stx177597%_ _%method177598%_)
        (if (procedure? _%K177596%_)
            (let ((_%$e177601%_ (gx#stx-source _%stx177597%_)))
              (if _%$e177601%_
                  (gx#stx-wrap-source (_%K177596%_ _%stx177597%_) _%$e177601%_)
                  (_%K177596%_ _%stx177597%_)))
            (let ((_%$e177609%_
                   (bound-method-ref _%K177596%_ _%method177598%_)))
              (if _%$e177609%_
                  (gx#core-apply-expander__%
                   _%$e177609%_
                   _%stx177597%_
                   _%method177598%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx177597%_
                   _%method177598%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K177620%_ _%stx177621%_)
        (let ((_%method177623%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K177620%_
           _%stx177621%_
           _%method177623%_))))
    (define gx#core-apply-expander
      (lambda _g180007_
        (let ((_g180008_ (##length _g180007_)))
          (cond ((##fx= _g180008_ 2)
                 (apply gx#core-apply-expander__0 _g180007_))
                ((##fx= _g180008_ 3)
                 (apply gx#core-apply-expander__% _g180007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g180007_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self177581%_ _%stx177582%_)
        (let ((_%self177585%_ _%self177581%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx177582%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self177424%_ _%stx177425%_)
        (let* ((_%self177428%_ _%self177424%_)
               (_%$%self177437177443%_ _%self177428%_)
               (_%$%E177439177446%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self177437177443%_
                         '((macro-expander K)))
                  '#!void))
               (_%$%K177440177451%_
                (lambda (_%K177449%_)
                  (gx#core-apply-expander__0 _%K177449%_ _%stx177425%_)))
               (_%$%e177441177454%_
                (##unchecked-structure-ref _%$%self177437177443%_ '1 '#f '#f))
               (_%K177457%_ _%$%e177441177454%_))
          (_%$%K177440177451%_ _%K177457%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self177267%_ _%stx177268%_)
        (let ((_%self177271%_ _%self177267%_))
          (if (gx#sealed-syntax? _%stx177268%_)
              _%stx177268%_
              (let* ((_%$%self177280177286%_ _%self177271%_)
                     (_%$%E177282177289%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%self177280177286%_
                               '((core-expander K)))
                        '#!void))
                     (_%$%K177283177294%_
                      (lambda (_%K177292%_)
                        (gx#core-apply-expander__0 _%K177292%_ _%stx177268%_)))
                     (_%$%e177284177297%_
                      (##unchecked-structure-ref
                       _%$%self177280177286%_
                       '1
                       '#f
                       '#f))
                     (_%K177300%_ _%$%e177284177297%_))
                (_%$%K177283177294%_ _%K177300%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self177117%_ _%stx177118%_ _%top?177119%_)
        (let ((_%self177122%_ _%self177117%_))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin
                (displayln '"@expand " (gx#syntax->datum _%stx177118%_))
                (force-output))
              '#!void)
          (if (_%top?177119%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self177122%_
               _%stx177118%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx177118%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self177136%_ _%stx177137%_)
        (let ((_%top?177139%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self177136%_
           _%stx177137%_
           _%top?177139%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g180009_
        (let ((_g180010_ (##length _g180009_)))
          (cond ((##fx= _g180010_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g180009_))
                ((##fx= _g180010_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g180009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g180009_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self176980%_ _%stx176981%_)
        (let ((_%self176984%_ _%self176980%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self176984%_
           _%stx176981%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self176795%_ _%stx176796%_)
        (let* ((_%self176799%_ _%self176795%_)
               (_%$%self176808176814%_ _%self176799%_)
               (_%$%E176810176817%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self176808176814%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%$%K176811176850%_
                (lambda (_%id176820%_)
                  (let* ((_%$%e176821176828%_ _%stx176796%_)
                         (_%$%E176823176832%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%$%e176821176828%_)))
                         (_%$%E176822176846%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e176821176828%_)
                                (let ((_%$%e176824176836%_
                                       (gx#syntax-e _%$%e176821176828%_)))
                                  (let ((_%$%hd176825176839%_
                                         (##car _%$%e176824176836%_))
                                        (_%$%tl176826176841%_
                                         (##cdr _%$%e176824176836%_)))
                                    (let ((_%body176844%_
                                           _%$%tl176826176841%_))
                                      (gx#core-cons
                                       _%id176820%_
                                       _%body176844%_))))
                                (_%$%E176823176832%_)))))
                    (_%$%E176822176846%_))))
               (_%$%e176812176853%_
                (##unchecked-structure-ref _%$%self176808176814%_ '1 '#f '#f))
               (_%id176856%_ _%$%e176812176853%_))
          (_%$%K176811176850%_ _%id176856%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self176622%_ _%stx176623%_ _%method176624%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx176623%_))
              (force-output))
            '#!void)
        (let* ((_%$%self176625176633%_ _%self176622%_)
               (_%$%E176627176636%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self176625176633%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%$%K176628176643%_
                (lambda (_%phi176639%_ _%ctx176640%_ _%K176641%_)
                  (gx#core-apply-user-macro
                   _%K176641%_
                   _%stx176623%_
                   _%ctx176640%_
                   _%phi176639%_
                   _%method176624%_))))
          (if (##structure-instance-of?
               _%$%self176625176633%_
               'gx#user-expander::t)
              (let* ((_%$%e176629176646%_
                      (##unchecked-structure-ref
                       _%$%self176625176633%_
                       '1
                       '#f
                       '#f))
                     (_%K176649%_ _%$%e176629176646%_)
                     (_%$%e176630176651%_
                      (##unchecked-structure-ref
                       _%$%self176625176633%_
                       '2
                       '#f
                       '#f))
                     (_%ctx176654%_ _%$%e176630176651%_)
                     (_%$%e176631176656%_
                      (##unchecked-structure-ref
                       _%$%self176625176633%_
                       '3
                       '#f
                       '#f))
                     (_%phi176659%_ _%$%e176631176656%_))
                (_%$%K176628176643%_ _%phi176659%_ _%ctx176654%_ _%K176649%_))
              (_%$%E176627176636%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self176664%_ _%stx176665%_)
        (let ((_%method176667%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self176664%_
           _%stx176665%_
           _%method176667%_))))
    (define gx#core-apply-user-expander
      (lambda _g180011_
        (let ((_g180012_ (##length _g180011_)))
          (cond ((##fx= _g180012_ 2)
                 (apply gx#core-apply-user-expander__0 _g180011_))
                ((##fx= _g180012_ 3)
                 (apply gx#core-apply-user-expander__% _g180011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g180011_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K176612%_
               _%stx176613%_
               _%ctx176614%_
               _%phi176615%_
               _%method176616%_)
        (let ((_%mark176618%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx176614%_
                _%phi176615%_
                _%stx176613%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K176612%_
               (gx#stx-apply-mark _%stx176613%_ _%mark176618%_)
               _%method176616%_)
              _%mark176618%_))
           gx#current-expander-marks
           (cons _%mark176618%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx176460%_ _%phi176461%_ _%ctx176462%_)
        (let _%lp176464%_ ((_%bind176466%_
                            (gx#core-resolve-identifier__%
                             _%stx176460%_
                             _%phi176461%_
                             _%ctx176462%_)))
          (if (##structure-direct-instance-of?
               _%bind176466%_
               'gx#import-binding::t)
              (_%lp176464%_
               (##unchecked-structure-ref _%bind176466%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind176466%_
                   'gx#alias-binding::t)
                  (_%lp176464%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind176466%_ '5 '#f '#f)
                    _%phi176461%_
                    _%ctx176462%_))
                  _%bind176466%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx176474%_)
        (let* ((_%phi176476%_ (gx#current-expander-phi))
               (_%ctx176478%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx176474%_
           _%phi176476%_
           _%ctx176478%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx176480%_ _%phi176481%_)
        (let ((_%ctx176483%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx176480%_
           _%phi176481%_
           _%ctx176483%_))))
    (define gx#resolve-identifier
      (lambda _g180013_
        (let ((_g180014_ (##length _g180013_)))
          (cond ((##fx= _g180014_ 1)
                 (apply gx#resolve-identifier__0 _g180013_))
                ((##fx= _g180014_ 2)
                 (apply gx#resolve-identifier__1 _g180013_))
                ((##fx= _g180014_ 3)
                 (apply gx#resolve-identifier__% _g180013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g180013_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx176415%_
               _%val176416%_
               _%rebind?176417%_
               _%phi176418%_
               _%ctx176419%_)
        (let ((_%rebind?176424%_
               (if (not _%rebind?176417%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?176417%_)
                       _%rebind?176417%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx176415%_)
           _%val176416%_
           _%rebind?176424%_
           _%phi176418%_
           _%ctx176419%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx176429%_ _%val176430%_)
        (let* ((_%rebind?176432%_ '#f)
               (_%phi176434%_ (gx#current-expander-phi))
               (_%ctx176436%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx176429%_
           _%val176430%_
           _%rebind?176432%_
           _%phi176434%_
           _%ctx176436%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx176438%_ _%val176439%_ _%rebind?176440%_)
        (let* ((_%phi176442%_ (gx#current-expander-phi))
               (_%ctx176444%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx176438%_
           _%val176439%_
           _%rebind?176440%_
           _%phi176442%_
           _%ctx176444%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx176446%_ _%val176447%_ _%rebind?176448%_ _%phi176449%_)
        (let ((_%ctx176451%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx176446%_
           _%val176447%_
           _%rebind?176448%_
           _%phi176449%_
           _%ctx176451%_))))
    (define gx#bind-identifier!
      (lambda _g180015_
        (let ((_g180016_ (##length _g180015_)))
          (cond ((##fx= _g180016_ 2) (apply gx#bind-identifier!__0 _g180015_))
                ((##fx= _g180016_ 3) (apply gx#bind-identifier!__1 _g180015_))
                ((##fx= _g180016_ 4) (apply gx#bind-identifier!__2 _g180015_))
                ((##fx= _g180016_ 5) (apply gx#bind-identifier!__% _g180015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g180015_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx176381%_ _%phi176382%_ _%ctx176383%_)
        (let _%lp176385%_ ((_%e176387%_ _%stx176381%_)
                           (_%marks176388%_ (gx#current-expander-marks)))
          (if (symbol? _%e176387%_)
              (gx#core-resolve-binding
               _%e176387%_
               _%phi176382%_
               _%phi176382%_
               _%ctx176383%_
               (reverse _%marks176388%_))
              (if (gx#identifier-quote? _%e176387%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e176387%_ '1 '#f '#f)
                   _%phi176382%_
                   '0
                   (##unchecked-structure-ref _%e176387%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e176387%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e176387%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e176387%_ '1 '#f '#f)
                       _%phi176382%_
                       _%phi176382%_
                       _%ctx176383%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e176387%_ '3 '#f '#f)
                        _%marks176388%_))
                      (if (##structure-direct-instance-of?
                           _%e176387%_
                           'gx#syntax-wrap::t)
                          (_%lp176385%_
                           (##unchecked-structure-ref _%e176387%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e176387%_ '3 '#f '#f)
                            _%marks176388%_))
                          (if (##structure-instance-of?
                               _%e176387%_
                               'gerbil#AST::t)
                              (_%lp176385%_
                               (##unchecked-structure-ref
                                _%e176387%_
                                '1
                                '#f
                                '#f)
                               _%marks176388%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx176381%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx176399%_)
        (let* ((_%phi176401%_ (gx#current-expander-phi))
               (_%ctx176403%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx176399%_
           _%phi176401%_
           _%ctx176403%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx176405%_ _%phi176406%_)
        (let ((_%ctx176408%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx176405%_
           _%phi176406%_
           _%ctx176408%_))))
    (define gx#core-resolve-identifier
      (lambda _g180017_
        (let ((_g180018_ (##length _g180017_)))
          (cond ((##fx= _g180018_ 1)
                 (apply gx#core-resolve-identifier__0 _g180017_))
                ((##fx= _g180018_ 2)
                 (apply gx#core-resolve-identifier__1 _g180017_))
                ((##fx= _g180018_ 3)
                 (apply gx#core-resolve-identifier__% _g180017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g180017_))))))
    (define gx#core-resolve-binding
      (lambda (_%id176292%_
               _%phi176293%_
               _%src-phi176294%_
               _%ctx176295%_
               _%marks176296%_)
        (letrec ((_%resolve176298%_
                  (lambda (_%ctx176365%_ _%src-phi176366%_ _%key176367%_)
                    (let _%lp176369%_ ((_%ctx176371%_
                                        (gx#core-context-shift
                                         _%ctx176365%_
                                         _%phi176293%_))
                                       (_%dphi176372%_
                                        (fx- _%phi176293%_ _%src-phi176366%_)))
                      (let ((_%$e176374%_
                             (gx#core-context-resolve
                              _%ctx176371%_
                              _%key176367%_)))
                        (if _%$e176374%_
                            _%$e176374%_
                            (if (fxzero? _%dphi176372%_)
                                '#f
                                (if (fxpositive? _%dphi176372%_)
                                    (_%lp176369%_
                                     (gx#core-context-shift _%ctx176371%_ '-1)
                                     (##fx- _%dphi176372%_ '1))
                                    (_%lp176369%_
                                     (gx#core-context-shift _%ctx176371%_ '1)
                                     (##fx+ _%dphi176372%_ '1))))))))))
          (let _%lp176300%_ ((_%ctx176302%_ _%ctx176295%_)
                             (_%src-phi176303%_ _%src-phi176294%_)
                             (_%rest176304%_ _%marks176296%_))
            (let* ((_%$%rest176305176313%_ _%rest176304%_)
                   (_%$%else176307176321%_
                    (lambda ()
                      (_%resolve176298%_
                       _%ctx176302%_
                       _%src-phi176303%_
                       _%id176292%_)))
                   (_%$%K176309176353%_
                    (lambda (_%rest176324%_ _%hd176325%_)
                      (let* ((_%$%hd176326176332%_ _%hd176325%_)
                             (_%$%E176328176335%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%hd176326176332%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%$%K176329176345%_
                              (lambda (_%subst176338%_)
                                (let ((_%$e176342%_
                                       (let ((_%key176340%_
                                              (if _%subst176338%_
                                                  (hash-get
                                                   _%subst176338%_
                                                   _%id176292%_)
                                                  '#f)))
                                         (if _%key176340%_
                                             (_%resolve176298%_
                                              _%ctx176302%_
                                              _%src-phi176303%_
                                              _%key176340%_)
                                             '#f))))
                                  (if _%$e176342%_
                                      _%$e176342%_
                                      (_%lp176300%_
                                       (##unchecked-structure-ref
                                        _%hd176325%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd176325%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest176324%_))))))
                        (if (##structure-instance-of?
                             _%$%hd176326176332%_
                             'gx#expander-mark::t)
                            (let* ((_%$%e176330176348%_
                                    (##unchecked-structure-ref
                                     _%$%hd176326176332%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst176351%_ _%$%e176330176348%_))
                              (_%$%K176329176345%_ _%subst176351%_))
                            (_%$%E176328176335%_))))))
              (if (pair? _%$%rest176305176313%_)
                  (let ((_%$%hd176310176356%_ (##car _%$%rest176305176313%_))
                        (_%$%tl176311176358%_ (##cdr _%$%rest176305176313%_)))
                    (let* ((_%hd176361%_ _%$%hd176310176356%_)
                           (_%rest176363%_ _%$%tl176311176358%_))
                      (_%$%K176309176353%_ _%rest176363%_ _%hd176361%_)))
                  (_%$%else176307176321%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key176163%_
               _%val176164%_
               _%rebind?176165%_
               _%phi176166%_
               _%ctx176167%_)
        (letrec ((_%update-binding176169%_
                  (lambda (_%xval176241%_)
                    (if (or (_%rebind?176165%_
                             _%ctx176167%_
                             _%xval176241%_
                             _%val176164%_)
                            (and (##structure-direct-instance-of?
                                  _%xval176241%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval176241%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val176164%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val176164%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval176241%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val176164%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val176164%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval176241%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val176164%_
                        (if (and (##structure-direct-instance-of?
                                  _%val176164%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val176164%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval176241%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val176164%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval176241%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval176241%_
                            (if (and (##structure-direct-instance-of?
                                      _%val176164%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval176241%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key176163%_
                                 (cons (##unchecked-structure-ref
                                        _%val176164%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val176164%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval176241%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval176241%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval176241%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval176241%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key176163%_
                                 _%val176164%_
                                 _%xval176241%_))))))
                 (_%gensubst176170%_
                  (lambda (_%subst176236%_ _%id176237%_)
                    (let ((_%eid176239%_
                           (gensym (if (uninterned-symbol? _%id176237%_)
                                       '%
                                       _%id176237%_))))
                      (hash-put! _%subst176236%_ _%id176237%_ _%eid176239%_)
                      _%eid176239%_)))
                 (_%subst!176171%_
                  (lambda (_%key176173%_)
                    (let* ((_%$%key176174176182%_ _%key176173%_)
                           (_%$%else176176176190%_ (lambda () _%key176173%_))
                           (_%$%K176178176224%_
                            (lambda (_%mark176193%_ _%id176194%_)
                              (let* ((_%$%mark176195176201%_ _%mark176193%_)
                                     (_%$%E176197176204%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark176195176201%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K176198176216%_
                                      (lambda (_%subst176207%_)
                                        (if (not _%subst176207%_)
                                            (let ((_%subst176210%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark176193%_
                                               _%subst176210%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst176170%_
                                               _%subst176210%_
                                               _%id176194%_))
                                            (let ((_%$e176212%_
                                                   (hash-get
                                                    _%subst176207%_
                                                    _%id176194%_)))
                                              (if _%$e176212%_
                                                  _%$e176212%_
                                                  (_%gensubst176170%_
                                                   _%subst176207%_
                                                   _%id176194%_)))))))
                                (if (##structure-instance-of?
                                     _%$%mark176195176201%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e176199176219%_
                                            (##unchecked-structure-ref
                                             _%$%mark176195176201%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst176222%_
                                            _%$%e176199176219%_))
                                      (_%$%K176198176216%_ _%subst176222%_))
                                    (_%$%E176197176204%_))))))
                      (if (pair? _%$%key176174176182%_)
                          (let ((_%$%hd176179176227%_
                                 (##car _%$%key176174176182%_))
                                (_%$%tl176180176229%_
                                 (##cdr _%$%key176174176182%_)))
                            (let* ((_%id176232%_ _%$%hd176179176227%_)
                                   (_%mark176234%_ _%$%tl176180176229%_))
                              (_%$%K176178176224%_
                               _%mark176234%_
                               _%id176232%_)))
                          (_%$%else176176176190%_))))))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin (displayln '"@bind " _%key176163%_) (force-output))
              '#!void)
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx176167%_ _%phi176166%_)
           (_%subst!176171%_ _%key176163%_)
           _%val176164%_
           _%update-binding176169%_))))
    (define gx#core-bind!__0
      (lambda (_%key176262%_ _%val176263%_)
        (let* ((_%rebind?176265%_ false)
               (_%phi176267%_ (gx#current-expander-phi))
               (_%ctx176269%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key176262%_
           _%val176263%_
           _%rebind?176265%_
           _%phi176267%_
           _%ctx176269%_))))
    (define gx#core-bind!__1
      (lambda (_%key176271%_ _%val176272%_ _%rebind?176273%_)
        (let* ((_%phi176275%_ (gx#current-expander-phi))
               (_%ctx176277%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key176271%_
           _%val176272%_
           _%rebind?176273%_
           _%phi176275%_
           _%ctx176277%_))))
    (define gx#core-bind!__2
      (lambda (_%key176279%_ _%val176280%_ _%rebind?176281%_ _%phi176282%_)
        (let ((_%ctx176284%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key176279%_
           _%val176280%_
           _%rebind?176281%_
           _%phi176282%_
           _%ctx176284%_))))
    (define gx#core-bind!
      (lambda _g180019_
        (let ((_g180020_ (##length _g180019_)))
          (cond ((##fx= _g180020_ 2) (apply gx#core-bind!__0 _g180019_))
                ((##fx= _g180020_ 3) (apply gx#core-bind!__1 _g180019_))
                ((##fx= _g180020_ 4) (apply gx#core-bind!__2 _g180019_))
                ((##fx= _g180020_ 5) (apply gx#core-bind!__% _g180019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g180019_))))))
    (define gx#core-identifier-key
      (lambda (_%stx176094%_)
        (if (symbol? _%stx176094%_)
            (let* ((_%$%g176096176104%_ (gx#current-expander-marks))
                   (_%$%else176098176112%_ (lambda () _%stx176094%_))
                   (_%$%K176100176117%_
                    (lambda (_%hd176115%_) (cons _%stx176094%_ _%hd176115%_))))
              (if (pair? _%$%g176096176104%_)
                  (let* ((_%$%hd176101176120%_ (##car _%$%g176096176104%_))
                         (_%hd176123%_ _%$%hd176101176120%_))
                    (_%$%K176100176117%_ _%hd176123%_))
                  (_%$%else176098176112%_)))
            (if (gx#identifier? _%stx176094%_)
                (let* ((_%id176126%_ (gx#syntax-local-unwrap _%stx176094%_))
                       (_%eid176128%_ (gx#stx-e _%id176126%_))
                       (_%marks176130%_
                        (gx#stx-identifier-marks* _%id176126%_))
                       (_%$%marks176132176140%_ _%marks176130%_)
                       (_%$%else176134176148%_ (lambda () _%eid176128%_))
                       (_%$%K176136176153%_
                        (lambda (_%hd176151%_)
                          (cons _%eid176128%_ _%hd176151%_))))
                  (if (pair? _%$%marks176132176140%_)
                      (let* ((_%$%hd176137176156%_
                              (##car _%$%marks176132176140%_))
                             (_%hd176159%_ _%$%hd176137176156%_))
                        (_%$%K176136176153%_ _%hd176159%_))
                      (_%$%else176134176148%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx176094%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx176033%_ _%phi176034%_)
        (letrec ((_%make-phi176036%_
                  (lambda (_%super176092%_)
                    (let ((__obj179990
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj179990
                       (##gensym 'phi)
                       _%super176092%_)
                      __obj179990)))
                 (_%make-phi/up176037%_
                  (lambda (_%ctx176087%_ _%super176088%_)
                    (let ((_%ctx+1176090%_
                           (_%make-phi176036%_ _%super176088%_)))
                      (##unchecked-structure-set!
                       _%ctx176087%_
                       _%ctx+1176090%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1176090%_
                       _%ctx176087%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1176090%_)))
                 (_%make-phi/down176038%_
                  (lambda (_%ctx176082%_ _%super176083%_)
                    (let ((_%ctx-1176085%_
                           (_%make-phi176036%_ _%super176083%_)))
                      (##unchecked-structure-set!
                       _%ctx-1176085%_
                       _%ctx176082%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx176082%_
                       _%ctx-1176085%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1176085%_)))
                 (_%shift176039%_
                  (lambda (_%ctx176065%_
                           _%delta176066%_
                           _%make-delta-context176067%_
                           _%phi176068%_
                           _%K176069%_)
                    (let ((_%$e176071%_
                           (##unchecked-structure-ref
                            _%ctx176065%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e176071%_
                          (let* ((_%super176076%_
                                  (_%K176069%_ _%$e176071%_ _%delta176066%_))
                                 (_%ctx+d176078%_
                                  (_%make-delta-context176067%_
                                   _%ctx176065%_
                                   _%super176076%_)))
                            (_%K176069%_
                             _%ctx+d176078%_
                             (fx- _%phi176068%_ _%delta176066%_)))
                          (error '"Bad context" _%ctx176065%_))))))
          (let _%K176041%_ ((_%ctx176043%_ _%ctx176033%_)
                            (_%phi176044%_ _%phi176034%_))
            (if (fxzero? _%phi176044%_)
                _%ctx176043%_
                (if (##structure-instance-of? _%ctx176043%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi176044%_)
                        (let ((_%$e176048%_
                               (##unchecked-structure-ref
                                _%ctx176043%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e176048%_
                              (_%K176041%_
                               _%$e176048%_
                               (##fx- _%phi176044%_ '1))
                              (_%shift176039%_
                               _%ctx176043%_
                               '1
                               _%make-phi/up176037%_
                               _%phi176044%_
                               _%K176041%_)))
                        (let ((_%$e176056%_
                               (##unchecked-structure-ref
                                _%ctx176043%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e176056%_
                              (_%K176041%_
                               _%$e176056%_
                               (##fx+ _%phi176044%_ '1))
                              (_%shift176039%_
                               _%ctx176043%_
                               '-1
                               _%make-phi/down176038%_
                               _%phi176044%_
                               _%K176041%_))))
                    _%ctx176043%_))))))
    (define gx#core-context-get
      (lambda (_%ctx176030%_ _%key176031%_)
        (hash-get
         (##unchecked-structure-ref _%ctx176030%_ '2 '#f '#f)
         _%key176031%_)))
    (define gx#core-context-put!
      (lambda (_%ctx176026%_ _%key176027%_ _%val176028%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx176026%_ '2 '#f '#f)
         _%key176027%_
         _%val176028%_)
        _%val176028%_))
    (define gx#core-context-resolve
      (lambda (_%ctx176012%_ _%key176013%_)
        (let _%lp176015%_ ((_%ctx176017%_ _%ctx176012%_))
          (let ((_%$e176019%_
                 (gx#core-context-get _%ctx176017%_ _%key176013%_)))
            (if _%$e176019%_
                _%$e176019%_
                (let ((_%$e176022%_
                       (if (##structure-instance-of?
                            _%ctx176017%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx176017%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e176022%_ (_%lp176015%_ _%$e176022%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx176001%_ _%key176002%_ _%val176003%_ _%rebind176004%_)
        (let ((_%$e176006%_ (gx#core-context-get _%ctx176001%_ _%key176002%_)))
          (if _%$e176006%_
              (gx#core-context-put!
               _%ctx176001%_
               _%key176002%_
               (_%rebind176004%_ _%$e176006%_))
              (gx#core-context-put!
               _%ctx176001%_
               _%key176002%_
               _%val176003%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx175976%_ _%stop?175977%_)
        (let _%lp175979%_ ((_%ctx175981%_ _%ctx175976%_))
          (if (_%stop?175977%_ _%ctx175981%_)
              _%ctx175981%_
              (if (##structure-instance-of? _%ctx175981%_ 'gx#phi-context::t)
                  (_%lp175979%_
                   (##unchecked-structure-ref _%ctx175981%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx175990%_ (gx#current-expander-context))
               (_%stop?175992%_ gx#top-context?))
          (gx#core-context-top__% _%ctx175990%_ _%stop?175992%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx175994%_)
        (let ((_%stop?175996%_ gx#top-context?))
          (gx#core-context-top__% _%ctx175994%_ _%stop?175996%_))))
    (define gx#core-context-top
      (lambda _g180021_
        (let ((_g180022_ (##length _g180021_)))
          (cond ((##fx= _g180022_ 0) (apply gx#core-context-top__0 _g180021_))
                ((##fx= _g180022_ 1) (apply gx#core-context-top__1 _g180021_))
                ((##fx= _g180022_ 2) (apply gx#core-context-top__% _g180021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g180021_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx175961%_)
        (let _%lp175963%_ ((_%ctx175965%_ _%ctx175961%_))
          (if (##structure-instance-of? _%ctx175965%_ 'gx#phi-context::t)
              (_%lp175963%_
               (##unchecked-structure-ref _%ctx175965%_ '3 '#f '#f))
              _%ctx175965%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx175971%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx175971%_))))
    (define gx#core-context-root
      (lambda _g180023_
        (let ((_g180024_ (##length _g180023_)))
          (cond ((##fx= _g180024_ 0) (apply gx#core-context-root__0 _g180023_))
                ((##fx= _g180024_ 1) (apply gx#core-context-root__% _g180023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g180023_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx175943%_ . _%ignore175944%_)
        (let ((_%$e175946%_ (gx#current-expander-allow-rebind?)))
          (if _%$e175946%_
              _%$e175946%_
              (if (##structure-instance-of? _%ctx175943%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx175943%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx175943%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx175953%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx175953%_))))
    (define gx#core-context-rebind?
      (lambda _g180025_
        (let ((_g180026_ (##length _g180025_)))
          (cond ((##fx= _g180026_ 0)
                 (apply gx#core-context-rebind?__0 _g180025_))
                ((##fx= _g180026_ 1)
                 (apply gx#core-context-rebind?__% _g180025_))
                ((##fx>= _g180026_ 1)
                 (apply gx#core-context-rebind?__% _g180025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g180025_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx175926%_)
        (let ((_%$e175928%_ (gx#core-context-top__1 _%ctx175926%_)))
          (if _%$e175928%_
              (if (##structure-instance-of? _%$e175928%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e175928%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx175938%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx175938%_))))
    (define gx#core-context-namespace
      (lambda _g180027_
        (let ((_g180028_ (##length _g180027_)))
          (cond ((##fx= _g180028_ 0)
                 (apply gx#core-context-namespace__0 _g180027_))
                ((##fx= _g180028_ 1)
                 (apply gx#core-context-namespace__% _g180027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g180027_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind175912%_ _%is?175913%_)
        (if (##structure-direct-instance-of?
             _%bind175912%_
             'gx#syntax-binding::t)
            (_%is?175913%_
             (##unchecked-structure-ref _%bind175912%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind175918%_)
        (let ((_%is?175920%_ gx#expander?))
          (gx#expander-binding?__% _%bind175918%_ _%is?175920%_))))
    (define gx#expander-binding?
      (lambda _g180029_
        (let ((_g180030_ (##length _g180029_)))
          (cond ((##fx= _g180030_ 1) (apply gx#expander-binding?__0 _g180029_))
                ((##fx= _g180030_ 2) (apply gx#expander-binding?__% _g180029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g180029_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind175909%_)
        (gx#expander-binding?__% _%bind175909%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind175907%_)
        (gx#expander-binding?__% _%bind175907%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind175901%_)
        (letrec ((_%direct-special-form?175903%_
                  (lambda (_%obj175905%_)
                    (##structure-direct-instance-of?
                     _%obj175905%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind175901%_
           _%direct-special-form?175903%_))))
    (define gx#special-form-binding?
      (lambda (_%bind175899%_)
        (gx#expander-binding?__% _%bind175899%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind175890%_)
        (letrec ((_%feature?175892%_
                  (lambda (_%e175894%_)
                    (let ((_%$e175896%_
                           (##structure-instance-of?
                            _%e175894%_
                            'gx#feature-expander::t)))
                      (if _%$e175896%_
                          _%$e175896%_
                          (##structure-instance-of?
                           _%e175894%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind175890%_ _%feature?175892%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind175888%_)
        (gx#expander-binding?__% _%bind175888%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id175875%_ _%bound?175876%_)
        (if (gx#identifier? _%id175875%_)
            (_%bound?175876%_ (gx#resolve-identifier__0 _%id175875%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id175881%_)
        (let ((_%bound?175883%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id175881%_ _%bound?175883%_))))
    (define gx#core-bound-identifier?
      (lambda _g180031_
        (let ((_g180032_ (##length _g180031_)))
          (cond ((##fx= _g180032_ 1)
                 (apply gx#core-bound-identifier?__0 _g180031_))
                ((##fx= _g180032_ 2)
                 (apply gx#core-bound-identifier?__% _g180031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g180031_))))))
    (define gx#core-identifier=?
      (lambda (_%x175865%_ _%y175866%_)
        (letrec ((_%y=?175868%_
                  (lambda (_%xid175872%_)
                    ((if (list? _%y175866%_) memq eq?)
                     _%xid175872%_
                     _%y175866%_))))
          (let ((_%bind175870%_ (gx#resolve-identifier__0 _%x175865%_)))
            (if (##structure-instance-of? _%bind175870%_ 'gx#binding::t)
                (_%y=?175868%_
                 (##unchecked-structure-ref _%bind175870%_ '1 '#f '#f))
                (_%y=?175868%_ (gx#stx-e _%x175865%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e175863%_)
        (if (interned-symbol? _%e175863%_)
            (string-index__0 (symbol->string _%e175863%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx175816%_ _%src175817%_ _%ctx175818%_ _%marks175819%_)
        (if (##structure? _%stx175816%_)
            (let ((_%$e175821%_ (gx#sealed-syntax-unwrap _%stx175816%_)))
              (if _%$e175821%_
                  _%$e175821%_
                  (if (gx#identifier? _%stx175816%_)
                      (let ((_%id175825%_
                             (gx#stx-unwrap__% _%stx175816%_ _%marks175819%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id175825%_ '1 '#f '#f)
                         (let ((_%$e175827%_
                                (##unchecked-structure-ref
                                 _%id175825%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e175827%_ _%$e175827%_ _%src175817%_))
                         _%ctx175818%_
                         (##unchecked-structure-ref _%id175825%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx175816%_)
                       (let ((_%$e175831%_ (gx#stx-source _%stx175816%_)))
                         (if _%$e175831%_ _%$e175831%_ _%src175817%_))
                       _%ctx175818%_
                       (reverse _%marks175819%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx175816%_
             _%src175817%_
             _%ctx175818%_
             (reverse _%marks175819%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx175837%_)
        (let* ((_%src175839%_ '#f)
               (_%ctx175841%_ (gx#current-expander-context))
               (_%marks175843%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx175837%_
           _%src175839%_
           _%ctx175841%_
           _%marks175843%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx175845%_ _%src175846%_)
        (let* ((_%ctx175848%_ (gx#current-expander-context))
               (_%marks175850%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx175845%_
           _%src175846%_
           _%ctx175848%_
           _%marks175850%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx175852%_ _%src175853%_ _%ctx175854%_)
        (let ((_%marks175856%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx175852%_
           _%src175853%_
           _%ctx175854%_
           _%marks175856%_))))
    (define gx#core-quote-syntax
      (lambda _g180033_
        (let ((_g180034_ (##length _g180033_)))
          (cond ((##fx= _g180034_ 1) (apply gx#core-quote-syntax__0 _g180033_))
                ((##fx= _g180034_ 2) (apply gx#core-quote-syntax__1 _g180033_))
                ((##fx= _g180034_ 3) (apply gx#core-quote-syntax__2 _g180033_))
                ((##fx= _g180034_ 4) (apply gx#core-quote-syntax__% _g180033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g180033_))))))
    (define gx#core-cons
      (lambda (_%hd175812%_ _%tl175813%_)
        (cons (gx#core-quote-syntax__0 _%hd175812%_) _%tl175813%_)))
    (define gx#core-list
      (lambda (_%hd175809%_ . _%rest175810%_)
        (cons (gx#core-quote-syntax__0 _%hd175809%_) _%rest175810%_)))
    (define gx#core-cons*
      (lambda (_%hd175806%_ . _%rest175807%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd175806%_) _%rest175807%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path175775%_ _%rel175776%_)
        (let ((_%path175793%_ (gx#stx-e _%stx-path175775%_))
              (_%reldir175794%_
               (let _%lp175778%_ ((_%relsrc175780%_
                                   (let ((_%$e175790%_
                                          (gx#stx-source _%stx-path175775%_)))
                                     (if _%$e175790%_
                                         _%$e175790%_
                                         _%rel175776%_))))
                 (if (##structure-instance-of? _%relsrc175780%_ 'gerbil#AST::t)
                     (_%lp175778%_
                      (let ((_%$e175783%_ (gx#stx-source _%relsrc175780%_)))
                        (if _%$e175783%_
                            _%$e175783%_
                            (gx#stx-e _%relsrc175780%_))))
                     (if (source-location-path? _%relsrc175780%_)
                         (path-directory
                          (source-location-path _%relsrc175780%_))
                         (if (string? _%relsrc175780%_)
                             (path-directory _%relsrc175780%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path175793%_ (path-normalize _%reldir175794%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path175799%_)
        (let ((_%rel175801%_ '#f))
          (gx#core-resolve-path__% _%stx-path175799%_ _%rel175801%_))))
    (define gx#core-resolve-path
      (lambda _g180035_
        (let ((_g180036_ (##length _g180035_)))
          (cond ((##fx= _g180036_ 1) (apply gx#core-resolve-path__0 _g180035_))
                ((##fx= _g180036_ 2) (apply gx#core-resolve-path__% _g180035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g180035_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr175731%_ _%ctx175732%_)
        (let* ((_%$%repr175733175740%_ _%repr175731%_)
               (_%$%E175735175744%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%repr175733175740%_
                         '([phi . subs]))
                  '#!void))
               (_%$%K175736175752%_
                (lambda (_%subs175747%_ _%phi175748%_)
                  (let ((_%subst175750%_
                         (if (null? _%subs175747%_)
                             '#f
                             (list->hash-table-eq _%subs175747%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst175750%_
                     _%ctx175732%_
                     _%phi175748%_
                     '#f)))))
          (if (pair? _%$%repr175733175740%_)
              (let ((_%$%hd175737175755%_ (##car _%$%repr175733175740%_))
                    (_%$%tl175738175757%_ (##cdr _%$%repr175733175740%_)))
                (let* ((_%phi175760%_ _%$%hd175737175755%_)
                       (_%subs175762%_ _%$%tl175738175757%_))
                  (_%$%K175736175752%_ _%subs175762%_ _%phi175760%_)))
              (_%$%E175735175744%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr175767%_)
        (let ((_%ctx175769%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr175767%_ _%ctx175769%_))))
    (define gx#core-deserialize-mark
      (lambda _g180037_
        (let ((_g180038_ (##length _g180037_)))
          (cond ((##fx= _g180038_ 1)
                 (apply gx#core-deserialize-mark__0 _g180037_))
                ((##fx= _g180038_ 2)
                 (apply gx#core-deserialize-mark__% _g180037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g180037_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx175728%_)
        (gx#stx-rewrap _%stx175728%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx175726%_)
        (gx#stx-unwrap__% _%stx175726%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx175696%_)
        (let* ((_%$%g175697175705%_ (gx#current-expander-marks))
               (_%$%else175699175713%_ (lambda () _%stx175696%_))
               (_%$%K175701175718%_
                (lambda (_%hd175716%_)
                  (gx#stx-apply-mark _%stx175696%_ _%hd175716%_))))
          (if (pair? _%$%g175697175705%_)
              (let* ((_%$%hd175702175721%_ (##car _%$%g175697175705%_))
                     (_%hd175724%_ _%$%hd175702175721%_))
                (_%$%K175701175718%_ _%hd175724%_))
              (_%$%else175699175713%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym175694%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym175694%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx175679%_ _%E175680%_)
        (let ((_%bind175682%_ (gx#resolve-identifier__0 _%stx175679%_)))
          (if (##structure-direct-instance-of?
               _%bind175682%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind175682%_ '5 '#f '#f)
              (_%E175680%_ _%stx175679%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx175687%_)
        (let ((_%E175689%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx175687%_ _%E175689%_))))
    (define gx#syntax-local-e
      (lambda _g180039_
        (let ((_g180040_ (##length _g180039_)))
          (cond ((##fx= _g180040_ 1) (apply gx#syntax-local-e__0 _g180039_))
                ((##fx= _g180040_ 2) (apply gx#syntax-local-e__% _g180039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g180039_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx175663%_ _%E175664%_)
        (let ((_%e175666%_ (gx#syntax-local-e__% _%stx175663%_ _%E175664%_)))
          (if (##structure-instance-of? _%e175666%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e175666%_ '1 '#f '#f)
              _%e175666%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx175671%_)
        (let ((_%E175673%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx175671%_ _%E175673%_))))
    (define gx#syntax-local-value
      (lambda _g180041_
        (let ((_g180042_ (##length _g180041_)))
          (cond ((##fx= _g180042_ 1)
                 (apply gx#syntax-local-value__0 _g180041_))
                ((##fx= _g180042_ 2)
                 (apply gx#syntax-local-value__% _g180041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g180041_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx175660%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx175660%_)))))
