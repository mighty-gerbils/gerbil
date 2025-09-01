(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1756715352)
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
      (lambda _%$args129976%_
        (apply make-instance gx#expander-context::t _%$args129976%_)))
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
      (lambda _%$args129973%_
        (apply make-instance gx#root-context::t _%$args129973%_)))
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
      (lambda _%$args129970%_
        (apply make-instance gx#phi-context::t _%$args129970%_)))
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
      (lambda _%$args129967%_
        (apply make-instance gx#top-context::t _%$args129967%_)))
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
      (lambda _%$args129964%_
        (apply make-instance gx#module-context::t _%$args129964%_)))
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
      (lambda _%$args129961%_
        (apply make-instance gx#prelude-context::t _%$args129961%_)))
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
      (lambda _%$args129958%_
        (apply make-instance gx#local-context::t _%$args129958%_)))
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
      (lambda (_%self129931%_ _%id129932%_ _%super129933%_)
        (let ((_%self129936%_ _%self129931%_))
          (if (##fx< '3 (##structure-length _%self129936%_))
              (begin
                (##unchecked-structure-set!
                 _%self129936%_
                 _%id129932%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129936%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129936%_
                 _%super129933%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129936%_
                     '3
                     (##structure-length _%self129936%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self129949%_ _%id129950%_)
        (let ((_%super129952%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self129949%_
           _%id129950%_
           _%super129952%_))))
    (define gx#phi-context:::init!
      (lambda _g130018_
        (let ((_g130019_ (##length _g130018_)))
          (cond ((##fx= _g130019_ 2)
                 (apply gx#phi-context:::init!__0 _g130018_))
                ((##fx= _g130019_ 3)
                 (apply gx#phi-context:::init!__% _g130018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g130018_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self129784%_ _%super129785%_)
        (let ((_%self129788%_ _%self129784%_))
          (if (##fx< '3 (##structure-length _%self129788%_))
              (begin
                (##unchecked-structure-set!
                 _%self129788%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129788%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129788%_
                 _%super129785%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129788%_
                     '3
                     (##structure-length _%self129788%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self129801%_)
        (let ((_%super129803%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self129801%_ _%super129803%_))))
    (define gx#local-context:::init!
      (lambda _g130020_
        (let ((_g130021_ (##length _g130020_)))
          (cond ((##fx= _g130021_ 1)
                 (apply gx#local-context:::init!__0 _g130020_))
                ((##fx= _g130021_ 2)
                 (apply gx#local-context:::init!__% _g130020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g130020_))))))
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
      (lambda _%$args129658%_
        (apply make-instance gx#binding::t _%$args129658%_)))
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
      (lambda _%$args129655%_
        (apply make-instance gx#runtime-binding::t _%$args129655%_)))
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
      (lambda _%$args129652%_
        (apply make-instance gx#local-binding::t _%$args129652%_)))
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
      (lambda _%$args129649%_
        (apply make-instance gx#top-binding::t _%$args129649%_)))
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
      (lambda _%$args129646%_
        (apply make-instance gx#module-binding::t _%$args129646%_)))
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
      (lambda _%$args129643%_
        (apply make-instance gx#extern-binding::t _%$args129643%_)))
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
      (lambda _%$args129640%_
        (apply make-instance gx#syntax-binding::t _%$args129640%_)))
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
      (lambda _%$args129637%_
        (apply make-instance gx#import-binding::t _%$args129637%_)))
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
      (lambda _%$args129634%_
        (apply make-instance gx#alias-binding::t _%$args129634%_)))
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
      (lambda _%$args129631%_
        (apply make-instance gx#expander::t _%$args129631%_)))
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
      (lambda _%$args129628%_
        (apply make-instance gx#core-expander::t _%$args129628%_)))
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
      (lambda _%$args129625%_
        (apply make-instance gx#expression-form::t _%$args129625%_)))
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
      (lambda _%$args129622%_
        (apply make-instance gx#special-form::t _%$args129622%_)))
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
      (lambda _%$args129619%_
        (apply make-instance gx#definition-form::t _%$args129619%_)))
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
      (lambda _%$args129616%_
        (apply make-instance gx#top-special-form::t _%$args129616%_)))
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
      (lambda _%$args129613%_
        (apply make-instance gx#module-special-form::t _%$args129613%_)))
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
      (lambda _%$args129610%_
        (apply make-instance gx#feature-expander::t _%$args129610%_)))
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
      (lambda _%$args129607%_
        (apply make-instance gx#private-feature-expander::t _%$args129607%_)))
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
      (lambda _%$args129604%_
        (apply make-instance gx#reserved-expander::t _%$args129604%_)))
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
      (lambda _%$args129601%_
        (apply make-instance gx#macro-expander::t _%$args129601%_)))
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
      (lambda _%$args129598%_
        (apply make-instance gx#rename-macro-expander::t _%$args129598%_)))
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
      (lambda _%$args129595%_
        (apply make-instance gx#user-expander::t _%$args129595%_)))
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
      (lambda _%$args129592%_
        (apply make-instance gx#expander-mark::t _%$args129592%_)))
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
      (lambda (_%ctx129576%_
               _%message129577%_
               _%stx129578%_
               .
               _%details129579%_)
        (let ((_%ctx129590%_
               (let ((_%$e129581%_ _%ctx129576%_))
                 (if _%$e129581%_
                     _%$e129581%_
                     (let ((_%$e129584%_ (gx#core-context-top__0)))
                       (if _%$e129584%_
                           ((lambda (_%ctx129587%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx129587%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e129584%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message129577%_
                  (cons _%stx129578%_ _%details129579%_)
                  _%ctx129590%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx129563%_ _%expression?129564%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx129563%_ _%expression?129564%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx129569%_)
        (let ((_%expression?129571%_ '#f))
          (gx#eval-syntax__% _%stx129569%_ _%expression?129571%_))))
    (define gx#eval-syntax
      (lambda _g130022_
        (let ((_g130023_ (##length _g130022_)))
          (cond ((##fx= _g130023_ 1) (apply gx#eval-syntax__0 _g130022_))
                ((##fx= _g130023_ 2) (apply gx#eval-syntax__% _g130022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g130022_))))))
    (define gx#eval-syntax*
      (lambda (_%stx129560%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx129560%_))))
    (define gx#core-expand__%
      (lambda (_%stx129547%_ _%expression?129548%_)
        (if _%expression?129548%_
            (gx#core-expand-expression _%stx129547%_)
            (gx#core-expand-top _%stx129547%_))))
    (define gx#core-expand__0
      (lambda (_%stx129553%_)
        (let ((_%expression?129555%_ '#f))
          (gx#core-expand__% _%stx129553%_ _%expression?129555%_))))
    (define gx#core-expand
      (lambda _g130024_
        (let ((_g130025_ (##length _g130024_)))
          (cond ((##fx= _g130025_ 1) (apply gx#core-expand__0 _g130024_))
                ((##fx= _g130025_ 2) (apply gx#core-expand__% _g130024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g130024_))))))
    (define gx#core-expand-top
      (lambda (_%stx129514%_)
        (let* ((_%stx129516%_ (gx#core-expand*__0 _%stx129514%_))
               (_%e129517129524%_ _%stx129516%_)
               (_%E129519129528%_
                (lambda () (gx#core-expand-expression _%stx129516%_)))
               (_%E129518129542%_
                (lambda ()
                  (if (gx#stx-pair? _%e129517129524%_)
                      (let ((_%e129520129532%_
                             (gx#syntax-e _%e129517129524%_)))
                        (let ((_%hd129521129535%_ (##car _%e129520129532%_))
                              (_%tl129522129537%_ (##cdr _%e129520129532%_)))
                          (let ((_%form129540%_ _%hd129521129535%_))
                            (if (gx#core-bound-identifier?__0 _%form129540%_)
                                _%stx129516%_
                                (_%E129519129528%_)))))
                      (_%E129519129528%_)))))
          (_%E129518129542%_))))
    (define gx#core-expand-expression
      (lambda (_%stx129446%_)
        (letrec ((_%sealed-expression?129448%_
                  (lambda (_%hd129484%_)
                    (if (gx#sealed-syntax? _%hd129484%_)
                        (let* ((_%e129485129492%_ _%hd129484%_)
                               (_%E129487129496%_ (lambda () '#f))
                               (_%E129486129510%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e129485129492%_)
                                      (let ((_%e129488129500%_
                                             (gx#syntax-e _%e129485129492%_)))
                                        (let ((_%hd129489129503%_
                                               (##car _%e129488129500%_))
                                              (_%tl129490129505%_
                                               (##cdr _%e129488129500%_)))
                                          (let ((_%form129508%_
                                                 _%hd129489129503%_))
                                            (gx#core-bound-identifier?__%
                                             _%form129508%_
                                             gx#expression-form-binding?))))
                                      (_%E129487129496%_)))))
                          (_%E129486129510%_))
                        '#f)))
                 (_%illegal-expression129449%_
                  (lambda (_%hd129481%_ . _%_129482%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx129446%_
                     _%hd129481%_)))
                 (_%expand-e129450%_
                  (lambda (_%form129473%_ _%hd129474%_)
                    (let ((_%bind129476%_
                           (if (##structure-instance-of?
                                _%form129473%_
                                'gx#binding::t)
                               _%form129473%_
                               (gx#resolve-identifier__0 _%form129473%_))))
                      (if (gx#core-expander-binding? _%bind129476%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind129476%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd129474%_
                            (gx#stx-source _%stx129446%_)))
                          (if (##structure-direct-instance-of?
                               _%bind129476%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind129476%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd129474%_
                                 (gx#stx-source _%stx129446%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx129446%_
                               _%form129473%_)))))))
          (let ((_%hd129452%_ (gx#core-expand-head _%stx129446%_)))
            (if (_%sealed-expression?129448%_ _%hd129452%_)
                _%hd129452%_
                (if (gx#stx-pair? _%hd129452%_)
                    (let* ((_%form129456%_ (gx#stx-car _%hd129452%_))
                           (_%bind129458%_
                            (if (gx#identifier? _%form129456%_)
                                (gx#resolve-identifier__0 _%form129456%_)
                                '#f)))
                      (if (or (not _%bind129458%_)
                              (not (gx#core-expander-binding? _%bind129458%_)))
                          (_%expand-e129450%_
                           '%%app
                           (cons '%%app _%hd129452%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind129458%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd129452%_
                               _%illegal-expression129449%_)
                              (if (gx#expression-form-binding? _%bind129458%_)
                                  (_%expand-e129450%_
                                   _%bind129458%_
                                   _%hd129452%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind129458%_)
                                      (gx#core-expand-expression
                                       (_%expand-e129450%_
                                        _%bind129458%_
                                        _%hd129452%_))
                                      (_%illegal-expression129449%_
                                       _%hd129452%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd129452%_)
                        (_%illegal-expression129449%_ _%hd129452%_)
                        (if (gx#identifier? _%hd129452%_)
                            (_%expand-e129450%_
                             '%%ref
                             (cons '%%ref (cons _%hd129452%_ '())))
                            (if (gx#stx-datum? _%hd129452%_)
                                (_%expand-e129450%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd129452%_ '())))
                                (_%illegal-expression129449%_
                                 _%hd129452%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx129441%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx129444%_ (gx#core-expand-expression _%stx129441%_)))
             (values _%stx129444%_ (gx#eval-syntax* _%stx129444%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx129422%_ _%stop?129423%_)
        (let _%lp129425%_ ((_%stx129427%_ _%stx129422%_))
          (if (_%stop?129423%_ _%stx129427%_)
              _%stx129427%_
              (let ((_%rstx129429%_ (gx#core-expand1 _%stx129427%_)))
                (if (eq? _%stx129427%_ _%rstx129429%_)
                    _%stx129427%_
                    (_%lp129425%_ _%rstx129429%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx129434%_)
        (let ((_%stop?129436%_ false))
          (gx#core-expand*__% _%stx129434%_ _%stop?129436%_))))
    (define gx#core-expand*
      (lambda _g130026_
        (let ((_g130027_ (##length _g130026_)))
          (cond ((##fx= _g130027_ 1) (apply gx#core-expand*__0 _g130026_))
                ((##fx= _g130027_ 2) (apply gx#core-expand*__% _g130026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g130026_))))))
    (define gx#core-expand1
      (lambda (_%stx129374%_)
        (letrec ((_%step129376%_
                  (lambda (_%hd129413%_)
                    (let ((_%bind129415%_
                           (gx#resolve-identifier__0 _%hd129413%_)))
                      (if (##structure-instance-of?
                           _%bind129415%_
                           'gx#runtime-binding::t)
                          _%stx129374%_
                          (if (##structure-direct-instance-of?
                               _%bind129415%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind129415%_
                                '4
                                '#f
                                '#f)
                               _%stx129374%_)
                              (if (not _%bind129415%_)
                                  _%stx129374%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx129374%_))))))))
          (let* ((_%e129377129385%_ _%stx129374%_)
                 (_%E129383129389%_ (lambda () _%stx129374%_))
                 (_%E129379129395%_
                  (lambda ()
                    (let ((_%hd129393%_ _%e129377129385%_))
                      (if (gx#identifier? _%hd129393%_)
                          (_%step129376%_ _%hd129393%_)
                          (_%E129383129389%_)))))
                 (_%E129378129409%_
                  (lambda ()
                    (if (gx#stx-pair? _%e129377129385%_)
                        (let ((_%e129380129399%_
                               (gx#syntax-e _%e129377129385%_)))
                          (let ((_%hd129381129402%_ (##car _%e129380129399%_))
                                (_%tl129382129404%_ (##cdr _%e129380129399%_)))
                            (let ((_%hd129407%_ _%hd129381129402%_))
                              (if (gx#identifier? _%hd129407%_)
                                  (_%step129376%_ _%hd129407%_)
                                  (_%E129379129395%_)))))
                        (_%E129379129395%_)))))
            (_%E129378129409%_)))))
    (define gx#core-expand-head
      (lambda (_%stx129340%_)
        (letrec ((_%stop?129342%_
                  (lambda (_%stx129344%_)
                    (let* ((_%e129345129352%_ _%stx129344%_)
                           (_%E129347129356%_ (lambda () '#f))
                           (_%E129346129370%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129345129352%_)
                                  (let ((_%e129348129360%_
                                         (gx#syntax-e _%e129345129352%_)))
                                    (let ((_%hd129349129363%_
                                           (##car _%e129348129360%_))
                                          (_%tl129350129365%_
                                           (##cdr _%e129348129360%_)))
                                      (let ((_%hd129368%_ _%hd129349129363%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd129368%_))))
                                  (_%E129347129356%_)))))
                      (_%E129346129370%_)))))
          (gx#core-expand*__% _%stx129340%_ _%stop?129342%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx129146%_
               _%expand-special129147%_
               _%begin-form129148%_
               _%expand-e129149%_)
        (letrec ((_%expand-splice129151%_
                  (lambda (_%hd129314%_
                           _%body129315%_
                           _%rest129316%_
                           _%r129317%_)
                    (if (gx#stx-list? _%body129315%_)
                        (_%K129155%_
                         (gx#stx-foldr cons _%rest129316%_ _%body129315%_)
                         _%r129317%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx129146%_
                         _%hd129314%_))))
                 (_%expand-cond-expand129152%_
                  (lambda (_%hd129310%_ _%rest129311%_ _%r129312%_)
                    (_%K129155%_
                     (cons (gx#core-expand-cond-expand% _%hd129310%_)
                           _%rest129311%_)
                     _%r129312%_)))
                 (_%expand-include129153%_
                  (lambda (_%hd129259%_ _%rest129260%_ _%r129261%_)
                    (let* ((_%e129262129272%_ _%hd129259%_)
                           (_%E129264129276%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e129262129272%_)))
                           (_%E129263129306%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129262129272%_)
                                  (let ((_%e129265129280%_
                                         (gx#syntax-e _%e129262129272%_)))
                                    (let ((_%hd129266129283%_
                                           (##car _%e129265129280%_))
                                          (_%tl129267129285%_
                                           (##cdr _%e129265129280%_)))
                                      (if (gx#stx-pair? _%tl129267129285%_)
                                          (let ((_%e129268129288%_
                                                 (gx#syntax-e
                                                  _%tl129267129285%_)))
                                            (let ((_%hd129269129291%_
                                                   (##car _%e129268129288%_))
                                                  (_%tl129270129293%_
                                                   (##cdr _%e129268129288%_)))
                                              (let ((_%path129296%_
                                                     _%hd129269129291%_))
                                                (if (gx#stx-null?
                                                     _%tl129270129293%_)
                                                    (if (gx#stx-string?
                                                         _%path129296%_)
                                                        (let* ((_%rpath129298%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path129296%_
                         (gx#stx-source _%hd129259%_)))
                       (_%block129300%_
                        (gx#core-expand-include%__%
                         _%hd129259%_
                         _%rpath129298%_))
                       (_%rbody129303%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block129300%_
                            _%expand-special129147%_
                            '#f
                            _%expand-e129149%_))
                         gx#current-expander-path
                         (cons _%rpath129298%_ (gx#current-expander-path)))))
                  (_%K129155%_
                   _%rest129260%_
                   (__foldr1 cons _%r129261%_ _%rbody129303%_)))
                (_%E129264129276%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E129264129276%_)))))
                                          (_%E129264129276%_))))
                                  (_%E129264129276%_)))))
                      (_%E129263129306%_))))
                 (_%expand-expression129154%_
                  (lambda (_%hd129255%_ _%rest129256%_ _%r129257%_)
                    (_%K129155%_
                     _%rest129256%_
                     (cons (_%expand-e129149%_ _%hd129255%_) _%r129257%_))))
                 (_%K129155%_
                  (lambda (_%rest129185%_ _%r129186%_)
                    (let* ((_%e129187129194%_ _%rest129185%_)
                           (_%E129189129198%_
                            (lambda ()
                              (if _%begin-form129148%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form129148%_
                                    (reverse _%r129186%_))
                                   (gx#stx-source _%stx129146%_))
                                  _%r129186%_)))
                           (_%E129188129251%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129187129194%_)
                                  (let ((_%e129190129202%_
                                         (gx#syntax-e _%e129187129194%_)))
                                    (let ((_%hd129191129205%_
                                           (##car _%e129190129202%_))
                                          (_%tl129192129207%_
                                           (##cdr _%e129190129202%_)))
                                      (let* ((_%hd129210%_ _%hd129191129205%_)
                                             (_%rest129212%_
                                              _%tl129192129207%_)
                                             (_%hd129214%_
                                              (gx#core-expand-head
                                               _%hd129210%_))
                                             (_%e129215129222%_ _%hd129214%_)
                                             (_%E129217129226%_
                                              (lambda ()
                                                (_%expand-expression129154%_
                                                 _%hd129214%_
                                                 _%rest129212%_
                                                 _%r129186%_)))
                                             (_%E129216129247%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e129215129222%_)
                                                    (let ((_%e129218129230%_
                                                           (gx#syntax-e
                                                            _%e129215129222%_)))
                                                      (let ((_%hd129219129233%_
                                                             (##car _%e129218129230%_))
                                                            (_%tl129220129235%_
                                                             (##cdr _%e129218129230%_)))
                                                        (let* ((_%form129238%_
                                                                _%hd129219129233%_)
                                                               (_%body129240%_
                                                                _%tl129220129235%_)
                                                               (_%bind129242%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form129238%_)
                            (gx#resolve-identifier__0 _%form129238%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind129242%_)
                      (let ((_%$e129244%_
                             (##unchecked-structure-ref
                              _%bind129242%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e129244%_)
                            (_%expand-splice129151%_
                             _%hd129214%_
                             _%body129240%_
                             _%rest129212%_
                             _%r129186%_)
                            (if (eq? '%#cond-expand _%$e129244%_)
                                (_%expand-cond-expand129152%_
                                 _%hd129214%_
                                 _%rest129212%_
                                 _%r129186%_)
                                (if (eq? '%#include _%$e129244%_)
                                    (_%expand-include129153%_
                                     _%hd129214%_
                                     _%rest129212%_
                                     _%r129186%_)
                                    (_%expand-special129147%_
                                     _%hd129214%_
                                     _%K129155%_
                                     _%rest129212%_
                                     _%r129186%_)))))
                      (_%expand-expression129154%_
                       _%hd129214%_
                       _%rest129212%_
                       _%r129186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E129217129226%_)))))
                                        (_%E129216129247%_))))
                                  (_%E129189129198%_)))))
                      (_%E129188129251%_)))))
          (let* ((_%e129156129163%_ _%stx129146%_)
                 (_%E129158129167%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e129156129163%_)))
                 (_%E129157129181%_
                  (lambda ()
                    (if (gx#stx-pair? _%e129156129163%_)
                        (let ((_%e129159129171%_
                               (gx#syntax-e _%e129156129163%_)))
                          (let ((_%hd129160129174%_ (##car _%e129159129171%_))
                                (_%tl129161129176%_ (##cdr _%e129159129171%_)))
                            (let ((_%body129179%_ _%tl129161129176%_))
                              (if (gx#stx-list? _%body129179%_)
                                  (_%K129155%_ _%body129179%_ '())
                                  (_%E129158129167%_)))))
                        (_%E129158129167%_)))))
            (_%E129157129181%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx129322%_ _%expand-special129323%_)
        (let* ((_%begin-form129325%_ '%#begin)
               (_%expand-e129327%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx129322%_
           _%expand-special129323%_
           _%begin-form129325%_
           _%expand-e129327%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx129329%_ _%expand-special129330%_ _%begin-form129331%_)
        (let ((_%expand-e129333%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx129329%_
           _%expand-special129330%_
           _%begin-form129331%_
           _%expand-e129333%_))))
    (define gx#core-expand-block
      (lambda _g130028_
        (let ((_g130029_ (##length _g130028_)))
          (cond ((##fx= _g130029_ 2) (apply gx#core-expand-block__0 _g130028_))
                ((##fx= _g130029_ 3) (apply gx#core-expand-block__1 _g130028_))
                ((##fx= _g130029_ 4) (apply gx#core-expand-block__% _g130028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g130028_))))))
    (define gx#core-expand-block*
      (lambda (_%stx129094%_ _%expand-special129095%_)
        (let* ((_%g129096129107%_
                (gx#core-expand-block__1
                 _%stx129094%_
                 _%expand-special129095%_
                 '#f))
               (_%E129100129111%_
                (lambda ()
                  (error '"No clause matching"
                         _%g129096129107%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K129105129142%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx129094%_)))
                (_%K129102129128%_ (lambda (_%expr129126%_) _%expr129126%_))
                (_%K129101129117%_
                 (lambda (_%body129115%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body129115%_))
                    (gx#stx-source _%stx129094%_)))))
            (let ((_%try-match129098129138%_
                   (lambda ()
                     (if (pair? _%g129096129107%_)
                         (let ((_%tl129104129133%_ (##cdr _%g129096129107%_))
                               (_%hd129103129131%_ (##car _%g129096129107%_)))
                           (if (null? _%tl129104129133%_)
                               (let ((_%expr129136%_ _%hd129103129131%_))
                                 (_%K129102129128%_ _%expr129136%_))
                               (let ((_%body129120%_ _%g129096129107%_))
                                 (_%K129101129117%_ _%body129120%_))))
                         (let ((_%body129120%_ _%g129096129107%_))
                           (_%K129101129117%_ _%body129120%_))))))
              (if (null? _%g129096129107%_)
                  (_%K129105129142%_)
                  (_%try-match129098129138%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx128919%_)
        (letrec ((_%satisfied?128921%_
                  (lambda (_%condition129022%_)
                    (let* ((_%e129023129038%_ _%condition129022%_)
                           (_%E129033129042%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e129023129038%_)))
                           (_%E129026129061%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129023129038%_)
                                  (let ((_%e129034129046%_
                                         (gx#syntax-e _%e129023129038%_)))
                                    (let ((_%hd129035129049%_
                                           (##car _%e129034129046%_))
                                          (_%tl129036129051%_
                                           (##cdr _%e129034129046%_)))
                                      (let* ((_%combinator129054%_
                                              _%hd129035129049%_)
                                             (_%body129056%_
                                              _%tl129036129051%_))
                                        (if (gx#stx-list? _%body129056%_)
                                            (let ((_%$e129058%_
                                                   (gx#stx-e
                                                    _%combinator129054%_)))
                                              (if (eq? 'not _%$e129058%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?128921%_
                                                        _%body129056%_))
                                                  (if (eq? 'and _%$e129058%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?128921%_
                                                       _%body129056%_)
                                                      (if (eq? 'or
                                                               _%$e129058%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?128921%_
                                                           _%body129056%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e129058%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body129056%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx128919%_
                       _%combinator129054%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E129033129042%_)))))
                                  (_%E129033129042%_))))
                           (_%E129025129084%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129023129038%_)
                                  (let ((_%e129027129065%_
                                         (gx#syntax-e _%e129023129038%_)))
                                    (let ((_%hd129028129068%_
                                           (##car _%e129027129065%_))
                                          (_%tl129029129070%_
                                           (##cdr _%e129027129065%_)))
                                      (if (and (gx#identifier?
                                                _%hd129028129068%_)
                                               (gx#core-identifier=?
                                                _%hd129028129068%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl129029129070%_)
                                              (let ((_%e129030129073%_
                                                     (gx#syntax-e
                                                      _%tl129029129070%_)))
                                                (let ((_%hd129031129076%_
                                                       (##car _%e129030129073%_))
                                                      (_%tl129032129078%_
                                                       (##cdr _%e129030129073%_)))
                                                  (let ((_%expr129081%_
                                                         _%hd129031129076%_))
                                                    (if (gx#stx-null?
                                                         _%tl129032129078%_)
                                                        (call-with-parameters__1
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr129081%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E129026129061%_)))))
                                              (_%E129026129061%_))
                                          (_%E129026129061%_))))
                                  (_%E129026129061%_))))
                           (_%E129024129090%_
                            (lambda ()
                              (let ((_%id129088%_ _%e129023129038%_))
                                (if (gx#identifier? _%id129088%_)
                                    (gx#core-bound-identifier?__%
                                     _%id129088%_
                                     gx#feature-binding?)
                                    (_%E129025129084%_))))))
                      (_%E129024129090%_))))
                 (_%loop128922%_
                  (lambda (_%rest128952%_)
                    (let* ((_%e128953128961%_ _%rest128952%_)
                           (_%E128959128965%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e128953128961%_)))
                           (_%E128955128969%_
                            (lambda ()
                              (if (gx#stx-null? _%e128953128961%_)
                                  '()
                                  (_%E128959128965%_))))
                           (_%E128954129018%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128953128961%_)
                                  (let ((_%e128956128973%_
                                         (gx#syntax-e _%e128953128961%_)))
                                    (let ((_%hd128957128976%_
                                           (##car _%e128956128973%_))
                                          (_%tl128958128978%_
                                           (##cdr _%e128956128973%_)))
                                      (let* ((_%hd128981%_ _%hd128957128976%_)
                                             (_%rest128983%_
                                              _%tl128958128978%_)
                                             (_%e128984128991%_ _%hd128981%_)
                                             (_%E128986128995%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e128984128991%_)))
                                             (_%E128985129014%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e128984128991%_)
                                                    (let ((_%e128987128999%_
                                                           (gx#syntax-e
                                                            _%e128984128991%_)))
                                                      (let ((_%hd128988129002%_
                                                             (##car _%e128987128999%_))
                                                            (_%tl128989129004%_
                                                             (##cdr _%e128987128999%_)))
                                                        (let* ((_%condition129007%_
                                                                _%hd128988129002%_)
                                                               (_%body129009%_
                                                                _%tl128989129004%_))
                                                          (if (gx#stx-eq?
                                                               _%condition129007%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest128983%_)
                          _%body129009%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx128919%_
                           _%hd128981%_))
                      (if (_%satisfied?128921%_ _%condition129007%_)
                          _%body129009%_
                          (_%loop128922%_ _%rest128983%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128986128995%_)))))
                                        (_%E128985129014%_))))
                                  (_%E128955128969%_)))))
                      (_%E128954129018%_)))))
          (let* ((_%e128923128930%_ _%stx128919%_)
                 (_%E128925128934%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e128923128930%_)))
                 (_%E128924128948%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128923128930%_)
                        (let ((_%e128926128938%_
                               (gx#syntax-e _%e128923128930%_)))
                          (let ((_%hd128927128941%_ (##car _%e128926128938%_))
                                (_%tl128928128943%_ (##cdr _%e128926128938%_)))
                            (let ((_%clauses128946%_ _%tl128928128943%_))
                              (if (gx#stx-list? _%clauses128946%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop128922%_ _%clauses128946%_))
                                  (_%E128925128934%_)))))
                        (_%E128925128934%_)))))
            (_%E128924128948%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx128862%_ _%rpath128863%_)
        (let* ((_%e128864128874%_ _%stx128862%_)
               (_%E128866128878%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128864128874%_)))
               (_%E128865128905%_
                (lambda ()
                  (if (gx#stx-pair? _%e128864128874%_)
                      (let ((_%e128867128882%_
                             (gx#syntax-e _%e128864128874%_)))
                        (let ((_%hd128868128885%_ (##car _%e128867128882%_))
                              (_%tl128869128887%_ (##cdr _%e128867128882%_)))
                          (if (gx#stx-pair? _%tl128869128887%_)
                              (let ((_%e128870128890%_
                                     (gx#syntax-e _%tl128869128887%_)))
                                (let ((_%hd128871128893%_
                                       (##car _%e128870128890%_))
                                      (_%tl128872128895%_
                                       (##cdr _%e128870128890%_)))
                                  (let ((_%path128898%_ _%hd128871128893%_))
                                    (if (gx#stx-null? _%tl128872128895%_)
                                        (if (gx#stx-string? _%path128898%_)
                                            (let ((_%rpath128903%_
                                                   (let ((_%$e128900%_
                                                          _%rpath128863%_))
                                                     (if _%$e128900%_
                                                         _%$e128900%_
                                                         (gx#core-resolve-path__%
                                                          _%path128898%_
                                                          (gx#stx-source
                                                           _%stx128862%_))))))
                                              (if (member _%rpath128903%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx128862%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath128903%_))
                                                    (gx#stx-source
                                                     _%stx128862%_)))))
                                            (_%E128866128878%_))
                                        (_%E128866128878%_)))))
                              (_%E128866128878%_))))
                      (_%E128866128878%_)))))
          (_%E128865128905%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx128912%_)
        (let ((_%rpath128914%_ '#f))
          (gx#core-expand-include%__% _%stx128912%_ _%rpath128914%_))))
    (define gx#core-expand-include%
      (lambda _g130030_
        (let ((_g130031_ (##length _g130030_)))
          (cond ((##fx= _g130031_ 1)
                 (apply gx#core-expand-include%__0 _g130030_))
                ((##fx= _g130031_ 2)
                 (apply gx#core-expand-include%__% _g130030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g130030_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K128828%_ _%stx128829%_ _%method128830%_)
        (if (procedure? _%K128828%_)
            (let ((_%$e128833%_ (gx#stx-source _%stx128829%_)))
              (if _%$e128833%_
                  ((lambda (_%g128835128837%_)
                     (gx#stx-wrap-source
                      (_%K128828%_ _%stx128829%_)
                      _%g128835128837%_))
                   _%$e128833%_)
                  (_%K128828%_ _%stx128829%_)))
            (let ((_%$e128841%_
                   (bound-method-ref _%K128828%_ _%method128830%_)))
              (if _%$e128841%_
                  ((lambda (_%g128843128845%_)
                     (gx#core-apply-expander__%
                      _%g128843128845%_
                      _%stx128829%_
                      _%method128830%_))
                   _%$e128841%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx128829%_
                   _%method128830%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K128852%_ _%stx128853%_)
        (let ((_%method128855%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K128852%_
           _%stx128853%_
           _%method128855%_))))
    (define gx#core-apply-expander
      (lambda _g130032_
        (let ((_g130033_ (##length _g130032_)))
          (cond ((##fx= _g130033_ 2)
                 (apply gx#core-apply-expander__0 _g130032_))
                ((##fx= _g130033_ 3)
                 (apply gx#core-apply-expander__% _g130032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g130032_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self128813%_ _%stx128814%_)
        (let ((_%self128817%_ _%self128813%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx128814%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self128655%_ _%stx128656%_)
        (let* ((_%self128659%_ _%self128655%_)
               (_%self128668128674%_ _%self128659%_)
               (_%E128670128678%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128668128674%_
                         '((macro-expander K)))
                  '#!void))
               (_%K128671128683%_
                (lambda (_%K128681%_)
                  (gx#core-apply-expander__0 _%K128681%_ _%stx128656%_)))
               (_%e128672128686%_
                (##unchecked-structure-ref _%self128668128674%_ '1 '#f '#f))
               (_%K128689%_ _%e128672128686%_))
          (_%K128671128683%_ _%K128689%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self128497%_ _%stx128498%_)
        (let ((_%self128501%_ _%self128497%_))
          (if (gx#sealed-syntax? _%stx128498%_)
              _%stx128498%_
              (let* ((_%self128510128516%_ _%self128501%_)
                     (_%E128512128520%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self128510128516%_
                               '((core-expander K)))
                        '#!void))
                     (_%K128513128525%_
                      (lambda (_%K128523%_)
                        (gx#core-apply-expander__0 _%K128523%_ _%stx128498%_)))
                     (_%e128514128528%_
                      (##unchecked-structure-ref
                       _%self128510128516%_
                       '1
                       '#f
                       '#f))
                     (_%K128531%_ _%e128514128528%_))
                (_%K128513128525%_ _%K128531%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self128348%_ _%stx128349%_ _%top?128350%_)
        (let ((_%self128353%_ _%self128348%_))
          (if (_%top?128350%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self128353%_
               _%stx128349%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx128349%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self128366%_ _%stx128367%_)
        (let ((_%top?128369%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self128366%_
           _%stx128367%_
           _%top?128369%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g130034_
        (let ((_g130035_ (##length _g130034_)))
          (cond ((##fx= _g130035_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g130034_))
                ((##fx= _g130035_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g130034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g130034_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self128211%_ _%stx128212%_)
        (let ((_%self128215%_ _%self128211%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self128215%_
           _%stx128212%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self128025%_ _%stx128026%_)
        (let* ((_%self128029%_ _%self128025%_)
               (_%self128038128044%_ _%self128029%_)
               (_%E128040128048%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128038128044%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K128041128081%_
                (lambda (_%id128051%_)
                  (let* ((_%e128052128059%_ _%stx128026%_)
                         (_%E128054128063%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e128052128059%_)))
                         (_%E128053128077%_
                          (lambda ()
                            (if (gx#stx-pair? _%e128052128059%_)
                                (let ((_%e128055128067%_
                                       (gx#syntax-e _%e128052128059%_)))
                                  (let ((_%hd128056128070%_
                                         (##car _%e128055128067%_))
                                        (_%tl128057128072%_
                                         (##cdr _%e128055128067%_)))
                                    (let ((_%body128075%_ _%tl128057128072%_))
                                      (gx#core-cons
                                       _%id128051%_
                                       _%body128075%_))))
                                (_%E128054128063%_)))))
                    (_%E128053128077%_))))
               (_%e128042128084%_
                (##unchecked-structure-ref _%self128038128044%_ '1 '#f '#f))
               (_%id128087%_ _%e128042128084%_))
          (_%K128041128081%_ _%id128087%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self127851%_ _%stx127852%_ _%method127853%_)
        (let* ((_%self127854127862%_ _%self127851%_)
               (_%E127856127866%_
                (lambda ()
                  (error '"No clause matching"
                         _%self127854127862%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K127857127873%_
                (lambda (_%phi127869%_ _%ctx127870%_ _%K127871%_)
                  (gx#core-apply-user-macro
                   _%K127871%_
                   _%stx127852%_
                   _%ctx127870%_
                   _%phi127869%_
                   _%method127853%_))))
          (if (##structure-instance-of?
               _%self127854127862%_
               'gx#user-expander::t)
              (let* ((_%e127858127876%_
                      (##unchecked-structure-ref
                       _%self127854127862%_
                       '1
                       '#f
                       '#f))
                     (_%K127879%_ _%e127858127876%_)
                     (_%e127859127881%_
                      (##unchecked-structure-ref
                       _%self127854127862%_
                       '2
                       '#f
                       '#f))
                     (_%ctx127884%_ _%e127859127881%_)
                     (_%e127860127886%_
                      (##unchecked-structure-ref
                       _%self127854127862%_
                       '3
                       '#f
                       '#f))
                     (_%phi127889%_ _%e127860127886%_))
                (_%K127857127873%_ _%phi127889%_ _%ctx127884%_ _%K127879%_))
              (_%E127856127866%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self127894%_ _%stx127895%_)
        (let ((_%method127897%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self127894%_
           _%stx127895%_
           _%method127897%_))))
    (define gx#core-apply-user-expander
      (lambda _g130036_
        (let ((_g130037_ (##length _g130036_)))
          (cond ((##fx= _g130037_ 2)
                 (apply gx#core-apply-user-expander__0 _g130036_))
                ((##fx= _g130037_ 3)
                 (apply gx#core-apply-user-expander__% _g130036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g130036_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K127841%_
               _%stx127842%_
               _%ctx127843%_
               _%phi127844%_
               _%method127845%_)
        (let ((_%mark127847%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx127843%_
                _%phi127844%_
                _%stx127842%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K127841%_
               (gx#stx-apply-mark _%stx127842%_ _%mark127847%_)
               _%method127845%_)
              _%mark127847%_))
           gx#current-expander-marks
           (cons _%mark127847%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx127689%_ _%phi127690%_ _%ctx127691%_)
        (let _%lp127693%_ ((_%bind127695%_
                            (gx#core-resolve-identifier__%
                             _%stx127689%_
                             _%phi127690%_
                             _%ctx127691%_)))
          (if (##structure-direct-instance-of?
               _%bind127695%_
               'gx#import-binding::t)
              (_%lp127693%_
               (##unchecked-structure-ref _%bind127695%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind127695%_
                   'gx#alias-binding::t)
                  (_%lp127693%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind127695%_ '4 '#f '#f)
                    _%phi127690%_
                    _%ctx127691%_))
                  _%bind127695%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx127703%_)
        (let* ((_%phi127705%_ (gx#current-expander-phi))
               (_%ctx127707%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx127703%_
           _%phi127705%_
           _%ctx127707%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx127709%_ _%phi127710%_)
        (let ((_%ctx127712%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx127709%_
           _%phi127710%_
           _%ctx127712%_))))
    (define gx#resolve-identifier
      (lambda _g130038_
        (let ((_g130039_ (##length _g130038_)))
          (cond ((##fx= _g130039_ 1)
                 (apply gx#resolve-identifier__0 _g130038_))
                ((##fx= _g130039_ 2)
                 (apply gx#resolve-identifier__1 _g130038_))
                ((##fx= _g130039_ 3)
                 (apply gx#resolve-identifier__% _g130038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g130038_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx127644%_
               _%val127645%_
               _%rebind?127646%_
               _%phi127647%_
               _%ctx127648%_)
        (let ((_%rebind?127653%_
               (if (not _%rebind?127646%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?127646%_)
                       _%rebind?127646%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx127644%_)
           _%val127645%_
           _%rebind?127653%_
           _%phi127647%_
           _%ctx127648%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx127658%_ _%val127659%_)
        (let* ((_%rebind?127661%_ '#f)
               (_%phi127663%_ (gx#current-expander-phi))
               (_%ctx127665%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx127658%_
           _%val127659%_
           _%rebind?127661%_
           _%phi127663%_
           _%ctx127665%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx127667%_ _%val127668%_ _%rebind?127669%_)
        (let* ((_%phi127671%_ (gx#current-expander-phi))
               (_%ctx127673%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx127667%_
           _%val127668%_
           _%rebind?127669%_
           _%phi127671%_
           _%ctx127673%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx127675%_ _%val127676%_ _%rebind?127677%_ _%phi127678%_)
        (let ((_%ctx127680%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx127675%_
           _%val127676%_
           _%rebind?127677%_
           _%phi127678%_
           _%ctx127680%_))))
    (define gx#bind-identifier!
      (lambda _g130040_
        (let ((_g130041_ (##length _g130040_)))
          (cond ((##fx= _g130041_ 2) (apply gx#bind-identifier!__0 _g130040_))
                ((##fx= _g130041_ 3) (apply gx#bind-identifier!__1 _g130040_))
                ((##fx= _g130041_ 4) (apply gx#bind-identifier!__2 _g130040_))
                ((##fx= _g130041_ 5) (apply gx#bind-identifier!__% _g130040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g130040_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx127610%_ _%phi127611%_ _%ctx127612%_)
        (let _%lp127614%_ ((_%e127616%_ _%stx127610%_)
                           (_%marks127617%_ (gx#current-expander-marks)))
          (if (symbol? _%e127616%_)
              (gx#core-resolve-binding
               _%e127616%_
               _%phi127611%_
               _%phi127611%_
               _%ctx127612%_
               (reverse _%marks127617%_))
              (if (gx#identifier-quote? _%e127616%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e127616%_ '1 '#f '#f)
                   _%phi127611%_
                   '0
                   (##unchecked-structure-ref _%e127616%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e127616%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e127616%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e127616%_ '1 '#f '#f)
                       _%phi127611%_
                       _%phi127611%_
                       _%ctx127612%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e127616%_ '3 '#f '#f)
                        _%marks127617%_))
                      (if (##structure-direct-instance-of?
                           _%e127616%_
                           'gx#syntax-wrap::t)
                          (_%lp127614%_
                           (##unchecked-structure-ref _%e127616%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e127616%_ '3 '#f '#f)
                            _%marks127617%_))
                          (if (##structure-instance-of?
                               _%e127616%_
                               'gerbil#AST::t)
                              (_%lp127614%_
                               (##unchecked-structure-ref
                                _%e127616%_
                                '1
                                '#f
                                '#f)
                               _%marks127617%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx127610%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx127628%_)
        (let* ((_%phi127630%_ (gx#current-expander-phi))
               (_%ctx127632%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx127628%_
           _%phi127630%_
           _%ctx127632%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx127634%_ _%phi127635%_)
        (let ((_%ctx127637%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx127634%_
           _%phi127635%_
           _%ctx127637%_))))
    (define gx#core-resolve-identifier
      (lambda _g130042_
        (let ((_g130043_ (##length _g130042_)))
          (cond ((##fx= _g130043_ 1)
                 (apply gx#core-resolve-identifier__0 _g130042_))
                ((##fx= _g130043_ 2)
                 (apply gx#core-resolve-identifier__1 _g130042_))
                ((##fx= _g130043_ 3)
                 (apply gx#core-resolve-identifier__% _g130042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g130042_))))))
    (define gx#core-resolve-binding
      (lambda (_%id127520%_
               _%phi127521%_
               _%src-phi127522%_
               _%ctx127523%_
               _%marks127524%_)
        (letrec ((_%resolve127526%_
                  (lambda (_%ctx127594%_ _%src-phi127595%_ _%key127596%_)
                    (let _%lp127598%_ ((_%ctx127600%_
                                        (gx#core-context-shift
                                         _%ctx127594%_
                                         _%phi127521%_))
                                       (_%dphi127601%_
                                        (fx- _%phi127521%_ _%src-phi127595%_)))
                      (let ((_%$e127603%_
                             (gx#core-context-resolve
                              _%ctx127600%_
                              _%key127596%_)))
                        (if _%$e127603%_
                            _%$e127603%_
                            (if (fxzero? _%dphi127601%_)
                                '#f
                                (if (fxpositive? _%dphi127601%_)
                                    (_%lp127598%_
                                     (gx#core-context-shift _%ctx127600%_ '-1)
                                     (##fx- _%dphi127601%_ '1))
                                    (_%lp127598%_
                                     (gx#core-context-shift _%ctx127600%_ '1)
                                     (##fx+ _%dphi127601%_ '1))))))))))
          (let _%lp127528%_ ((_%ctx127530%_ _%ctx127523%_)
                             (_%src-phi127531%_ _%src-phi127522%_)
                             (_%rest127532%_ _%marks127524%_))
            (let* ((_%rest127533127541%_ _%rest127532%_)
                   (_%else127535127549%_
                    (lambda ()
                      (_%resolve127526%_
                       _%ctx127530%_
                       _%src-phi127531%_
                       _%id127520%_)))
                   (_%K127537127582%_
                    (lambda (_%rest127552%_ _%hd127553%_)
                      (let* ((_%hd127554127560%_ _%hd127553%_)
                             (_%E127556127564%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd127554127560%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K127557127574%_
                              (lambda (_%subst127567%_)
                                (let ((_%$e127571%_
                                       (let ((_%key127569%_
                                              (if _%subst127567%_
                                                  (hash-get
                                                   _%subst127567%_
                                                   _%id127520%_)
                                                  '#f)))
                                         (if _%key127569%_
                                             (_%resolve127526%_
                                              _%ctx127530%_
                                              _%src-phi127531%_
                                              _%key127569%_)
                                             '#f))))
                                  (if _%$e127571%_
                                      _%$e127571%_
                                      (_%lp127528%_
                                       (##unchecked-structure-ref
                                        _%hd127553%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd127553%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest127552%_))))))
                        (if (##structure-instance-of?
                             _%hd127554127560%_
                             'gx#expander-mark::t)
                            (let* ((_%e127558127577%_
                                    (##unchecked-structure-ref
                                     _%hd127554127560%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst127580%_ _%e127558127577%_))
                              (_%K127557127574%_ _%subst127580%_))
                            (_%E127556127564%_))))))
              (if (pair? _%rest127533127541%_)
                  (let ((_%hd127538127585%_ (##car _%rest127533127541%_))
                        (_%tl127539127587%_ (##cdr _%rest127533127541%_)))
                    (let* ((_%hd127590%_ _%hd127538127585%_)
                           (_%rest127592%_ _%tl127539127587%_))
                      (_%K127537127582%_ _%rest127592%_ _%hd127590%_)))
                  (_%else127535127549%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key127390%_
               _%val127391%_
               _%rebind?127392%_
               _%phi127393%_
               _%ctx127394%_)
        (letrec ((_%update-binding127396%_
                  (lambda (_%xval127469%_)
                    (if (or (_%rebind?127392%_
                             _%ctx127394%_
                             _%xval127469%_
                             _%val127391%_)
                            (and (##structure-direct-instance-of?
                                  _%xval127469%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval127469%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val127391%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val127391%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval127469%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val127391%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val127391%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval127469%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val127391%_
                        (if (and (##structure-direct-instance-of?
                                  _%val127391%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val127391%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval127469%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val127391%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval127469%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval127469%_
                            (if (and (##structure-direct-instance-of?
                                      _%val127391%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval127469%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key127390%_
                                 (cons (##unchecked-structure-ref
                                        _%val127391%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val127391%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval127469%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval127469%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval127469%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval127469%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key127390%_
                                 _%val127391%_
                                 _%xval127469%_))))))
                 (_%gensubst127397%_
                  (lambda (_%subst127464%_ _%id127465%_)
                    (let ((_%eid127467%_
                           (gensym (if (uninterned-symbol? _%id127465%_)
                                       '%
                                       _%id127465%_))))
                      (hash-put! _%subst127464%_ _%id127465%_ _%eid127467%_)
                      _%eid127467%_)))
                 (_%subst!127398%_
                  (lambda (_%key127400%_)
                    (let* ((_%key127401127409%_ _%key127400%_)
                           (_%else127403127417%_ (lambda () _%key127400%_))
                           (_%K127405127452%_
                            (lambda (_%mark127420%_ _%id127421%_)
                              (let* ((_%mark127422127428%_ _%mark127420%_)
                                     (_%E127424127432%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark127422127428%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K127425127444%_
                                      (lambda (_%subst127435%_)
                                        (if (not _%subst127435%_)
                                            (let ((_%subst127438%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark127420%_
                                               _%subst127438%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst127397%_
                                               _%subst127438%_
                                               _%id127421%_))
                                            (let ((_%$e127440%_
                                                   (hash-get
                                                    _%subst127435%_
                                                    _%id127421%_)))
                                              (if _%$e127440%_
                                                  _%$e127440%_
                                                  (_%gensubst127397%_
                                                   _%subst127435%_
                                                   _%id127421%_)))))))
                                (if (##structure-instance-of?
                                     _%mark127422127428%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e127426127447%_
                                            (##unchecked-structure-ref
                                             _%mark127422127428%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst127450%_ _%e127426127447%_))
                                      (_%K127425127444%_ _%subst127450%_))
                                    (_%E127424127432%_))))))
                      (if (pair? _%key127401127409%_)
                          (let ((_%hd127406127455%_
                                 (##car _%key127401127409%_))
                                (_%tl127407127457%_
                                 (##cdr _%key127401127409%_)))
                            (let* ((_%id127460%_ _%hd127406127455%_)
                                   (_%mark127462%_ _%tl127407127457%_))
                              (_%K127405127452%_ _%mark127462%_ _%id127460%_)))
                          (_%else127403127417%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx127394%_ _%phi127393%_)
           (_%subst!127398%_ _%key127390%_)
           _%val127391%_
           _%update-binding127396%_))))
    (define gx#core-bind!__0
      (lambda (_%key127490%_ _%val127491%_)
        (let* ((_%rebind?127493%_ false)
               (_%phi127495%_ (gx#current-expander-phi))
               (_%ctx127497%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key127490%_
           _%val127491%_
           _%rebind?127493%_
           _%phi127495%_
           _%ctx127497%_))))
    (define gx#core-bind!__1
      (lambda (_%key127499%_ _%val127500%_ _%rebind?127501%_)
        (let* ((_%phi127503%_ (gx#current-expander-phi))
               (_%ctx127505%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key127499%_
           _%val127500%_
           _%rebind?127501%_
           _%phi127503%_
           _%ctx127505%_))))
    (define gx#core-bind!__2
      (lambda (_%key127507%_ _%val127508%_ _%rebind?127509%_ _%phi127510%_)
        (let ((_%ctx127512%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key127507%_
           _%val127508%_
           _%rebind?127509%_
           _%phi127510%_
           _%ctx127512%_))))
    (define gx#core-bind!
      (lambda _g130044_
        (let ((_g130045_ (##length _g130044_)))
          (cond ((##fx= _g130045_ 2) (apply gx#core-bind!__0 _g130044_))
                ((##fx= _g130045_ 3) (apply gx#core-bind!__1 _g130044_))
                ((##fx= _g130045_ 4) (apply gx#core-bind!__2 _g130044_))
                ((##fx= _g130045_ 5) (apply gx#core-bind!__% _g130044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g130044_))))))
    (define gx#core-identifier-key
      (lambda (_%stx127321%_)
        (if (symbol? _%stx127321%_)
            (let* ((_%g127323127331%_ (gx#current-expander-marks))
                   (_%else127325127339%_ (lambda () _%stx127321%_))
                   (_%K127327127344%_
                    (lambda (_%hd127342%_) (cons _%stx127321%_ _%hd127342%_))))
              (if (pair? _%g127323127331%_)
                  (let* ((_%hd127328127347%_ (##car _%g127323127331%_))
                         (_%hd127350%_ _%hd127328127347%_))
                    (_%K127327127344%_ _%hd127350%_))
                  (_%else127325127339%_)))
            (if (gx#identifier? _%stx127321%_)
                (let* ((_%id127353%_ (gx#syntax-local-unwrap _%stx127321%_))
                       (_%eid127355%_ (gx#stx-e _%id127353%_))
                       (_%marks127357%_
                        (gx#stx-identifier-marks* _%id127353%_))
                       (_%marks127359127367%_ _%marks127357%_)
                       (_%else127361127375%_ (lambda () _%eid127355%_))
                       (_%K127363127380%_
                        (lambda (_%hd127378%_)
                          (cons _%eid127355%_ _%hd127378%_))))
                  (if (pair? _%marks127359127367%_)
                      (let* ((_%hd127364127383%_ (##car _%marks127359127367%_))
                             (_%hd127386%_ _%hd127364127383%_))
                        (_%K127363127380%_ _%hd127386%_))
                      (_%else127361127375%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx127321%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx127260%_ _%phi127261%_)
        (letrec ((_%make-phi127263%_
                  (lambda (_%super127319%_)
                    (let ((__obj130017
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj130017
                       (##gensym 'phi)
                       _%super127319%_)
                      __obj130017)))
                 (_%make-phi/up127264%_
                  (lambda (_%ctx127314%_ _%super127315%_)
                    (let ((_%ctx+1127317%_
                           (_%make-phi127263%_ _%super127315%_)))
                      (##unchecked-structure-set!
                       _%ctx127314%_
                       _%ctx+1127317%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1127317%_
                       _%ctx127314%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1127317%_)))
                 (_%make-phi/down127265%_
                  (lambda (_%ctx127309%_ _%super127310%_)
                    (let ((_%ctx-1127312%_
                           (_%make-phi127263%_ _%super127310%_)))
                      (##unchecked-structure-set!
                       _%ctx-1127312%_
                       _%ctx127309%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx127309%_
                       _%ctx-1127312%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1127312%_)))
                 (_%shift127266%_
                  (lambda (_%ctx127292%_
                           _%delta127293%_
                           _%make-delta-context127294%_
                           _%phi127295%_
                           _%K127296%_)
                    (let ((_%$e127298%_
                           (##unchecked-structure-ref
                            _%ctx127292%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e127298%_
                          ((lambda (_%super127301%_)
                             (let* ((_%super127303%_
                                     (_%K127296%_
                                      _%super127301%_
                                      _%delta127293%_))
                                    (_%ctx+d127305%_
                                     (_%make-delta-context127294%_
                                      _%ctx127292%_
                                      _%super127303%_)))
                               (_%K127296%_
                                _%ctx+d127305%_
                                (fx- _%phi127295%_ _%delta127293%_))))
                           _%$e127298%_)
                          (error '"Bad context" _%ctx127292%_))))))
          (let _%K127268%_ ((_%ctx127270%_ _%ctx127260%_)
                            (_%phi127271%_ _%phi127261%_))
            (if (fxzero? _%phi127271%_)
                _%ctx127270%_
                (if (##structure-instance-of? _%ctx127270%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi127271%_)
                        (let ((_%$e127275%_
                               (##unchecked-structure-ref
                                _%ctx127270%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e127275%_
                              ((lambda (_%g127277127279%_)
                                 (_%K127268%_
                                  _%g127277127279%_
                                  (##fx- _%phi127271%_ '1)))
                               _%$e127275%_)
                              (_%shift127266%_
                               _%ctx127270%_
                               '1
                               _%make-phi/up127264%_
                               _%phi127271%_
                               _%K127268%_)))
                        (let ((_%$e127283%_
                               (##unchecked-structure-ref
                                _%ctx127270%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e127283%_
                              ((lambda (_%g127285127287%_)
                                 (_%K127268%_
                                  _%g127285127287%_
                                  (##fx+ _%phi127271%_ '1)))
                               _%$e127283%_)
                              (_%shift127266%_
                               _%ctx127270%_
                               '-1
                               _%make-phi/down127265%_
                               _%phi127271%_
                               _%K127268%_))))
                    _%ctx127270%_))))))
    (define gx#core-context-get
      (lambda (_%ctx127257%_ _%key127258%_)
        (hash-get
         (##unchecked-structure-ref _%ctx127257%_ '2 '#f '#f)
         _%key127258%_)))
    (define gx#core-context-put!
      (lambda (_%ctx127253%_ _%key127254%_ _%val127255%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx127253%_ '2 '#f '#f)
         _%key127254%_
         _%val127255%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx127239%_ _%key127240%_)
        (let _%lp127242%_ ((_%ctx127244%_ _%ctx127239%_))
          (let ((_%$e127246%_
                 (gx#core-context-get _%ctx127244%_ _%key127240%_)))
            (if _%$e127246%_
                _%$e127246%_
                (let ((_%$e127249%_
                       (if (##structure-instance-of?
                            _%ctx127244%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx127244%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e127249%_ (_%lp127242%_ _%$e127249%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx127228%_ _%key127229%_ _%val127230%_ _%rebind127231%_)
        (let ((_%$e127233%_ (gx#core-context-get _%ctx127228%_ _%key127229%_)))
          (if _%$e127233%_
              ((lambda (_%xval127236%_)
                 (gx#core-context-put!
                  _%ctx127228%_
                  _%key127229%_
                  (_%rebind127231%_ _%xval127236%_)))
               _%$e127233%_)
              (gx#core-context-put!
               _%ctx127228%_
               _%key127229%_
               _%val127230%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx127203%_ _%stop?127204%_)
        (let _%lp127206%_ ((_%ctx127208%_ _%ctx127203%_))
          (if (_%stop?127204%_ _%ctx127208%_)
              _%ctx127208%_
              (if (##structure-instance-of? _%ctx127208%_ 'gx#phi-context::t)
                  (_%lp127206%_
                   (##unchecked-structure-ref _%ctx127208%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx127217%_ (gx#current-expander-context))
               (_%stop?127219%_ gx#top-context?))
          (gx#core-context-top__% _%ctx127217%_ _%stop?127219%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx127221%_)
        (let ((_%stop?127223%_ gx#top-context?))
          (gx#core-context-top__% _%ctx127221%_ _%stop?127223%_))))
    (define gx#core-context-top
      (lambda _g130046_
        (let ((_g130047_ (##length _g130046_)))
          (cond ((##fx= _g130047_ 0) (apply gx#core-context-top__0 _g130046_))
                ((##fx= _g130047_ 1) (apply gx#core-context-top__1 _g130046_))
                ((##fx= _g130047_ 2) (apply gx#core-context-top__% _g130046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g130046_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx127188%_)
        (let _%lp127190%_ ((_%ctx127192%_ _%ctx127188%_))
          (if (##structure-instance-of? _%ctx127192%_ 'gx#phi-context::t)
              (_%lp127190%_
               (##unchecked-structure-ref _%ctx127192%_ '3 '#f '#f))
              _%ctx127192%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx127198%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx127198%_))))
    (define gx#core-context-root
      (lambda _g130048_
        (let ((_g130049_ (##length _g130048_)))
          (cond ((##fx= _g130049_ 0) (apply gx#core-context-root__0 _g130048_))
                ((##fx= _g130049_ 1) (apply gx#core-context-root__% _g130048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g130048_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx127170%_ . _%ignore127171%_)
        (let ((_%$e127173%_ (gx#current-expander-allow-rebind?)))
          (if _%$e127173%_
              _%$e127173%_
              (if (##structure-instance-of? _%ctx127170%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx127170%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx127170%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx127180%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx127180%_))))
    (define gx#core-context-rebind?
      (lambda _g130050_
        (let ((_g130051_ (##length _g130050_)))
          (cond ((##fx= _g130051_ 0)
                 (apply gx#core-context-rebind?__0 _g130050_))
                ((##fx= _g130051_ 1)
                 (apply gx#core-context-rebind?__% _g130050_))
                ((##fx>= _g130051_ 1)
                 (apply gx#core-context-rebind?__% _g130050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g130050_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx127153%_)
        (let ((_%$e127155%_ (gx#core-context-top__1 _%ctx127153%_)))
          (if _%$e127155%_
              ((lambda (_%ctx127158%_)
                 (if (##structure-instance-of?
                      _%ctx127158%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx127158%_ '6 '#f '#f)
                     '#f))
               _%$e127155%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx127165%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx127165%_))))
    (define gx#core-context-namespace
      (lambda _g130052_
        (let ((_g130053_ (##length _g130052_)))
          (cond ((##fx= _g130053_ 0)
                 (apply gx#core-context-namespace__0 _g130052_))
                ((##fx= _g130053_ 1)
                 (apply gx#core-context-namespace__% _g130052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g130052_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind127139%_ _%is?127140%_)
        (if (##structure-direct-instance-of?
             _%bind127139%_
             'gx#syntax-binding::t)
            (_%is?127140%_
             (##unchecked-structure-ref _%bind127139%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind127145%_)
        (let ((_%is?127147%_ gx#expander?))
          (gx#expander-binding?__% _%bind127145%_ _%is?127147%_))))
    (define gx#expander-binding?
      (lambda _g130054_
        (let ((_g130055_ (##length _g130054_)))
          (cond ((##fx= _g130055_ 1) (apply gx#expander-binding?__0 _g130054_))
                ((##fx= _g130055_ 2) (apply gx#expander-binding?__% _g130054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g130054_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind127136%_)
        (gx#expander-binding?__% _%bind127136%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind127134%_)
        (gx#expander-binding?__% _%bind127134%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind127128%_)
        (letrec ((_%direct-special-form?127130%_
                  (lambda (_%obj127132%_)
                    (##structure-direct-instance-of?
                     _%obj127132%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind127128%_
           _%direct-special-form?127130%_))))
    (define gx#special-form-binding?
      (lambda (_%bind127126%_)
        (gx#expander-binding?__% _%bind127126%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind127117%_)
        (letrec ((_%feature?127119%_
                  (lambda (_%e127121%_)
                    (let ((_%$e127123%_
                           (##structure-instance-of?
                            _%e127121%_
                            'gx#feature-expander::t)))
                      (if _%$e127123%_
                          _%$e127123%_
                          (##structure-instance-of?
                           _%e127121%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind127117%_ _%feature?127119%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind127115%_)
        (gx#expander-binding?__% _%bind127115%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id127102%_ _%bound?127103%_)
        (if (gx#identifier? _%id127102%_)
            (_%bound?127103%_ (gx#resolve-identifier__0 _%id127102%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id127108%_)
        (let ((_%bound?127110%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id127108%_ _%bound?127110%_))))
    (define gx#core-bound-identifier?
      (lambda _g130056_
        (let ((_g130057_ (##length _g130056_)))
          (cond ((##fx= _g130057_ 1)
                 (apply gx#core-bound-identifier?__0 _g130056_))
                ((##fx= _g130057_ 2)
                 (apply gx#core-bound-identifier?__% _g130056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g130056_))))))
    (define gx#core-identifier=?
      (lambda (_%x127092%_ _%y127093%_)
        (letrec ((_%y=?127095%_
                  (lambda (_%xid127099%_)
                    ((if (list? _%y127093%_) memq eq?)
                     _%xid127099%_
                     _%y127093%_))))
          (let ((_%bind127097%_ (gx#resolve-identifier__0 _%x127092%_)))
            (if (##structure-instance-of? _%bind127097%_ 'gx#binding::t)
                (_%y=?127095%_
                 (##unchecked-structure-ref _%bind127097%_ '1 '#f '#f))
                (_%y=?127095%_ (gx#stx-e _%x127092%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e127090%_)
        (if (interned-symbol? _%e127090%_)
            (string-index__0 (symbol->string _%e127090%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx127043%_ _%src127044%_ _%ctx127045%_ _%marks127046%_)
        (if (##structure? _%stx127043%_)
            (let ((_%$e127048%_ (gx#sealed-syntax-unwrap _%stx127043%_)))
              (if _%$e127048%_
                  _%$e127048%_
                  (if (gx#identifier? _%stx127043%_)
                      (let ((_%id127052%_
                             (gx#stx-unwrap__% _%stx127043%_ _%marks127046%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id127052%_ '1 '#f '#f)
                         (let ((_%$e127054%_
                                (##unchecked-structure-ref
                                 _%id127052%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e127054%_ _%$e127054%_ _%src127044%_))
                         _%ctx127045%_
                         (##unchecked-structure-ref _%id127052%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx127043%_)
                       (let ((_%$e127058%_ (gx#stx-source _%stx127043%_)))
                         (if _%$e127058%_ _%$e127058%_ _%src127044%_))
                       _%ctx127045%_
                       (reverse _%marks127046%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx127043%_
             _%src127044%_
             _%ctx127045%_
             (reverse _%marks127046%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx127064%_)
        (let* ((_%src127066%_ '#f)
               (_%ctx127068%_ (gx#current-expander-context))
               (_%marks127070%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx127064%_
           _%src127066%_
           _%ctx127068%_
           _%marks127070%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx127072%_ _%src127073%_)
        (let* ((_%ctx127075%_ (gx#current-expander-context))
               (_%marks127077%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx127072%_
           _%src127073%_
           _%ctx127075%_
           _%marks127077%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx127079%_ _%src127080%_ _%ctx127081%_)
        (let ((_%marks127083%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx127079%_
           _%src127080%_
           _%ctx127081%_
           _%marks127083%_))))
    (define gx#core-quote-syntax
      (lambda _g130058_
        (let ((_g130059_ (##length _g130058_)))
          (cond ((##fx= _g130059_ 1) (apply gx#core-quote-syntax__0 _g130058_))
                ((##fx= _g130059_ 2) (apply gx#core-quote-syntax__1 _g130058_))
                ((##fx= _g130059_ 3) (apply gx#core-quote-syntax__2 _g130058_))
                ((##fx= _g130059_ 4) (apply gx#core-quote-syntax__% _g130058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g130058_))))))
    (define gx#core-cons
      (lambda (_%hd127039%_ _%tl127040%_)
        (cons (gx#core-quote-syntax__0 _%hd127039%_) _%tl127040%_)))
    (define gx#core-list
      (lambda (_%hd127036%_ . _%rest127037%_)
        (cons (gx#core-quote-syntax__0 _%hd127036%_) _%rest127037%_)))
    (define gx#core-cons*
      (lambda (_%hd127033%_ . _%rest127034%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd127033%_) _%rest127034%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path127002%_ _%rel127003%_)
        (let ((_%path127020%_ (gx#stx-e _%stx-path127002%_))
              (_%reldir127021%_
               (let _%lp127005%_ ((_%relsrc127007%_
                                   (let ((_%$e127017%_
                                          (gx#stx-source _%stx-path127002%_)))
                                     (if _%$e127017%_
                                         _%$e127017%_
                                         _%rel127003%_))))
                 (if (##structure-instance-of? _%relsrc127007%_ 'gerbil#AST::t)
                     (_%lp127005%_
                      (let ((_%$e127010%_ (gx#stx-source _%relsrc127007%_)))
                        (if _%$e127010%_
                            _%$e127010%_
                            (gx#stx-e _%relsrc127007%_))))
                     (if (source-location-path? _%relsrc127007%_)
                         (path-directory
                          (source-location-path _%relsrc127007%_))
                         (if (string? _%relsrc127007%_)
                             (path-directory _%relsrc127007%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path127020%_ (path-normalize _%reldir127021%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path127026%_)
        (let ((_%rel127028%_ '#f))
          (gx#core-resolve-path__% _%stx-path127026%_ _%rel127028%_))))
    (define gx#core-resolve-path
      (lambda _g130060_
        (let ((_g130061_ (##length _g130060_)))
          (cond ((##fx= _g130061_ 1) (apply gx#core-resolve-path__0 _g130060_))
                ((##fx= _g130061_ 2) (apply gx#core-resolve-path__% _g130060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g130060_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr126958%_ _%ctx126959%_)
        (let* ((_%repr126960126967%_ _%repr126958%_)
               (_%E126962126971%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr126960126967%_
                         '([phi . subs]))
                  '#!void))
               (_%K126963126979%_
                (lambda (_%subs126974%_ _%phi126975%_)
                  (let ((_%subst126977%_
                         (if (null? _%subs126974%_)
                             '#f
                             (list->hash-table-eq _%subs126974%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst126977%_
                     _%ctx126959%_
                     _%phi126975%_
                     '#f)))))
          (if (pair? _%repr126960126967%_)
              (let ((_%hd126964126982%_ (##car _%repr126960126967%_))
                    (_%tl126965126984%_ (##cdr _%repr126960126967%_)))
                (let* ((_%phi126987%_ _%hd126964126982%_)
                       (_%subs126989%_ _%tl126965126984%_))
                  (_%K126963126979%_ _%subs126989%_ _%phi126987%_)))
              (_%E126962126971%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr126994%_)
        (let ((_%ctx126996%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr126994%_ _%ctx126996%_))))
    (define gx#core-deserialize-mark
      (lambda _g130062_
        (let ((_g130063_ (##length _g130062_)))
          (cond ((##fx= _g130063_ 1)
                 (apply gx#core-deserialize-mark__0 _g130062_))
                ((##fx= _g130063_ 2)
                 (apply gx#core-deserialize-mark__% _g130062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g130062_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx126955%_)
        (gx#stx-rewrap _%stx126955%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx126953%_)
        (gx#stx-unwrap__% _%stx126953%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx126923%_)
        (let* ((_%g126924126932%_ (gx#current-expander-marks))
               (_%else126926126940%_ (lambda () _%stx126923%_))
               (_%K126928126945%_
                (lambda (_%hd126943%_)
                  (gx#stx-apply-mark _%stx126923%_ _%hd126943%_))))
          (if (pair? _%g126924126932%_)
              (let* ((_%hd126929126948%_ (##car _%g126924126932%_))
                     (_%hd126951%_ _%hd126929126948%_))
                (_%K126928126945%_ _%hd126951%_))
              (_%else126926126940%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx126908%_ _%E126909%_)
        (let ((_%bind126911%_ (gx#resolve-identifier__0 _%stx126908%_)))
          (if (##structure-direct-instance-of?
               _%bind126911%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind126911%_ '4 '#f '#f)
              (_%E126909%_ _%stx126908%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx126916%_)
        (let ((_%E126918%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx126916%_ _%E126918%_))))
    (define gx#syntax-local-e
      (lambda _g130064_
        (let ((_g130065_ (##length _g130064_)))
          (cond ((##fx= _g130065_ 1) (apply gx#syntax-local-e__0 _g130064_))
                ((##fx= _g130065_ 2) (apply gx#syntax-local-e__% _g130064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g130064_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx126892%_ _%E126893%_)
        (let ((_%e126895%_ (gx#syntax-local-e__% _%stx126892%_ _%E126893%_)))
          (if (##structure-instance-of? _%e126895%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e126895%_ '1 '#f '#f)
              _%e126895%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx126900%_)
        (let ((_%E126902%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx126900%_ _%E126902%_))))
    (define gx#syntax-local-value
      (lambda _g130066_
        (let ((_g130067_ (##length _g130066_)))
          (cond ((##fx= _g130067_ 1)
                 (apply gx#syntax-local-value__0 _g130066_))
                ((##fx= _g130067_ 2)
                 (apply gx#syntax-local-value__% _g130066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g130066_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx126889%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx126889%_)))))
