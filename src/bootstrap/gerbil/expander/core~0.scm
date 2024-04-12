(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712944162)
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
      (lambda _%$args119480%_
        (apply make-instance gx#expander-context::t _%$args119480%_)))
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
      (lambda _%$args119477%_
        (apply make-instance gx#root-context::t _%$args119477%_)))
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
      (lambda _%$args119474%_
        (apply make-instance gx#phi-context::t _%$args119474%_)))
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
      (lambda _%$args119471%_
        (apply make-instance gx#top-context::t _%$args119471%_)))
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
      (lambda _%$args119468%_
        (apply make-instance gx#module-context::t _%$args119468%_)))
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
      (lambda _%$args119465%_
        (apply make-instance gx#prelude-context::t _%$args119465%_)))
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
      (lambda _%$args119462%_
        (apply make-instance gx#local-context::t _%$args119462%_)))
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
      (lambda (_%self116368119433%_ _%id119435%_ _%super119436%_)
        (let* ((_%self119438%_ _%self116368119433%_)
               (_%self119440%_ _%self119438%_))
          (if (##fx< '3 (##structure-length _%self119440%_))
              (begin
                (##unchecked-structure-set!
                 _%self119440%_
                 _%id119435%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119440%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119440%_
                 _%super119436%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119440%_
                     '3
                     (##vector-length _%self119440%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self116368119453%_ _%id119454%_)
        (let ((_%super119456%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self116368119453%_
           _%id119454%_
           _%super119456%_))))
    (define gx#phi-context:::init!
      (lambda _g119523_
        (let ((_g119522_ (##length _g119523_)))
          (cond ((##fx= _g119522_ 2)
                 (apply gx#phi-context:::init!__0 _g119523_))
                ((##fx= _g119522_ 3)
                 (apply gx#phi-context:::init!__% _g119523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g119523_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self116369119284%_ _%super119286%_)
        (let* ((_%self119288%_ _%self116369119284%_)
               (_%self119290%_ _%self119288%_))
          (if (##fx< '3 (##structure-length _%self119290%_))
              (begin
                (##unchecked-structure-set!
                 _%self119290%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119290%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self119290%_
                 _%super119286%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self119290%_
                     '3
                     (##vector-length _%self119290%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self116369119303%_)
        (let ((_%super119305%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self116369119303%_ _%super119305%_))))
    (define gx#local-context:::init!
      (lambda _g119525_
        (let ((_g119524_ (##length _g119525_)))
          (cond ((##fx= _g119524_ 1)
                 (apply gx#local-context:::init!__0 _g119525_))
                ((##fx= _g119524_ 2)
                 (apply gx#local-context:::init!__% _g119525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g119525_))))))
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
      (lambda _%$args119158%_
        (apply make-instance gx#binding::t _%$args119158%_)))
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
      (lambda _%$args119155%_
        (apply make-instance gx#runtime-binding::t _%$args119155%_)))
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
      (lambda _%$args119152%_
        (apply make-instance gx#local-binding::t _%$args119152%_)))
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
      (lambda _%$args119149%_
        (apply make-instance gx#top-binding::t _%$args119149%_)))
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
      (lambda _%$args119146%_
        (apply make-instance gx#module-binding::t _%$args119146%_)))
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
      (lambda _%$args119143%_
        (apply make-instance gx#extern-binding::t _%$args119143%_)))
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
      (lambda _%$args119140%_
        (apply make-instance gx#syntax-binding::t _%$args119140%_)))
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
      (lambda _%$args119137%_
        (apply make-instance gx#import-binding::t _%$args119137%_)))
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
      (lambda _%$args119134%_
        (apply make-instance gx#alias-binding::t _%$args119134%_)))
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
      (lambda _%$args119131%_
        (apply make-instance gx#expander::t _%$args119131%_)))
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
      (lambda _%$args119128%_
        (apply make-instance gx#core-expander::t _%$args119128%_)))
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
      (lambda _%$args119125%_
        (apply make-instance gx#expression-form::t _%$args119125%_)))
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
      (lambda _%$args119122%_
        (apply make-instance gx#special-form::t _%$args119122%_)))
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
      (lambda _%$args119119%_
        (apply make-instance gx#definition-form::t _%$args119119%_)))
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
      (lambda _%$args119116%_
        (apply make-instance gx#top-special-form::t _%$args119116%_)))
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
      (lambda _%$args119113%_
        (apply make-instance gx#module-special-form::t _%$args119113%_)))
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
      (lambda _%$args119110%_
        (apply make-instance gx#feature-expander::t _%$args119110%_)))
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
      (lambda _%$args119107%_
        (apply make-instance gx#private-feature-expander::t _%$args119107%_)))
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
      (lambda _%$args119104%_
        (apply make-instance gx#reserved-expander::t _%$args119104%_)))
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
      (lambda _%$args119101%_
        (apply make-instance gx#macro-expander::t _%$args119101%_)))
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
      (lambda _%$args119098%_
        (apply make-instance gx#rename-macro-expander::t _%$args119098%_)))
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
      (lambda _%$args119095%_
        (apply make-instance gx#user-expander::t _%$args119095%_)))
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
      (lambda _%$args119092%_
        (apply make-instance gx#expander-mark::t _%$args119092%_)))
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
      (lambda (_%ctx119076%_
               _%message119077%_
               _%stx119078%_
               .
               _%details119079%_)
        (let ((_%ctx119090%_
               (let ((_%$e119081%_ _%ctx119076%_))
                 (if _%$e119081%_
                     _%$e119081%_
                     (let ((_%$e119084%_ (gx#core-context-top__0)))
                       (if _%$e119084%_
                           ((lambda (_%ctx119087%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx119087%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e119084%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message119077%_
                  (cons _%stx119078%_ _%details119079%_)
                  _%ctx119090%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx119063%_ _%expression?119064%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx119063%_ _%expression?119064%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx119069%_)
        (let ((_%expression?119071%_ '#f))
          (gx#eval-syntax__% _%stx119069%_ _%expression?119071%_))))
    (define gx#eval-syntax
      (lambda _g119527_
        (let ((_g119526_ (##length _g119527_)))
          (cond ((##fx= _g119526_ 1) (apply gx#eval-syntax__0 _g119527_))
                ((##fx= _g119526_ 2) (apply gx#eval-syntax__% _g119527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g119527_))))))
    (define gx#eval-syntax*
      (lambda (_%stx119060%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx119060%_))))
    (define gx#core-expand__%
      (lambda (_%stx119047%_ _%expression?119048%_)
        (if _%expression?119048%_
            (gx#core-expand-expression _%stx119047%_)
            (gx#core-expand-top _%stx119047%_))))
    (define gx#core-expand__0
      (lambda (_%stx119053%_)
        (let ((_%expression?119055%_ '#f))
          (gx#core-expand__% _%stx119053%_ _%expression?119055%_))))
    (define gx#core-expand
      (lambda _g119529_
        (let ((_g119528_ (##length _g119529_)))
          (cond ((##fx= _g119528_ 1) (apply gx#core-expand__0 _g119529_))
                ((##fx= _g119528_ 2) (apply gx#core-expand__% _g119529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g119529_))))))
    (define gx#core-expand-top
      (lambda (_%stx119014%_)
        (let* ((_%stx119016%_ (gx#core-expand*__0 _%stx119014%_))
               (_%e119017119024%_ _%stx119016%_)
               (_%E119019119028%_
                (lambda () (gx#core-expand-expression _%stx119016%_)))
               (_%E119018119042%_
                (lambda ()
                  (if (gx#stx-pair? _%e119017119024%_)
                      (let ((_%e119020119032%_
                             (gx#syntax-e _%e119017119024%_)))
                        (let ((_%hd119021119035%_ (##car _%e119020119032%_))
                              (_%tl119022119037%_ (##cdr _%e119020119032%_)))
                          (let ((_%form119040%_ _%hd119021119035%_))
                            (if (gx#core-bound-identifier?__0 _%form119040%_)
                                _%stx119016%_
                                (_%E119019119028%_)))))
                      (_%E119019119028%_)))))
          (_%E119018119042%_))))
    (define gx#core-expand-expression
      (lambda (_%stx118946%_)
        (letrec ((_%sealed-expression?118948%_
                  (lambda (_%hd118984%_)
                    (if (gx#sealed-syntax? _%hd118984%_)
                        (let* ((_%e118985118992%_ _%hd118984%_)
                               (_%E118987118996%_ (lambda () '#f))
                               (_%E118986119010%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e118985118992%_)
                                      (let ((_%e118988119000%_
                                             (gx#syntax-e _%e118985118992%_)))
                                        (let ((_%hd118989119003%_
                                               (##car _%e118988119000%_))
                                              (_%tl118990119005%_
                                               (##cdr _%e118988119000%_)))
                                          (let ((_%form119008%_
                                                 _%hd118989119003%_))
                                            (gx#core-bound-identifier?__%
                                             _%form119008%_
                                             gx#expression-form-binding?))))
                                      (_%E118987118996%_)))))
                          (_%E118986119010%_))
                        '#f)))
                 (_%illegal-expression118949%_
                  (lambda (_%hd118981%_ . _%_118982%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx118946%_
                     _%hd118981%_)))
                 (_%expand-e118950%_
                  (lambda (_%form118973%_ _%hd118974%_)
                    (let ((_%bind118976%_
                           (if (##structure-instance-of?
                                _%form118973%_
                                'gx#binding::t)
                               _%form118973%_
                               (gx#resolve-identifier__0 _%form118973%_))))
                      (if (gx#core-expander-binding? _%bind118976%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind118976%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd118974%_
                            (gx#stx-source _%stx118946%_)))
                          (if (##structure-direct-instance-of?
                               _%bind118976%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind118976%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd118974%_
                                 (gx#stx-source _%stx118946%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx118946%_
                               _%form118973%_)))))))
          (let ((_%hd118952%_ (gx#core-expand-head _%stx118946%_)))
            (if (_%sealed-expression?118948%_ _%hd118952%_)
                _%hd118952%_
                (if (gx#stx-pair? _%hd118952%_)
                    (let* ((_%form118956%_ (gx#stx-car _%hd118952%_))
                           (_%bind118958%_
                            (if (gx#identifier? _%form118956%_)
                                (gx#resolve-identifier__0 _%form118956%_)
                                '#f)))
                      (if (or (not _%bind118958%_)
                              (not (gx#core-expander-binding? _%bind118958%_)))
                          (_%expand-e118950%_
                           '%%app
                           (cons '%%app _%hd118952%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind118958%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd118952%_
                               _%illegal-expression118949%_)
                              (if (gx#expression-form-binding? _%bind118958%_)
                                  (_%expand-e118950%_
                                   _%bind118958%_
                                   _%hd118952%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind118958%_)
                                      (gx#core-expand-expression
                                       (_%expand-e118950%_
                                        _%bind118958%_
                                        _%hd118952%_))
                                      (_%illegal-expression118949%_
                                       _%hd118952%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd118952%_)
                        (_%illegal-expression118949%_ _%hd118952%_)
                        (if (gx#identifier? _%hd118952%_)
                            (_%expand-e118950%_
                             '%%ref
                             (cons '%%ref (cons _%hd118952%_ '())))
                            (if (gx#stx-datum? _%hd118952%_)
                                (_%expand-e118950%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd118952%_ '())))
                                (_%illegal-expression118949%_
                                 _%hd118952%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx118941%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx118944%_ (gx#core-expand-expression _%stx118941%_)))
             (values _%stx118944%_ (gx#eval-syntax* _%stx118944%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx118922%_ _%stop?118923%_)
        (let _%lp118925%_ ((_%stx118927%_ _%stx118922%_))
          (if (_%stop?118923%_ _%stx118927%_)
              _%stx118927%_
              (let ((_%rstx118929%_ (gx#core-expand1 _%stx118927%_)))
                (if (eq? _%stx118927%_ _%rstx118929%_)
                    _%stx118927%_
                    (_%lp118925%_ _%rstx118929%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx118934%_)
        (let ((_%stop?118936%_ false))
          (gx#core-expand*__% _%stx118934%_ _%stop?118936%_))))
    (define gx#core-expand*
      (lambda _g119531_
        (let ((_g119530_ (##length _g119531_)))
          (cond ((##fx= _g119530_ 1) (apply gx#core-expand*__0 _g119531_))
                ((##fx= _g119530_ 2) (apply gx#core-expand*__% _g119531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g119531_))))))
    (define gx#core-expand1
      (lambda (_%stx118874%_)
        (letrec ((_%step118876%_
                  (lambda (_%hd118913%_)
                    (let ((_%bind118915%_
                           (gx#resolve-identifier__0 _%hd118913%_)))
                      (if (##structure-instance-of?
                           _%bind118915%_
                           'gx#runtime-binding::t)
                          _%stx118874%_
                          (if (##structure-direct-instance-of?
                               _%bind118915%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind118915%_
                                '4
                                '#f
                                '#f)
                               _%stx118874%_)
                              (if (not _%bind118915%_)
                                  _%stx118874%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx118874%_))))))))
          (let* ((_%e118877118885%_ _%stx118874%_)
                 (_%E118883118889%_ (lambda () _%stx118874%_))
                 (_%E118879118895%_
                  (lambda ()
                    (let ((_%hd118893%_ _%e118877118885%_))
                      (if (gx#identifier? _%hd118893%_)
                          (_%step118876%_ _%hd118893%_)
                          (_%E118883118889%_)))))
                 (_%E118878118909%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118877118885%_)
                        (let ((_%e118880118899%_
                               (gx#syntax-e _%e118877118885%_)))
                          (let ((_%hd118881118902%_ (##car _%e118880118899%_))
                                (_%tl118882118904%_ (##cdr _%e118880118899%_)))
                            (let ((_%hd118907%_ _%hd118881118902%_))
                              (if (gx#identifier? _%hd118907%_)
                                  (_%step118876%_ _%hd118907%_)
                                  (_%E118879118895%_)))))
                        (_%E118879118895%_)))))
            (_%E118878118909%_)))))
    (define gx#core-expand-head
      (lambda (_%stx118840%_)
        (letrec ((_%stop?118842%_
                  (lambda (_%stx118844%_)
                    (let* ((_%e118845118852%_ _%stx118844%_)
                           (_%E118847118856%_ (lambda () '#f))
                           (_%E118846118870%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118845118852%_)
                                  (let ((_%e118848118860%_
                                         (gx#syntax-e _%e118845118852%_)))
                                    (let ((_%hd118849118863%_
                                           (##car _%e118848118860%_))
                                          (_%tl118850118865%_
                                           (##cdr _%e118848118860%_)))
                                      (let ((_%hd118868%_ _%hd118849118863%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd118868%_))))
                                  (_%E118847118856%_)))))
                      (_%E118846118870%_)))))
          (gx#core-expand*__% _%stx118840%_ _%stop?118842%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx118646%_
               _%expand-special118647%_
               _%begin-form118648%_
               _%expand-e118649%_)
        (letrec ((_%expand-splice118651%_
                  (lambda (_%hd118814%_
                           _%body118815%_
                           _%rest118816%_
                           _%r118817%_)
                    (if (gx#stx-list? _%body118815%_)
                        (_%K118655%_
                         (gx#stx-foldr cons _%rest118816%_ _%body118815%_)
                         _%r118817%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx118646%_
                         _%hd118814%_))))
                 (_%expand-cond-expand118652%_
                  (lambda (_%hd118810%_ _%rest118811%_ _%r118812%_)
                    (_%K118655%_
                     (cons (gx#core-expand-cond-expand% _%hd118810%_)
                           _%rest118811%_)
                     _%r118812%_)))
                 (_%expand-include118653%_
                  (lambda (_%hd118759%_ _%rest118760%_ _%r118761%_)
                    (let* ((_%e118762118772%_ _%hd118759%_)
                           (_%E118764118776%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118762118772%_)))
                           (_%E118763118806%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118762118772%_)
                                  (let ((_%e118765118780%_
                                         (gx#syntax-e _%e118762118772%_)))
                                    (let ((_%hd118766118783%_
                                           (##car _%e118765118780%_))
                                          (_%tl118767118785%_
                                           (##cdr _%e118765118780%_)))
                                      (if (gx#stx-pair? _%tl118767118785%_)
                                          (let ((_%e118768118788%_
                                                 (gx#syntax-e
                                                  _%tl118767118785%_)))
                                            (let ((_%hd118769118791%_
                                                   (##car _%e118768118788%_))
                                                  (_%tl118770118793%_
                                                   (##cdr _%e118768118788%_)))
                                              (let ((_%path118796%_
                                                     _%hd118769118791%_))
                                                (if (gx#stx-null?
                                                     _%tl118770118793%_)
                                                    (if (gx#stx-string?
                                                         _%path118796%_)
                                                        (let* ((_%rpath118798%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path118796%_
                         (gx#stx-source _%hd118759%_)))
                       (_%block118800%_
                        (gx#core-expand-include%__%
                         _%hd118759%_
                         _%rpath118798%_))
                       (_%rbody118803%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block118800%_
                            _%expand-special118647%_
                            '#f
                            _%expand-e118649%_))
                         gx#current-expander-path
                         (cons _%rpath118798%_ (gx#current-expander-path)))))
                  (_%K118655%_
                   _%rest118760%_
                   (__foldr1 cons _%r118761%_ _%rbody118803%_)))
                (_%E118764118776%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118764118776%_)))))
                                          (_%E118764118776%_))))
                                  (_%E118764118776%_)))))
                      (_%E118763118806%_))))
                 (_%expand-expression118654%_
                  (lambda (_%hd118755%_ _%rest118756%_ _%r118757%_)
                    (_%K118655%_
                     _%rest118756%_
                     (cons (_%expand-e118649%_ _%hd118755%_) _%r118757%_))))
                 (_%K118655%_
                  (lambda (_%rest118685%_ _%r118686%_)
                    (let* ((_%e118687118694%_ _%rest118685%_)
                           (_%E118689118698%_
                            (lambda ()
                              (if _%begin-form118648%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form118648%_
                                    (reverse _%r118686%_))
                                   (gx#stx-source _%stx118646%_))
                                  _%r118686%_)))
                           (_%E118688118751%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118687118694%_)
                                  (let ((_%e118690118702%_
                                         (gx#syntax-e _%e118687118694%_)))
                                    (let ((_%hd118691118705%_
                                           (##car _%e118690118702%_))
                                          (_%tl118692118707%_
                                           (##cdr _%e118690118702%_)))
                                      (let* ((_%hd118710%_ _%hd118691118705%_)
                                             (_%rest118712%_
                                              _%tl118692118707%_)
                                             (_%hd118714%_
                                              (gx#core-expand-head
                                               _%hd118710%_))
                                             (_%e118715118722%_ _%hd118714%_)
                                             (_%E118717118726%_
                                              (lambda ()
                                                (_%expand-expression118654%_
                                                 _%hd118714%_
                                                 _%rest118712%_
                                                 _%r118686%_)))
                                             (_%E118716118747%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e118715118722%_)
                                                    (let ((_%e118718118730%_
                                                           (gx#syntax-e
                                                            _%e118715118722%_)))
                                                      (let ((_%hd118719118733%_
                                                             (##car _%e118718118730%_))
                                                            (_%tl118720118735%_
                                                             (##cdr _%e118718118730%_)))
                                                        (let* ((_%form118738%_
                                                                _%hd118719118733%_)
                                                               (_%body118740%_
                                                                _%tl118720118735%_)
                                                               (_%bind118742%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form118738%_)
                            (gx#resolve-identifier__0 _%form118738%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind118742%_)
                      (let ((_%$e118744%_
                             (##unchecked-structure-ref
                              _%bind118742%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e118744%_)
                            (_%expand-splice118651%_
                             _%hd118714%_
                             _%body118740%_
                             _%rest118712%_
                             _%r118686%_)
                            (if (eq? '%#cond-expand _%$e118744%_)
                                (_%expand-cond-expand118652%_
                                 _%hd118714%_
                                 _%rest118712%_
                                 _%r118686%_)
                                (if (eq? '%#include _%$e118744%_)
                                    (_%expand-include118653%_
                                     _%hd118714%_
                                     _%rest118712%_
                                     _%r118686%_)
                                    (_%expand-special118647%_
                                     _%hd118714%_
                                     _%K118655%_
                                     _%rest118712%_
                                     _%r118686%_)))))
                      (_%expand-expression118654%_
                       _%hd118714%_
                       _%rest118712%_
                       _%r118686%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118717118726%_)))))
                                        (_%E118716118747%_))))
                                  (_%E118689118698%_)))))
                      (_%E118688118751%_)))))
          (let* ((_%e118656118663%_ _%stx118646%_)
                 (_%E118658118667%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118656118663%_)))
                 (_%E118657118681%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118656118663%_)
                        (let ((_%e118659118671%_
                               (gx#syntax-e _%e118656118663%_)))
                          (let ((_%hd118660118674%_ (##car _%e118659118671%_))
                                (_%tl118661118676%_ (##cdr _%e118659118671%_)))
                            (let ((_%body118679%_ _%tl118661118676%_))
                              (if (gx#stx-list? _%body118679%_)
                                  (_%K118655%_ _%body118679%_ '())
                                  (_%E118658118667%_)))))
                        (_%E118658118667%_)))))
            (_%E118657118681%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx118822%_ _%expand-special118823%_)
        (let* ((_%begin-form118825%_ '%#begin)
               (_%expand-e118827%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx118822%_
           _%expand-special118823%_
           _%begin-form118825%_
           _%expand-e118827%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx118829%_ _%expand-special118830%_ _%begin-form118831%_)
        (let ((_%expand-e118833%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx118829%_
           _%expand-special118830%_
           _%begin-form118831%_
           _%expand-e118833%_))))
    (define gx#core-expand-block
      (lambda _g119533_
        (let ((_g119532_ (##length _g119533_)))
          (cond ((##fx= _g119532_ 2) (apply gx#core-expand-block__0 _g119533_))
                ((##fx= _g119532_ 3) (apply gx#core-expand-block__1 _g119533_))
                ((##fx= _g119532_ 4) (apply gx#core-expand-block__% _g119533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g119533_))))))
    (define gx#core-expand-block*
      (lambda (_%stx118594%_ _%expand-special118595%_)
        (let* ((_%g118596118607%_
                (gx#core-expand-block__1
                 _%stx118594%_
                 _%expand-special118595%_
                 '#f))
               (_%E118600118611%_
                (lambda ()
                  (error '"No clause matching"
                         _%g118596118607%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K118605118642%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx118594%_)))
                (_%K118602118628%_ (lambda (_%expr118626%_) _%expr118626%_))
                (_%K118601118617%_
                 (lambda (_%body118615%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body118615%_))
                    (gx#stx-source _%stx118594%_)))))
            (let ((_%try-match118598118638%_
                   (lambda ()
                     (if (##pair? _%g118596118607%_)
                         (let ((_%tl118604118633%_ (##cdr _%g118596118607%_))
                               (_%hd118603118631%_ (##car _%g118596118607%_)))
                           (if (##null? _%tl118604118633%_)
                               (let ((_%expr118636%_ _%hd118603118631%_))
                                 (_%K118602118628%_ _%expr118636%_))
                               (let ((_%body118620%_ _%g118596118607%_))
                                 (_%K118601118617%_ _%body118620%_))))
                         (let ((_%body118620%_ _%g118596118607%_))
                           (_%K118601118617%_ _%body118620%_))))))
              (if (##null? _%g118596118607%_)
                  (_%K118605118642%_)
                  (_%try-match118598118638%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx118419%_)
        (letrec ((_%satisfied?118421%_
                  (lambda (_%condition118522%_)
                    (let* ((_%e118523118538%_ _%condition118522%_)
                           (_%E118533118542%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118523118538%_)))
                           (_%E118526118561%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118523118538%_)
                                  (let ((_%e118534118546%_
                                         (gx#syntax-e _%e118523118538%_)))
                                    (let ((_%hd118535118549%_
                                           (##car _%e118534118546%_))
                                          (_%tl118536118551%_
                                           (##cdr _%e118534118546%_)))
                                      (let* ((_%combinator118554%_
                                              _%hd118535118549%_)
                                             (_%body118556%_
                                              _%tl118536118551%_))
                                        (if (gx#stx-list? _%body118556%_)
                                            (let ((_%$e118558%_
                                                   (gx#stx-e
                                                    _%combinator118554%_)))
                                              (if (eq? 'not _%$e118558%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?118421%_
                                                        _%body118556%_))
                                                  (if (eq? 'and _%$e118558%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?118421%_
                                                       _%body118556%_)
                                                      (if (eq? 'or
                                                               _%$e118558%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?118421%_
                                                           _%body118556%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e118558%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body118556%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx118419%_
                       _%combinator118554%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E118533118542%_)))))
                                  (_%E118533118542%_))))
                           (_%E118525118584%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118523118538%_)
                                  (let ((_%e118527118565%_
                                         (gx#syntax-e _%e118523118538%_)))
                                    (let ((_%hd118528118568%_
                                           (##car _%e118527118565%_))
                                          (_%tl118529118570%_
                                           (##cdr _%e118527118565%_)))
                                      (if (and (gx#identifier?
                                                _%hd118528118568%_)
                                               (gx#core-identifier=?
                                                _%hd118528118568%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl118529118570%_)
                                              (let ((_%e118530118573%_
                                                     (gx#syntax-e
                                                      _%tl118529118570%_)))
                                                (let ((_%hd118531118576%_
                                                       (##car _%e118530118573%_))
                                                      (_%tl118532118578%_
                                                       (##cdr _%e118530118573%_)))
                                                  (let ((_%expr118581%_
                                                         _%hd118531118576%_))
                                                    (if (gx#stx-null?
                                                         _%tl118532118578%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr118581%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E118526118561%_)))))
                                              (_%E118526118561%_))
                                          (_%E118526118561%_))))
                                  (_%E118526118561%_))))
                           (_%E118524118590%_
                            (lambda ()
                              (let ((_%id118588%_ _%e118523118538%_))
                                (if (gx#identifier? _%id118588%_)
                                    (gx#core-bound-identifier?__%
                                     _%id118588%_
                                     gx#feature-binding?)
                                    (_%E118525118584%_))))))
                      (_%E118524118590%_))))
                 (_%loop118422%_
                  (lambda (_%rest118452%_)
                    (let* ((_%e118453118461%_ _%rest118452%_)
                           (_%E118459118465%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118453118461%_)))
                           (_%E118455118469%_
                            (lambda ()
                              (if (gx#stx-null? _%e118453118461%_)
                                  '()
                                  (_%E118459118465%_))))
                           (_%E118454118518%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118453118461%_)
                                  (let ((_%e118456118473%_
                                         (gx#syntax-e _%e118453118461%_)))
                                    (let ((_%hd118457118476%_
                                           (##car _%e118456118473%_))
                                          (_%tl118458118478%_
                                           (##cdr _%e118456118473%_)))
                                      (let* ((_%hd118481%_ _%hd118457118476%_)
                                             (_%rest118483%_
                                              _%tl118458118478%_)
                                             (_%e118484118491%_ _%hd118481%_)
                                             (_%E118486118495%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e118484118491%_)))
                                             (_%E118485118514%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e118484118491%_)
                                                    (let ((_%e118487118499%_
                                                           (gx#syntax-e
                                                            _%e118484118491%_)))
                                                      (let ((_%hd118488118502%_
                                                             (##car _%e118487118499%_))
                                                            (_%tl118489118504%_
                                                             (##cdr _%e118487118499%_)))
                                                        (let* ((_%condition118507%_
                                                                _%hd118488118502%_)
                                                               (_%body118509%_
                                                                _%tl118489118504%_))
                                                          (if (gx#stx-eq?
                                                               _%condition118507%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest118483%_)
                          _%body118509%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx118419%_
                           _%hd118481%_))
                      (if (_%satisfied?118421%_ _%condition118507%_)
                          _%body118509%_
                          (_%loop118422%_ _%rest118483%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118486118495%_)))))
                                        (_%E118485118514%_))))
                                  (_%E118455118469%_)))))
                      (_%E118454118518%_)))))
          (let* ((_%e118423118430%_ _%stx118419%_)
                 (_%E118425118434%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118423118430%_)))
                 (_%E118424118448%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118423118430%_)
                        (let ((_%e118426118438%_
                               (gx#syntax-e _%e118423118430%_)))
                          (let ((_%hd118427118441%_ (##car _%e118426118438%_))
                                (_%tl118428118443%_ (##cdr _%e118426118438%_)))
                            (let ((_%clauses118446%_ _%tl118428118443%_))
                              (if (gx#stx-list? _%clauses118446%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop118422%_ _%clauses118446%_))
                                  (_%E118425118434%_)))))
                        (_%E118425118434%_)))))
            (_%E118424118448%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx118362%_ _%rpath118363%_)
        (let* ((_%e118364118374%_ _%stx118362%_)
               (_%E118366118378%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118364118374%_)))
               (_%E118365118405%_
                (lambda ()
                  (if (gx#stx-pair? _%e118364118374%_)
                      (let ((_%e118367118382%_
                             (gx#syntax-e _%e118364118374%_)))
                        (let ((_%hd118368118385%_ (##car _%e118367118382%_))
                              (_%tl118369118387%_ (##cdr _%e118367118382%_)))
                          (if (gx#stx-pair? _%tl118369118387%_)
                              (let ((_%e118370118390%_
                                     (gx#syntax-e _%tl118369118387%_)))
                                (let ((_%hd118371118393%_
                                       (##car _%e118370118390%_))
                                      (_%tl118372118395%_
                                       (##cdr _%e118370118390%_)))
                                  (let ((_%path118398%_ _%hd118371118393%_))
                                    (if (gx#stx-null? _%tl118372118395%_)
                                        (if (gx#stx-string? _%path118398%_)
                                            (let ((_%rpath118403%_
                                                   (let ((_%$e118400%_
                                                          _%rpath118363%_))
                                                     (if _%$e118400%_
                                                         _%$e118400%_
                                                         (gx#core-resolve-path__%
                                                          _%path118398%_
                                                          (gx#stx-source
                                                           _%stx118362%_))))))
                                              (if (member _%rpath118403%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx118362%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath118403%_))
                                                    (gx#stx-source
                                                     _%stx118362%_)))))
                                            (_%E118366118378%_))
                                        (_%E118366118378%_)))))
                              (_%E118366118378%_))))
                      (_%E118366118378%_)))))
          (_%E118365118405%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx118412%_)
        (let ((_%rpath118414%_ '#f))
          (gx#core-expand-include%__% _%stx118412%_ _%rpath118414%_))))
    (define gx#core-expand-include%
      (lambda _g119535_
        (let ((_g119534_ (##length _g119535_)))
          (cond ((##fx= _g119534_ 1)
                 (apply gx#core-expand-include%__0 _g119535_))
                ((##fx= _g119534_ 2)
                 (apply gx#core-expand-include%__% _g119535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g119535_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K118328%_ _%stx118329%_ _%method118330%_)
        (if (procedure? _%K118328%_)
            (let ((_%$e118333%_ (gx#stx-source _%stx118329%_)))
              (if _%$e118333%_
                  ((lambda (_%g118335118337%_)
                     (gx#stx-wrap-source
                      (_%K118328%_ _%stx118329%_)
                      _%g118335118337%_))
                   _%$e118333%_)
                  (_%K118328%_ _%stx118329%_)))
            (let ((_%$e118341%_
                   (bound-method-ref _%K118328%_ _%method118330%_)))
              (if _%$e118341%_
                  ((lambda (_%g118343118345%_)
                     (gx#core-apply-expander__%
                      _%g118343118345%_
                      _%stx118329%_
                      _%method118330%_))
                   _%$e118341%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx118329%_
                   _%method118330%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K118352%_ _%stx118353%_)
        (let ((_%method118355%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K118352%_
           _%stx118353%_
           _%method118355%_))))
    (define gx#core-apply-expander
      (lambda _g119537_
        (let ((_g119536_ (##length _g119537_)))
          (cond ((##fx= _g119536_ 2)
                 (apply gx#core-apply-expander__0 _g119537_))
                ((##fx= _g119536_ 3)
                 (apply gx#core-apply-expander__% _g119537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g119537_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116370118311%_ _%stx118313%_)
        (let* ((_%self118315%_ _%self116370118311%_)
               (_%self118317%_ _%self118315%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx118313%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116371118151%_ _%stx118153%_)
        (let* ((_%self118155%_ _%self116371118151%_)
               (_%self118157%_ _%self118155%_)
               (_%self118166118172%_ _%self118157%_)
               (_%E118168118176%_
                (lambda ()
                  (error '"No clause matching"
                         _%self118166118172%_
                         '((macro-expander K)))
                  '#!void))
               (_%K118169118181%_
                (lambda (_%K118179%_)
                  (gx#core-apply-expander__0 _%K118179%_ _%stx118153%_)))
               (_%e118170118184%_
                (##unchecked-structure-ref _%self118166118172%_ '1 '#f '#f))
               (_%K118187%_ _%e118170118184%_))
          (_%K118169118181%_ _%K118187%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116372117991%_ _%stx117993%_)
        (let* ((_%self117995%_ _%self116372117991%_)
               (_%self117997%_ _%self117995%_))
          (if (gx#sealed-syntax? _%stx117993%_)
              _%stx117993%_
              (let* ((_%self118006118012%_ _%self117997%_)
                     (_%E118008118016%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self118006118012%_
                               '((core-expander K)))
                        '#!void))
                     (_%K118009118021%_
                      (lambda (_%K118019%_)
                        (gx#core-apply-expander__0 _%K118019%_ _%stx117993%_)))
                     (_%e118010118024%_
                      (##unchecked-structure-ref
                       _%self118006118012%_
                       '1
                       '#f
                       '#f))
                     (_%K118027%_ _%e118010118024%_))
                (_%K118009118021%_ _%K118027%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116373117840%_ _%stx117842%_ _%top?117843%_)
        (let* ((_%self117845%_ _%self116373117840%_)
               (_%self117847%_ _%self117845%_))
          (if (_%top?117843%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self117847%_
               _%stx117842%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx117842%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116373117860%_ _%stx117861%_)
        (let ((_%top?117863%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116373117860%_
           _%stx117861%_
           _%top?117863%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g119539_
        (let ((_g119538_ (##length _g119539_)))
          (cond ((##fx= _g119538_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g119539_))
                ((##fx= _g119538_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g119539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g119539_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116374117701%_ _%stx117703%_)
        (let* ((_%self117705%_ _%self116374117701%_)
               (_%self117707%_ _%self117705%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self117707%_
           _%stx117703%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116375117513%_ _%stx117515%_)
        (let* ((_%self117517%_ _%self116375117513%_)
               (_%self117519%_ _%self117517%_)
               (_%self117528117534%_ _%self117519%_)
               (_%E117530117538%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117528117534%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K117531117571%_
                (lambda (_%id117541%_)
                  (let* ((_%e117542117549%_ _%stx117515%_)
                         (_%E117544117553%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e117542117549%_)))
                         (_%E117543117567%_
                          (lambda ()
                            (if (gx#stx-pair? _%e117542117549%_)
                                (let ((_%e117545117557%_
                                       (gx#syntax-e _%e117542117549%_)))
                                  (let ((_%hd117546117560%_
                                         (##car _%e117545117557%_))
                                        (_%tl117547117562%_
                                         (##cdr _%e117545117557%_)))
                                    (let ((_%body117565%_ _%tl117547117562%_))
                                      (gx#core-cons
                                       _%id117541%_
                                       _%body117565%_))))
                                (_%E117544117553%_)))))
                    (_%E117543117567%_))))
               (_%e117532117574%_
                (##unchecked-structure-ref _%self117528117534%_ '1 '#f '#f))
               (_%id117577%_ _%e117532117574%_))
          (_%K117531117571%_ _%id117577%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self117339%_ _%stx117340%_ _%method117341%_)
        (let* ((_%self117342117350%_ _%self117339%_)
               (_%E117344117354%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117342117350%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K117345117361%_
                (lambda (_%phi117357%_ _%ctx117358%_ _%K117359%_)
                  (gx#core-apply-user-macro
                   _%K117359%_
                   _%stx117340%_
                   _%ctx117358%_
                   _%phi117357%_
                   _%method117341%_))))
          (if (##structure-instance-of?
               _%self117342117350%_
               'gx#user-expander::t)
              (let* ((_%e117346117364%_
                      (##unchecked-structure-ref
                       _%self117342117350%_
                       '1
                       '#f
                       '#f))
                     (_%K117367%_ _%e117346117364%_)
                     (_%e117347117369%_
                      (##unchecked-structure-ref
                       _%self117342117350%_
                       '2
                       '#f
                       '#f))
                     (_%ctx117372%_ _%e117347117369%_)
                     (_%e117348117374%_
                      (##unchecked-structure-ref
                       _%self117342117350%_
                       '3
                       '#f
                       '#f))
                     (_%phi117377%_ _%e117348117374%_))
                (_%K117345117361%_ _%phi117377%_ _%ctx117372%_ _%K117367%_))
              (_%E117344117354%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self117382%_ _%stx117383%_)
        (let ((_%method117385%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self117382%_
           _%stx117383%_
           _%method117385%_))))
    (define gx#core-apply-user-expander
      (lambda _g119541_
        (let ((_g119540_ (##length _g119541_)))
          (cond ((##fx= _g119540_ 2)
                 (apply gx#core-apply-user-expander__0 _g119541_))
                ((##fx= _g119540_ 3)
                 (apply gx#core-apply-user-expander__% _g119541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g119541_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K117329%_
               _%stx117330%_
               _%ctx117331%_
               _%phi117332%_
               _%method117333%_)
        (let ((_%mark117335%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx117331%_
                _%phi117332%_
                _%stx117330%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K117329%_
               (gx#stx-apply-mark _%stx117330%_ _%mark117335%_)
               _%method117333%_)
              _%mark117335%_))
           gx#current-expander-marks
           (cons _%mark117335%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx117177%_ _%phi117178%_ _%ctx117179%_)
        (let _%lp117181%_ ((_%bind117183%_
                            (gx#core-resolve-identifier__%
                             _%stx117177%_
                             _%phi117178%_
                             _%ctx117179%_)))
          (if (##structure-direct-instance-of?
               _%bind117183%_
               'gx#import-binding::t)
              (_%lp117181%_
               (##unchecked-structure-ref _%bind117183%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind117183%_
                   'gx#alias-binding::t)
                  (_%lp117181%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind117183%_ '4 '#f '#f)
                    _%phi117178%_
                    _%ctx117179%_))
                  _%bind117183%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx117191%_)
        (let* ((_%phi117193%_ (gx#current-expander-phi))
               (_%ctx117195%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117191%_
           _%phi117193%_
           _%ctx117195%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx117197%_ _%phi117198%_)
        (let ((_%ctx117200%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx117197%_
           _%phi117198%_
           _%ctx117200%_))))
    (define gx#resolve-identifier
      (lambda _g119543_
        (let ((_g119542_ (##length _g119543_)))
          (cond ((##fx= _g119542_ 1)
                 (apply gx#resolve-identifier__0 _g119543_))
                ((##fx= _g119542_ 2)
                 (apply gx#resolve-identifier__1 _g119543_))
                ((##fx= _g119542_ 3)
                 (apply gx#resolve-identifier__% _g119543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g119543_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx117132%_
               _%val117133%_
               _%rebind?117134%_
               _%phi117135%_
               _%ctx117136%_)
        (let ((_%rebind?117141%_
               (if (not _%rebind?117134%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?117134%_)
                       _%rebind?117134%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx117132%_)
           _%val117133%_
           _%rebind?117141%_
           _%phi117135%_
           _%ctx117136%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx117146%_ _%val117147%_)
        (let* ((_%rebind?117149%_ '#f)
               (_%phi117151%_ (gx#current-expander-phi))
               (_%ctx117153%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117146%_
           _%val117147%_
           _%rebind?117149%_
           _%phi117151%_
           _%ctx117153%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx117155%_ _%val117156%_ _%rebind?117157%_)
        (let* ((_%phi117159%_ (gx#current-expander-phi))
               (_%ctx117161%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117155%_
           _%val117156%_
           _%rebind?117157%_
           _%phi117159%_
           _%ctx117161%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx117163%_ _%val117164%_ _%rebind?117165%_ _%phi117166%_)
        (let ((_%ctx117168%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx117163%_
           _%val117164%_
           _%rebind?117165%_
           _%phi117166%_
           _%ctx117168%_))))
    (define gx#bind-identifier!
      (lambda _g119545_
        (let ((_g119544_ (##length _g119545_)))
          (cond ((##fx= _g119544_ 2) (apply gx#bind-identifier!__0 _g119545_))
                ((##fx= _g119544_ 3) (apply gx#bind-identifier!__1 _g119545_))
                ((##fx= _g119544_ 4) (apply gx#bind-identifier!__2 _g119545_))
                ((##fx= _g119544_ 5) (apply gx#bind-identifier!__% _g119545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g119545_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx117098%_ _%phi117099%_ _%ctx117100%_)
        (let _%lp117102%_ ((_%e117104%_ _%stx117098%_)
                           (_%marks117105%_ (gx#current-expander-marks)))
          (if (symbol? _%e117104%_)
              (gx#core-resolve-binding
               _%e117104%_
               _%phi117099%_
               _%phi117099%_
               _%ctx117100%_
               (reverse _%marks117105%_))
              (if (gx#identifier-quote? _%e117104%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e117104%_ '1 '#f '#f)
                   _%phi117099%_
                   '0
                   (##unchecked-structure-ref _%e117104%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e117104%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e117104%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e117104%_ '1 '#f '#f)
                       _%phi117099%_
                       _%phi117099%_
                       _%ctx117100%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e117104%_ '3 '#f '#f)
                        _%marks117105%_))
                      (if (##structure-direct-instance-of?
                           _%e117104%_
                           'gx#syntax-wrap::t)
                          (_%lp117102%_
                           (##unchecked-structure-ref _%e117104%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e117104%_ '3 '#f '#f)
                            _%marks117105%_))
                          (if (##structure-instance-of?
                               _%e117104%_
                               'gerbil#AST::t)
                              (_%lp117102%_
                               (##unchecked-structure-ref
                                _%e117104%_
                                '1
                                '#f
                                '#f)
                               _%marks117105%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx117098%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx117116%_)
        (let* ((_%phi117118%_ (gx#current-expander-phi))
               (_%ctx117120%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117116%_
           _%phi117118%_
           _%ctx117120%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx117122%_ _%phi117123%_)
        (let ((_%ctx117125%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx117122%_
           _%phi117123%_
           _%ctx117125%_))))
    (define gx#core-resolve-identifier
      (lambda _g119547_
        (let ((_g119546_ (##length _g119547_)))
          (cond ((##fx= _g119546_ 1)
                 (apply gx#core-resolve-identifier__0 _g119547_))
                ((##fx= _g119546_ 2)
                 (apply gx#core-resolve-identifier__1 _g119547_))
                ((##fx= _g119546_ 3)
                 (apply gx#core-resolve-identifier__% _g119547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g119547_))))))
    (define gx#core-resolve-binding
      (lambda (_%id117008%_
               _%phi117009%_
               _%src-phi117010%_
               _%ctx117011%_
               _%marks117012%_)
        (letrec ((_%resolve117014%_
                  (lambda (_%ctx117082%_ _%src-phi117083%_ _%key117084%_)
                    (let _%lp117086%_ ((_%ctx117088%_
                                        (gx#core-context-shift
                                         _%ctx117082%_
                                         _%phi117009%_))
                                       (_%dphi117089%_
                                        (fx- _%phi117009%_ _%src-phi117083%_)))
                      (let ((_%$e117091%_
                             (gx#core-context-resolve
                              _%ctx117088%_
                              _%key117084%_)))
                        (if _%$e117091%_
                            _%$e117091%_
                            (if (fxzero? _%dphi117089%_)
                                '#f
                                (if (fxpositive? _%dphi117089%_)
                                    (_%lp117086%_
                                     (gx#core-context-shift _%ctx117088%_ '-1)
                                     (##fx- _%dphi117089%_ '1))
                                    (_%lp117086%_
                                     (gx#core-context-shift _%ctx117088%_ '1)
                                     (##fx+ _%dphi117089%_ '1))))))))))
          (let _%lp117016%_ ((_%ctx117018%_ _%ctx117011%_)
                             (_%src-phi117019%_ _%src-phi117010%_)
                             (_%rest117020%_ _%marks117012%_))
            (let* ((_%rest117021117029%_ _%rest117020%_)
                   (_%else117023117037%_
                    (lambda ()
                      (_%resolve117014%_
                       _%ctx117018%_
                       _%src-phi117019%_
                       _%id117008%_)))
                   (_%K117025117070%_
                    (lambda (_%rest117040%_ _%hd117041%_)
                      (let* ((_%hd117042117048%_ _%hd117041%_)
                             (_%E117044117052%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd117042117048%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K117045117062%_
                              (lambda (_%subst117055%_)
                                (let ((_%$e117059%_
                                       (let ((_%key117057%_
                                              (if _%subst117055%_
                                                  (hash-get
                                                   _%subst117055%_
                                                   _%id117008%_)
                                                  '#f)))
                                         (if _%key117057%_
                                             (_%resolve117014%_
                                              _%ctx117018%_
                                              _%src-phi117019%_
                                              _%key117057%_)
                                             '#f))))
                                  (if _%$e117059%_
                                      _%$e117059%_
                                      (_%lp117016%_
                                       (##unchecked-structure-ref
                                        _%hd117041%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd117041%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest117040%_))))))
                        (if (##structure-instance-of?
                             _%hd117042117048%_
                             'gx#expander-mark::t)
                            (let* ((_%e117046117065%_
                                    (##unchecked-structure-ref
                                     _%hd117042117048%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst117068%_ _%e117046117065%_))
                              (_%K117045117062%_ _%subst117068%_))
                            (_%E117044117052%_))))))
              (if (##pair? _%rest117021117029%_)
                  (let ((_%hd117026117073%_ (##car _%rest117021117029%_))
                        (_%tl117027117075%_ (##cdr _%rest117021117029%_)))
                    (let* ((_%hd117078%_ _%hd117026117073%_)
                           (_%rest117080%_ _%tl117027117075%_))
                      (_%K117025117070%_ _%rest117080%_ _%hd117078%_)))
                  (_%else117023117037%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key116878%_
               _%val116879%_
               _%rebind?116880%_
               _%phi116881%_
               _%ctx116882%_)
        (letrec ((_%update-binding116884%_
                  (lambda (_%xval116957%_)
                    (if (or (_%rebind?116880%_
                             _%ctx116882%_
                             _%xval116957%_
                             _%val116879%_)
                            (and (##structure-direct-instance-of?
                                  _%xval116957%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval116957%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val116879%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val116879%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval116957%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val116879%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val116879%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval116957%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val116879%_
                        (if (and (##structure-direct-instance-of?
                                  _%val116879%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val116879%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval116957%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val116879%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval116957%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval116957%_
                            (if (and (##structure-direct-instance-of?
                                      _%val116879%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval116957%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key116878%_
                                 (cons (##unchecked-structure-ref
                                        _%val116879%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val116879%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval116957%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval116957%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval116957%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval116957%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key116878%_
                                 _%val116879%_
                                 _%xval116957%_))))))
                 (_%gensubst116885%_
                  (lambda (_%subst116952%_ _%id116953%_)
                    (let ((_%eid116955%_
                           (gensym (if (uninterned-symbol? _%id116953%_)
                                       '%
                                       _%id116953%_))))
                      (hash-put! _%subst116952%_ _%id116953%_ _%eid116955%_)
                      _%eid116955%_)))
                 (_%subst!116886%_
                  (lambda (_%key116888%_)
                    (let* ((_%key116889116897%_ _%key116888%_)
                           (_%else116891116905%_ (lambda () _%key116888%_))
                           (_%K116893116940%_
                            (lambda (_%mark116908%_ _%id116909%_)
                              (let* ((_%mark116910116916%_ _%mark116908%_)
                                     (_%E116912116920%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark116910116916%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K116913116932%_
                                      (lambda (_%subst116923%_)
                                        (if (not _%subst116923%_)
                                            (let ((_%subst116926%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark116908%_
                                               _%subst116926%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst116885%_
                                               _%subst116926%_
                                               _%id116909%_))
                                            (let ((_%$e116928%_
                                                   (hash-get
                                                    _%subst116923%_
                                                    _%id116909%_)))
                                              (if _%$e116928%_
                                                  _%$e116928%_
                                                  (_%gensubst116885%_
                                                   _%subst116923%_
                                                   _%id116909%_)))))))
                                (if (##structure-instance-of?
                                     _%mark116910116916%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e116914116935%_
                                            (##unchecked-structure-ref
                                             _%mark116910116916%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst116938%_ _%e116914116935%_))
                                      (_%K116913116932%_ _%subst116938%_))
                                    (_%E116912116920%_))))))
                      (if (##pair? _%key116889116897%_)
                          (let ((_%hd116894116943%_
                                 (##car _%key116889116897%_))
                                (_%tl116895116945%_
                                 (##cdr _%key116889116897%_)))
                            (let* ((_%id116948%_ _%hd116894116943%_)
                                   (_%mark116950%_ _%tl116895116945%_))
                              (_%K116893116940%_ _%mark116950%_ _%id116948%_)))
                          (_%else116891116905%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx116882%_ _%phi116881%_)
           (_%subst!116886%_ _%key116878%_)
           _%val116879%_
           _%update-binding116884%_))))
    (define gx#core-bind!__0
      (lambda (_%key116978%_ _%val116979%_)
        (let* ((_%rebind?116981%_ false)
               (_%phi116983%_ (gx#current-expander-phi))
               (_%ctx116985%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key116978%_
           _%val116979%_
           _%rebind?116981%_
           _%phi116983%_
           _%ctx116985%_))))
    (define gx#core-bind!__1
      (lambda (_%key116987%_ _%val116988%_ _%rebind?116989%_)
        (let* ((_%phi116991%_ (gx#current-expander-phi))
               (_%ctx116993%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key116987%_
           _%val116988%_
           _%rebind?116989%_
           _%phi116991%_
           _%ctx116993%_))))
    (define gx#core-bind!__2
      (lambda (_%key116995%_ _%val116996%_ _%rebind?116997%_ _%phi116998%_)
        (let ((_%ctx117000%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key116995%_
           _%val116996%_
           _%rebind?116997%_
           _%phi116998%_
           _%ctx117000%_))))
    (define gx#core-bind!
      (lambda _g119549_
        (let ((_g119548_ (##length _g119549_)))
          (cond ((##fx= _g119548_ 2) (apply gx#core-bind!__0 _g119549_))
                ((##fx= _g119548_ 3) (apply gx#core-bind!__1 _g119549_))
                ((##fx= _g119548_ 4) (apply gx#core-bind!__2 _g119549_))
                ((##fx= _g119548_ 5) (apply gx#core-bind!__% _g119549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g119549_))))))
    (define gx#core-identifier-key
      (lambda (_%stx116809%_)
        (if (symbol? _%stx116809%_)
            (let* ((_%g116811116819%_ (gx#current-expander-marks))
                   (_%else116813116827%_ (lambda () _%stx116809%_))
                   (_%K116815116832%_
                    (lambda (_%hd116830%_) (cons _%stx116809%_ _%hd116830%_))))
              (if (##pair? _%g116811116819%_)
                  (let* ((_%hd116816116835%_ (##car _%g116811116819%_))
                         (_%hd116838%_ _%hd116816116835%_))
                    (_%K116815116832%_ _%hd116838%_))
                  (_%else116813116827%_)))
            (if (gx#identifier? _%stx116809%_)
                (let* ((_%id116841%_ (gx#syntax-local-unwrap _%stx116809%_))
                       (_%eid116843%_ (gx#stx-e _%id116841%_))
                       (_%marks116845%_
                        (gx#stx-identifier-marks* _%id116841%_))
                       (_%marks116847116855%_ _%marks116845%_)
                       (_%else116849116863%_ (lambda () _%eid116843%_))
                       (_%K116851116868%_
                        (lambda (_%hd116866%_)
                          (cons _%eid116843%_ _%hd116866%_))))
                  (if (##pair? _%marks116847116855%_)
                      (let* ((_%hd116852116871%_ (##car _%marks116847116855%_))
                             (_%hd116874%_ _%hd116852116871%_))
                        (_%K116851116868%_ _%hd116874%_))
                      (_%else116849116863%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx116809%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx116748%_ _%phi116749%_)
        (letrec ((_%make-phi116751%_
                  (lambda (_%super116807%_)
                    (let ((__obj119521
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj119521
                       (##gensym 'phi)
                       _%super116807%_)
                      __obj119521)))
                 (_%make-phi/up116752%_
                  (lambda (_%ctx116802%_ _%super116803%_)
                    (let ((_%ctx+1116805%_
                           (_%make-phi116751%_ _%super116803%_)))
                      (##unchecked-structure-set!
                       _%ctx116802%_
                       _%ctx+1116805%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1116805%_
                       _%ctx116802%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1116805%_)))
                 (_%make-phi/down116753%_
                  (lambda (_%ctx116797%_ _%super116798%_)
                    (let ((_%ctx-1116800%_
                           (_%make-phi116751%_ _%super116798%_)))
                      (##unchecked-structure-set!
                       _%ctx-1116800%_
                       _%ctx116797%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx116797%_
                       _%ctx-1116800%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1116800%_)))
                 (_%shift116754%_
                  (lambda (_%ctx116780%_
                           _%delta116781%_
                           _%make-delta-context116782%_
                           _%phi116783%_
                           _%K116784%_)
                    (let ((_%$e116786%_
                           (##unchecked-structure-ref
                            _%ctx116780%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e116786%_
                          ((lambda (_%super116789%_)
                             (let* ((_%super116791%_
                                     (_%K116784%_
                                      _%super116789%_
                                      _%delta116781%_))
                                    (_%ctx+d116793%_
                                     (_%make-delta-context116782%_
                                      _%ctx116780%_
                                      _%super116791%_)))
                               (_%K116784%_
                                _%ctx+d116793%_
                                (fx- _%phi116783%_ _%delta116781%_))))
                           _%$e116786%_)
                          (error '"Bad context" _%ctx116780%_))))))
          (let _%K116756%_ ((_%ctx116758%_ _%ctx116748%_)
                            (_%phi116759%_ _%phi116749%_))
            (if (fxzero? _%phi116759%_)
                _%ctx116758%_
                (if (##structure-instance-of? _%ctx116758%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi116759%_)
                        (let ((_%$e116763%_
                               (##unchecked-structure-ref
                                _%ctx116758%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e116763%_
                              ((lambda (_%g116765116767%_)
                                 (_%K116756%_
                                  _%g116765116767%_
                                  (##fx- _%phi116759%_ '1)))
                               _%$e116763%_)
                              (_%shift116754%_
                               _%ctx116758%_
                               '1
                               _%make-phi/up116752%_
                               _%phi116759%_
                               _%K116756%_)))
                        (let ((_%$e116771%_
                               (##unchecked-structure-ref
                                _%ctx116758%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e116771%_
                              ((lambda (_%g116773116775%_)
                                 (_%K116756%_
                                  _%g116773116775%_
                                  (##fx+ _%phi116759%_ '1)))
                               _%$e116771%_)
                              (_%shift116754%_
                               _%ctx116758%_
                               '-1
                               _%make-phi/down116753%_
                               _%phi116759%_
                               _%K116756%_))))
                    _%ctx116758%_))))))
    (define gx#core-context-get
      (lambda (_%ctx116745%_ _%key116746%_)
        (hash-get
         (##unchecked-structure-ref _%ctx116745%_ '2 '#f '#f)
         _%key116746%_)))
    (define gx#core-context-put!
      (lambda (_%ctx116741%_ _%key116742%_ _%val116743%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx116741%_ '2 '#f '#f)
         _%key116742%_
         _%val116743%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx116727%_ _%key116728%_)
        (let _%lp116730%_ ((_%ctx116732%_ _%ctx116727%_))
          (let ((_%$e116734%_
                 (gx#core-context-get _%ctx116732%_ _%key116728%_)))
            (if _%$e116734%_
                _%$e116734%_
                (let ((_%$e116737%_
                       (if (##structure-instance-of?
                            _%ctx116732%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx116732%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e116737%_ (_%lp116730%_ _%$e116737%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx116716%_ _%key116717%_ _%val116718%_ _%rebind116719%_)
        (let ((_%$e116721%_ (gx#core-context-get _%ctx116716%_ _%key116717%_)))
          (if _%$e116721%_
              ((lambda (_%xval116724%_)
                 (gx#core-context-put!
                  _%ctx116716%_
                  _%key116717%_
                  (_%rebind116719%_ _%xval116724%_)))
               _%$e116721%_)
              (gx#core-context-put!
               _%ctx116716%_
               _%key116717%_
               _%val116718%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx116691%_ _%stop?116692%_)
        (let _%lp116694%_ ((_%ctx116696%_ _%ctx116691%_))
          (if (_%stop?116692%_ _%ctx116696%_)
              _%ctx116696%_
              (if (##structure-instance-of? _%ctx116696%_ 'gx#phi-context::t)
                  (_%lp116694%_
                   (##unchecked-structure-ref _%ctx116696%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx116705%_ (gx#current-expander-context))
               (_%stop?116707%_ gx#top-context?))
          (gx#core-context-top__% _%ctx116705%_ _%stop?116707%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx116709%_)
        (let ((_%stop?116711%_ gx#top-context?))
          (gx#core-context-top__% _%ctx116709%_ _%stop?116711%_))))
    (define gx#core-context-top
      (lambda _g119551_
        (let ((_g119550_ (##length _g119551_)))
          (cond ((##fx= _g119550_ 0) (apply gx#core-context-top__0 _g119551_))
                ((##fx= _g119550_ 1) (apply gx#core-context-top__1 _g119551_))
                ((##fx= _g119550_ 2) (apply gx#core-context-top__% _g119551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g119551_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx116676%_)
        (let _%lp116678%_ ((_%ctx116680%_ _%ctx116676%_))
          (if (##structure-instance-of? _%ctx116680%_ 'gx#phi-context::t)
              (_%lp116678%_
               (##unchecked-structure-ref _%ctx116680%_ '3 '#f '#f))
              _%ctx116680%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx116686%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx116686%_))))
    (define gx#core-context-root
      (lambda _g119553_
        (let ((_g119552_ (##length _g119553_)))
          (cond ((##fx= _g119552_ 0) (apply gx#core-context-root__0 _g119553_))
                ((##fx= _g119552_ 1) (apply gx#core-context-root__% _g119553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g119553_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx116658%_ . _%ignore116659%_)
        (let ((_%$e116661%_ (gx#current-expander-allow-rebind?)))
          (if _%$e116661%_
              _%$e116661%_
              (if (##structure-instance-of? _%ctx116658%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx116658%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx116658%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx116668%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx116668%_))))
    (define gx#core-context-rebind?
      (lambda _g119555_
        (let ((_g119554_ (##length _g119555_)))
          (cond ((##fx= _g119554_ 0)
                 (apply gx#core-context-rebind?__0 _g119555_))
                ((##fx= _g119554_ 1)
                 (apply gx#core-context-rebind?__% _g119555_))
                ((##fx>= _g119554_ 1)
                 (apply gx#core-context-rebind?__% _g119555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g119555_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx116641%_)
        (let ((_%$e116643%_ (gx#core-context-top__1 _%ctx116641%_)))
          (if _%$e116643%_
              ((lambda (_%ctx116646%_)
                 (if (##structure-instance-of?
                      _%ctx116646%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx116646%_ '6 '#f '#f)
                     '#f))
               _%$e116643%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx116653%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx116653%_))))
    (define gx#core-context-namespace
      (lambda _g119557_
        (let ((_g119556_ (##length _g119557_)))
          (cond ((##fx= _g119556_ 0)
                 (apply gx#core-context-namespace__0 _g119557_))
                ((##fx= _g119556_ 1)
                 (apply gx#core-context-namespace__% _g119557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g119557_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind116627%_ _%is?116628%_)
        (if (##structure-direct-instance-of?
             _%bind116627%_
             'gx#syntax-binding::t)
            (_%is?116628%_
             (##unchecked-structure-ref _%bind116627%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind116633%_)
        (let ((_%is?116635%_ gx#expander?))
          (gx#expander-binding?__% _%bind116633%_ _%is?116635%_))))
    (define gx#expander-binding?
      (lambda _g119559_
        (let ((_g119558_ (##length _g119559_)))
          (cond ((##fx= _g119558_ 1) (apply gx#expander-binding?__0 _g119559_))
                ((##fx= _g119558_ 2) (apply gx#expander-binding?__% _g119559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g119559_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind116624%_)
        (gx#expander-binding?__% _%bind116624%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind116622%_)
        (gx#expander-binding?__% _%bind116622%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind116616%_)
        (letrec ((_%direct-special-form?116618%_
                  (lambda (_%obj116620%_)
                    (##structure-direct-instance-of?
                     _%obj116620%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind116616%_
           _%direct-special-form?116618%_))))
    (define gx#special-form-binding?
      (lambda (_%bind116614%_)
        (gx#expander-binding?__% _%bind116614%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind116605%_)
        (letrec ((_%feature?116607%_
                  (lambda (_%e116609%_)
                    (let ((_%$e116611%_
                           (##structure-instance-of?
                            _%e116609%_
                            'gx#feature-expander::t)))
                      (if _%$e116611%_
                          _%$e116611%_
                          (##structure-instance-of?
                           _%e116609%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind116605%_ _%feature?116607%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind116603%_)
        (gx#expander-binding?__% _%bind116603%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id116590%_ _%bound?116591%_)
        (if (gx#identifier? _%id116590%_)
            (_%bound?116591%_ (gx#resolve-identifier__0 _%id116590%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id116596%_)
        (let ((_%bound?116598%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id116596%_ _%bound?116598%_))))
    (define gx#core-bound-identifier?
      (lambda _g119561_
        (let ((_g119560_ (##length _g119561_)))
          (cond ((##fx= _g119560_ 1)
                 (apply gx#core-bound-identifier?__0 _g119561_))
                ((##fx= _g119560_ 2)
                 (apply gx#core-bound-identifier?__% _g119561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g119561_))))))
    (define gx#core-identifier=?
      (lambda (_%x116580%_ _%y116581%_)
        (letrec ((_%y=?116583%_
                  (lambda (_%xid116587%_)
                    ((if (list? _%y116581%_) memq eq?)
                     _%xid116587%_
                     _%y116581%_))))
          (let ((_%bind116585%_ (gx#resolve-identifier__0 _%x116580%_)))
            (if (##structure-instance-of? _%bind116585%_ 'gx#binding::t)
                (_%y=?116583%_
                 (##unchecked-structure-ref _%bind116585%_ '1 '#f '#f))
                (_%y=?116583%_ (gx#stx-e _%x116580%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e116578%_)
        (if (interned-symbol? _%e116578%_)
            (string-index__0 (symbol->string _%e116578%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx116531%_ _%src116532%_ _%ctx116533%_ _%marks116534%_)
        (if (##structure? _%stx116531%_)
            (let ((_%$e116536%_ (gx#sealed-syntax-unwrap _%stx116531%_)))
              (if _%$e116536%_
                  _%$e116536%_
                  (if (gx#identifier? _%stx116531%_)
                      (let ((_%id116540%_
                             (gx#stx-unwrap__% _%stx116531%_ _%marks116534%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id116540%_ '1 '#f '#f)
                         (let ((_%$e116542%_
                                (##unchecked-structure-ref
                                 _%id116540%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e116542%_ _%$e116542%_ _%src116532%_))
                         _%ctx116533%_
                         (##unchecked-structure-ref _%id116540%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx116531%_)
                       (let ((_%$e116546%_ (gx#stx-source _%stx116531%_)))
                         (if _%$e116546%_ _%$e116546%_ _%src116532%_))
                       _%ctx116533%_
                       (reverse _%marks116534%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx116531%_
             _%src116532%_
             _%ctx116533%_
             (reverse _%marks116534%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx116552%_)
        (let* ((_%src116554%_ '#f)
               (_%ctx116556%_ (gx#current-expander-context))
               (_%marks116558%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116552%_
           _%src116554%_
           _%ctx116556%_
           _%marks116558%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx116560%_ _%src116561%_)
        (let* ((_%ctx116563%_ (gx#current-expander-context))
               (_%marks116565%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116560%_
           _%src116561%_
           _%ctx116563%_
           _%marks116565%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx116567%_ _%src116568%_ _%ctx116569%_)
        (let ((_%marks116571%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx116567%_
           _%src116568%_
           _%ctx116569%_
           _%marks116571%_))))
    (define gx#core-quote-syntax
      (lambda _g119563_
        (let ((_g119562_ (##length _g119563_)))
          (cond ((##fx= _g119562_ 1) (apply gx#core-quote-syntax__0 _g119563_))
                ((##fx= _g119562_ 2) (apply gx#core-quote-syntax__1 _g119563_))
                ((##fx= _g119562_ 3) (apply gx#core-quote-syntax__2 _g119563_))
                ((##fx= _g119562_ 4) (apply gx#core-quote-syntax__% _g119563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g119563_))))))
    (define gx#core-cons
      (lambda (_%hd116527%_ _%tl116528%_)
        (cons (gx#core-quote-syntax__0 _%hd116527%_) _%tl116528%_)))
    (define gx#core-list
      (lambda (_%hd116524%_ . _%rest116525%_)
        (cons (gx#core-quote-syntax__0 _%hd116524%_) _%rest116525%_)))
    (define gx#core-cons*
      (lambda (_%hd116521%_ . _%rest116522%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd116521%_) _%rest116522%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path116490%_ _%rel116491%_)
        (let ((_%path116508%_ (gx#stx-e _%stx-path116490%_))
              (_%reldir116509%_
               (let _%lp116493%_ ((_%relsrc116495%_
                                   (let ((_%$e116505%_
                                          (gx#stx-source _%stx-path116490%_)))
                                     (if _%$e116505%_
                                         _%$e116505%_
                                         _%rel116491%_))))
                 (if (##structure-instance-of? _%relsrc116495%_ 'gerbil#AST::t)
                     (_%lp116493%_
                      (let ((_%$e116498%_ (gx#stx-source _%relsrc116495%_)))
                        (if _%$e116498%_
                            _%$e116498%_
                            (gx#stx-e _%relsrc116495%_))))
                     (if (source-location-path? _%relsrc116495%_)
                         (path-directory
                          (source-location-path _%relsrc116495%_))
                         (if (string? _%relsrc116495%_)
                             (path-directory _%relsrc116495%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path116508%_ (path-normalize _%reldir116509%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path116514%_)
        (let ((_%rel116516%_ '#f))
          (gx#core-resolve-path__% _%stx-path116514%_ _%rel116516%_))))
    (define gx#core-resolve-path
      (lambda _g119565_
        (let ((_g119564_ (##length _g119565_)))
          (cond ((##fx= _g119564_ 1) (apply gx#core-resolve-path__0 _g119565_))
                ((##fx= _g119564_ 2) (apply gx#core-resolve-path__% _g119565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g119565_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr116446%_ _%ctx116447%_)
        (let* ((_%repr116448116455%_ _%repr116446%_)
               (_%E116450116459%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr116448116455%_
                         '([phi . subs]))
                  '#!void))
               (_%K116451116467%_
                (lambda (_%subs116462%_ _%phi116463%_)
                  (let ((_%subst116465%_
                         (if (null? _%subs116462%_)
                             '#f
                             (list->hash-table-eq _%subs116462%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst116465%_
                     _%ctx116447%_
                     _%phi116463%_
                     '#f)))))
          (if (##pair? _%repr116448116455%_)
              (let ((_%hd116452116470%_ (##car _%repr116448116455%_))
                    (_%tl116453116472%_ (##cdr _%repr116448116455%_)))
                (let* ((_%phi116475%_ _%hd116452116470%_)
                       (_%subs116477%_ _%tl116453116472%_))
                  (_%K116451116467%_ _%subs116477%_ _%phi116475%_)))
              (_%E116450116459%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr116482%_)
        (let ((_%ctx116484%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr116482%_ _%ctx116484%_))))
    (define gx#core-deserialize-mark
      (lambda _g119567_
        (let ((_g119566_ (##length _g119567_)))
          (cond ((##fx= _g119566_ 1)
                 (apply gx#core-deserialize-mark__0 _g119567_))
                ((##fx= _g119566_ 2)
                 (apply gx#core-deserialize-mark__% _g119567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g119567_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx116443%_)
        (gx#stx-rewrap _%stx116443%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx116441%_)
        (gx#stx-unwrap__% _%stx116441%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx116411%_)
        (let* ((_%g116412116420%_ (gx#current-expander-marks))
               (_%else116414116428%_ (lambda () _%stx116411%_))
               (_%K116416116433%_
                (lambda (_%hd116431%_)
                  (gx#stx-apply-mark _%stx116411%_ _%hd116431%_))))
          (if (##pair? _%g116412116420%_)
              (let* ((_%hd116417116436%_ (##car _%g116412116420%_))
                     (_%hd116439%_ _%hd116417116436%_))
                (_%K116416116433%_ _%hd116439%_))
              (_%else116414116428%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx116396%_ _%E116397%_)
        (let ((_%bind116399%_ (gx#resolve-identifier__0 _%stx116396%_)))
          (if (##structure-direct-instance-of?
               _%bind116399%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind116399%_ '4 '#f '#f)
              (_%E116397%_ _%stx116396%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx116404%_)
        (let ((_%E116406%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx116404%_ _%E116406%_))))
    (define gx#syntax-local-e
      (lambda _g119569_
        (let ((_g119568_ (##length _g119569_)))
          (cond ((##fx= _g119568_ 1) (apply gx#syntax-local-e__0 _g119569_))
                ((##fx= _g119568_ 2) (apply gx#syntax-local-e__% _g119569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g119569_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx116380%_ _%E116381%_)
        (let ((_%e116383%_ (gx#syntax-local-e__% _%stx116380%_ _%E116381%_)))
          (if (##structure-instance-of? _%e116383%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e116383%_ '1 '#f '#f)
              _%e116383%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx116388%_)
        (let ((_%E116390%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx116388%_ _%E116390%_))))
    (define gx#syntax-local-value
      (lambda _g119571_
        (let ((_g119570_ (##length _g119571_)))
          (cond ((##fx= _g119570_ 1)
                 (apply gx#syntax-local-value__0 _g119571_))
                ((##fx= _g119570_ 2)
                 (apply gx#syntax-local-value__% _g119571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g119571_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx116377%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx116377%_)))))
