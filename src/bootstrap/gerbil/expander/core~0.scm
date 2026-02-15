(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1771178564)
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
      (lambda _%$args178196%_
        (apply make-instance gx#expander-context::t _%$args178196%_)))
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
      (lambda _%$args178193%_
        (apply make-instance gx#root-context::t _%$args178193%_)))
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
      (lambda _%$args178190%_
        (apply make-instance gx#phi-context::t _%$args178190%_)))
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
      (lambda _%$args178187%_
        (apply make-instance gx#top-context::t _%$args178187%_)))
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
      (lambda _%$args178184%_
        (apply make-instance gx#module-context::t _%$args178184%_)))
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
      (lambda _%$args178181%_
        (apply make-instance gx#prelude-context::t _%$args178181%_)))
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
      (lambda _%$args178178%_
        (apply make-instance gx#local-context::t _%$args178178%_)))
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
      (lambda (_%self178151%_ _%id178152%_ _%super178153%_)
        (let ((_%self178156%_ _%self178151%_))
          (if (##fx< '3 (##structure-length _%self178156%_))
              (begin
                (##unchecked-structure-set!
                 _%self178156%_
                 _%id178152%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178156%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178156%_
                 _%super178153%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self178156%_
                     '3
                     (##structure-length _%self178156%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self178169%_ _%id178170%_)
        (let ((_%super178172%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self178169%_
           _%id178170%_
           _%super178172%_))))
    (define gx#phi-context:::init!
      (lambda _g178238_
        (let ((_g178239_ (##length _g178238_)))
          (cond ((##fx= _g178239_ 2)
                 (apply gx#phi-context:::init!__0 _g178238_))
                ((##fx= _g178239_ 3)
                 (apply gx#phi-context:::init!__% _g178238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g178238_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self178004%_ _%super178005%_)
        (let ((_%self178008%_ _%self178004%_))
          (if (##fx< '3 (##structure-length _%self178008%_))
              (begin
                (##unchecked-structure-set!
                 _%self178008%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178008%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self178008%_
                 _%super178005%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self178008%_
                     '3
                     (##structure-length _%self178008%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self178021%_)
        (let ((_%super178023%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self178021%_ _%super178023%_))))
    (define gx#local-context:::init!
      (lambda _g178240_
        (let ((_g178241_ (##length _g178240_)))
          (cond ((##fx= _g178241_ 1)
                 (apply gx#local-context:::init!__0 _g178240_))
                ((##fx= _g178241_ 2)
                 (apply gx#local-context:::init!__% _g178240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g178240_))))))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args177878%_
        (apply make-instance gx#binding::t _%$args177878%_)))
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
      (lambda (_%self177861%_ _%id177862%_ _%key177863%_ _%phi177864%_)
        (let ((_%self177867%_ _%self177861%_))
          (##unchecked-structure-set! _%self177867%_ _%id177862%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self177867%_ _%key177863%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self177867%_
           _%phi177864%_
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args177736%_
        (apply make-instance gx#runtime-binding::t _%$args177736%_)))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args177733%_
        (apply make-instance gx#local-binding::t _%$args177733%_)))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args177730%_
        (apply make-instance gx#top-binding::t _%$args177730%_)))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args177727%_
        (apply make-instance gx#module-binding::t _%$args177727%_)))
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
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args177724%_
        (apply make-instance gx#extern-binding::t _%$args177724%_)))
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
      (lambda (_%self177340%_
               _%id177341%_
               _%key177342%_
               _%phi177343%_
               _%ctx177344%_)
        (let ((_%self177347%_ _%self177340%_))
          (gx#binding:::init!
           _%self177347%_
           _%id177341%_
           _%key177342%_
           _%phi177343%_)
          (##unchecked-structure-set!
           _%self177347%_
           _%ctx177344%_
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args177093%_
        (apply make-instance gx#syntax-binding::t _%$args177093%_)))
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args177090%_
        (apply make-instance gx#import-binding::t _%$args177090%_)))
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
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args177087%_
        (apply make-instance gx#alias-binding::t _%$args177087%_)))
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
      (lambda (_%self177069%_
               _%id177070%_
               _%key177071%_
               _%phi177072%_
               _%e177073%_)
        (let ((_%self177076%_ _%self177069%_))
          (gx#binding:::init!
           _%self177076%_
           _%id177070%_
           _%key177071%_
           _%phi177072%_)
          (##unchecked-structure-set! _%self177076%_ _%e177073%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self176927%_
               _%id176928%_
               _%key176929%_
               _%phi176930%_
               _%e176931%_
               _%ctx176932%_
               _%weak?176933%_)
        (let ((_%self176936%_ _%self176927%_))
          (gx#binding:::init!
           _%self176936%_
           _%id176928%_
           _%key176929%_
           _%phi176930%_)
          (##unchecked-structure-set! _%self176936%_ _%e176931%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self176936%_ _%ctx176932%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self176936%_
           _%weak?176933%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self176787%_
               _%id176788%_
               _%key176789%_
               _%phi176790%_
               _%e176791%_)
        (let ((_%self176794%_ _%self176787%_))
          (gx#binding:::init!
           _%self176794%_
           _%id176788%_
           _%key176789%_
           _%phi176790%_)
          (##unchecked-structure-set! _%self176794%_ _%e176791%_ '5 '#f '#f))))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args176662%_
        (apply make-instance gx#expander::t _%$args176662%_)))
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
      (lambda _%$args176659%_
        (apply make-instance gx#core-expander::t _%$args176659%_)))
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
      (lambda _%$args176656%_
        (apply make-instance gx#expression-form::t _%$args176656%_)))
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
      (lambda _%$args176653%_
        (apply make-instance gx#special-form::t _%$args176653%_)))
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
      (lambda _%$args176650%_
        (apply make-instance gx#definition-form::t _%$args176650%_)))
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
      (lambda _%$args176647%_
        (apply make-instance gx#top-special-form::t _%$args176647%_)))
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
      (lambda _%$args176644%_
        (apply make-instance gx#module-special-form::t _%$args176644%_)))
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
      (lambda _%$args176641%_
        (apply make-instance gx#feature-expander::t _%$args176641%_)))
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
      (lambda _%$args176638%_
        (apply make-instance gx#private-feature-expander::t _%$args176638%_)))
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
      (lambda _%$args176635%_
        (apply make-instance gx#reserved-expander::t _%$args176635%_)))
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
      (lambda _%$args176632%_
        (apply make-instance gx#macro-expander::t _%$args176632%_)))
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
      (lambda _%$args176629%_
        (apply make-instance gx#rename-macro-expander::t _%$args176629%_)))
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
      (lambda _%$args176626%_
        (apply make-instance gx#user-expander::t _%$args176626%_)))
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
      (lambda _%$args176623%_
        (apply make-instance gx#expander-mark::t _%$args176623%_)))
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
      (lambda (_%ctx176607%_
               _%message176608%_
               _%stx176609%_
               .
               _%details176610%_)
        (let ((_%ctx176621%_
               (let ((_%$e176612%_ _%ctx176607%_))
                 (if _%$e176612%_
                     _%$e176612%_
                     (let ((_%$e176615%_ (gx#core-context-top__0)))
                       (if _%$e176615%_
                           ((lambda (_%ctx176618%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx176618%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e176615%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message176608%_
                  (cons _%stx176609%_ _%details176610%_)
                  _%ctx176621%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx176594%_ _%expression?176595%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx176594%_ _%expression?176595%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx176600%_)
        (let ((_%expression?176602%_ '#f))
          (gx#eval-syntax__% _%stx176600%_ _%expression?176602%_))))
    (define gx#eval-syntax
      (lambda _g178242_
        (let ((_g178243_ (##length _g178242_)))
          (cond ((##fx= _g178243_ 1) (apply gx#eval-syntax__0 _g178242_))
                ((##fx= _g178243_ 2) (apply gx#eval-syntax__% _g178242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g178242_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx176579%_ _%expression?176580%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx176579%_ _%expression?176580%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx176586%_)
        (let ((_%expression?176588%_ '#f))
          (gx#eval-syntax+1__% _%stx176586%_ _%expression?176588%_))))
    (define gx#eval-syntax+1
      (lambda _g178244_
        (let ((_g178245_ (##length _g178244_)))
          (cond ((##fx= _g178245_ 1) (apply gx#eval-syntax+1__0 _g178244_))
                ((##fx= _g178245_ 2) (apply gx#eval-syntax+1__% _g178244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g178244_))))))
    (define gx#eval-expression+1
      (lambda (_%stx176576%_) (gx#eval-syntax+1__% _%stx176576%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx176574%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx176574%_))))
    (define gx#core-expand__%
      (lambda (_%stx176561%_ _%expression?176562%_)
        (if _%expression?176562%_
            (gx#core-expand-expression _%stx176561%_)
            (gx#core-expand-top _%stx176561%_))))
    (define gx#core-expand__0
      (lambda (_%stx176567%_)
        (let ((_%expression?176569%_ '#f))
          (gx#core-expand__% _%stx176567%_ _%expression?176569%_))))
    (define gx#core-expand
      (lambda _g178246_
        (let ((_g178247_ (##length _g178246_)))
          (cond ((##fx= _g178247_ 1) (apply gx#core-expand__0 _g178246_))
                ((##fx= _g178247_ 2) (apply gx#core-expand__% _g178246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g178246_))))))
    (define gx#core-expand-top
      (lambda (_%stx176528%_)
        (let* ((_%stx176530%_ (gx#core-expand*__0 _%stx176528%_))
               (_%e176531176538%_ _%stx176530%_)
               (_%E176533176542%_
                (lambda () (gx#core-expand-expression _%stx176530%_)))
               (_%E176532176556%_
                (lambda ()
                  (if (gx#stx-pair? _%e176531176538%_)
                      (let ((_%e176534176546%_
                             (gx#syntax-e _%e176531176538%_)))
                        (let ((_%hd176535176549%_ (##car _%e176534176546%_))
                              (_%tl176536176551%_ (##cdr _%e176534176546%_)))
                          (let ((_%form176554%_ _%hd176535176549%_))
                            (if (gx#core-bound-identifier?__0 _%form176554%_)
                                _%stx176530%_
                                (_%E176533176542%_)))))
                      (_%E176533176542%_)))))
          (_%E176532176556%_))))
    (define gx#core-expand-expression
      (lambda (_%stx176460%_)
        (letrec ((_%sealed-expression?176462%_
                  (lambda (_%hd176498%_)
                    (if (gx#sealed-syntax? _%hd176498%_)
                        (let* ((_%e176499176506%_ _%hd176498%_)
                               (_%E176501176510%_ (lambda () '#f))
                               (_%E176500176524%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e176499176506%_)
                                      (let ((_%e176502176514%_
                                             (gx#syntax-e _%e176499176506%_)))
                                        (let ((_%hd176503176517%_
                                               (##car _%e176502176514%_))
                                              (_%tl176504176519%_
                                               (##cdr _%e176502176514%_)))
                                          (let ((_%form176522%_
                                                 _%hd176503176517%_))
                                            (gx#core-bound-identifier?__%
                                             _%form176522%_
                                             gx#expression-form-binding?))))
                                      (_%E176501176510%_)))))
                          (_%E176500176524%_))
                        '#f)))
                 (_%illegal-expression176463%_
                  (lambda (_%hd176495%_ . _%_176496%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx176460%_
                     _%hd176495%_)))
                 (_%expand-e176464%_
                  (lambda (_%form176487%_ _%hd176488%_)
                    (let ((_%bind176490%_
                           (if (##structure-instance-of?
                                _%form176487%_
                                'gx#binding::t)
                               _%form176487%_
                               (gx#resolve-identifier__0 _%form176487%_))))
                      (if (gx#core-expander-binding? _%bind176490%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind176490%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd176488%_
                            (gx#stx-source _%stx176460%_)))
                          (if (##structure-direct-instance-of?
                               _%bind176490%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind176490%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd176488%_
                                 (gx#stx-source _%stx176460%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx176460%_
                               _%form176487%_)))))))
          (let ((_%hd176466%_ (gx#core-expand-head _%stx176460%_)))
            (if (_%sealed-expression?176462%_ _%hd176466%_)
                _%hd176466%_
                (if (gx#stx-pair? _%hd176466%_)
                    (let* ((_%form176470%_ (gx#stx-car _%hd176466%_))
                           (_%bind176472%_
                            (if (gx#identifier? _%form176470%_)
                                (gx#resolve-identifier__0 _%form176470%_)
                                '#f)))
                      (if (or (not _%bind176472%_)
                              (not (gx#core-expander-binding? _%bind176472%_)))
                          (_%expand-e176464%_
                           '%%app
                           (cons '%%app _%hd176466%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind176472%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd176466%_
                               _%illegal-expression176463%_)
                              (if (gx#expression-form-binding? _%bind176472%_)
                                  (_%expand-e176464%_
                                   _%bind176472%_
                                   _%hd176466%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind176472%_)
                                      (gx#core-expand-expression
                                       (_%expand-e176464%_
                                        _%bind176472%_
                                        _%hd176466%_))
                                      (_%illegal-expression176463%_
                                       _%hd176466%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd176466%_)
                        (_%illegal-expression176463%_ _%hd176466%_)
                        (if (gx#identifier? _%hd176466%_)
                            (_%expand-e176464%_
                             '%%ref
                             (cons '%%ref (cons _%hd176466%_ '())))
                            (if (gx#stx-datum? _%hd176466%_)
                                (_%expand-e176464%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd176466%_ '())))
                                (_%illegal-expression176463%_
                                 _%hd176466%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx176455%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx176458%_ (gx#core-expand-expression _%stx176455%_)))
             (values _%stx176458%_ (gx#eval-syntax* _%stx176458%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx176436%_ _%stop?176437%_)
        (let _%lp176439%_ ((_%stx176441%_ _%stx176436%_))
          (if (_%stop?176437%_ _%stx176441%_)
              _%stx176441%_
              (let ((_%rstx176443%_ (gx#core-expand1 _%stx176441%_)))
                (if (eq? _%stx176441%_ _%rstx176443%_)
                    _%stx176441%_
                    (_%lp176439%_ _%rstx176443%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx176448%_)
        (let ((_%stop?176450%_ false))
          (gx#core-expand*__% _%stx176448%_ _%stop?176450%_))))
    (define gx#core-expand*
      (lambda _g178248_
        (let ((_g178249_ (##length _g178248_)))
          (cond ((##fx= _g178249_ 1) (apply gx#core-expand*__0 _g178248_))
                ((##fx= _g178249_ 2) (apply gx#core-expand*__% _g178248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g178248_))))))
    (define gx#core-expand1
      (lambda (_%stx176388%_)
        (letrec ((_%step176390%_
                  (lambda (_%hd176427%_)
                    (let ((_%bind176429%_
                           (gx#resolve-identifier__0 _%hd176427%_)))
                      (if (##structure-instance-of?
                           _%bind176429%_
                           'gx#runtime-binding::t)
                          _%stx176388%_
                          (if (##structure-direct-instance-of?
                               _%bind176429%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind176429%_
                                '5
                                '#f
                                '#f)
                               _%stx176388%_)
                              (if (not _%bind176429%_)
                                  _%stx176388%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx176388%_))))))))
          (let* ((_%e176391176399%_ _%stx176388%_)
                 (_%E176397176403%_ (lambda () _%stx176388%_))
                 (_%E176393176409%_
                  (lambda ()
                    (let ((_%hd176407%_ _%e176391176399%_))
                      (if (gx#identifier? _%hd176407%_)
                          (_%step176390%_ _%hd176407%_)
                          (_%E176397176403%_)))))
                 (_%E176392176423%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176391176399%_)
                        (let ((_%e176394176413%_
                               (gx#syntax-e _%e176391176399%_)))
                          (let ((_%hd176395176416%_ (##car _%e176394176413%_))
                                (_%tl176396176418%_ (##cdr _%e176394176413%_)))
                            (let ((_%hd176421%_ _%hd176395176416%_))
                              (if (gx#identifier? _%hd176421%_)
                                  (_%step176390%_ _%hd176421%_)
                                  (_%E176393176409%_)))))
                        (_%E176393176409%_)))))
            (_%E176392176423%_)))))
    (define gx#core-expand-head
      (lambda (_%stx176354%_)
        (letrec ((_%stop?176356%_
                  (lambda (_%stx176358%_)
                    (let* ((_%e176359176366%_ _%stx176358%_)
                           (_%E176361176370%_ (lambda () '#f))
                           (_%E176360176384%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176359176366%_)
                                  (let ((_%e176362176374%_
                                         (gx#syntax-e _%e176359176366%_)))
                                    (let ((_%hd176363176377%_
                                           (##car _%e176362176374%_))
                                          (_%tl176364176379%_
                                           (##cdr _%e176362176374%_)))
                                      (let ((_%hd176382%_ _%hd176363176377%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd176382%_))))
                                  (_%E176361176370%_)))))
                      (_%E176360176384%_)))))
          (gx#core-expand*__% _%stx176354%_ _%stop?176356%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx176160%_
               _%expand-special176161%_
               _%begin-form176162%_
               _%expand-e176163%_)
        (letrec ((_%expand-splice176165%_
                  (lambda (_%hd176328%_
                           _%body176329%_
                           _%rest176330%_
                           _%r176331%_)
                    (if (gx#stx-list? _%body176329%_)
                        (_%K176169%_
                         (gx#stx-foldr cons _%rest176330%_ _%body176329%_)
                         _%r176331%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx176160%_
                         _%hd176328%_))))
                 (_%expand-cond-expand176166%_
                  (lambda (_%hd176324%_ _%rest176325%_ _%r176326%_)
                    (_%K176169%_
                     (cons (gx#core-expand-cond-expand% _%hd176324%_)
                           _%rest176325%_)
                     _%r176326%_)))
                 (_%expand-include176167%_
                  (lambda (_%hd176273%_ _%rest176274%_ _%r176275%_)
                    (let* ((_%e176276176286%_ _%hd176273%_)
                           (_%E176278176290%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176276176286%_)))
                           (_%E176277176320%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176276176286%_)
                                  (let ((_%e176279176294%_
                                         (gx#syntax-e _%e176276176286%_)))
                                    (let ((_%hd176280176297%_
                                           (##car _%e176279176294%_))
                                          (_%tl176281176299%_
                                           (##cdr _%e176279176294%_)))
                                      (if (gx#stx-pair? _%tl176281176299%_)
                                          (let ((_%e176282176302%_
                                                 (gx#syntax-e
                                                  _%tl176281176299%_)))
                                            (let ((_%hd176283176305%_
                                                   (##car _%e176282176302%_))
                                                  (_%tl176284176307%_
                                                   (##cdr _%e176282176302%_)))
                                              (let ((_%path176310%_
                                                     _%hd176283176305%_))
                                                (if (gx#stx-null?
                                                     _%tl176284176307%_)
                                                    (if (gx#stx-string?
                                                         _%path176310%_)
                                                        (let* ((_%rpath176312%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path176310%_
                         (gx#stx-source _%hd176273%_)))
                       (_%block176314%_
                        (gx#core-expand-include%__%
                         _%hd176273%_
                         _%rpath176312%_))
                       (_%rbody176317%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block176314%_
                            _%expand-special176161%_
                            '#f
                            _%expand-e176163%_))
                         gx#current-expander-path
                         (cons _%rpath176312%_ (gx#current-expander-path)))))
                  (_%K176169%_
                   _%rest176274%_
                   (foldr__0 cons _%r176275%_ _%rbody176317%_)))
                (_%E176278176290%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176278176290%_)))))
                                          (_%E176278176290%_))))
                                  (_%E176278176290%_)))))
                      (_%E176277176320%_))))
                 (_%expand-expression176168%_
                  (lambda (_%hd176269%_ _%rest176270%_ _%r176271%_)
                    (_%K176169%_
                     _%rest176270%_
                     (cons (_%expand-e176163%_ _%hd176269%_) _%r176271%_))))
                 (_%K176169%_
                  (lambda (_%rest176199%_ _%r176200%_)
                    (let* ((_%e176201176208%_ _%rest176199%_)
                           (_%E176203176212%_
                            (lambda ()
                              (if _%begin-form176162%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form176162%_
                                    (reverse _%r176200%_))
                                   (gx#stx-source _%stx176160%_))
                                  _%r176200%_)))
                           (_%E176202176265%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176201176208%_)
                                  (let ((_%e176204176216%_
                                         (gx#syntax-e _%e176201176208%_)))
                                    (let ((_%hd176205176219%_
                                           (##car _%e176204176216%_))
                                          (_%tl176206176221%_
                                           (##cdr _%e176204176216%_)))
                                      (let* ((_%hd176224%_ _%hd176205176219%_)
                                             (_%rest176226%_
                                              _%tl176206176221%_)
                                             (_%hd176228%_
                                              (gx#core-expand-head
                                               _%hd176224%_))
                                             (_%e176229176236%_ _%hd176228%_)
                                             (_%E176231176240%_
                                              (lambda ()
                                                (_%expand-expression176168%_
                                                 _%hd176228%_
                                                 _%rest176226%_
                                                 _%r176200%_)))
                                             (_%E176230176261%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e176229176236%_)
                                                    (let ((_%e176232176244%_
                                                           (gx#syntax-e
                                                            _%e176229176236%_)))
                                                      (let ((_%hd176233176247%_
                                                             (##car _%e176232176244%_))
                                                            (_%tl176234176249%_
                                                             (##cdr _%e176232176244%_)))
                                                        (let* ((_%form176252%_
                                                                _%hd176233176247%_)
                                                               (_%body176254%_
                                                                _%tl176234176249%_)
                                                               (_%bind176256%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form176252%_)
                            (gx#resolve-identifier__0 _%form176252%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind176256%_)
                      (let ((_%$e176258%_
                             (##unchecked-structure-ref
                              _%bind176256%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e176258%_)
                            (_%expand-splice176165%_
                             _%hd176228%_
                             _%body176254%_
                             _%rest176226%_
                             _%r176200%_)
                            (if (eq? '%#cond-expand _%$e176258%_)
                                (_%expand-cond-expand176166%_
                                 _%hd176228%_
                                 _%rest176226%_
                                 _%r176200%_)
                                (if (eq? '%#include _%$e176258%_)
                                    (_%expand-include176167%_
                                     _%hd176228%_
                                     _%rest176226%_
                                     _%r176200%_)
                                    (_%expand-special176161%_
                                     _%hd176228%_
                                     _%K176169%_
                                     _%rest176226%_
                                     _%r176200%_)))))
                      (_%expand-expression176168%_
                       _%hd176228%_
                       _%rest176226%_
                       _%r176200%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176231176240%_)))))
                                        (_%E176230176261%_))))
                                  (_%E176203176212%_)))))
                      (_%E176202176265%_)))))
          (let* ((_%e176170176177%_ _%stx176160%_)
                 (_%E176172176181%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176170176177%_)))
                 (_%E176171176195%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176170176177%_)
                        (let ((_%e176173176185%_
                               (gx#syntax-e _%e176170176177%_)))
                          (let ((_%hd176174176188%_ (##car _%e176173176185%_))
                                (_%tl176175176190%_ (##cdr _%e176173176185%_)))
                            (let ((_%body176193%_ _%tl176175176190%_))
                              (if (gx#stx-list? _%body176193%_)
                                  (_%K176169%_ _%body176193%_ '())
                                  (_%E176172176181%_)))))
                        (_%E176172176181%_)))))
            (_%E176171176195%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx176336%_ _%expand-special176337%_)
        (let* ((_%begin-form176339%_ '%#begin)
               (_%expand-e176341%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx176336%_
           _%expand-special176337%_
           _%begin-form176339%_
           _%expand-e176341%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx176343%_ _%expand-special176344%_ _%begin-form176345%_)
        (let ((_%expand-e176347%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx176343%_
           _%expand-special176344%_
           _%begin-form176345%_
           _%expand-e176347%_))))
    (define gx#core-expand-block
      (lambda _g178250_
        (let ((_g178251_ (##length _g178250_)))
          (cond ((##fx= _g178251_ 2) (apply gx#core-expand-block__0 _g178250_))
                ((##fx= _g178251_ 3) (apply gx#core-expand-block__1 _g178250_))
                ((##fx= _g178251_ 4) (apply gx#core-expand-block__% _g178250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g178250_))))))
    (define gx#core-expand-block*
      (lambda (_%stx176108%_ _%expand-special176109%_)
        (let* ((_%g176110176121%_
                (gx#core-expand-block__1
                 _%stx176108%_
                 _%expand-special176109%_
                 '#f))
               (_%E176114176125%_
                (lambda ()
                  (error '"No clause matching"
                         _%g176110176121%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K176119176156%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx176108%_)))
                (_%K176116176142%_ (lambda (_%expr176140%_) _%expr176140%_))
                (_%K176115176131%_
                 (lambda (_%body176129%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body176129%_))
                    (gx#stx-source _%stx176108%_)))))
            (let ((_%try-match176112176152%_
                   (lambda ()
                     (if (pair? _%g176110176121%_)
                         (let ((_%tl176118176147%_ (##cdr _%g176110176121%_))
                               (_%hd176117176145%_ (##car _%g176110176121%_)))
                           (if (null? _%tl176118176147%_)
                               (let ((_%expr176150%_ _%hd176117176145%_))
                                 (_%K176116176142%_ _%expr176150%_))
                               (let ((_%body176134%_ _%g176110176121%_))
                                 (_%K176115176131%_ _%body176134%_))))
                         (let ((_%body176134%_ _%g176110176121%_))
                           (_%K176115176131%_ _%body176134%_))))))
              (if (null? _%g176110176121%_)
                  (_%K176119176156%_)
                  (_%try-match176112176152%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx175934%_)
        (letrec ((_%satisfied?175936%_
                  (lambda (_%condition176037%_)
                    (let* ((_%e176038176053%_ _%condition176037%_)
                           (_%E176048176057%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e176038176053%_)))
                           (_%E176041176076%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176038176053%_)
                                  (let ((_%e176049176061%_
                                         (gx#syntax-e _%e176038176053%_)))
                                    (let ((_%hd176050176064%_
                                           (##car _%e176049176061%_))
                                          (_%tl176051176066%_
                                           (##cdr _%e176049176061%_)))
                                      (let* ((_%combinator176069%_
                                              _%hd176050176064%_)
                                             (_%body176071%_
                                              _%tl176051176066%_))
                                        (if (gx#stx-list? _%body176071%_)
                                            (let ((_%$e176073%_
                                                   (gx#stx-e
                                                    _%combinator176069%_)))
                                              (if (eq? 'not _%$e176073%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?175936%_
                                                        _%body176071%_))
                                                  (if (eq? 'and _%$e176073%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?175936%_
                                                       _%body176071%_)
                                                      (if (eq? 'or
                                                               _%$e176073%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?175936%_
                                                           _%body176071%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e176073%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body176071%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx175934%_
                       _%combinator176069%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E176048176057%_)))))
                                  (_%E176048176057%_))))
                           (_%E176040176098%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176038176053%_)
                                  (let ((_%e176042176080%_
                                         (gx#syntax-e _%e176038176053%_)))
                                    (let ((_%hd176043176083%_
                                           (##car _%e176042176080%_))
                                          (_%tl176044176085%_
                                           (##cdr _%e176042176080%_)))
                                      (if (and (gx#identifier?
                                                _%hd176043176083%_)
                                               (gx#core-identifier=?
                                                _%hd176043176083%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl176044176085%_)
                                              (let ((_%e176045176088%_
                                                     (gx#syntax-e
                                                      _%tl176044176085%_)))
                                                (let ((_%hd176046176091%_
                                                       (##car _%e176045176088%_))
                                                      (_%tl176047176093%_
                                                       (##cdr _%e176045176088%_)))
                                                  (let ((_%expr176096%_
                                                         _%hd176046176091%_))
                                                    (if (gx#stx-null?
                                                         _%tl176047176093%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr176096%_)
                                                        (_%E176041176076%_)))))
                                              (_%E176041176076%_))
                                          (_%E176041176076%_))))
                                  (_%E176041176076%_))))
                           (_%E176039176104%_
                            (lambda ()
                              (let ((_%id176102%_ _%e176038176053%_))
                                (if (gx#identifier? _%id176102%_)
                                    (gx#core-bound-identifier?__%
                                     _%id176102%_
                                     gx#feature-binding?)
                                    (_%E176040176098%_))))))
                      (_%E176039176104%_))))
                 (_%loop175937%_
                  (lambda (_%rest175967%_)
                    (let* ((_%e175968175976%_ _%rest175967%_)
                           (_%E175974175980%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e175968175976%_)))
                           (_%E175970175984%_
                            (lambda ()
                              (if (gx#stx-null? _%e175968175976%_)
                                  '()
                                  (_%E175974175980%_))))
                           (_%E175969176033%_
                            (lambda ()
                              (if (gx#stx-pair? _%e175968175976%_)
                                  (let ((_%e175971175988%_
                                         (gx#syntax-e _%e175968175976%_)))
                                    (let ((_%hd175972175991%_
                                           (##car _%e175971175988%_))
                                          (_%tl175973175993%_
                                           (##cdr _%e175971175988%_)))
                                      (let* ((_%hd175996%_ _%hd175972175991%_)
                                             (_%rest175998%_
                                              _%tl175973175993%_)
                                             (_%e175999176006%_ _%hd175996%_)
                                             (_%E176001176010%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e175999176006%_)))
                                             (_%E176000176029%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e175999176006%_)
                                                    (let ((_%e176002176014%_
                                                           (gx#syntax-e
                                                            _%e175999176006%_)))
                                                      (let ((_%hd176003176017%_
                                                             (##car _%e176002176014%_))
                                                            (_%tl176004176019%_
                                                             (##cdr _%e176002176014%_)))
                                                        (let* ((_%condition176022%_
                                                                _%hd176003176017%_)
                                                               (_%body176024%_
                                                                _%tl176004176019%_))
                                                          (if (gx#stx-eq?
                                                               _%condition176022%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest175998%_)
                          _%body176024%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx175934%_
                           _%hd175996%_))
                      (if (_%satisfied?175936%_ _%condition176022%_)
                          _%body176024%_
                          (_%loop175937%_ _%rest175998%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E176001176010%_)))))
                                        (_%E176000176029%_))))
                                  (_%E175970175984%_)))))
                      (_%E175969176033%_)))))
          (let* ((_%e175938175945%_ _%stx175934%_)
                 (_%E175940175949%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e175938175945%_)))
                 (_%E175939175963%_
                  (lambda ()
                    (if (gx#stx-pair? _%e175938175945%_)
                        (let ((_%e175941175953%_
                               (gx#syntax-e _%e175938175945%_)))
                          (let ((_%hd175942175956%_ (##car _%e175941175953%_))
                                (_%tl175943175958%_ (##cdr _%e175941175953%_)))
                            (let ((_%clauses175961%_ _%tl175943175958%_))
                              (if (gx#stx-list? _%clauses175961%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop175937%_ _%clauses175961%_))
                                  (_%E175940175949%_)))))
                        (_%E175940175949%_)))))
            (_%E175939175963%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx175877%_ _%rpath175878%_)
        (let* ((_%e175879175889%_ _%stx175877%_)
               (_%E175881175893%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e175879175889%_)))
               (_%E175880175920%_
                (lambda ()
                  (if (gx#stx-pair? _%e175879175889%_)
                      (let ((_%e175882175897%_
                             (gx#syntax-e _%e175879175889%_)))
                        (let ((_%hd175883175900%_ (##car _%e175882175897%_))
                              (_%tl175884175902%_ (##cdr _%e175882175897%_)))
                          (if (gx#stx-pair? _%tl175884175902%_)
                              (let ((_%e175885175905%_
                                     (gx#syntax-e _%tl175884175902%_)))
                                (let ((_%hd175886175908%_
                                       (##car _%e175885175905%_))
                                      (_%tl175887175910%_
                                       (##cdr _%e175885175905%_)))
                                  (let ((_%path175913%_ _%hd175886175908%_))
                                    (if (gx#stx-null? _%tl175887175910%_)
                                        (if (gx#stx-string? _%path175913%_)
                                            (let ((_%rpath175918%_
                                                   (let ((_%$e175915%_
                                                          _%rpath175878%_))
                                                     (if _%$e175915%_
                                                         _%$e175915%_
                                                         (gx#core-resolve-path__%
                                                          _%path175913%_
                                                          (gx#stx-source
                                                           _%stx175877%_))))))
                                              (if (member _%rpath175918%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx175877%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath175918%_))
                                                    (gx#stx-source
                                                     _%stx175877%_)))))
                                            (_%E175881175893%_))
                                        (_%E175881175893%_)))))
                              (_%E175881175893%_))))
                      (_%E175881175893%_)))))
          (_%E175880175920%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx175927%_)
        (let ((_%rpath175929%_ '#f))
          (gx#core-expand-include%__% _%stx175927%_ _%rpath175929%_))))
    (define gx#core-expand-include%
      (lambda _g178252_
        (let ((_g178253_ (##length _g178252_)))
          (cond ((##fx= _g178253_ 1)
                 (apply gx#core-expand-include%__0 _g178252_))
                ((##fx= _g178253_ 2)
                 (apply gx#core-expand-include%__% _g178252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g178252_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K175843%_ _%stx175844%_ _%method175845%_)
        (if (procedure? _%K175843%_)
            (let ((_%$e175848%_ (gx#stx-source _%stx175844%_)))
              (if _%$e175848%_
                  ((lambda (_%g175850175852%_)
                     (gx#stx-wrap-source
                      (_%K175843%_ _%stx175844%_)
                      _%g175850175852%_))
                   _%$e175848%_)
                  (_%K175843%_ _%stx175844%_)))
            (let ((_%$e175856%_
                   (bound-method-ref _%K175843%_ _%method175845%_)))
              (if _%$e175856%_
                  ((lambda (_%g175858175860%_)
                     (gx#core-apply-expander__%
                      _%g175858175860%_
                      _%stx175844%_
                      _%method175845%_))
                   _%$e175856%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx175844%_
                   _%method175845%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K175867%_ _%stx175868%_)
        (let ((_%method175870%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K175867%_
           _%stx175868%_
           _%method175870%_))))
    (define gx#core-apply-expander
      (lambda _g178254_
        (let ((_g178255_ (##length _g178254_)))
          (cond ((##fx= _g178255_ 2)
                 (apply gx#core-apply-expander__0 _g178254_))
                ((##fx= _g178255_ 3)
                 (apply gx#core-apply-expander__% _g178254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g178254_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self175828%_ _%stx175829%_)
        (let ((_%self175832%_ _%self175828%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx175829%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self175671%_ _%stx175672%_)
        (let* ((_%self175675%_ _%self175671%_)
               (_%self175684175690%_ _%self175675%_)
               (_%E175686175693%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175684175690%_
                         '((macro-expander K)))
                  '#!void))
               (_%K175687175698%_
                (lambda (_%K175696%_)
                  (gx#core-apply-expander__0 _%K175696%_ _%stx175672%_)))
               (_%e175688175701%_
                (##unchecked-structure-ref _%self175684175690%_ '1 '#f '#f))
               (_%K175704%_ _%e175688175701%_))
          (_%K175687175698%_ _%K175704%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self175514%_ _%stx175515%_)
        (let ((_%self175518%_ _%self175514%_))
          (if (gx#sealed-syntax? _%stx175515%_)
              _%stx175515%_
              (let* ((_%self175527175533%_ _%self175518%_)
                     (_%E175529175536%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self175527175533%_
                               '((core-expander K)))
                        '#!void))
                     (_%K175530175541%_
                      (lambda (_%K175539%_)
                        (gx#core-apply-expander__0 _%K175539%_ _%stx175515%_)))
                     (_%e175531175544%_
                      (##unchecked-structure-ref
                       _%self175527175533%_
                       '1
                       '#f
                       '#f))
                     (_%K175547%_ _%e175531175544%_))
                (_%K175530175541%_ _%K175547%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self175365%_ _%stx175366%_ _%top?175367%_)
        (let ((_%self175370%_ _%self175365%_))
          (if (_%top?175367%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self175370%_
               _%stx175366%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx175366%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self175383%_ _%stx175384%_)
        (let ((_%top?175386%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self175383%_
           _%stx175384%_
           _%top?175386%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g178256_
        (let ((_g178257_ (##length _g178256_)))
          (cond ((##fx= _g178257_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g178256_))
                ((##fx= _g178257_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g178256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g178256_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self175228%_ _%stx175229%_)
        (let ((_%self175232%_ _%self175228%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self175232%_
           _%stx175229%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self175043%_ _%stx175044%_)
        (let* ((_%self175047%_ _%self175043%_)
               (_%self175056175062%_ _%self175047%_)
               (_%E175058175065%_
                (lambda ()
                  (error '"No clause matching"
                         _%self175056175062%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K175059175098%_
                (lambda (_%id175068%_)
                  (let* ((_%e175069175076%_ _%stx175044%_)
                         (_%E175071175080%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e175069175076%_)))
                         (_%E175070175094%_
                          (lambda ()
                            (if (gx#stx-pair? _%e175069175076%_)
                                (let ((_%e175072175084%_
                                       (gx#syntax-e _%e175069175076%_)))
                                  (let ((_%hd175073175087%_
                                         (##car _%e175072175084%_))
                                        (_%tl175074175089%_
                                         (##cdr _%e175072175084%_)))
                                    (let ((_%body175092%_ _%tl175074175089%_))
                                      (gx#core-cons
                                       _%id175068%_
                                       _%body175092%_))))
                                (_%E175071175080%_)))))
                    (_%E175070175094%_))))
               (_%e175060175101%_
                (##unchecked-structure-ref _%self175056175062%_ '1 '#f '#f))
               (_%id175104%_ _%e175060175101%_))
          (_%K175059175098%_ _%id175104%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self174870%_ _%stx174871%_ _%method174872%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx174871%_))
              (force-output))
            '#!void)
        (let* ((_%self174873174881%_ _%self174870%_)
               (_%E174875174884%_
                (lambda ()
                  (error '"No clause matching"
                         _%self174873174881%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K174876174891%_
                (lambda (_%phi174887%_ _%ctx174888%_ _%K174889%_)
                  (gx#core-apply-user-macro
                   _%K174889%_
                   _%stx174871%_
                   _%ctx174888%_
                   _%phi174887%_
                   _%method174872%_))))
          (if (##structure-instance-of?
               _%self174873174881%_
               'gx#user-expander::t)
              (let* ((_%e174877174894%_
                      (##unchecked-structure-ref
                       _%self174873174881%_
                       '1
                       '#f
                       '#f))
                     (_%K174897%_ _%e174877174894%_)
                     (_%e174878174899%_
                      (##unchecked-structure-ref
                       _%self174873174881%_
                       '2
                       '#f
                       '#f))
                     (_%ctx174902%_ _%e174878174899%_)
                     (_%e174879174904%_
                      (##unchecked-structure-ref
                       _%self174873174881%_
                       '3
                       '#f
                       '#f))
                     (_%phi174907%_ _%e174879174904%_))
                (_%K174876174891%_ _%phi174907%_ _%ctx174902%_ _%K174897%_))
              (_%E174875174884%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self174912%_ _%stx174913%_)
        (let ((_%method174915%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self174912%_
           _%stx174913%_
           _%method174915%_))))
    (define gx#core-apply-user-expander
      (lambda _g178258_
        (let ((_g178259_ (##length _g178258_)))
          (cond ((##fx= _g178259_ 2)
                 (apply gx#core-apply-user-expander__0 _g178258_))
                ((##fx= _g178259_ 3)
                 (apply gx#core-apply-user-expander__% _g178258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g178258_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K174860%_
               _%stx174861%_
               _%ctx174862%_
               _%phi174863%_
               _%method174864%_)
        (let ((_%mark174866%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx174862%_
                _%phi174863%_
                _%stx174861%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K174860%_
               (gx#stx-apply-mark _%stx174861%_ _%mark174866%_)
               _%method174864%_)
              _%mark174866%_))
           gx#current-expander-marks
           (cons _%mark174866%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx174708%_ _%phi174709%_ _%ctx174710%_)
        (let _%lp174712%_ ((_%bind174714%_
                            (gx#core-resolve-identifier__%
                             _%stx174708%_
                             _%phi174709%_
                             _%ctx174710%_)))
          (if (##structure-direct-instance-of?
               _%bind174714%_
               'gx#import-binding::t)
              (_%lp174712%_
               (##unchecked-structure-ref _%bind174714%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind174714%_
                   'gx#alias-binding::t)
                  (_%lp174712%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind174714%_ '5 '#f '#f)
                    _%phi174709%_
                    _%ctx174710%_))
                  _%bind174714%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx174722%_)
        (let* ((_%phi174724%_ (gx#current-expander-phi))
               (_%ctx174726%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx174722%_
           _%phi174724%_
           _%ctx174726%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx174728%_ _%phi174729%_)
        (let ((_%ctx174731%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx174728%_
           _%phi174729%_
           _%ctx174731%_))))
    (define gx#resolve-identifier
      (lambda _g178260_
        (let ((_g178261_ (##length _g178260_)))
          (cond ((##fx= _g178261_ 1)
                 (apply gx#resolve-identifier__0 _g178260_))
                ((##fx= _g178261_ 2)
                 (apply gx#resolve-identifier__1 _g178260_))
                ((##fx= _g178261_ 3)
                 (apply gx#resolve-identifier__% _g178260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g178260_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx174663%_
               _%val174664%_
               _%rebind?174665%_
               _%phi174666%_
               _%ctx174667%_)
        (let ((_%rebind?174672%_
               (if (not _%rebind?174665%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?174665%_)
                       _%rebind?174665%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx174663%_)
           _%val174664%_
           _%rebind?174672%_
           _%phi174666%_
           _%ctx174667%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx174677%_ _%val174678%_)
        (let* ((_%rebind?174680%_ '#f)
               (_%phi174682%_ (gx#current-expander-phi))
               (_%ctx174684%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174677%_
           _%val174678%_
           _%rebind?174680%_
           _%phi174682%_
           _%ctx174684%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx174686%_ _%val174687%_ _%rebind?174688%_)
        (let* ((_%phi174690%_ (gx#current-expander-phi))
               (_%ctx174692%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174686%_
           _%val174687%_
           _%rebind?174688%_
           _%phi174690%_
           _%ctx174692%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx174694%_ _%val174695%_ _%rebind?174696%_ _%phi174697%_)
        (let ((_%ctx174699%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx174694%_
           _%val174695%_
           _%rebind?174696%_
           _%phi174697%_
           _%ctx174699%_))))
    (define gx#bind-identifier!
      (lambda _g178262_
        (let ((_g178263_ (##length _g178262_)))
          (cond ((##fx= _g178263_ 2) (apply gx#bind-identifier!__0 _g178262_))
                ((##fx= _g178263_ 3) (apply gx#bind-identifier!__1 _g178262_))
                ((##fx= _g178263_ 4) (apply gx#bind-identifier!__2 _g178262_))
                ((##fx= _g178263_ 5) (apply gx#bind-identifier!__% _g178262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g178262_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx174629%_ _%phi174630%_ _%ctx174631%_)
        (let _%lp174633%_ ((_%e174635%_ _%stx174629%_)
                           (_%marks174636%_ (gx#current-expander-marks)))
          (if (symbol? _%e174635%_)
              (gx#core-resolve-binding
               _%e174635%_
               _%phi174630%_
               _%phi174630%_
               _%ctx174631%_
               (reverse _%marks174636%_))
              (if (gx#identifier-quote? _%e174635%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e174635%_ '1 '#f '#f)
                   _%phi174630%_
                   '0
                   (##unchecked-structure-ref _%e174635%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e174635%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e174635%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e174635%_ '1 '#f '#f)
                       _%phi174630%_
                       _%phi174630%_
                       _%ctx174631%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e174635%_ '3 '#f '#f)
                        _%marks174636%_))
                      (if (##structure-direct-instance-of?
                           _%e174635%_
                           'gx#syntax-wrap::t)
                          (_%lp174633%_
                           (##unchecked-structure-ref _%e174635%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e174635%_ '3 '#f '#f)
                            _%marks174636%_))
                          (if (##structure-instance-of?
                               _%e174635%_
                               'gerbil#AST::t)
                              (_%lp174633%_
                               (##unchecked-structure-ref
                                _%e174635%_
                                '1
                                '#f
                                '#f)
                               _%marks174636%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx174629%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx174647%_)
        (let* ((_%phi174649%_ (gx#current-expander-phi))
               (_%ctx174651%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx174647%_
           _%phi174649%_
           _%ctx174651%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx174653%_ _%phi174654%_)
        (let ((_%ctx174656%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx174653%_
           _%phi174654%_
           _%ctx174656%_))))
    (define gx#core-resolve-identifier
      (lambda _g178264_
        (let ((_g178265_ (##length _g178264_)))
          (cond ((##fx= _g178265_ 1)
                 (apply gx#core-resolve-identifier__0 _g178264_))
                ((##fx= _g178265_ 2)
                 (apply gx#core-resolve-identifier__1 _g178264_))
                ((##fx= _g178265_ 3)
                 (apply gx#core-resolve-identifier__% _g178264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g178264_))))))
    (define gx#core-resolve-binding
      (lambda (_%id174540%_
               _%phi174541%_
               _%src-phi174542%_
               _%ctx174543%_
               _%marks174544%_)
        (letrec ((_%resolve174546%_
                  (lambda (_%ctx174613%_ _%src-phi174614%_ _%key174615%_)
                    (let _%lp174617%_ ((_%ctx174619%_
                                        (gx#core-context-shift
                                         _%ctx174613%_
                                         _%phi174541%_))
                                       (_%dphi174620%_
                                        (fx- _%phi174541%_ _%src-phi174614%_)))
                      (let ((_%$e174622%_
                             (gx#core-context-resolve
                              _%ctx174619%_
                              _%key174615%_)))
                        (if _%$e174622%_
                            _%$e174622%_
                            (if (fxzero? _%dphi174620%_)
                                '#f
                                (if (fxpositive? _%dphi174620%_)
                                    (_%lp174617%_
                                     (gx#core-context-shift _%ctx174619%_ '-1)
                                     (##fx- _%dphi174620%_ '1))
                                    (_%lp174617%_
                                     (gx#core-context-shift _%ctx174619%_ '1)
                                     (##fx+ _%dphi174620%_ '1))))))))))
          (let _%lp174548%_ ((_%ctx174550%_ _%ctx174543%_)
                             (_%src-phi174551%_ _%src-phi174542%_)
                             (_%rest174552%_ _%marks174544%_))
            (let* ((_%rest174553174561%_ _%rest174552%_)
                   (_%else174555174569%_
                    (lambda ()
                      (_%resolve174546%_
                       _%ctx174550%_
                       _%src-phi174551%_
                       _%id174540%_)))
                   (_%K174557174601%_
                    (lambda (_%rest174572%_ _%hd174573%_)
                      (let* ((_%hd174574174580%_ _%hd174573%_)
                             (_%E174576174583%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd174574174580%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K174577174593%_
                              (lambda (_%subst174586%_)
                                (let ((_%$e174590%_
                                       (let ((_%key174588%_
                                              (if _%subst174586%_
                                                  (hash-get
                                                   _%subst174586%_
                                                   _%id174540%_)
                                                  '#f)))
                                         (if _%key174588%_
                                             (_%resolve174546%_
                                              _%ctx174550%_
                                              _%src-phi174551%_
                                              _%key174588%_)
                                             '#f))))
                                  (if _%$e174590%_
                                      _%$e174590%_
                                      (_%lp174548%_
                                       (##unchecked-structure-ref
                                        _%hd174573%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd174573%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest174572%_))))))
                        (if (##structure-instance-of?
                             _%hd174574174580%_
                             'gx#expander-mark::t)
                            (let* ((_%e174578174596%_
                                    (##unchecked-structure-ref
                                     _%hd174574174580%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst174599%_ _%e174578174596%_))
                              (_%K174577174593%_ _%subst174599%_))
                            (_%E174576174583%_))))))
              (if (pair? _%rest174553174561%_)
                  (let ((_%hd174558174604%_ (##car _%rest174553174561%_))
                        (_%tl174559174606%_ (##cdr _%rest174553174561%_)))
                    (let* ((_%hd174609%_ _%hd174558174604%_)
                           (_%rest174611%_ _%tl174559174606%_))
                      (_%K174557174601%_ _%rest174611%_ _%hd174609%_)))
                  (_%else174555174569%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key174411%_
               _%val174412%_
               _%rebind?174413%_
               _%phi174414%_
               _%ctx174415%_)
        (letrec ((_%update-binding174417%_
                  (lambda (_%xval174489%_)
                    (if (or (_%rebind?174413%_
                             _%ctx174415%_
                             _%xval174489%_
                             _%val174412%_)
                            (and (##structure-direct-instance-of?
                                  _%xval174489%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval174489%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val174412%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val174412%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval174489%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val174412%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val174412%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval174489%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val174412%_
                        (if (and (##structure-direct-instance-of?
                                  _%val174412%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val174412%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval174489%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val174412%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval174489%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval174489%_
                            (if (and (##structure-direct-instance-of?
                                      _%val174412%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval174489%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key174411%_
                                 (cons (##unchecked-structure-ref
                                        _%val174412%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val174412%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval174489%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval174489%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval174489%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval174489%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key174411%_
                                 _%val174412%_
                                 _%xval174489%_))))))
                 (_%gensubst174418%_
                  (lambda (_%subst174484%_ _%id174485%_)
                    (let ((_%eid174487%_
                           (gensym (if (uninterned-symbol? _%id174485%_)
                                       '%
                                       _%id174485%_))))
                      (hash-put! _%subst174484%_ _%id174485%_ _%eid174487%_)
                      _%eid174487%_)))
                 (_%subst!174419%_
                  (lambda (_%key174421%_)
                    (let* ((_%key174422174430%_ _%key174421%_)
                           (_%else174424174438%_ (lambda () _%key174421%_))
                           (_%K174426174472%_
                            (lambda (_%mark174441%_ _%id174442%_)
                              (let* ((_%mark174443174449%_ _%mark174441%_)
                                     (_%E174445174452%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark174443174449%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K174446174464%_
                                      (lambda (_%subst174455%_)
                                        (if (not _%subst174455%_)
                                            (let ((_%subst174458%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark174441%_
                                               _%subst174458%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst174418%_
                                               _%subst174458%_
                                               _%id174442%_))
                                            (let ((_%$e174460%_
                                                   (hash-get
                                                    _%subst174455%_
                                                    _%id174442%_)))
                                              (if _%$e174460%_
                                                  _%$e174460%_
                                                  (_%gensubst174418%_
                                                   _%subst174455%_
                                                   _%id174442%_)))))))
                                (if (##structure-instance-of?
                                     _%mark174443174449%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e174447174467%_
                                            (##unchecked-structure-ref
                                             _%mark174443174449%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst174470%_ _%e174447174467%_))
                                      (_%K174446174464%_ _%subst174470%_))
                                    (_%E174445174452%_))))))
                      (if (pair? _%key174422174430%_)
                          (let ((_%hd174427174475%_
                                 (##car _%key174422174430%_))
                                (_%tl174428174477%_
                                 (##cdr _%key174422174430%_)))
                            (let* ((_%id174480%_ _%hd174427174475%_)
                                   (_%mark174482%_ _%tl174428174477%_))
                              (_%K174426174472%_ _%mark174482%_ _%id174480%_)))
                          (_%else174424174438%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx174415%_ _%phi174414%_)
           (_%subst!174419%_ _%key174411%_)
           _%val174412%_
           _%update-binding174417%_))))
    (define gx#core-bind!__0
      (lambda (_%key174510%_ _%val174511%_)
        (let* ((_%rebind?174513%_ false)
               (_%phi174515%_ (gx#current-expander-phi))
               (_%ctx174517%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174510%_
           _%val174511%_
           _%rebind?174513%_
           _%phi174515%_
           _%ctx174517%_))))
    (define gx#core-bind!__1
      (lambda (_%key174519%_ _%val174520%_ _%rebind?174521%_)
        (let* ((_%phi174523%_ (gx#current-expander-phi))
               (_%ctx174525%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174519%_
           _%val174520%_
           _%rebind?174521%_
           _%phi174523%_
           _%ctx174525%_))))
    (define gx#core-bind!__2
      (lambda (_%key174527%_ _%val174528%_ _%rebind?174529%_ _%phi174530%_)
        (let ((_%ctx174532%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key174527%_
           _%val174528%_
           _%rebind?174529%_
           _%phi174530%_
           _%ctx174532%_))))
    (define gx#core-bind!
      (lambda _g178266_
        (let ((_g178267_ (##length _g178266_)))
          (cond ((##fx= _g178267_ 2) (apply gx#core-bind!__0 _g178266_))
                ((##fx= _g178267_ 3) (apply gx#core-bind!__1 _g178266_))
                ((##fx= _g178267_ 4) (apply gx#core-bind!__2 _g178266_))
                ((##fx= _g178267_ 5) (apply gx#core-bind!__% _g178266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g178266_))))))
    (define gx#core-identifier-key
      (lambda (_%stx174342%_)
        (if (symbol? _%stx174342%_)
            (let* ((_%g174344174352%_ (gx#current-expander-marks))
                   (_%else174346174360%_ (lambda () _%stx174342%_))
                   (_%K174348174365%_
                    (lambda (_%hd174363%_) (cons _%stx174342%_ _%hd174363%_))))
              (if (pair? _%g174344174352%_)
                  (let* ((_%hd174349174368%_ (##car _%g174344174352%_))
                         (_%hd174371%_ _%hd174349174368%_))
                    (_%K174348174365%_ _%hd174371%_))
                  (_%else174346174360%_)))
            (if (gx#identifier? _%stx174342%_)
                (let* ((_%id174374%_ (gx#syntax-local-unwrap _%stx174342%_))
                       (_%eid174376%_ (gx#stx-e _%id174374%_))
                       (_%marks174378%_
                        (gx#stx-identifier-marks* _%id174374%_))
                       (_%marks174380174388%_ _%marks174378%_)
                       (_%else174382174396%_ (lambda () _%eid174376%_))
                       (_%K174384174401%_
                        (lambda (_%hd174399%_)
                          (cons _%eid174376%_ _%hd174399%_))))
                  (if (pair? _%marks174380174388%_)
                      (let* ((_%hd174385174404%_ (##car _%marks174380174388%_))
                             (_%hd174407%_ _%hd174385174404%_))
                        (_%K174384174401%_ _%hd174407%_))
                      (_%else174382174396%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx174342%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx174281%_ _%phi174282%_)
        (letrec ((_%make-phi174284%_
                  (lambda (_%super174340%_)
                    (let ((__obj178237
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj178237
                       (##gensym 'phi)
                       _%super174340%_)
                      __obj178237)))
                 (_%make-phi/up174285%_
                  (lambda (_%ctx174335%_ _%super174336%_)
                    (let ((_%ctx+1174338%_
                           (_%make-phi174284%_ _%super174336%_)))
                      (##unchecked-structure-set!
                       _%ctx174335%_
                       _%ctx+1174338%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1174338%_
                       _%ctx174335%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1174338%_)))
                 (_%make-phi/down174286%_
                  (lambda (_%ctx174330%_ _%super174331%_)
                    (let ((_%ctx-1174333%_
                           (_%make-phi174284%_ _%super174331%_)))
                      (##unchecked-structure-set!
                       _%ctx-1174333%_
                       _%ctx174330%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx174330%_
                       _%ctx-1174333%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1174333%_)))
                 (_%shift174287%_
                  (lambda (_%ctx174313%_
                           _%delta174314%_
                           _%make-delta-context174315%_
                           _%phi174316%_
                           _%K174317%_)
                    (let ((_%$e174319%_
                           (##unchecked-structure-ref
                            _%ctx174313%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e174319%_
                          ((lambda (_%super174322%_)
                             (let* ((_%super174324%_
                                     (_%K174317%_
                                      _%super174322%_
                                      _%delta174314%_))
                                    (_%ctx+d174326%_
                                     (_%make-delta-context174315%_
                                      _%ctx174313%_
                                      _%super174324%_)))
                               (_%K174317%_
                                _%ctx+d174326%_
                                (fx- _%phi174316%_ _%delta174314%_))))
                           _%$e174319%_)
                          (error '"Bad context" _%ctx174313%_))))))
          (let _%K174289%_ ((_%ctx174291%_ _%ctx174281%_)
                            (_%phi174292%_ _%phi174282%_))
            (if (fxzero? _%phi174292%_)
                _%ctx174291%_
                (if (##structure-instance-of? _%ctx174291%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi174292%_)
                        (let ((_%$e174296%_
                               (##unchecked-structure-ref
                                _%ctx174291%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e174296%_
                              ((lambda (_%g174298174300%_)
                                 (_%K174289%_
                                  _%g174298174300%_
                                  (##fx- _%phi174292%_ '1)))
                               _%$e174296%_)
                              (_%shift174287%_
                               _%ctx174291%_
                               '1
                               _%make-phi/up174285%_
                               _%phi174292%_
                               _%K174289%_)))
                        (let ((_%$e174304%_
                               (##unchecked-structure-ref
                                _%ctx174291%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e174304%_
                              ((lambda (_%g174306174308%_)
                                 (_%K174289%_
                                  _%g174306174308%_
                                  (##fx+ _%phi174292%_ '1)))
                               _%$e174304%_)
                              (_%shift174287%_
                               _%ctx174291%_
                               '-1
                               _%make-phi/down174286%_
                               _%phi174292%_
                               _%K174289%_))))
                    _%ctx174291%_))))))
    (define gx#core-context-get
      (lambda (_%ctx174278%_ _%key174279%_)
        (hash-get
         (##unchecked-structure-ref _%ctx174278%_ '2 '#f '#f)
         _%key174279%_)))
    (define gx#core-context-put!
      (lambda (_%ctx174274%_ _%key174275%_ _%val174276%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx174274%_ '2 '#f '#f)
         _%key174275%_
         _%val174276%_)
        _%val174276%_))
    (define gx#core-context-resolve
      (lambda (_%ctx174260%_ _%key174261%_)
        (let _%lp174263%_ ((_%ctx174265%_ _%ctx174260%_))
          (let ((_%$e174267%_
                 (gx#core-context-get _%ctx174265%_ _%key174261%_)))
            (if _%$e174267%_
                _%$e174267%_
                (let ((_%$e174270%_
                       (if (##structure-instance-of?
                            _%ctx174265%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx174265%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e174270%_ (_%lp174263%_ _%$e174270%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx174249%_ _%key174250%_ _%val174251%_ _%rebind174252%_)
        (let ((_%$e174254%_ (gx#core-context-get _%ctx174249%_ _%key174250%_)))
          (if _%$e174254%_
              ((lambda (_%xval174257%_)
                 (gx#core-context-put!
                  _%ctx174249%_
                  _%key174250%_
                  (_%rebind174252%_ _%xval174257%_)))
               _%$e174254%_)
              (gx#core-context-put!
               _%ctx174249%_
               _%key174250%_
               _%val174251%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx174224%_ _%stop?174225%_)
        (let _%lp174227%_ ((_%ctx174229%_ _%ctx174224%_))
          (if (_%stop?174225%_ _%ctx174229%_)
              _%ctx174229%_
              (if (##structure-instance-of? _%ctx174229%_ 'gx#phi-context::t)
                  (_%lp174227%_
                   (##unchecked-structure-ref _%ctx174229%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx174238%_ (gx#current-expander-context))
               (_%stop?174240%_ gx#top-context?))
          (gx#core-context-top__% _%ctx174238%_ _%stop?174240%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx174242%_)
        (let ((_%stop?174244%_ gx#top-context?))
          (gx#core-context-top__% _%ctx174242%_ _%stop?174244%_))))
    (define gx#core-context-top
      (lambda _g178268_
        (let ((_g178269_ (##length _g178268_)))
          (cond ((##fx= _g178269_ 0) (apply gx#core-context-top__0 _g178268_))
                ((##fx= _g178269_ 1) (apply gx#core-context-top__1 _g178268_))
                ((##fx= _g178269_ 2) (apply gx#core-context-top__% _g178268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g178268_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx174209%_)
        (let _%lp174211%_ ((_%ctx174213%_ _%ctx174209%_))
          (if (##structure-instance-of? _%ctx174213%_ 'gx#phi-context::t)
              (_%lp174211%_
               (##unchecked-structure-ref _%ctx174213%_ '3 '#f '#f))
              _%ctx174213%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx174219%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx174219%_))))
    (define gx#core-context-root
      (lambda _g178270_
        (let ((_g178271_ (##length _g178270_)))
          (cond ((##fx= _g178271_ 0) (apply gx#core-context-root__0 _g178270_))
                ((##fx= _g178271_ 1) (apply gx#core-context-root__% _g178270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g178270_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx174191%_ . _%ignore174192%_)
        (let ((_%$e174194%_ (gx#current-expander-allow-rebind?)))
          (if _%$e174194%_
              _%$e174194%_
              (if (##structure-instance-of? _%ctx174191%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx174191%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx174191%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx174201%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx174201%_))))
    (define gx#core-context-rebind?
      (lambda _g178272_
        (let ((_g178273_ (##length _g178272_)))
          (cond ((##fx= _g178273_ 0)
                 (apply gx#core-context-rebind?__0 _g178272_))
                ((##fx= _g178273_ 1)
                 (apply gx#core-context-rebind?__% _g178272_))
                ((##fx>= _g178273_ 1)
                 (apply gx#core-context-rebind?__% _g178272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g178272_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx174174%_)
        (let ((_%$e174176%_ (gx#core-context-top__1 _%ctx174174%_)))
          (if _%$e174176%_
              ((lambda (_%ctx174179%_)
                 (if (##structure-instance-of?
                      _%ctx174179%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx174179%_ '6 '#f '#f)
                     '#f))
               _%$e174176%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx174186%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx174186%_))))
    (define gx#core-context-namespace
      (lambda _g178274_
        (let ((_g178275_ (##length _g178274_)))
          (cond ((##fx= _g178275_ 0)
                 (apply gx#core-context-namespace__0 _g178274_))
                ((##fx= _g178275_ 1)
                 (apply gx#core-context-namespace__% _g178274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g178274_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind174160%_ _%is?174161%_)
        (if (##structure-direct-instance-of?
             _%bind174160%_
             'gx#syntax-binding::t)
            (_%is?174161%_
             (##unchecked-structure-ref _%bind174160%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind174166%_)
        (let ((_%is?174168%_ gx#expander?))
          (gx#expander-binding?__% _%bind174166%_ _%is?174168%_))))
    (define gx#expander-binding?
      (lambda _g178276_
        (let ((_g178277_ (##length _g178276_)))
          (cond ((##fx= _g178277_ 1) (apply gx#expander-binding?__0 _g178276_))
                ((##fx= _g178277_ 2) (apply gx#expander-binding?__% _g178276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g178276_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind174157%_)
        (gx#expander-binding?__% _%bind174157%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind174155%_)
        (gx#expander-binding?__% _%bind174155%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind174149%_)
        (letrec ((_%direct-special-form?174151%_
                  (lambda (_%obj174153%_)
                    (##structure-direct-instance-of?
                     _%obj174153%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind174149%_
           _%direct-special-form?174151%_))))
    (define gx#special-form-binding?
      (lambda (_%bind174147%_)
        (gx#expander-binding?__% _%bind174147%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind174138%_)
        (letrec ((_%feature?174140%_
                  (lambda (_%e174142%_)
                    (let ((_%$e174144%_
                           (##structure-instance-of?
                            _%e174142%_
                            'gx#feature-expander::t)))
                      (if _%$e174144%_
                          _%$e174144%_
                          (##structure-instance-of?
                           _%e174142%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind174138%_ _%feature?174140%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind174136%_)
        (gx#expander-binding?__% _%bind174136%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id174123%_ _%bound?174124%_)
        (if (gx#identifier? _%id174123%_)
            (_%bound?174124%_ (gx#resolve-identifier__0 _%id174123%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id174129%_)
        (let ((_%bound?174131%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id174129%_ _%bound?174131%_))))
    (define gx#core-bound-identifier?
      (lambda _g178278_
        (let ((_g178279_ (##length _g178278_)))
          (cond ((##fx= _g178279_ 1)
                 (apply gx#core-bound-identifier?__0 _g178278_))
                ((##fx= _g178279_ 2)
                 (apply gx#core-bound-identifier?__% _g178278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g178278_))))))
    (define gx#core-identifier=?
      (lambda (_%x174113%_ _%y174114%_)
        (letrec ((_%y=?174116%_
                  (lambda (_%xid174120%_)
                    ((if (list? _%y174114%_) memq eq?)
                     _%xid174120%_
                     _%y174114%_))))
          (let ((_%bind174118%_ (gx#resolve-identifier__0 _%x174113%_)))
            (if (##structure-instance-of? _%bind174118%_ 'gx#binding::t)
                (_%y=?174116%_
                 (##unchecked-structure-ref _%bind174118%_ '1 '#f '#f))
                (_%y=?174116%_ (gx#stx-e _%x174113%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e174111%_)
        (if (interned-symbol? _%e174111%_)
            (string-index__0 (symbol->string _%e174111%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx174064%_ _%src174065%_ _%ctx174066%_ _%marks174067%_)
        (if (##structure? _%stx174064%_)
            (let ((_%$e174069%_ (gx#sealed-syntax-unwrap _%stx174064%_)))
              (if _%$e174069%_
                  _%$e174069%_
                  (if (gx#identifier? _%stx174064%_)
                      (let ((_%id174073%_
                             (gx#stx-unwrap__% _%stx174064%_ _%marks174067%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id174073%_ '1 '#f '#f)
                         (let ((_%$e174075%_
                                (##unchecked-structure-ref
                                 _%id174073%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e174075%_ _%$e174075%_ _%src174065%_))
                         _%ctx174066%_
                         (##unchecked-structure-ref _%id174073%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx174064%_)
                       (let ((_%$e174079%_ (gx#stx-source _%stx174064%_)))
                         (if _%$e174079%_ _%$e174079%_ _%src174065%_))
                       _%ctx174066%_
                       (reverse _%marks174067%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx174064%_
             _%src174065%_
             _%ctx174066%_
             (reverse _%marks174067%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx174085%_)
        (let* ((_%src174087%_ '#f)
               (_%ctx174089%_ (gx#current-expander-context))
               (_%marks174091%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174085%_
           _%src174087%_
           _%ctx174089%_
           _%marks174091%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx174093%_ _%src174094%_)
        (let* ((_%ctx174096%_ (gx#current-expander-context))
               (_%marks174098%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174093%_
           _%src174094%_
           _%ctx174096%_
           _%marks174098%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx174100%_ _%src174101%_ _%ctx174102%_)
        (let ((_%marks174104%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx174100%_
           _%src174101%_
           _%ctx174102%_
           _%marks174104%_))))
    (define gx#core-quote-syntax
      (lambda _g178280_
        (let ((_g178281_ (##length _g178280_)))
          (cond ((##fx= _g178281_ 1) (apply gx#core-quote-syntax__0 _g178280_))
                ((##fx= _g178281_ 2) (apply gx#core-quote-syntax__1 _g178280_))
                ((##fx= _g178281_ 3) (apply gx#core-quote-syntax__2 _g178280_))
                ((##fx= _g178281_ 4) (apply gx#core-quote-syntax__% _g178280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g178280_))))))
    (define gx#core-cons
      (lambda (_%hd174060%_ _%tl174061%_)
        (cons (gx#core-quote-syntax__0 _%hd174060%_) _%tl174061%_)))
    (define gx#core-list
      (lambda (_%hd174057%_ . _%rest174058%_)
        (cons (gx#core-quote-syntax__0 _%hd174057%_) _%rest174058%_)))
    (define gx#core-cons*
      (lambda (_%hd174054%_ . _%rest174055%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd174054%_) _%rest174055%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path174023%_ _%rel174024%_)
        (let ((_%path174041%_ (gx#stx-e _%stx-path174023%_))
              (_%reldir174042%_
               (let _%lp174026%_ ((_%relsrc174028%_
                                   (let ((_%$e174038%_
                                          (gx#stx-source _%stx-path174023%_)))
                                     (if _%$e174038%_
                                         _%$e174038%_
                                         _%rel174024%_))))
                 (if (##structure-instance-of? _%relsrc174028%_ 'gerbil#AST::t)
                     (_%lp174026%_
                      (let ((_%$e174031%_ (gx#stx-source _%relsrc174028%_)))
                        (if _%$e174031%_
                            _%$e174031%_
                            (gx#stx-e _%relsrc174028%_))))
                     (if (source-location-path? _%relsrc174028%_)
                         (path-directory
                          (source-location-path _%relsrc174028%_))
                         (if (string? _%relsrc174028%_)
                             (path-directory _%relsrc174028%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path174041%_ (path-normalize _%reldir174042%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path174047%_)
        (let ((_%rel174049%_ '#f))
          (gx#core-resolve-path__% _%stx-path174047%_ _%rel174049%_))))
    (define gx#core-resolve-path
      (lambda _g178282_
        (let ((_g178283_ (##length _g178282_)))
          (cond ((##fx= _g178283_ 1) (apply gx#core-resolve-path__0 _g178282_))
                ((##fx= _g178283_ 2) (apply gx#core-resolve-path__% _g178282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g178282_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr173979%_ _%ctx173980%_)
        (let* ((_%repr173981173988%_ _%repr173979%_)
               (_%E173983173992%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr173981173988%_
                         '([phi . subs]))
                  '#!void))
               (_%K173984174000%_
                (lambda (_%subs173995%_ _%phi173996%_)
                  (let ((_%subst173998%_
                         (if (null? _%subs173995%_)
                             '#f
                             (list->hash-table-eq _%subs173995%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst173998%_
                     _%ctx173980%_
                     _%phi173996%_
                     '#f)))))
          (if (pair? _%repr173981173988%_)
              (let ((_%hd173985174003%_ (##car _%repr173981173988%_))
                    (_%tl173986174005%_ (##cdr _%repr173981173988%_)))
                (let* ((_%phi174008%_ _%hd173985174003%_)
                       (_%subs174010%_ _%tl173986174005%_))
                  (_%K173984174000%_ _%subs174010%_ _%phi174008%_)))
              (_%E173983173992%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr174015%_)
        (let ((_%ctx174017%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr174015%_ _%ctx174017%_))))
    (define gx#core-deserialize-mark
      (lambda _g178284_
        (let ((_g178285_ (##length _g178284_)))
          (cond ((##fx= _g178285_ 1)
                 (apply gx#core-deserialize-mark__0 _g178284_))
                ((##fx= _g178285_ 2)
                 (apply gx#core-deserialize-mark__% _g178284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g178284_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx173976%_)
        (gx#stx-rewrap _%stx173976%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx173974%_)
        (gx#stx-unwrap__% _%stx173974%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx173944%_)
        (let* ((_%g173945173953%_ (gx#current-expander-marks))
               (_%else173947173961%_ (lambda () _%stx173944%_))
               (_%K173949173966%_
                (lambda (_%hd173964%_)
                  (gx#stx-apply-mark _%stx173944%_ _%hd173964%_))))
          (if (pair? _%g173945173953%_)
              (let* ((_%hd173950173969%_ (##car _%g173945173953%_))
                     (_%hd173972%_ _%hd173950173969%_))
                (_%K173949173966%_ _%hd173972%_))
              (_%else173947173961%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym173942%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym173942%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx173927%_ _%E173928%_)
        (let ((_%bind173930%_ (gx#resolve-identifier__0 _%stx173927%_)))
          (if (##structure-direct-instance-of?
               _%bind173930%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind173930%_ '5 '#f '#f)
              (_%E173928%_ _%stx173927%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx173935%_)
        (let ((_%E173937%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx173935%_ _%E173937%_))))
    (define gx#syntax-local-e
      (lambda _g178286_
        (let ((_g178287_ (##length _g178286_)))
          (cond ((##fx= _g178287_ 1) (apply gx#syntax-local-e__0 _g178286_))
                ((##fx= _g178287_ 2) (apply gx#syntax-local-e__% _g178286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g178286_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx173911%_ _%E173912%_)
        (let ((_%e173914%_ (gx#syntax-local-e__% _%stx173911%_ _%E173912%_)))
          (if (##structure-instance-of? _%e173914%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e173914%_ '1 '#f '#f)
              _%e173914%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx173919%_)
        (let ((_%E173921%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx173919%_ _%E173921%_))))
    (define gx#syntax-local-value
      (lambda _g178288_
        (let ((_g178289_ (##length _g178288_)))
          (cond ((##fx= _g178289_ 1)
                 (apply gx#syntax-local-value__0 _g178288_))
                ((##fx= _g178289_ 2)
                 (apply gx#syntax-local-value__% _g178288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g178288_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx173908%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx173908%_)))))
