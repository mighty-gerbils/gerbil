(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712997786)
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
      (lambda _%$args119538%_
        (apply make-instance gx#expander-context::t _%$args119538%_)))
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
      (lambda _%$args119535%_
        (apply make-instance gx#root-context::t _%$args119535%_)))
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
      (lambda _%$args119532%_
        (apply make-instance gx#phi-context::t _%$args119532%_)))
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
      (lambda _%$args119529%_
        (apply make-instance gx#top-context::t _%$args119529%_)))
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
      (lambda _%$args119526%_
        (apply make-instance gx#module-context::t _%$args119526%_)))
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
      (lambda _%$args119523%_
        (apply make-instance gx#prelude-context::t _%$args119523%_)))
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
      (lambda _%$args119520%_
        (apply make-instance gx#local-context::t _%$args119520%_)))
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
      (lambda (_%self116426119491%_ _%id119493%_ _%super119494%_)
        (let* ((_%self119496%_ _%self116426119491%_)
               (_%self119498%_ _%self119496%_))
          (if (##fx< '3 (##structure-length _%self119498%_))
              (begin
                (##unchecked-structure-set!
                 _%self119498%_
                 _%id119493%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119498%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119498%_
                 _%super119494%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119498%_
                     '3
                     (##vector-length _%self119498%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self116426119511%_ _%id119512%_)
        (let ((_%super119514%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self116426119511%_
           _%id119512%_
           _%super119514%_))))
    (define gx#phi-context:::init!
      (lambda _g119581_
        (let ((_g119580_ (##length _g119581_)))
          (cond ((##fx= _g119580_ 2)
                 (apply gx#phi-context:::init!__0 _g119581_))
                ((##fx= _g119580_ 3)
                 (apply gx#phi-context:::init!__% _g119581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g119581_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self116427119342%_ _%super119344%_)
        (let* ((_%self119346%_ _%self116427119342%_)
               (_%self119348%_ _%self119346%_))
          (if (##fx< '3 (##structure-length _%self119348%_))
              (begin
                (##unchecked-structure-set!
                 _%self119348%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119348%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119348%_
                 _%super119344%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119348%_
                     '3
                     (##vector-length _%self119348%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self116427119361%_)
        (let ((_%super119363%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self116427119361%_ _%super119363%_))))
    (define gx#local-context:::init!
      (lambda _g119583_
        (let ((_g119582_ (##length _g119583_)))
          (cond ((##fx= _g119582_ 1)
                 (apply gx#local-context:::init!__0 _g119583_))
                ((##fx= _g119582_ 2)
                 (apply gx#local-context:::init!__% _g119583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g119583_))))))
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
      (lambda _%$args119216%_
        (apply make-instance gx#binding::t _%$args119216%_)))
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
      (lambda _%$args119213%_
        (apply make-instance gx#runtime-binding::t _%$args119213%_)))
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
      (lambda _%$args119210%_
        (apply make-instance gx#local-binding::t _%$args119210%_)))
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
      (lambda _%$args119207%_
        (apply make-instance gx#top-binding::t _%$args119207%_)))
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
      (lambda _%$args119204%_
        (apply make-instance gx#module-binding::t _%$args119204%_)))
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
      (lambda _%$args119201%_
        (apply make-instance gx#extern-binding::t _%$args119201%_)))
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
      (lambda _%$args119198%_
        (apply make-instance gx#syntax-binding::t _%$args119198%_)))
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
      (lambda _%$args119195%_
        (apply make-instance gx#import-binding::t _%$args119195%_)))
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
      (lambda _%$args119192%_
        (apply make-instance gx#alias-binding::t _%$args119192%_)))
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
      (lambda _%$args119189%_
        (apply make-instance gx#expander::t _%$args119189%_)))
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
      (lambda _%$args119186%_
        (apply make-instance gx#core-expander::t _%$args119186%_)))
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
      (lambda _%$args119183%_
        (apply make-instance gx#expression-form::t _%$args119183%_)))
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
      (lambda _%$args119180%_
        (apply make-instance gx#special-form::t _%$args119180%_)))
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
      (lambda _%$args119177%_
        (apply make-instance gx#definition-form::t _%$args119177%_)))
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
      (lambda _%$args119174%_
        (apply make-instance gx#top-special-form::t _%$args119174%_)))
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
      (lambda _%$args119171%_
        (apply make-instance gx#module-special-form::t _%$args119171%_)))
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
      (lambda _%$args119168%_
        (apply make-instance gx#feature-expander::t _%$args119168%_)))
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
      (lambda _%$args119165%_
        (apply make-instance gx#private-feature-expander::t _%$args119165%_)))
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
      (lambda _%$args119162%_
        (apply make-instance gx#reserved-expander::t _%$args119162%_)))
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
      (lambda _%$args119159%_
        (apply make-instance gx#macro-expander::t _%$args119159%_)))
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
      (lambda _%$args119156%_
        (apply make-instance gx#rename-macro-expander::t _%$args119156%_)))
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
      (lambda _%$args119153%_
        (apply make-instance gx#user-expander::t _%$args119153%_)))
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
      (lambda _%$args119150%_
        (apply make-instance gx#expander-mark::t _%$args119150%_)))
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
      (lambda (_%ctx119134%_
               _%message119135%_
               _%stx119136%_
               .
               _%details119137%_)
        (let ((_%ctx119148%_
               (let ((_%$e119139%_ _%ctx119134%_))
                 (if _%$e119139%_
                     _%$e119139%_
                     (let ((_%$e119142%_ (gx#core-context-top__0)))
                       (if _%$e119142%_
                           ((lambda (_%ctx119145%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx119145%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e119142%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message119135%_
                  (cons _%stx119136%_ _%details119137%_)
                  _%ctx119148%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx119121%_ _%expression?119122%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx119121%_ _%expression?119122%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx119127%_)
        (let ((_%expression?119129%_ '#f))
          (gx#eval-syntax__% _%stx119127%_ _%expression?119129%_))))
    (define gx#eval-syntax
      (lambda _g119585_
        (let ((_g119584_ (##length _g119585_)))
          (cond ((##fx= _g119584_ 1) (apply gx#eval-syntax__0 _g119585_))
                ((##fx= _g119584_ 2) (apply gx#eval-syntax__% _g119585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g119585_))))))
    (define gx#eval-syntax*
      (lambda (_%stx119118%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx119118%_))))
    (define gx#core-expand__%
      (lambda (_%stx119105%_ _%expression?119106%_)
        (if _%expression?119106%_
            (gx#core-expand-expression _%stx119105%_)
            (gx#core-expand-top _%stx119105%_))))
    (define gx#core-expand__0
      (lambda (_%stx119111%_)
        (let ((_%expression?119113%_ '#f))
          (gx#core-expand__% _%stx119111%_ _%expression?119113%_))))
    (define gx#core-expand
      (lambda _g119587_
        (let ((_g119586_ (##length _g119587_)))
          (cond ((##fx= _g119586_ 1) (apply gx#core-expand__0 _g119587_))
                ((##fx= _g119586_ 2) (apply gx#core-expand__% _g119587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g119587_))))))
    (define gx#core-expand-top
      (lambda (_%stx119072%_)
        (let* ((_%stx119074%_ (gx#core-expand*__0 _%stx119072%_))
               (_%e119075119082%_ _%stx119074%_)
               (_%E119077119086%_
                (lambda () (gx#core-expand-expression _%stx119074%_)))
               (_%E119076119100%_
                (lambda ()
                  (if (gx#stx-pair? _%e119075119082%_)
                      (let ((_%e119078119090%_
                             (gx#syntax-e _%e119075119082%_)))
                        (let ((_%hd119079119093%_ (##car _%e119078119090%_))
                              (_%tl119080119095%_ (##cdr _%e119078119090%_)))
                          (let ((_%form119098%_ _%hd119079119093%_))
                            (if (gx#core-bound-identifier?__0 _%form119098%_)
                                _%stx119074%_
                                (_%E119077119086%_)))))
                      (_%E119077119086%_)))))
          (_%E119076119100%_))))
    (define gx#core-expand-expression
      (lambda (_%stx119004%_)
        (letrec ((_%sealed-expression?119006%_
                  (lambda (_%hd119042%_)
                    (if (gx#sealed-syntax? _%hd119042%_)
                        (let* ((_%e119043119050%_ _%hd119042%_)
                               (_%E119045119054%_ (lambda () '#f))
                               (_%E119044119068%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e119043119050%_)
                                      (let ((_%e119046119058%_
                                             (gx#syntax-e _%e119043119050%_)))
                                        (let ((_%hd119047119061%_
                                               (##car _%e119046119058%_))
                                              (_%tl119048119063%_
                                               (##cdr _%e119046119058%_)))
                                          (let ((_%form119066%_
                                                 _%hd119047119061%_))
                                            (gx#core-bound-identifier?__%
                                             _%form119066%_
                                             gx#expression-form-binding?))))
                                      (_%E119045119054%_)))))
                          (_%E119044119068%_))
                        '#f)))
                 (_%illegal-expression119007%_
                  (lambda (_%hd119039%_ . _%_119040%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx119004%_
                     _%hd119039%_)))
                 (_%expand-e119008%_
                  (lambda (_%form119031%_ _%hd119032%_)
                    (let ((_%bind119034%_
                           (if (##structure-instance-of?
                                _%form119031%_
                                'gx#binding::t)
                               _%form119031%_
                               (gx#resolve-identifier__0 _%form119031%_))))
                      (if (gx#core-expander-binding? _%bind119034%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind119034%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd119032%_
                            (gx#stx-source _%stx119004%_)))
                          (if (##structure-direct-instance-of?
                               _%bind119034%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind119034%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd119032%_
                                 (gx#stx-source _%stx119004%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx119004%_
                               _%form119031%_)))))))
          (let ((_%hd119010%_ (gx#core-expand-head _%stx119004%_)))
            (if (_%sealed-expression?119006%_ _%hd119010%_)
                _%hd119010%_
                (if (gx#stx-pair? _%hd119010%_)
                    (let* ((_%form119014%_ (gx#stx-car _%hd119010%_))
                           (_%bind119016%_
                            (if (gx#identifier? _%form119014%_)
                                (gx#resolve-identifier__0 _%form119014%_)
                                '#f)))
                      (if (or (not _%bind119016%_)
                              (not (gx#core-expander-binding? _%bind119016%_)))
                          (_%expand-e119008%_
                           '%%app
                           (cons '%%app _%hd119010%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind119016%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd119010%_
                               _%illegal-expression119007%_)
                              (if (gx#expression-form-binding? _%bind119016%_)
                                  (_%expand-e119008%_
                                   _%bind119016%_
                                   _%hd119010%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind119016%_)
                                      (gx#core-expand-expression
                                       (_%expand-e119008%_
                                        _%bind119016%_
                                        _%hd119010%_))
                                      (_%illegal-expression119007%_
                                       _%hd119010%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd119010%_)
                        (_%illegal-expression119007%_ _%hd119010%_)
                        (if (gx#identifier? _%hd119010%_)
                            (_%expand-e119008%_
                             '%%ref
                             (cons '%%ref (cons _%hd119010%_ '())))
                            (if (gx#stx-datum? _%hd119010%_)
                                (_%expand-e119008%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd119010%_ '())))
                                (_%illegal-expression119007%_
                                 _%hd119010%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx118999%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx119002%_ (gx#core-expand-expression _%stx118999%_)))
             (values _%stx119002%_ (gx#eval-syntax* _%stx119002%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx118980%_ _%stop?118981%_)
        (let _%lp118983%_ ((_%stx118985%_ _%stx118980%_))
          (if (_%stop?118981%_ _%stx118985%_)
              _%stx118985%_
              (let ((_%rstx118987%_ (gx#core-expand1 _%stx118985%_)))
                (if (eq? _%stx118985%_ _%rstx118987%_)
                    _%stx118985%_
                    (_%lp118983%_ _%rstx118987%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx118992%_)
        (let ((_%stop?118994%_ false))
          (gx#core-expand*__% _%stx118992%_ _%stop?118994%_))))
    (define gx#core-expand*
      (lambda _g119589_
        (let ((_g119588_ (##length _g119589_)))
          (cond ((##fx= _g119588_ 1) (apply gx#core-expand*__0 _g119589_))
                ((##fx= _g119588_ 2) (apply gx#core-expand*__% _g119589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g119589_))))))
    (define gx#core-expand1
      (lambda (_%stx118932%_)
        (letrec ((_%step118934%_
                  (lambda (_%hd118971%_)
                    (let ((_%bind118973%_
                           (gx#resolve-identifier__0 _%hd118971%_)))
                      (if (##structure-instance-of?
                           _%bind118973%_
                           'gx#runtime-binding::t)
                          _%stx118932%_
                          (if (##structure-direct-instance-of?
                               _%bind118973%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind118973%_
                                '4
                                '#f
                                '#f)
                               _%stx118932%_)
                              (if (not _%bind118973%_)
                                  _%stx118932%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx118932%_))))))))
          (let* ((_%e118935118943%_ _%stx118932%_)
                 (_%E118941118947%_ (lambda () _%stx118932%_))
                 (_%E118937118953%_
                  (lambda ()
                    (let ((_%hd118951%_ _%e118935118943%_))
                      (if (gx#identifier? _%hd118951%_)
                          (_%step118934%_ _%hd118951%_)
                          (_%E118941118947%_)))))
                 (_%E118936118967%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118935118943%_)
                        (let ((_%e118938118957%_
                               (gx#syntax-e _%e118935118943%_)))
                          (let ((_%hd118939118960%_ (##car _%e118938118957%_))
                                (_%tl118940118962%_ (##cdr _%e118938118957%_)))
                            (let ((_%hd118965%_ _%hd118939118960%_))
                              (if (gx#identifier? _%hd118965%_)
                                  (_%step118934%_ _%hd118965%_)
                                  (_%E118937118953%_)))))
                        (_%E118937118953%_)))))
            (_%E118936118967%_)))))
    (define gx#core-expand-head
      (lambda (_%stx118898%_)
        (letrec ((_%stop?118900%_
                  (lambda (_%stx118902%_)
                    (let* ((_%e118903118910%_ _%stx118902%_)
                           (_%E118905118914%_ (lambda () '#f))
                           (_%E118904118928%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118903118910%_)
                                  (let ((_%e118906118918%_
                                         (gx#syntax-e _%e118903118910%_)))
                                    (let ((_%hd118907118921%_
                                           (##car _%e118906118918%_))
                                          (_%tl118908118923%_
                                           (##cdr _%e118906118918%_)))
                                      (let ((_%hd118926%_ _%hd118907118921%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd118926%_))))
                                  (_%E118905118914%_)))))
                      (_%E118904118928%_)))))
          (gx#core-expand*__% _%stx118898%_ _%stop?118900%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx118704%_
               _%expand-special118705%_
               _%begin-form118706%_
               _%expand-e118707%_)
        (letrec ((_%expand-splice118709%_
                  (lambda (_%hd118872%_
                           _%body118873%_
                           _%rest118874%_
                           _%r118875%_)
                    (if (gx#stx-list? _%body118873%_)
                        (_%K118713%_
                         (gx#stx-foldr cons _%rest118874%_ _%body118873%_)
                         _%r118875%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx118704%_
                         _%hd118872%_))))
                 (_%expand-cond-expand118710%_
                  (lambda (_%hd118868%_ _%rest118869%_ _%r118870%_)
                    (_%K118713%_
                     (cons (gx#core-expand-cond-expand% _%hd118868%_)
                           _%rest118869%_)
                     _%r118870%_)))
                 (_%expand-include118711%_
                  (lambda (_%hd118817%_ _%rest118818%_ _%r118819%_)
                    (let* ((_%e118820118830%_ _%hd118817%_)
                           (_%E118822118834%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118820118830%_)))
                           (_%E118821118864%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118820118830%_)
                                  (let ((_%e118823118838%_
                                         (gx#syntax-e _%e118820118830%_)))
                                    (let ((_%hd118824118841%_
                                           (##car _%e118823118838%_))
                                          (_%tl118825118843%_
                                           (##cdr _%e118823118838%_)))
                                      (if (gx#stx-pair? _%tl118825118843%_)
                                          (let ((_%e118826118846%_
                                                 (gx#syntax-e
                                                  _%tl118825118843%_)))
                                            (let ((_%hd118827118849%_
                                                   (##car _%e118826118846%_))
                                                  (_%tl118828118851%_
                                                   (##cdr _%e118826118846%_)))
                                              (let ((_%path118854%_
                                                     _%hd118827118849%_))
                                                (if (gx#stx-null?
                                                     _%tl118828118851%_)
                                                    (if (gx#stx-string?
                                                         _%path118854%_)
                                                        (let* ((_%rpath118856%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path118854%_
                         (gx#stx-source _%hd118817%_)))
                       (_%block118858%_
                        (gx#core-expand-include%__%
                         _%hd118817%_
                         _%rpath118856%_))
                       (_%rbody118861%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block118858%_
                            _%expand-special118705%_
                            '#f
                            _%expand-e118707%_))
                         gx#current-expander-path
                         (cons _%rpath118856%_ (gx#current-expander-path)))))
                  (_%K118713%_
                   _%rest118818%_
                   (__foldr1 cons _%r118819%_ _%rbody118861%_)))
                (_%E118822118834%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118822118834%_)))))
                                          (_%E118822118834%_))))
                                  (_%E118822118834%_)))))
                      (_%E118821118864%_))))
                 (_%expand-expression118712%_
                  (lambda (_%hd118813%_ _%rest118814%_ _%r118815%_)
                    (_%K118713%_
                     _%rest118814%_
                     (cons (_%expand-e118707%_ _%hd118813%_) _%r118815%_))))
                 (_%K118713%_
                  (lambda (_%rest118743%_ _%r118744%_)
                    (let* ((_%e118745118752%_ _%rest118743%_)
                           (_%E118747118756%_
                            (lambda ()
                              (if _%begin-form118706%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form118706%_
                                    (reverse _%r118744%_))
                                   (gx#stx-source _%stx118704%_))
                                  _%r118744%_)))
                           (_%E118746118809%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118745118752%_)
                                  (let ((_%e118748118760%_
                                         (gx#syntax-e _%e118745118752%_)))
                                    (let ((_%hd118749118763%_
                                           (##car _%e118748118760%_))
                                          (_%tl118750118765%_
                                           (##cdr _%e118748118760%_)))
                                      (let* ((_%hd118768%_ _%hd118749118763%_)
                                             (_%rest118770%_
                                              _%tl118750118765%_)
                                             (_%hd118772%_
                                              (gx#core-expand-head
                                               _%hd118768%_))
                                             (_%e118773118780%_ _%hd118772%_)
                                             (_%E118775118784%_
                                              (lambda ()
                                                (_%expand-expression118712%_
                                                 _%hd118772%_
                                                 _%rest118770%_
                                                 _%r118744%_)))
                                             (_%E118774118805%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e118773118780%_)
                                                    (let ((_%e118776118788%_
                                                           (gx#syntax-e
                                                            _%e118773118780%_)))
                                                      (let ((_%hd118777118791%_
                                                             (##car _%e118776118788%_))
                                                            (_%tl118778118793%_
                                                             (##cdr _%e118776118788%_)))
                                                        (let* ((_%form118796%_
                                                                _%hd118777118791%_)
                                                               (_%body118798%_
                                                                _%tl118778118793%_)
                                                               (_%bind118800%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form118796%_)
                            (gx#resolve-identifier__0 _%form118796%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind118800%_)
                      (let ((_%$e118802%_
                             (##unchecked-structure-ref
                              _%bind118800%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e118802%_)
                            (_%expand-splice118709%_
                             _%hd118772%_
                             _%body118798%_
                             _%rest118770%_
                             _%r118744%_)
                            (if (eq? '%#cond-expand _%$e118802%_)
                                (_%expand-cond-expand118710%_
                                 _%hd118772%_
                                 _%rest118770%_
                                 _%r118744%_)
                                (if (eq? '%#include _%$e118802%_)
                                    (_%expand-include118711%_
                                     _%hd118772%_
                                     _%rest118770%_
                                     _%r118744%_)
                                    (_%expand-special118705%_
                                     _%hd118772%_
                                     _%K118713%_
                                     _%rest118770%_
                                     _%r118744%_)))))
                      (_%expand-expression118712%_
                       _%hd118772%_
                       _%rest118770%_
                       _%r118744%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118775118784%_)))))
                                        (_%E118774118805%_))))
                                  (_%E118747118756%_)))))
                      (_%E118746118809%_)))))
          (let* ((_%e118714118721%_ _%stx118704%_)
                 (_%E118716118725%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118714118721%_)))
                 (_%E118715118739%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118714118721%_)
                        (let ((_%e118717118729%_
                               (gx#syntax-e _%e118714118721%_)))
                          (let ((_%hd118718118732%_ (##car _%e118717118729%_))
                                (_%tl118719118734%_ (##cdr _%e118717118729%_)))
                            (let ((_%body118737%_ _%tl118719118734%_))
                              (if (gx#stx-list? _%body118737%_)
                                  (_%K118713%_ _%body118737%_ '())
                                  (_%E118716118725%_)))))
                        (_%E118716118725%_)))))
            (_%E118715118739%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx118880%_ _%expand-special118881%_)
        (let* ((_%begin-form118883%_ '%#begin)
               (_%expand-e118885%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx118880%_
           _%expand-special118881%_
           _%begin-form118883%_
           _%expand-e118885%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx118887%_ _%expand-special118888%_ _%begin-form118889%_)
        (let ((_%expand-e118891%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx118887%_
           _%expand-special118888%_
           _%begin-form118889%_
           _%expand-e118891%_))))
    (define gx#core-expand-block
      (lambda _g119591_
        (let ((_g119590_ (##length _g119591_)))
          (cond ((##fx= _g119590_ 2) (apply gx#core-expand-block__0 _g119591_))
                ((##fx= _g119590_ 3) (apply gx#core-expand-block__1 _g119591_))
                ((##fx= _g119590_ 4) (apply gx#core-expand-block__% _g119591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g119591_))))))
    (define gx#core-expand-block*
      (lambda (_%stx118652%_ _%expand-special118653%_)
        (let* ((_%g118654118665%_
                (gx#core-expand-block__1
                 _%stx118652%_
                 _%expand-special118653%_
                 '#f))
               (_%E118658118669%_
                (lambda ()
                  (error '"No clause matching"
                         _%g118654118665%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K118663118700%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx118652%_)))
                (_%K118660118686%_ (lambda (_%expr118684%_) _%expr118684%_))
                (_%K118659118675%_
                 (lambda (_%body118673%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body118673%_))
                    (gx#stx-source _%stx118652%_)))))
            (let ((_%try-match118656118696%_
                   (lambda ()
                     (if (##pair? _%g118654118665%_)
                         (let ((_%tl118662118691%_ (##cdr _%g118654118665%_))
                               (_%hd118661118689%_ (##car _%g118654118665%_)))
                           (if (##null? _%tl118662118691%_)
                               (let ((_%expr118694%_ _%hd118661118689%_))
                                 (_%K118660118686%_ _%expr118694%_))
                               (let ((_%body118678%_ _%g118654118665%_))
                                 (_%K118659118675%_ _%body118678%_))))
                         (let ((_%body118678%_ _%g118654118665%_))
                           (_%K118659118675%_ _%body118678%_))))))
              (if (##null? _%g118654118665%_)
                  (_%K118663118700%_)
                  (_%try-match118656118696%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx118477%_)
        (letrec ((_%satisfied?118479%_
                  (lambda (_%condition118580%_)
                    (let* ((_%e118581118596%_ _%condition118580%_)
                           (_%E118591118600%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118581118596%_)))
                           (_%E118584118619%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118581118596%_)
                                  (let ((_%e118592118604%_
                                         (gx#syntax-e _%e118581118596%_)))
                                    (let ((_%hd118593118607%_
                                           (##car _%e118592118604%_))
                                          (_%tl118594118609%_
                                           (##cdr _%e118592118604%_)))
                                      (let* ((_%combinator118612%_
                                              _%hd118593118607%_)
                                             (_%body118614%_
                                              _%tl118594118609%_))
                                        (if (gx#stx-list? _%body118614%_)
                                            (let ((_%$e118616%_
                                                   (gx#stx-e
                                                    _%combinator118612%_)))
                                              (if (eq? 'not _%$e118616%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?118479%_
                                                        _%body118614%_))
                                                  (if (eq? 'and _%$e118616%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?118479%_
                                                       _%body118614%_)
                                                      (if (eq? 'or
                                                               _%$e118616%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?118479%_
                                                           _%body118614%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e118616%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body118614%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx118477%_
                       _%combinator118612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E118591118600%_)))))
                                  (_%E118591118600%_))))
                           (_%E118583118642%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118581118596%_)
                                  (let ((_%e118585118623%_
                                         (gx#syntax-e _%e118581118596%_)))
                                    (let ((_%hd118586118626%_
                                           (##car _%e118585118623%_))
                                          (_%tl118587118628%_
                                           (##cdr _%e118585118623%_)))
                                      (if (and (gx#identifier?
                                                _%hd118586118626%_)
                                               (gx#core-identifier=?
                                                _%hd118586118626%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl118587118628%_)
                                              (let ((_%e118588118631%_
                                                     (gx#syntax-e
                                                      _%tl118587118628%_)))
                                                (let ((_%hd118589118634%_
                                                       (##car _%e118588118631%_))
                                                      (_%tl118590118636%_
                                                       (##cdr _%e118588118631%_)))
                                                  (let ((_%expr118639%_
                                                         _%hd118589118634%_))
                                                    (if (gx#stx-null?
                                                         _%tl118590118636%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr118639%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E118584118619%_)))))
                                              (_%E118584118619%_))
                                          (_%E118584118619%_))))
                                  (_%E118584118619%_))))
                           (_%E118582118648%_
                            (lambda ()
                              (let ((_%id118646%_ _%e118581118596%_))
                                (if (gx#identifier? _%id118646%_)
                                    (gx#core-bound-identifier?__%
                                     _%id118646%_
                                     gx#feature-binding?)
                                    (_%E118583118642%_))))))
                      (_%E118582118648%_))))
                 (_%loop118480%_
                  (lambda (_%rest118510%_)
                    (let* ((_%e118511118519%_ _%rest118510%_)
                           (_%E118517118523%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118511118519%_)))
                           (_%E118513118527%_
                            (lambda ()
                              (if (gx#stx-null? _%e118511118519%_)
                                  '()
                                  (_%E118517118523%_))))
                           (_%E118512118576%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118511118519%_)
                                  (let ((_%e118514118531%_
                                         (gx#syntax-e _%e118511118519%_)))
                                    (let ((_%hd118515118534%_
                                           (##car _%e118514118531%_))
                                          (_%tl118516118536%_
                                           (##cdr _%e118514118531%_)))
                                      (let* ((_%hd118539%_ _%hd118515118534%_)
                                             (_%rest118541%_
                                              _%tl118516118536%_)
                                             (_%e118542118549%_ _%hd118539%_)
                                             (_%E118544118553%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e118542118549%_)))
                                             (_%E118543118572%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e118542118549%_)
                                                    (let ((_%e118545118557%_
                                                           (gx#syntax-e
                                                            _%e118542118549%_)))
                                                      (let ((_%hd118546118560%_
                                                             (##car _%e118545118557%_))
                                                            (_%tl118547118562%_
                                                             (##cdr _%e118545118557%_)))
                                                        (let* ((_%condition118565%_
                                                                _%hd118546118560%_)
                                                               (_%body118567%_
                                                                _%tl118547118562%_))
                                                          (if (gx#stx-eq?
                                                               _%condition118565%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest118541%_)
                          _%body118567%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx118477%_
                           _%hd118539%_))
                      (if (_%satisfied?118479%_ _%condition118565%_)
                          _%body118567%_
                          (_%loop118480%_ _%rest118541%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118544118553%_)))))
                                        (_%E118543118572%_))))
                                  (_%E118513118527%_)))))
                      (_%E118512118576%_)))))
          (let* ((_%e118481118488%_ _%stx118477%_)
                 (_%E118483118492%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118481118488%_)))
                 (_%E118482118506%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118481118488%_)
                        (let ((_%e118484118496%_
                               (gx#syntax-e _%e118481118488%_)))
                          (let ((_%hd118485118499%_ (##car _%e118484118496%_))
                                (_%tl118486118501%_ (##cdr _%e118484118496%_)))
                            (let ((_%clauses118504%_ _%tl118486118501%_))
                              (if (gx#stx-list? _%clauses118504%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop118480%_ _%clauses118504%_))
                                  (_%E118483118492%_)))))
                        (_%E118483118492%_)))))
            (_%E118482118506%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx118420%_ _%rpath118421%_)
        (let* ((_%e118422118432%_ _%stx118420%_)
               (_%E118424118436%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118422118432%_)))
               (_%E118423118463%_
                (lambda ()
                  (if (gx#stx-pair? _%e118422118432%_)
                      (let ((_%e118425118440%_
                             (gx#syntax-e _%e118422118432%_)))
                        (let ((_%hd118426118443%_ (##car _%e118425118440%_))
                              (_%tl118427118445%_ (##cdr _%e118425118440%_)))
                          (if (gx#stx-pair? _%tl118427118445%_)
                              (let ((_%e118428118448%_
                                     (gx#syntax-e _%tl118427118445%_)))
                                (let ((_%hd118429118451%_
                                       (##car _%e118428118448%_))
                                      (_%tl118430118453%_
                                       (##cdr _%e118428118448%_)))
                                  (let ((_%path118456%_ _%hd118429118451%_))
                                    (if (gx#stx-null? _%tl118430118453%_)
                                        (if (gx#stx-string? _%path118456%_)
                                            (let ((_%rpath118461%_
                                                   (let ((_%$e118458%_
                                                          _%rpath118421%_))
                                                     (if _%$e118458%_
                                                         _%$e118458%_
                                                         (gx#core-resolve-path__%
                                                          _%path118456%_
                                                          (gx#stx-source
                                                           _%stx118420%_))))))
                                              (if (member _%rpath118461%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx118420%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath118461%_))
                                                    (gx#stx-source
                                                     _%stx118420%_)))))
                                            (_%E118424118436%_))
                                        (_%E118424118436%_)))))
                              (_%E118424118436%_))))
                      (_%E118424118436%_)))))
          (_%E118423118463%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx118470%_)
        (let ((_%rpath118472%_ '#f))
          (gx#core-expand-include%__% _%stx118470%_ _%rpath118472%_))))
    (define gx#core-expand-include%
      (lambda _g119593_
        (let ((_g119592_ (##length _g119593_)))
          (cond ((##fx= _g119592_ 1)
                 (apply gx#core-expand-include%__0 _g119593_))
                ((##fx= _g119592_ 2)
                 (apply gx#core-expand-include%__% _g119593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g119593_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K118386%_ _%stx118387%_ _%method118388%_)
        (if (procedure? _%K118386%_)
            (let ((_%$e118391%_ (gx#stx-source _%stx118387%_)))
              (if _%$e118391%_
                  ((lambda (_%g118393118395%_)
                     (gx#stx-wrap-source
                      (_%K118386%_ _%stx118387%_)
                      _%g118393118395%_))
                   _%$e118391%_)
                  (_%K118386%_ _%stx118387%_)))
            (let ((_%$e118399%_
                   (bound-method-ref _%K118386%_ _%method118388%_)))
              (if _%$e118399%_
                  ((lambda (_%g118401118403%_)
                     (gx#core-apply-expander__%
                      _%g118401118403%_
                      _%stx118387%_
                      _%method118388%_))
                   _%$e118399%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx118387%_
                   _%method118388%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K118410%_ _%stx118411%_)
        (let ((_%method118413%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K118410%_
           _%stx118411%_
           _%method118413%_))))
    (define gx#core-apply-expander
      (lambda _g119595_
        (let ((_g119594_ (##length _g119595_)))
          (cond ((##fx= _g119594_ 2)
                 (apply gx#core-apply-expander__0 _g119595_))
                ((##fx= _g119594_ 3)
                 (apply gx#core-apply-expander__% _g119595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g119595_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116428118369%_ _%stx118371%_)
        (let* ((_%self118373%_ _%self116428118369%_)
               (_%self118375%_ _%self118373%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx118371%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116429118209%_ _%stx118211%_)
        (let* ((_%self118213%_ _%self116429118209%_)
               (_%self118215%_ _%self118213%_)
               (_%self118224118230%_ _%self118215%_)
               (_%E118226118234%_
                (lambda ()
                  (error '"No clause matching"
                         _%self118224118230%_
                         '((macro-expander K)))
                  '#!void))
               (_%K118227118239%_
                (lambda (_%K118237%_)
                  (gx#core-apply-expander__0 _%K118237%_ _%stx118211%_)))
               (_%e118228118242%_
                (##unchecked-structure-ref _%self118224118230%_ '1 '#f '#f))
               (_%K118245%_ _%e118228118242%_))
          (_%K118227118239%_ _%K118245%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116430118049%_ _%stx118051%_)
        (let* ((_%self118053%_ _%self116430118049%_)
               (_%self118055%_ _%self118053%_))
          (if (gx#sealed-syntax? _%stx118051%_)
              _%stx118051%_
              (let* ((_%self118064118070%_ _%self118055%_)
                     (_%E118066118074%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self118064118070%_
                               '((core-expander K)))
                        '#!void))
                     (_%K118067118079%_
                      (lambda (_%K118077%_)
                        (gx#core-apply-expander__0 _%K118077%_ _%stx118051%_)))
                     (_%e118068118082%_
                      (##unchecked-structure-ref
                       _%self118064118070%_
                       '1
                       '#f
                       '#f))
                     (_%K118085%_ _%e118068118082%_))
                (_%K118067118079%_ _%K118085%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116431117898%_ _%stx117900%_ _%top?117901%_)
        (let* ((_%self117903%_ _%self116431117898%_)
               (_%self117905%_ _%self117903%_))
          (if (_%top?117901%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self117905%_
               _%stx117900%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx117900%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116431117918%_ _%stx117919%_)
        (let ((_%top?117921%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116431117918%_
           _%stx117919%_
           _%top?117921%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g119597_
        (let ((_g119596_ (##length _g119597_)))
          (cond ((##fx= _g119596_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g119597_))
                ((##fx= _g119596_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g119597_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g119597_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116432117759%_ _%stx117761%_)
        (let* ((_%self117763%_ _%self116432117759%_)
               (_%self117765%_ _%self117763%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self117765%_
           _%stx117761%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116433117571%_ _%stx117573%_)
        (let* ((_%self117575%_ _%self116433117571%_)
               (_%self117577%_ _%self117575%_)
               (_%self117586117592%_ _%self117577%_)
               (_%E117588117596%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117586117592%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K117589117629%_
                (lambda (_%id117599%_)
                  (let* ((_%e117600117607%_ _%stx117573%_)
                         (_%E117602117611%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e117600117607%_)))
                         (_%E117601117625%_
                          (lambda ()
                            (if (gx#stx-pair? _%e117600117607%_)
                                (let ((_%e117603117615%_
                                       (gx#syntax-e _%e117600117607%_)))
                                  (let ((_%hd117604117618%_
                                         (##car _%e117603117615%_))
                                        (_%tl117605117620%_
                                         (##cdr _%e117603117615%_)))
                                    (let ((_%body117623%_ _%tl117605117620%_))
                                      (gx#core-cons
                                       _%id117599%_
                                       _%body117623%_))))
                                (_%E117602117611%_)))))
                    (_%E117601117625%_))))
               (_%e117590117632%_
                (##unchecked-structure-ref _%self117586117592%_ '1 '#f '#f))
               (_%id117635%_ _%e117590117632%_))
          (_%K117589117629%_ _%id117635%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self117397%_ _%stx117398%_ _%method117399%_)
        (let* ((_%self117400117408%_ _%self117397%_)
               (_%E117402117412%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117400117408%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K117403117419%_
                (lambda (_%phi117415%_ _%ctx117416%_ _%K117417%_)
                  (gx#core-apply-user-macro
                   _%K117417%_
                   _%stx117398%_
                   _%ctx117416%_
                   _%phi117415%_
                   _%method117399%_))))
          (if (##structure-instance-of?
               _%self117400117408%_
               'gx#user-expander::t)
              (let* ((_%e117404117422%_
                      (##unchecked-structure-ref
                       _%self117400117408%_
                       '1
                       '#f
                       '#f))
                     (_%K117425%_ _%e117404117422%_)
                     (_%e117405117427%_
                      (##unchecked-structure-ref
                       _%self117400117408%_
                       '2
                       '#f
                       '#f))
                     (_%ctx117430%_ _%e117405117427%_)
                     (_%e117406117432%_
                      (##unchecked-structure-ref
                       _%self117400117408%_
                       '3
                       '#f
                       '#f))
                     (_%phi117435%_ _%e117406117432%_))
                (_%K117403117419%_ _%phi117435%_ _%ctx117430%_ _%K117425%_))
              (_%E117402117412%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self117440%_ _%stx117441%_)
        (let ((_%method117443%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self117440%_
           _%stx117441%_
           _%method117443%_))))
    (define gx#core-apply-user-expander
      (lambda _g119599_
        (let ((_g119598_ (##length _g119599_)))
          (cond ((##fx= _g119598_ 2)
                 (apply gx#core-apply-user-expander__0 _g119599_))
                ((##fx= _g119598_ 3)
                 (apply gx#core-apply-user-expander__% _g119599_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g119599_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K117387%_
               _%stx117388%_
               _%ctx117389%_
               _%phi117390%_
               _%method117391%_)
        (let ((_%mark117393%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx117389%_
                _%phi117390%_
                _%stx117388%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K117387%_
               (gx#stx-apply-mark _%stx117388%_ _%mark117393%_)
               _%method117391%_)
              _%mark117393%_))
           gx#current-expander-marks
           (cons _%mark117393%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx117235%_ _%phi117236%_ _%ctx117237%_)
        (let _%lp117239%_ ((_%bind117241%_
                            (gx#core-resolve-identifier__%
                             _%stx117235%_
                             _%phi117236%_
                             _%ctx117237%_)))
          (if (##structure-direct-instance-of?
               _%bind117241%_
               'gx#import-binding::t)
              (_%lp117239%_
               (##unchecked-structure-ref _%bind117241%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind117241%_
                   'gx#alias-binding::t)
                  (_%lp117239%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind117241%_ '4 '#f '#f)
                    _%phi117236%_
                    _%ctx117237%_))
                  _%bind117241%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx117249%_)
        (let* ((_%phi117251%_ (gx#current-expander-phi))
               (_%ctx117253%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117249%_
           _%phi117251%_
           _%ctx117253%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx117255%_ _%phi117256%_)
        (let ((_%ctx117258%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117255%_
           _%phi117256%_
           _%ctx117258%_))))
    (define gx#resolve-identifier
      (lambda _g119601_
        (let ((_g119600_ (##length _g119601_)))
          (cond ((##fx= _g119600_ 1)
                 (apply gx#resolve-identifier__0 _g119601_))
                ((##fx= _g119600_ 2)
                 (apply gx#resolve-identifier__1 _g119601_))
                ((##fx= _g119600_ 3)
                 (apply gx#resolve-identifier__% _g119601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g119601_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx117190%_
               _%val117191%_
               _%rebind?117192%_
               _%phi117193%_
               _%ctx117194%_)
        (let ((_%rebind?117199%_
               (if (not _%rebind?117192%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?117192%_)
                       _%rebind?117192%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx117190%_)
           _%val117191%_
           _%rebind?117199%_
           _%phi117193%_
           _%ctx117194%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx117204%_ _%val117205%_)
        (let* ((_%rebind?117207%_ '#f)
               (_%phi117209%_ (gx#current-expander-phi))
               (_%ctx117211%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117204%_
           _%val117205%_
           _%rebind?117207%_
           _%phi117209%_
           _%ctx117211%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx117213%_ _%val117214%_ _%rebind?117215%_)
        (let* ((_%phi117217%_ (gx#current-expander-phi))
               (_%ctx117219%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117213%_
           _%val117214%_
           _%rebind?117215%_
           _%phi117217%_
           _%ctx117219%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx117221%_ _%val117222%_ _%rebind?117223%_ _%phi117224%_)
        (let ((_%ctx117226%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117221%_
           _%val117222%_
           _%rebind?117223%_
           _%phi117224%_
           _%ctx117226%_))))
    (define gx#bind-identifier!
      (lambda _g119603_
        (let ((_g119602_ (##length _g119603_)))
          (cond ((##fx= _g119602_ 2) (apply gx#bind-identifier!__0 _g119603_))
                ((##fx= _g119602_ 3) (apply gx#bind-identifier!__1 _g119603_))
                ((##fx= _g119602_ 4) (apply gx#bind-identifier!__2 _g119603_))
                ((##fx= _g119602_ 5) (apply gx#bind-identifier!__% _g119603_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g119603_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx117156%_ _%phi117157%_ _%ctx117158%_)
        (let _%lp117160%_ ((_%e117162%_ _%stx117156%_)
                           (_%marks117163%_ (gx#current-expander-marks)))
          (if (symbol? _%e117162%_)
              (gx#core-resolve-binding
               _%e117162%_
               _%phi117157%_
               _%phi117157%_
               _%ctx117158%_
               (reverse _%marks117163%_))
              (if (gx#identifier-quote? _%e117162%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e117162%_ '1 '#f '#f)
                   _%phi117157%_
                   '0
                   (##unchecked-structure-ref _%e117162%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e117162%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e117162%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e117162%_ '1 '#f '#f)
                       _%phi117157%_
                       _%phi117157%_
                       _%ctx117158%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e117162%_ '3 '#f '#f)
                        _%marks117163%_))
                      (if (##structure-direct-instance-of?
                           _%e117162%_
                           'gx#syntax-wrap::t)
                          (_%lp117160%_
                           (##unchecked-structure-ref _%e117162%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e117162%_ '3 '#f '#f)
                            _%marks117163%_))
                          (if (##structure-instance-of?
                               _%e117162%_
                               'gerbil#AST::t)
                              (_%lp117160%_
                               (##unchecked-structure-ref
                                _%e117162%_
                                '1
                                '#f
                                '#f)
                               _%marks117163%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx117156%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx117174%_)
        (let* ((_%phi117176%_ (gx#current-expander-phi))
               (_%ctx117178%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117174%_
           _%phi117176%_
           _%ctx117178%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx117180%_ _%phi117181%_)
        (let ((_%ctx117183%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117180%_
           _%phi117181%_
           _%ctx117183%_))))
    (define gx#core-resolve-identifier
      (lambda _g119605_
        (let ((_g119604_ (##length _g119605_)))
          (cond ((##fx= _g119604_ 1)
                 (apply gx#core-resolve-identifier__0 _g119605_))
                ((##fx= _g119604_ 2)
                 (apply gx#core-resolve-identifier__1 _g119605_))
                ((##fx= _g119604_ 3)
                 (apply gx#core-resolve-identifier__% _g119605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g119605_))))))
    (define gx#core-resolve-binding
      (lambda (_%id117066%_
               _%phi117067%_
               _%src-phi117068%_
               _%ctx117069%_
               _%marks117070%_)
        (letrec ((_%resolve117072%_
                  (lambda (_%ctx117140%_ _%src-phi117141%_ _%key117142%_)
                    (let _%lp117144%_ ((_%ctx117146%_
                                        (gx#core-context-shift
                                         _%ctx117140%_
                                         _%phi117067%_))
                                       (_%dphi117147%_
                                        (fx- _%phi117067%_ _%src-phi117141%_)))
                      (let ((_%$e117149%_
                             (gx#core-context-resolve
                              _%ctx117146%_
                              _%key117142%_)))
                        (if _%$e117149%_
                            _%$e117149%_
                            (if (fxzero? _%dphi117147%_)
                                '#f
                                (if (fxpositive? _%dphi117147%_)
                                    (_%lp117144%_
                                     (gx#core-context-shift _%ctx117146%_ '-1)
                                     (##fx- _%dphi117147%_ '1))
                                    (_%lp117144%_
                                     (gx#core-context-shift _%ctx117146%_ '1)
                                     (##fx+ _%dphi117147%_ '1))))))))))
          (let _%lp117074%_ ((_%ctx117076%_ _%ctx117069%_)
                             (_%src-phi117077%_ _%src-phi117068%_)
                             (_%rest117078%_ _%marks117070%_))
            (let* ((_%rest117079117087%_ _%rest117078%_)
                   (_%else117081117095%_
                    (lambda ()
                      (_%resolve117072%_
                       _%ctx117076%_
                       _%src-phi117077%_
                       _%id117066%_)))
                   (_%K117083117128%_
                    (lambda (_%rest117098%_ _%hd117099%_)
                      (let* ((_%hd117100117106%_ _%hd117099%_)
                             (_%E117102117110%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd117100117106%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K117103117120%_
                              (lambda (_%subst117113%_)
                                (let ((_%$e117117%_
                                       (let ((_%key117115%_
                                              (if _%subst117113%_
                                                  (hash-get
                                                   _%subst117113%_
                                                   _%id117066%_)
                                                  '#f)))
                                         (if _%key117115%_
                                             (_%resolve117072%_
                                              _%ctx117076%_
                                              _%src-phi117077%_
                                              _%key117115%_)
                                             '#f))))
                                  (if _%$e117117%_
                                      _%$e117117%_
                                      (_%lp117074%_
                                       (##unchecked-structure-ref
                                        _%hd117099%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd117099%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest117098%_))))))
                        (if (##structure-instance-of?
                             _%hd117100117106%_
                             'gx#expander-mark::t)
                            (let* ((_%e117104117123%_
                                    (##unchecked-structure-ref
                                     _%hd117100117106%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst117126%_ _%e117104117123%_))
                              (_%K117103117120%_ _%subst117126%_))
                            (_%E117102117110%_))))))
              (if (##pair? _%rest117079117087%_)
                  (let ((_%hd117084117131%_ (##car _%rest117079117087%_))
                        (_%tl117085117133%_ (##cdr _%rest117079117087%_)))
                    (let* ((_%hd117136%_ _%hd117084117131%_)
                           (_%rest117138%_ _%tl117085117133%_))
                      (_%K117083117128%_ _%rest117138%_ _%hd117136%_)))
                  (_%else117081117095%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key116936%_
               _%val116937%_
               _%rebind?116938%_
               _%phi116939%_
               _%ctx116940%_)
        (letrec ((_%update-binding116942%_
                  (lambda (_%xval117015%_)
                    (if (or (_%rebind?116938%_
                             _%ctx116940%_
                             _%xval117015%_
                             _%val116937%_)
                            (and (##structure-direct-instance-of?
                                  _%xval117015%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval117015%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val116937%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val116937%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval117015%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val116937%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val116937%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval117015%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val116937%_
                        (if (and (##structure-direct-instance-of?
                                  _%val116937%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val116937%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval117015%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val116937%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval117015%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval117015%_
                            (if (and (##structure-direct-instance-of?
                                      _%val116937%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval117015%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key116936%_
                                 (cons (##unchecked-structure-ref
                                        _%val116937%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val116937%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval117015%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval117015%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval117015%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval117015%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key116936%_
                                 _%val116937%_
                                 _%xval117015%_))))))
                 (_%gensubst116943%_
                  (lambda (_%subst117010%_ _%id117011%_)
                    (let ((_%eid117013%_
                           (gensym (if (uninterned-symbol? _%id117011%_)
                                       '%
                                       _%id117011%_))))
                      (hash-put! _%subst117010%_ _%id117011%_ _%eid117013%_)
                      _%eid117013%_)))
                 (_%subst!116944%_
                  (lambda (_%key116946%_)
                    (let* ((_%key116947116955%_ _%key116946%_)
                           (_%else116949116963%_ (lambda () _%key116946%_))
                           (_%K116951116998%_
                            (lambda (_%mark116966%_ _%id116967%_)
                              (let* ((_%mark116968116974%_ _%mark116966%_)
                                     (_%E116970116978%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark116968116974%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K116971116990%_
                                      (lambda (_%subst116981%_)
                                        (if (not _%subst116981%_)
                                            (let ((_%subst116984%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark116966%_
                                               _%subst116984%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst116943%_
                                               _%subst116984%_
                                               _%id116967%_))
                                            (let ((_%$e116986%_
                                                   (hash-get
                                                    _%subst116981%_
                                                    _%id116967%_)))
                                              (if _%$e116986%_
                                                  _%$e116986%_
                                                  (_%gensubst116943%_
                                                   _%subst116981%_
                                                   _%id116967%_)))))))
                                (if (##structure-instance-of?
                                     _%mark116968116974%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e116972116993%_
                                            (##unchecked-structure-ref
                                             _%mark116968116974%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst116996%_ _%e116972116993%_))
                                      (_%K116971116990%_ _%subst116996%_))
                                    (_%E116970116978%_))))))
                      (if (##pair? _%key116947116955%_)
                          (let ((_%hd116952117001%_
                                 (##car _%key116947116955%_))
                                (_%tl116953117003%_
                                 (##cdr _%key116947116955%_)))
                            (let* ((_%id117006%_ _%hd116952117001%_)
                                   (_%mark117008%_ _%tl116953117003%_))
                              (_%K116951116998%_ _%mark117008%_ _%id117006%_)))
                          (_%else116949116963%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx116940%_ _%phi116939%_)
           (_%subst!116944%_ _%key116936%_)
           _%val116937%_
           _%update-binding116942%_))))
    (define gx#core-bind!__0
      (lambda (_%key117036%_ _%val117037%_)
        (let* ((_%rebind?117039%_ false)
               (_%phi117041%_ (gx#current-expander-phi))
               (_%ctx117043%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117036%_
           _%val117037%_
           _%rebind?117039%_
           _%phi117041%_
           _%ctx117043%_))))
    (define gx#core-bind!__1
      (lambda (_%key117045%_ _%val117046%_ _%rebind?117047%_)
        (let* ((_%phi117049%_ (gx#current-expander-phi))
               (_%ctx117051%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117045%_
           _%val117046%_
           _%rebind?117047%_
           _%phi117049%_
           _%ctx117051%_))))
    (define gx#core-bind!__2
      (lambda (_%key117053%_ _%val117054%_ _%rebind?117055%_ _%phi117056%_)
        (let ((_%ctx117058%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key117053%_
           _%val117054%_
           _%rebind?117055%_
           _%phi117056%_
           _%ctx117058%_))))
    (define gx#core-bind!
      (lambda _g119607_
        (let ((_g119606_ (##length _g119607_)))
          (cond ((##fx= _g119606_ 2) (apply gx#core-bind!__0 _g119607_))
                ((##fx= _g119606_ 3) (apply gx#core-bind!__1 _g119607_))
                ((##fx= _g119606_ 4) (apply gx#core-bind!__2 _g119607_))
                ((##fx= _g119606_ 5) (apply gx#core-bind!__% _g119607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g119607_))))))
    (define gx#core-identifier-key
      (lambda (_%stx116867%_)
        (if (symbol? _%stx116867%_)
            (let* ((_%g116869116877%_ (gx#current-expander-marks))
                   (_%else116871116885%_ (lambda () _%stx116867%_))
                   (_%K116873116890%_
                    (lambda (_%hd116888%_) (cons _%stx116867%_ _%hd116888%_))))
              (if (##pair? _%g116869116877%_)
                  (let* ((_%hd116874116893%_ (##car _%g116869116877%_))
                         (_%hd116896%_ _%hd116874116893%_))
                    (_%K116873116890%_ _%hd116896%_))
                  (_%else116871116885%_)))
            (if (gx#identifier? _%stx116867%_)
                (let* ((_%id116899%_ (gx#syntax-local-unwrap _%stx116867%_))
                       (_%eid116901%_ (gx#stx-e _%id116899%_))
                       (_%marks116903%_
                        (gx#stx-identifier-marks* _%id116899%_))
                       (_%marks116905116913%_ _%marks116903%_)
                       (_%else116907116921%_ (lambda () _%eid116901%_))
                       (_%K116909116926%_
                        (lambda (_%hd116924%_)
                          (cons _%eid116901%_ _%hd116924%_))))
                  (if (##pair? _%marks116905116913%_)
                      (let* ((_%hd116910116929%_ (##car _%marks116905116913%_))
                             (_%hd116932%_ _%hd116910116929%_))
                        (_%K116909116926%_ _%hd116932%_))
                      (_%else116907116921%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx116867%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx116806%_ _%phi116807%_)
        (letrec ((_%make-phi116809%_
                  (lambda (_%super116865%_)
                    (let ((__obj119579
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj119579
                       (##gensym 'phi)
                       _%super116865%_)
                      __obj119579)))
                 (_%make-phi/up116810%_
                  (lambda (_%ctx116860%_ _%super116861%_)
                    (let ((_%ctx+1116863%_
                           (_%make-phi116809%_ _%super116861%_)))
                      (##unchecked-structure-set!
                       _%ctx116860%_
                       _%ctx+1116863%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1116863%_
                       _%ctx116860%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1116863%_)))
                 (_%make-phi/down116811%_
                  (lambda (_%ctx116855%_ _%super116856%_)
                    (let ((_%ctx-1116858%_
                           (_%make-phi116809%_ _%super116856%_)))
                      (##unchecked-structure-set!
                       _%ctx-1116858%_
                       _%ctx116855%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx116855%_
                       _%ctx-1116858%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1116858%_)))
                 (_%shift116812%_
                  (lambda (_%ctx116838%_
                           _%delta116839%_
                           _%make-delta-context116840%_
                           _%phi116841%_
                           _%K116842%_)
                    (let ((_%$e116844%_
                           (##unchecked-structure-ref
                            _%ctx116838%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e116844%_
                          ((lambda (_%super116847%_)
                             (let* ((_%super116849%_
                                     (_%K116842%_
                                      _%super116847%_
                                      _%delta116839%_))
                                    (_%ctx+d116851%_
                                     (_%make-delta-context116840%_
                                      _%ctx116838%_
                                      _%super116849%_)))
                               (_%K116842%_
                                _%ctx+d116851%_
                                (fx- _%phi116841%_ _%delta116839%_))))
                           _%$e116844%_)
                          (error '"Bad context" _%ctx116838%_))))))
          (let _%K116814%_ ((_%ctx116816%_ _%ctx116806%_)
                            (_%phi116817%_ _%phi116807%_))
            (if (fxzero? _%phi116817%_)
                _%ctx116816%_
                (if (##structure-instance-of? _%ctx116816%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi116817%_)
                        (let ((_%$e116821%_
                               (##unchecked-structure-ref
                                _%ctx116816%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e116821%_
                              ((lambda (_%g116823116825%_)
                                 (_%K116814%_
                                  _%g116823116825%_
                                  (##fx- _%phi116817%_ '1)))
                               _%$e116821%_)
                              (_%shift116812%_
                               _%ctx116816%_
                               '1
                               _%make-phi/up116810%_
                               _%phi116817%_
                               _%K116814%_)))
                        (let ((_%$e116829%_
                               (##unchecked-structure-ref
                                _%ctx116816%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e116829%_
                              ((lambda (_%g116831116833%_)
                                 (_%K116814%_
                                  _%g116831116833%_
                                  (##fx+ _%phi116817%_ '1)))
                               _%$e116829%_)
                              (_%shift116812%_
                               _%ctx116816%_
                               '-1
                               _%make-phi/down116811%_
                               _%phi116817%_
                               _%K116814%_))))
                    _%ctx116816%_))))))
    (define gx#core-context-get
      (lambda (_%ctx116803%_ _%key116804%_)
        (hash-get
         (##unchecked-structure-ref _%ctx116803%_ '2 '#f '#f)
         _%key116804%_)))
    (define gx#core-context-put!
      (lambda (_%ctx116799%_ _%key116800%_ _%val116801%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx116799%_ '2 '#f '#f)
         _%key116800%_
         _%val116801%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx116785%_ _%key116786%_)
        (let _%lp116788%_ ((_%ctx116790%_ _%ctx116785%_))
          (let ((_%$e116792%_
                 (gx#core-context-get _%ctx116790%_ _%key116786%_)))
            (if _%$e116792%_
                _%$e116792%_
                (let ((_%$e116795%_
                       (if (##structure-instance-of?
                            _%ctx116790%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx116790%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e116795%_ (_%lp116788%_ _%$e116795%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx116774%_ _%key116775%_ _%val116776%_ _%rebind116777%_)
        (let ((_%$e116779%_ (gx#core-context-get _%ctx116774%_ _%key116775%_)))
          (if _%$e116779%_
              ((lambda (_%xval116782%_)
                 (gx#core-context-put!
                  _%ctx116774%_
                  _%key116775%_
                  (_%rebind116777%_ _%xval116782%_)))
               _%$e116779%_)
              (gx#core-context-put!
               _%ctx116774%_
               _%key116775%_
               _%val116776%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx116749%_ _%stop?116750%_)
        (let _%lp116752%_ ((_%ctx116754%_ _%ctx116749%_))
          (if (_%stop?116750%_ _%ctx116754%_)
              _%ctx116754%_
              (if (##structure-instance-of? _%ctx116754%_ 'gx#phi-context::t)
                  (_%lp116752%_
                   (##unchecked-structure-ref _%ctx116754%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx116763%_ (gx#current-expander-context))
               (_%stop?116765%_ gx#top-context?))
          (gx#core-context-top__% _%ctx116763%_ _%stop?116765%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx116767%_)
        (let ((_%stop?116769%_ gx#top-context?))
          (gx#core-context-top__% _%ctx116767%_ _%stop?116769%_))))
    (define gx#core-context-top
      (lambda _g119609_
        (let ((_g119608_ (##length _g119609_)))
          (cond ((##fx= _g119608_ 0) (apply gx#core-context-top__0 _g119609_))
                ((##fx= _g119608_ 1) (apply gx#core-context-top__1 _g119609_))
                ((##fx= _g119608_ 2) (apply gx#core-context-top__% _g119609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g119609_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx116734%_)
        (let _%lp116736%_ ((_%ctx116738%_ _%ctx116734%_))
          (if (##structure-instance-of? _%ctx116738%_ 'gx#phi-context::t)
              (_%lp116736%_
               (##unchecked-structure-ref _%ctx116738%_ '3 '#f '#f))
              _%ctx116738%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx116744%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx116744%_))))
    (define gx#core-context-root
      (lambda _g119611_
        (let ((_g119610_ (##length _g119611_)))
          (cond ((##fx= _g119610_ 0) (apply gx#core-context-root__0 _g119611_))
                ((##fx= _g119610_ 1) (apply gx#core-context-root__% _g119611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g119611_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx116716%_ . _%ignore116717%_)
        (let ((_%$e116719%_ (gx#current-expander-allow-rebind?)))
          (if _%$e116719%_
              _%$e116719%_
              (if (##structure-instance-of? _%ctx116716%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx116716%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx116716%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx116726%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx116726%_))))
    (define gx#core-context-rebind?
      (lambda _g119613_
        (let ((_g119612_ (##length _g119613_)))
          (cond ((##fx= _g119612_ 0)
                 (apply gx#core-context-rebind?__0 _g119613_))
                ((##fx= _g119612_ 1)
                 (apply gx#core-context-rebind?__% _g119613_))
                ((##fx>= _g119612_ 1)
                 (apply gx#core-context-rebind?__% _g119613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g119613_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx116699%_)
        (let ((_%$e116701%_ (gx#core-context-top__1 _%ctx116699%_)))
          (if _%$e116701%_
              ((lambda (_%ctx116704%_)
                 (if (##structure-instance-of?
                      _%ctx116704%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx116704%_ '6 '#f '#f)
                     '#f))
               _%$e116701%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx116711%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx116711%_))))
    (define gx#core-context-namespace
      (lambda _g119615_
        (let ((_g119614_ (##length _g119615_)))
          (cond ((##fx= _g119614_ 0)
                 (apply gx#core-context-namespace__0 _g119615_))
                ((##fx= _g119614_ 1)
                 (apply gx#core-context-namespace__% _g119615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g119615_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind116685%_ _%is?116686%_)
        (if (##structure-direct-instance-of?
             _%bind116685%_
             'gx#syntax-binding::t)
            (_%is?116686%_
             (##unchecked-structure-ref _%bind116685%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind116691%_)
        (let ((_%is?116693%_ gx#expander?))
          (gx#expander-binding?__% _%bind116691%_ _%is?116693%_))))
    (define gx#expander-binding?
      (lambda _g119617_
        (let ((_g119616_ (##length _g119617_)))
          (cond ((##fx= _g119616_ 1) (apply gx#expander-binding?__0 _g119617_))
                ((##fx= _g119616_ 2) (apply gx#expander-binding?__% _g119617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g119617_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind116682%_)
        (gx#expander-binding?__% _%bind116682%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind116680%_)
        (gx#expander-binding?__% _%bind116680%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind116674%_)
        (letrec ((_%direct-special-form?116676%_
                  (lambda (_%obj116678%_)
                    (##structure-direct-instance-of?
                     _%obj116678%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind116674%_
           _%direct-special-form?116676%_))))
    (define gx#special-form-binding?
      (lambda (_%bind116672%_)
        (gx#expander-binding?__% _%bind116672%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind116663%_)
        (letrec ((_%feature?116665%_
                  (lambda (_%e116667%_)
                    (let ((_%$e116669%_
                           (##structure-instance-of?
                            _%e116667%_
                            'gx#feature-expander::t)))
                      (if _%$e116669%_
                          _%$e116669%_
                          (##structure-instance-of?
                           _%e116667%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind116663%_ _%feature?116665%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind116661%_)
        (gx#expander-binding?__% _%bind116661%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id116648%_ _%bound?116649%_)
        (if (gx#identifier? _%id116648%_)
            (_%bound?116649%_ (gx#resolve-identifier__0 _%id116648%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id116654%_)
        (let ((_%bound?116656%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id116654%_ _%bound?116656%_))))
    (define gx#core-bound-identifier?
      (lambda _g119619_
        (let ((_g119618_ (##length _g119619_)))
          (cond ((##fx= _g119618_ 1)
                 (apply gx#core-bound-identifier?__0 _g119619_))
                ((##fx= _g119618_ 2)
                 (apply gx#core-bound-identifier?__% _g119619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g119619_))))))
    (define gx#core-identifier=?
      (lambda (_%x116638%_ _%y116639%_)
        (letrec ((_%y=?116641%_
                  (lambda (_%xid116645%_)
                    ((if (list? _%y116639%_) memq eq?)
                     _%xid116645%_
                     _%y116639%_))))
          (let ((_%bind116643%_ (gx#resolve-identifier__0 _%x116638%_)))
            (if (##structure-instance-of? _%bind116643%_ 'gx#binding::t)
                (_%y=?116641%_
                 (##unchecked-structure-ref _%bind116643%_ '1 '#f '#f))
                (_%y=?116641%_ (gx#stx-e _%x116638%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e116636%_)
        (if (interned-symbol? _%e116636%_)
            (string-index__0 (symbol->string _%e116636%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx116589%_ _%src116590%_ _%ctx116591%_ _%marks116592%_)
        (if (##structure? _%stx116589%_)
            (let ((_%$e116594%_ (gx#sealed-syntax-unwrap _%stx116589%_)))
              (if _%$e116594%_
                  _%$e116594%_
                  (if (gx#identifier? _%stx116589%_)
                      (let ((_%id116598%_
                             (gx#stx-unwrap__% _%stx116589%_ _%marks116592%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id116598%_ '1 '#f '#f)
                         (let ((_%$e116600%_
                                (##unchecked-structure-ref
                                 _%id116598%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e116600%_ _%$e116600%_ _%src116590%_))
                         _%ctx116591%_
                         (##unchecked-structure-ref _%id116598%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx116589%_)
                       (let ((_%$e116604%_ (gx#stx-source _%stx116589%_)))
                         (if _%$e116604%_ _%$e116604%_ _%src116590%_))
                       _%ctx116591%_
                       (reverse _%marks116592%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx116589%_
             _%src116590%_
             _%ctx116591%_
             (reverse _%marks116592%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx116610%_)
        (let* ((_%src116612%_ '#f)
               (_%ctx116614%_ (gx#current-expander-context))
               (_%marks116616%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116610%_
           _%src116612%_
           _%ctx116614%_
           _%marks116616%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx116618%_ _%src116619%_)
        (let* ((_%ctx116621%_ (gx#current-expander-context))
               (_%marks116623%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116618%_
           _%src116619%_
           _%ctx116621%_
           _%marks116623%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx116625%_ _%src116626%_ _%ctx116627%_)
        (let ((_%marks116629%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116625%_
           _%src116626%_
           _%ctx116627%_
           _%marks116629%_))))
    (define gx#core-quote-syntax
      (lambda _g119621_
        (let ((_g119620_ (##length _g119621_)))
          (cond ((##fx= _g119620_ 1) (apply gx#core-quote-syntax__0 _g119621_))
                ((##fx= _g119620_ 2) (apply gx#core-quote-syntax__1 _g119621_))
                ((##fx= _g119620_ 3) (apply gx#core-quote-syntax__2 _g119621_))
                ((##fx= _g119620_ 4) (apply gx#core-quote-syntax__% _g119621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g119621_))))))
    (define gx#core-cons
      (lambda (_%hd116585%_ _%tl116586%_)
        (cons (gx#core-quote-syntax__0 _%hd116585%_) _%tl116586%_)))
    (define gx#core-list
      (lambda (_%hd116582%_ . _%rest116583%_)
        (cons (gx#core-quote-syntax__0 _%hd116582%_) _%rest116583%_)))
    (define gx#core-cons*
      (lambda (_%hd116579%_ . _%rest116580%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd116579%_) _%rest116580%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path116548%_ _%rel116549%_)
        (let ((_%path116566%_ (gx#stx-e _%stx-path116548%_))
              (_%reldir116567%_
               (let _%lp116551%_ ((_%relsrc116553%_
                                   (let ((_%$e116563%_
                                          (gx#stx-source _%stx-path116548%_)))
                                     (if _%$e116563%_
                                         _%$e116563%_
                                         _%rel116549%_))))
                 (if (##structure-instance-of? _%relsrc116553%_ 'gerbil#AST::t)
                     (_%lp116551%_
                      (let ((_%$e116556%_ (gx#stx-source _%relsrc116553%_)))
                        (if _%$e116556%_
                            _%$e116556%_
                            (gx#stx-e _%relsrc116553%_))))
                     (if (source-location-path? _%relsrc116553%_)
                         (path-directory
                          (source-location-path _%relsrc116553%_))
                         (if (string? _%relsrc116553%_)
                             (path-directory _%relsrc116553%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path116566%_ (path-normalize _%reldir116567%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path116572%_)
        (let ((_%rel116574%_ '#f))
          (gx#core-resolve-path__% _%stx-path116572%_ _%rel116574%_))))
    (define gx#core-resolve-path
      (lambda _g119623_
        (let ((_g119622_ (##length _g119623_)))
          (cond ((##fx= _g119622_ 1) (apply gx#core-resolve-path__0 _g119623_))
                ((##fx= _g119622_ 2) (apply gx#core-resolve-path__% _g119623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g119623_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr116504%_ _%ctx116505%_)
        (let* ((_%repr116506116513%_ _%repr116504%_)
               (_%E116508116517%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr116506116513%_
                         '([phi . subs]))
                  '#!void))
               (_%K116509116525%_
                (lambda (_%subs116520%_ _%phi116521%_)
                  (let ((_%subst116523%_
                         (if (null? _%subs116520%_)
                             '#f
                             (list->hash-table-eq _%subs116520%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst116523%_
                     _%ctx116505%_
                     _%phi116521%_
                     '#f)))))
          (if (##pair? _%repr116506116513%_)
              (let ((_%hd116510116528%_ (##car _%repr116506116513%_))
                    (_%tl116511116530%_ (##cdr _%repr116506116513%_)))
                (let* ((_%phi116533%_ _%hd116510116528%_)
                       (_%subs116535%_ _%tl116511116530%_))
                  (_%K116509116525%_ _%subs116535%_ _%phi116533%_)))
              (_%E116508116517%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr116540%_)
        (let ((_%ctx116542%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr116540%_ _%ctx116542%_))))
    (define gx#core-deserialize-mark
      (lambda _g119625_
        (let ((_g119624_ (##length _g119625_)))
          (cond ((##fx= _g119624_ 1)
                 (apply gx#core-deserialize-mark__0 _g119625_))
                ((##fx= _g119624_ 2)
                 (apply gx#core-deserialize-mark__% _g119625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g119625_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx116501%_)
        (gx#stx-rewrap _%stx116501%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx116499%_)
        (gx#stx-unwrap__% _%stx116499%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx116469%_)
        (let* ((_%g116470116478%_ (gx#current-expander-marks))
               (_%else116472116486%_ (lambda () _%stx116469%_))
               (_%K116474116491%_
                (lambda (_%hd116489%_)
                  (gx#stx-apply-mark _%stx116469%_ _%hd116489%_))))
          (if (##pair? _%g116470116478%_)
              (let* ((_%hd116475116494%_ (##car _%g116470116478%_))
                     (_%hd116497%_ _%hd116475116494%_))
                (_%K116474116491%_ _%hd116497%_))
              (_%else116472116486%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx116454%_ _%E116455%_)
        (let ((_%bind116457%_ (gx#resolve-identifier__0 _%stx116454%_)))
          (if (##structure-direct-instance-of?
               _%bind116457%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind116457%_ '4 '#f '#f)
              (_%E116455%_ _%stx116454%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx116462%_)
        (let ((_%E116464%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx116462%_ _%E116464%_))))
    (define gx#syntax-local-e
      (lambda _g119627_
        (let ((_g119626_ (##length _g119627_)))
          (cond ((##fx= _g119626_ 1) (apply gx#syntax-local-e__0 _g119627_))
                ((##fx= _g119626_ 2) (apply gx#syntax-local-e__% _g119627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g119627_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx116438%_ _%E116439%_)
        (let ((_%e116441%_ (gx#syntax-local-e__% _%stx116438%_ _%E116439%_)))
          (if (##structure-instance-of? _%e116441%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e116441%_ '1 '#f '#f)
              _%e116441%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx116446%_)
        (let ((_%E116448%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx116446%_ _%E116448%_))))
    (define gx#syntax-local-value
      (lambda _g119629_
        (let ((_g119628_ (##length _g119629_)))
          (cond ((##fx= _g119628_ 1)
                 (apply gx#syntax-local-value__0 _g119629_))
                ((##fx= _g119628_ 2)
                 (apply gx#syntax-local-value__% _g119629_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g119629_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx116435%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx116435%_)))))
