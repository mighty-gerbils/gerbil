(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1756721295)
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
      (lambda _%$args129974%_
        (apply make-instance gx#expander-context::t _%$args129974%_)))
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
      (lambda _%$args129971%_
        (apply make-instance gx#root-context::t _%$args129971%_)))
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
      (lambda _%$args129968%_
        (apply make-instance gx#phi-context::t _%$args129968%_)))
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
      (lambda _%$args129965%_
        (apply make-instance gx#top-context::t _%$args129965%_)))
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
      (lambda _%$args129962%_
        (apply make-instance gx#module-context::t _%$args129962%_)))
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
      (lambda _%$args129959%_
        (apply make-instance gx#prelude-context::t _%$args129959%_)))
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
      (lambda _%$args129956%_
        (apply make-instance gx#local-context::t _%$args129956%_)))
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
      (lambda (_%self129929%_ _%id129930%_ _%super129931%_)
        (let ((_%self129934%_ _%self129929%_))
          (if (##fx< '3 (##structure-length _%self129934%_))
              (begin
                (##unchecked-structure-set!
                 _%self129934%_
                 _%id129930%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129934%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129934%_
                 _%super129931%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129934%_
                     '3
                     (##structure-length _%self129934%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self129947%_ _%id129948%_)
        (let ((_%super129950%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self129947%_
           _%id129948%_
           _%super129950%_))))
    (define gx#phi-context:::init!
      (lambda _g130016_
        (let ((_g130017_ (##length _g130016_)))
          (cond ((##fx= _g130017_ 2)
                 (apply gx#phi-context:::init!__0 _g130016_))
                ((##fx= _g130017_ 3)
                 (apply gx#phi-context:::init!__% _g130016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g130016_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self129782%_ _%super129783%_)
        (let ((_%self129786%_ _%self129782%_))
          (if (##fx< '3 (##structure-length _%self129786%_))
              (begin
                (##unchecked-structure-set!
                 _%self129786%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129786%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129786%_
                 _%super129783%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129786%_
                     '3
                     (##structure-length _%self129786%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self129799%_)
        (let ((_%super129801%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self129799%_ _%super129801%_))))
    (define gx#local-context:::init!
      (lambda _g130018_
        (let ((_g130019_ (##length _g130018_)))
          (cond ((##fx= _g130019_ 1)
                 (apply gx#local-context:::init!__0 _g130018_))
                ((##fx= _g130019_ 2)
                 (apply gx#local-context:::init!__% _g130018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g130018_))))))
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
      (lambda _%$args129656%_
        (apply make-instance gx#binding::t _%$args129656%_)))
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
      (lambda _%$args129653%_
        (apply make-instance gx#runtime-binding::t _%$args129653%_)))
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
      (lambda _%$args129650%_
        (apply make-instance gx#local-binding::t _%$args129650%_)))
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
      (lambda _%$args129647%_
        (apply make-instance gx#top-binding::t _%$args129647%_)))
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
      (lambda _%$args129644%_
        (apply make-instance gx#module-binding::t _%$args129644%_)))
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
      (lambda _%$args129641%_
        (apply make-instance gx#extern-binding::t _%$args129641%_)))
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
      (lambda _%$args129638%_
        (apply make-instance gx#syntax-binding::t _%$args129638%_)))
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
      (lambda _%$args129635%_
        (apply make-instance gx#import-binding::t _%$args129635%_)))
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
      (lambda _%$args129632%_
        (apply make-instance gx#alias-binding::t _%$args129632%_)))
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
      (lambda _%$args129629%_
        (apply make-instance gx#expander::t _%$args129629%_)))
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
      (lambda _%$args129626%_
        (apply make-instance gx#core-expander::t _%$args129626%_)))
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
      (lambda _%$args129623%_
        (apply make-instance gx#expression-form::t _%$args129623%_)))
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
      (lambda _%$args129620%_
        (apply make-instance gx#special-form::t _%$args129620%_)))
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
      (lambda _%$args129617%_
        (apply make-instance gx#definition-form::t _%$args129617%_)))
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
      (lambda _%$args129614%_
        (apply make-instance gx#top-special-form::t _%$args129614%_)))
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
      (lambda _%$args129611%_
        (apply make-instance gx#module-special-form::t _%$args129611%_)))
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
      (lambda _%$args129608%_
        (apply make-instance gx#feature-expander::t _%$args129608%_)))
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
      (lambda _%$args129605%_
        (apply make-instance gx#private-feature-expander::t _%$args129605%_)))
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
      (lambda _%$args129602%_
        (apply make-instance gx#reserved-expander::t _%$args129602%_)))
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
      (lambda _%$args129599%_
        (apply make-instance gx#macro-expander::t _%$args129599%_)))
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
      (lambda _%$args129596%_
        (apply make-instance gx#rename-macro-expander::t _%$args129596%_)))
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
      (lambda _%$args129593%_
        (apply make-instance gx#user-expander::t _%$args129593%_)))
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
      (lambda _%$args129590%_
        (apply make-instance gx#expander-mark::t _%$args129590%_)))
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
      (lambda (_%ctx129574%_
               _%message129575%_
               _%stx129576%_
               .
               _%details129577%_)
        (let ((_%ctx129588%_
               (let ((_%$e129579%_ _%ctx129574%_))
                 (if _%$e129579%_
                     _%$e129579%_
                     (let ((_%$e129582%_ (gx#core-context-top__0)))
                       (if _%$e129582%_
                           ((lambda (_%ctx129585%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx129585%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e129582%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message129575%_
                  (cons _%stx129576%_ _%details129577%_)
                  _%ctx129588%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx129561%_ _%expression?129562%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx129561%_ _%expression?129562%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx129567%_)
        (let ((_%expression?129569%_ '#f))
          (gx#eval-syntax__% _%stx129567%_ _%expression?129569%_))))
    (define gx#eval-syntax
      (lambda _g130020_
        (let ((_g130021_ (##length _g130020_)))
          (cond ((##fx= _g130021_ 1) (apply gx#eval-syntax__0 _g130020_))
                ((##fx= _g130021_ 2) (apply gx#eval-syntax__% _g130020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g130020_))))))
    (define gx#eval-syntax*
      (lambda (_%stx129558%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx129558%_))))
    (define gx#core-expand__%
      (lambda (_%stx129545%_ _%expression?129546%_)
        (if _%expression?129546%_
            (gx#core-expand-expression _%stx129545%_)
            (gx#core-expand-top _%stx129545%_))))
    (define gx#core-expand__0
      (lambda (_%stx129551%_)
        (let ((_%expression?129553%_ '#f))
          (gx#core-expand__% _%stx129551%_ _%expression?129553%_))))
    (define gx#core-expand
      (lambda _g130022_
        (let ((_g130023_ (##length _g130022_)))
          (cond ((##fx= _g130023_ 1) (apply gx#core-expand__0 _g130022_))
                ((##fx= _g130023_ 2) (apply gx#core-expand__% _g130022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g130022_))))))
    (define gx#core-expand-top
      (lambda (_%stx129512%_)
        (let* ((_%stx129514%_ (gx#core-expand*__0 _%stx129512%_))
               (_%e129515129522%_ _%stx129514%_)
               (_%E129517129526%_
                (lambda () (gx#core-expand-expression _%stx129514%_)))
               (_%E129516129540%_
                (lambda ()
                  (if (gx#stx-pair? _%e129515129522%_)
                      (let ((_%e129518129530%_
                             (gx#syntax-e _%e129515129522%_)))
                        (let ((_%hd129519129533%_ (##car _%e129518129530%_))
                              (_%tl129520129535%_ (##cdr _%e129518129530%_)))
                          (let ((_%form129538%_ _%hd129519129533%_))
                            (if (gx#core-bound-identifier?__0 _%form129538%_)
                                _%stx129514%_
                                (_%E129517129526%_)))))
                      (_%E129517129526%_)))))
          (_%E129516129540%_))))
    (define gx#core-expand-expression
      (lambda (_%stx129444%_)
        (letrec ((_%sealed-expression?129446%_
                  (lambda (_%hd129482%_)
                    (if (gx#sealed-syntax? _%hd129482%_)
                        (let* ((_%e129483129490%_ _%hd129482%_)
                               (_%E129485129494%_ (lambda () '#f))
                               (_%E129484129508%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e129483129490%_)
                                      (let ((_%e129486129498%_
                                             (gx#syntax-e _%e129483129490%_)))
                                        (let ((_%hd129487129501%_
                                               (##car _%e129486129498%_))
                                              (_%tl129488129503%_
                                               (##cdr _%e129486129498%_)))
                                          (let ((_%form129506%_
                                                 _%hd129487129501%_))
                                            (gx#core-bound-identifier?__%
                                             _%form129506%_
                                             gx#expression-form-binding?))))
                                      (_%E129485129494%_)))))
                          (_%E129484129508%_))
                        '#f)))
                 (_%illegal-expression129447%_
                  (lambda (_%hd129479%_ . _%_129480%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx129444%_
                     _%hd129479%_)))
                 (_%expand-e129448%_
                  (lambda (_%form129471%_ _%hd129472%_)
                    (let ((_%bind129474%_
                           (if (##structure-instance-of?
                                _%form129471%_
                                'gx#binding::t)
                               _%form129471%_
                               (gx#resolve-identifier__0 _%form129471%_))))
                      (if (gx#core-expander-binding? _%bind129474%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind129474%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd129472%_
                            (gx#stx-source _%stx129444%_)))
                          (if (##structure-direct-instance-of?
                               _%bind129474%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind129474%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd129472%_
                                 (gx#stx-source _%stx129444%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx129444%_
                               _%form129471%_)))))))
          (let ((_%hd129450%_ (gx#core-expand-head _%stx129444%_)))
            (if (_%sealed-expression?129446%_ _%hd129450%_)
                _%hd129450%_
                (if (gx#stx-pair? _%hd129450%_)
                    (let* ((_%form129454%_ (gx#stx-car _%hd129450%_))
                           (_%bind129456%_
                            (if (gx#identifier? _%form129454%_)
                                (gx#resolve-identifier__0 _%form129454%_)
                                '#f)))
                      (if (or (not _%bind129456%_)
                              (not (gx#core-expander-binding? _%bind129456%_)))
                          (_%expand-e129448%_
                           '%%app
                           (cons '%%app _%hd129450%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind129456%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd129450%_
                               _%illegal-expression129447%_)
                              (if (gx#expression-form-binding? _%bind129456%_)
                                  (_%expand-e129448%_
                                   _%bind129456%_
                                   _%hd129450%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind129456%_)
                                      (gx#core-expand-expression
                                       (_%expand-e129448%_
                                        _%bind129456%_
                                        _%hd129450%_))
                                      (_%illegal-expression129447%_
                                       _%hd129450%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd129450%_)
                        (_%illegal-expression129447%_ _%hd129450%_)
                        (if (gx#identifier? _%hd129450%_)
                            (_%expand-e129448%_
                             '%%ref
                             (cons '%%ref (cons _%hd129450%_ '())))
                            (if (gx#stx-datum? _%hd129450%_)
                                (_%expand-e129448%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd129450%_ '())))
                                (_%illegal-expression129447%_
                                 _%hd129450%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx129439%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx129442%_ (gx#core-expand-expression _%stx129439%_)))
             (values _%stx129442%_ (gx#eval-syntax* _%stx129442%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx129420%_ _%stop?129421%_)
        (let _%lp129423%_ ((_%stx129425%_ _%stx129420%_))
          (if (_%stop?129421%_ _%stx129425%_)
              _%stx129425%_
              (let ((_%rstx129427%_ (gx#core-expand1 _%stx129425%_)))
                (if (eq? _%stx129425%_ _%rstx129427%_)
                    _%stx129425%_
                    (_%lp129423%_ _%rstx129427%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx129432%_)
        (let ((_%stop?129434%_ false))
          (gx#core-expand*__% _%stx129432%_ _%stop?129434%_))))
    (define gx#core-expand*
      (lambda _g130024_
        (let ((_g130025_ (##length _g130024_)))
          (cond ((##fx= _g130025_ 1) (apply gx#core-expand*__0 _g130024_))
                ((##fx= _g130025_ 2) (apply gx#core-expand*__% _g130024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g130024_))))))
    (define gx#core-expand1
      (lambda (_%stx129372%_)
        (letrec ((_%step129374%_
                  (lambda (_%hd129411%_)
                    (let ((_%bind129413%_
                           (gx#resolve-identifier__0 _%hd129411%_)))
                      (if (##structure-instance-of?
                           _%bind129413%_
                           'gx#runtime-binding::t)
                          _%stx129372%_
                          (if (##structure-direct-instance-of?
                               _%bind129413%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind129413%_
                                '4
                                '#f
                                '#f)
                               _%stx129372%_)
                              (if (not _%bind129413%_)
                                  _%stx129372%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx129372%_))))))))
          (let* ((_%e129375129383%_ _%stx129372%_)
                 (_%E129381129387%_ (lambda () _%stx129372%_))
                 (_%E129377129393%_
                  (lambda ()
                    (let ((_%hd129391%_ _%e129375129383%_))
                      (if (gx#identifier? _%hd129391%_)
                          (_%step129374%_ _%hd129391%_)
                          (_%E129381129387%_)))))
                 (_%E129376129407%_
                  (lambda ()
                    (if (gx#stx-pair? _%e129375129383%_)
                        (let ((_%e129378129397%_
                               (gx#syntax-e _%e129375129383%_)))
                          (let ((_%hd129379129400%_ (##car _%e129378129397%_))
                                (_%tl129380129402%_ (##cdr _%e129378129397%_)))
                            (let ((_%hd129405%_ _%hd129379129400%_))
                              (if (gx#identifier? _%hd129405%_)
                                  (_%step129374%_ _%hd129405%_)
                                  (_%E129377129393%_)))))
                        (_%E129377129393%_)))))
            (_%E129376129407%_)))))
    (define gx#core-expand-head
      (lambda (_%stx129338%_)
        (letrec ((_%stop?129340%_
                  (lambda (_%stx129342%_)
                    (let* ((_%e129343129350%_ _%stx129342%_)
                           (_%E129345129354%_ (lambda () '#f))
                           (_%E129344129368%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129343129350%_)
                                  (let ((_%e129346129358%_
                                         (gx#syntax-e _%e129343129350%_)))
                                    (let ((_%hd129347129361%_
                                           (##car _%e129346129358%_))
                                          (_%tl129348129363%_
                                           (##cdr _%e129346129358%_)))
                                      (let ((_%hd129366%_ _%hd129347129361%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd129366%_))))
                                  (_%E129345129354%_)))))
                      (_%E129344129368%_)))))
          (gx#core-expand*__% _%stx129338%_ _%stop?129340%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx129144%_
               _%expand-special129145%_
               _%begin-form129146%_
               _%expand-e129147%_)
        (letrec ((_%expand-splice129149%_
                  (lambda (_%hd129312%_
                           _%body129313%_
                           _%rest129314%_
                           _%r129315%_)
                    (if (gx#stx-list? _%body129313%_)
                        (_%K129153%_
                         (gx#stx-foldr cons _%rest129314%_ _%body129313%_)
                         _%r129315%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx129144%_
                         _%hd129312%_))))
                 (_%expand-cond-expand129150%_
                  (lambda (_%hd129308%_ _%rest129309%_ _%r129310%_)
                    (_%K129153%_
                     (cons (gx#core-expand-cond-expand% _%hd129308%_)
                           _%rest129309%_)
                     _%r129310%_)))
                 (_%expand-include129151%_
                  (lambda (_%hd129257%_ _%rest129258%_ _%r129259%_)
                    (let* ((_%e129260129270%_ _%hd129257%_)
                           (_%E129262129274%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e129260129270%_)))
                           (_%E129261129304%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129260129270%_)
                                  (let ((_%e129263129278%_
                                         (gx#syntax-e _%e129260129270%_)))
                                    (let ((_%hd129264129281%_
                                           (##car _%e129263129278%_))
                                          (_%tl129265129283%_
                                           (##cdr _%e129263129278%_)))
                                      (if (gx#stx-pair? _%tl129265129283%_)
                                          (let ((_%e129266129286%_
                                                 (gx#syntax-e
                                                  _%tl129265129283%_)))
                                            (let ((_%hd129267129289%_
                                                   (##car _%e129266129286%_))
                                                  (_%tl129268129291%_
                                                   (##cdr _%e129266129286%_)))
                                              (let ((_%path129294%_
                                                     _%hd129267129289%_))
                                                (if (gx#stx-null?
                                                     _%tl129268129291%_)
                                                    (if (gx#stx-string?
                                                         _%path129294%_)
                                                        (let* ((_%rpath129296%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path129294%_
                         (gx#stx-source _%hd129257%_)))
                       (_%block129298%_
                        (gx#core-expand-include%__%
                         _%hd129257%_
                         _%rpath129296%_))
                       (_%rbody129301%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block129298%_
                            _%expand-special129145%_
                            '#f
                            _%expand-e129147%_))
                         gx#current-expander-path
                         (cons _%rpath129296%_ (gx#current-expander-path)))))
                  (_%K129153%_
                   _%rest129258%_
                   (__foldr1 cons _%r129259%_ _%rbody129301%_)))
                (_%E129262129274%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E129262129274%_)))))
                                          (_%E129262129274%_))))
                                  (_%E129262129274%_)))))
                      (_%E129261129304%_))))
                 (_%expand-expression129152%_
                  (lambda (_%hd129253%_ _%rest129254%_ _%r129255%_)
                    (_%K129153%_
                     _%rest129254%_
                     (cons (_%expand-e129147%_ _%hd129253%_) _%r129255%_))))
                 (_%K129153%_
                  (lambda (_%rest129183%_ _%r129184%_)
                    (let* ((_%e129185129192%_ _%rest129183%_)
                           (_%E129187129196%_
                            (lambda ()
                              (if _%begin-form129146%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form129146%_
                                    (reverse _%r129184%_))
                                   (gx#stx-source _%stx129144%_))
                                  _%r129184%_)))
                           (_%E129186129249%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129185129192%_)
                                  (let ((_%e129188129200%_
                                         (gx#syntax-e _%e129185129192%_)))
                                    (let ((_%hd129189129203%_
                                           (##car _%e129188129200%_))
                                          (_%tl129190129205%_
                                           (##cdr _%e129188129200%_)))
                                      (let* ((_%hd129208%_ _%hd129189129203%_)
                                             (_%rest129210%_
                                              _%tl129190129205%_)
                                             (_%hd129212%_
                                              (gx#core-expand-head
                                               _%hd129208%_))
                                             (_%e129213129220%_ _%hd129212%_)
                                             (_%E129215129224%_
                                              (lambda ()
                                                (_%expand-expression129152%_
                                                 _%hd129212%_
                                                 _%rest129210%_
                                                 _%r129184%_)))
                                             (_%E129214129245%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e129213129220%_)
                                                    (let ((_%e129216129228%_
                                                           (gx#syntax-e
                                                            _%e129213129220%_)))
                                                      (let ((_%hd129217129231%_
                                                             (##car _%e129216129228%_))
                                                            (_%tl129218129233%_
                                                             (##cdr _%e129216129228%_)))
                                                        (let* ((_%form129236%_
                                                                _%hd129217129231%_)
                                                               (_%body129238%_
                                                                _%tl129218129233%_)
                                                               (_%bind129240%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form129236%_)
                            (gx#resolve-identifier__0 _%form129236%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind129240%_)
                      (let ((_%$e129242%_
                             (##unchecked-structure-ref
                              _%bind129240%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e129242%_)
                            (_%expand-splice129149%_
                             _%hd129212%_
                             _%body129238%_
                             _%rest129210%_
                             _%r129184%_)
                            (if (eq? '%#cond-expand _%$e129242%_)
                                (_%expand-cond-expand129150%_
                                 _%hd129212%_
                                 _%rest129210%_
                                 _%r129184%_)
                                (if (eq? '%#include _%$e129242%_)
                                    (_%expand-include129151%_
                                     _%hd129212%_
                                     _%rest129210%_
                                     _%r129184%_)
                                    (_%expand-special129145%_
                                     _%hd129212%_
                                     _%K129153%_
                                     _%rest129210%_
                                     _%r129184%_)))))
                      (_%expand-expression129152%_
                       _%hd129212%_
                       _%rest129210%_
                       _%r129184%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E129215129224%_)))))
                                        (_%E129214129245%_))))
                                  (_%E129187129196%_)))))
                      (_%E129186129249%_)))))
          (let* ((_%e129154129161%_ _%stx129144%_)
                 (_%E129156129165%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e129154129161%_)))
                 (_%E129155129179%_
                  (lambda ()
                    (if (gx#stx-pair? _%e129154129161%_)
                        (let ((_%e129157129169%_
                               (gx#syntax-e _%e129154129161%_)))
                          (let ((_%hd129158129172%_ (##car _%e129157129169%_))
                                (_%tl129159129174%_ (##cdr _%e129157129169%_)))
                            (let ((_%body129177%_ _%tl129159129174%_))
                              (if (gx#stx-list? _%body129177%_)
                                  (_%K129153%_ _%body129177%_ '())
                                  (_%E129156129165%_)))))
                        (_%E129156129165%_)))))
            (_%E129155129179%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx129320%_ _%expand-special129321%_)
        (let* ((_%begin-form129323%_ '%#begin)
               (_%expand-e129325%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx129320%_
           _%expand-special129321%_
           _%begin-form129323%_
           _%expand-e129325%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx129327%_ _%expand-special129328%_ _%begin-form129329%_)
        (let ((_%expand-e129331%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx129327%_
           _%expand-special129328%_
           _%begin-form129329%_
           _%expand-e129331%_))))
    (define gx#core-expand-block
      (lambda _g130026_
        (let ((_g130027_ (##length _g130026_)))
          (cond ((##fx= _g130027_ 2) (apply gx#core-expand-block__0 _g130026_))
                ((##fx= _g130027_ 3) (apply gx#core-expand-block__1 _g130026_))
                ((##fx= _g130027_ 4) (apply gx#core-expand-block__% _g130026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g130026_))))))
    (define gx#core-expand-block*
      (lambda (_%stx129092%_ _%expand-special129093%_)
        (let* ((_%g129094129105%_
                (gx#core-expand-block__1
                 _%stx129092%_
                 _%expand-special129093%_
                 '#f))
               (_%E129098129109%_
                (lambda ()
                  (error '"No clause matching"
                         _%g129094129105%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K129103129140%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx129092%_)))
                (_%K129100129126%_ (lambda (_%expr129124%_) _%expr129124%_))
                (_%K129099129115%_
                 (lambda (_%body129113%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body129113%_))
                    (gx#stx-source _%stx129092%_)))))
            (let ((_%try-match129096129136%_
                   (lambda ()
                     (if (pair? _%g129094129105%_)
                         (let ((_%tl129102129131%_ (##cdr _%g129094129105%_))
                               (_%hd129101129129%_ (##car _%g129094129105%_)))
                           (if (null? _%tl129102129131%_)
                               (let ((_%expr129134%_ _%hd129101129129%_))
                                 (_%K129100129126%_ _%expr129134%_))
                               (let ((_%body129118%_ _%g129094129105%_))
                                 (_%K129099129115%_ _%body129118%_))))
                         (let ((_%body129118%_ _%g129094129105%_))
                           (_%K129099129115%_ _%body129118%_))))))
              (if (null? _%g129094129105%_)
                  (_%K129103129140%_)
                  (_%try-match129096129136%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx128917%_)
        (letrec ((_%satisfied?128919%_
                  (lambda (_%condition129020%_)
                    (let* ((_%e129021129036%_ _%condition129020%_)
                           (_%E129031129040%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e129021129036%_)))
                           (_%E129024129059%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129021129036%_)
                                  (let ((_%e129032129044%_
                                         (gx#syntax-e _%e129021129036%_)))
                                    (let ((_%hd129033129047%_
                                           (##car _%e129032129044%_))
                                          (_%tl129034129049%_
                                           (##cdr _%e129032129044%_)))
                                      (let* ((_%combinator129052%_
                                              _%hd129033129047%_)
                                             (_%body129054%_
                                              _%tl129034129049%_))
                                        (if (gx#stx-list? _%body129054%_)
                                            (let ((_%$e129056%_
                                                   (gx#stx-e
                                                    _%combinator129052%_)))
                                              (if (eq? 'not _%$e129056%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?128919%_
                                                        _%body129054%_))
                                                  (if (eq? 'and _%$e129056%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?128919%_
                                                       _%body129054%_)
                                                      (if (eq? 'or
                                                               _%$e129056%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?128919%_
                                                           _%body129054%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e129056%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body129054%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx128917%_
                       _%combinator129052%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E129031129040%_)))))
                                  (_%E129031129040%_))))
                           (_%E129023129082%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129021129036%_)
                                  (let ((_%e129025129063%_
                                         (gx#syntax-e _%e129021129036%_)))
                                    (let ((_%hd129026129066%_
                                           (##car _%e129025129063%_))
                                          (_%tl129027129068%_
                                           (##cdr _%e129025129063%_)))
                                      (if (and (gx#identifier?
                                                _%hd129026129066%_)
                                               (gx#core-identifier=?
                                                _%hd129026129066%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl129027129068%_)
                                              (let ((_%e129028129071%_
                                                     (gx#syntax-e
                                                      _%tl129027129068%_)))
                                                (let ((_%hd129029129074%_
                                                       (##car _%e129028129071%_))
                                                      (_%tl129030129076%_
                                                       (##cdr _%e129028129071%_)))
                                                  (let ((_%expr129079%_
                                                         _%hd129029129074%_))
                                                    (if (gx#stx-null?
                                                         _%tl129030129076%_)
                                                        (call-with-parameters__1
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr129079%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E129024129059%_)))))
                                              (_%E129024129059%_))
                                          (_%E129024129059%_))))
                                  (_%E129024129059%_))))
                           (_%E129022129088%_
                            (lambda ()
                              (let ((_%id129086%_ _%e129021129036%_))
                                (if (gx#identifier? _%id129086%_)
                                    (gx#core-bound-identifier?__%
                                     _%id129086%_
                                     gx#feature-binding?)
                                    (_%E129023129082%_))))))
                      (_%E129022129088%_))))
                 (_%loop128920%_
                  (lambda (_%rest128950%_)
                    (let* ((_%e128951128959%_ _%rest128950%_)
                           (_%E128957128963%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e128951128959%_)))
                           (_%E128953128967%_
                            (lambda ()
                              (if (gx#stx-null? _%e128951128959%_)
                                  '()
                                  (_%E128957128963%_))))
                           (_%E128952129016%_
                            (lambda ()
                              (if (gx#stx-pair? _%e128951128959%_)
                                  (let ((_%e128954128971%_
                                         (gx#syntax-e _%e128951128959%_)))
                                    (let ((_%hd128955128974%_
                                           (##car _%e128954128971%_))
                                          (_%tl128956128976%_
                                           (##cdr _%e128954128971%_)))
                                      (let* ((_%hd128979%_ _%hd128955128974%_)
                                             (_%rest128981%_
                                              _%tl128956128976%_)
                                             (_%e128982128989%_ _%hd128979%_)
                                             (_%E128984128993%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e128982128989%_)))
                                             (_%E128983129012%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e128982128989%_)
                                                    (let ((_%e128985128997%_
                                                           (gx#syntax-e
                                                            _%e128982128989%_)))
                                                      (let ((_%hd128986129000%_
                                                             (##car _%e128985128997%_))
                                                            (_%tl128987129002%_
                                                             (##cdr _%e128985128997%_)))
                                                        (let* ((_%condition129005%_
                                                                _%hd128986129000%_)
                                                               (_%body129007%_
                                                                _%tl128987129002%_))
                                                          (if (gx#stx-eq?
                                                               _%condition129005%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest128981%_)
                          _%body129007%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx128917%_
                           _%hd128979%_))
                      (if (_%satisfied?128919%_ _%condition129005%_)
                          _%body129007%_
                          (_%loop128920%_ _%rest128981%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E128984128993%_)))))
                                        (_%E128983129012%_))))
                                  (_%E128953128967%_)))))
                      (_%E128952129016%_)))))
          (let* ((_%e128921128928%_ _%stx128917%_)
                 (_%E128923128932%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e128921128928%_)))
                 (_%E128922128946%_
                  (lambda ()
                    (if (gx#stx-pair? _%e128921128928%_)
                        (let ((_%e128924128936%_
                               (gx#syntax-e _%e128921128928%_)))
                          (let ((_%hd128925128939%_ (##car _%e128924128936%_))
                                (_%tl128926128941%_ (##cdr _%e128924128936%_)))
                            (let ((_%clauses128944%_ _%tl128926128941%_))
                              (if (gx#stx-list? _%clauses128944%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop128920%_ _%clauses128944%_))
                                  (_%E128923128932%_)))))
                        (_%E128923128932%_)))))
            (_%E128922128946%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx128860%_ _%rpath128861%_)
        (let* ((_%e128862128872%_ _%stx128860%_)
               (_%E128864128876%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128862128872%_)))
               (_%E128863128903%_
                (lambda ()
                  (if (gx#stx-pair? _%e128862128872%_)
                      (let ((_%e128865128880%_
                             (gx#syntax-e _%e128862128872%_)))
                        (let ((_%hd128866128883%_ (##car _%e128865128880%_))
                              (_%tl128867128885%_ (##cdr _%e128865128880%_)))
                          (if (gx#stx-pair? _%tl128867128885%_)
                              (let ((_%e128868128888%_
                                     (gx#syntax-e _%tl128867128885%_)))
                                (let ((_%hd128869128891%_
                                       (##car _%e128868128888%_))
                                      (_%tl128870128893%_
                                       (##cdr _%e128868128888%_)))
                                  (let ((_%path128896%_ _%hd128869128891%_))
                                    (if (gx#stx-null? _%tl128870128893%_)
                                        (if (gx#stx-string? _%path128896%_)
                                            (let ((_%rpath128901%_
                                                   (let ((_%$e128898%_
                                                          _%rpath128861%_))
                                                     (if _%$e128898%_
                                                         _%$e128898%_
                                                         (gx#core-resolve-path__%
                                                          _%path128896%_
                                                          (gx#stx-source
                                                           _%stx128860%_))))))
                                              (if (member _%rpath128901%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx128860%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath128901%_))
                                                    (gx#stx-source
                                                     _%stx128860%_)))))
                                            (_%E128864128876%_))
                                        (_%E128864128876%_)))))
                              (_%E128864128876%_))))
                      (_%E128864128876%_)))))
          (_%E128863128903%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx128910%_)
        (let ((_%rpath128912%_ '#f))
          (gx#core-expand-include%__% _%stx128910%_ _%rpath128912%_))))
    (define gx#core-expand-include%
      (lambda _g130028_
        (let ((_g130029_ (##length _g130028_)))
          (cond ((##fx= _g130029_ 1)
                 (apply gx#core-expand-include%__0 _g130028_))
                ((##fx= _g130029_ 2)
                 (apply gx#core-expand-include%__% _g130028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g130028_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K128826%_ _%stx128827%_ _%method128828%_)
        (if (procedure? _%K128826%_)
            (let ((_%$e128831%_ (gx#stx-source _%stx128827%_)))
              (if _%$e128831%_
                  ((lambda (_%g128833128835%_)
                     (gx#stx-wrap-source
                      (_%K128826%_ _%stx128827%_)
                      _%g128833128835%_))
                   _%$e128831%_)
                  (_%K128826%_ _%stx128827%_)))
            (let ((_%$e128839%_
                   (bound-method-ref _%K128826%_ _%method128828%_)))
              (if _%$e128839%_
                  ((lambda (_%g128841128843%_)
                     (gx#core-apply-expander__%
                      _%g128841128843%_
                      _%stx128827%_
                      _%method128828%_))
                   _%$e128839%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx128827%_
                   _%method128828%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K128850%_ _%stx128851%_)
        (let ((_%method128853%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K128850%_
           _%stx128851%_
           _%method128853%_))))
    (define gx#core-apply-expander
      (lambda _g130030_
        (let ((_g130031_ (##length _g130030_)))
          (cond ((##fx= _g130031_ 2)
                 (apply gx#core-apply-expander__0 _g130030_))
                ((##fx= _g130031_ 3)
                 (apply gx#core-apply-expander__% _g130030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g130030_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self128811%_ _%stx128812%_)
        (let ((_%self128815%_ _%self128811%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx128812%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self128653%_ _%stx128654%_)
        (let* ((_%self128657%_ _%self128653%_)
               (_%self128666128672%_ _%self128657%_)
               (_%E128668128676%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128666128672%_
                         '((macro-expander K)))
                  '#!void))
               (_%K128669128681%_
                (lambda (_%K128679%_)
                  (gx#core-apply-expander__0 _%K128679%_ _%stx128654%_)))
               (_%e128670128684%_
                (##unchecked-structure-ref _%self128666128672%_ '1 '#f '#f))
               (_%K128687%_ _%e128670128684%_))
          (_%K128669128681%_ _%K128687%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self128495%_ _%stx128496%_)
        (let ((_%self128499%_ _%self128495%_))
          (if (gx#sealed-syntax? _%stx128496%_)
              _%stx128496%_
              (let* ((_%self128508128514%_ _%self128499%_)
                     (_%E128510128518%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self128508128514%_
                               '((core-expander K)))
                        '#!void))
                     (_%K128511128523%_
                      (lambda (_%K128521%_)
                        (gx#core-apply-expander__0 _%K128521%_ _%stx128496%_)))
                     (_%e128512128526%_
                      (##unchecked-structure-ref
                       _%self128508128514%_
                       '1
                       '#f
                       '#f))
                     (_%K128529%_ _%e128512128526%_))
                (_%K128511128523%_ _%K128529%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self128346%_ _%stx128347%_ _%top?128348%_)
        (let ((_%self128351%_ _%self128346%_))
          (if (_%top?128348%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self128351%_
               _%stx128347%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx128347%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self128364%_ _%stx128365%_)
        (let ((_%top?128367%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self128364%_
           _%stx128365%_
           _%top?128367%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g130032_
        (let ((_g130033_ (##length _g130032_)))
          (cond ((##fx= _g130033_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g130032_))
                ((##fx= _g130033_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g130032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g130032_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self128209%_ _%stx128210%_)
        (let ((_%self128213%_ _%self128209%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self128213%_
           _%stx128210%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self128023%_ _%stx128024%_)
        (let* ((_%self128027%_ _%self128023%_)
               (_%self128036128042%_ _%self128027%_)
               (_%E128038128046%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128036128042%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K128039128079%_
                (lambda (_%id128049%_)
                  (let* ((_%e128050128057%_ _%stx128024%_)
                         (_%E128052128061%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e128050128057%_)))
                         (_%E128051128075%_
                          (lambda ()
                            (if (gx#stx-pair? _%e128050128057%_)
                                (let ((_%e128053128065%_
                                       (gx#syntax-e _%e128050128057%_)))
                                  (let ((_%hd128054128068%_
                                         (##car _%e128053128065%_))
                                        (_%tl128055128070%_
                                         (##cdr _%e128053128065%_)))
                                    (let ((_%body128073%_ _%tl128055128070%_))
                                      (gx#core-cons
                                       _%id128049%_
                                       _%body128073%_))))
                                (_%E128052128061%_)))))
                    (_%E128051128075%_))))
               (_%e128040128082%_
                (##unchecked-structure-ref _%self128036128042%_ '1 '#f '#f))
               (_%id128085%_ _%e128040128082%_))
          (_%K128039128079%_ _%id128085%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self127849%_ _%stx127850%_ _%method127851%_)
        (let* ((_%self127852127860%_ _%self127849%_)
               (_%E127854127864%_
                (lambda ()
                  (error '"No clause matching"
                         _%self127852127860%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K127855127871%_
                (lambda (_%phi127867%_ _%ctx127868%_ _%K127869%_)
                  (gx#core-apply-user-macro
                   _%K127869%_
                   _%stx127850%_
                   _%ctx127868%_
                   _%phi127867%_
                   _%method127851%_))))
          (if (##structure-instance-of?
               _%self127852127860%_
               'gx#user-expander::t)
              (let* ((_%e127856127874%_
                      (##unchecked-structure-ref
                       _%self127852127860%_
                       '1
                       '#f
                       '#f))
                     (_%K127877%_ _%e127856127874%_)
                     (_%e127857127879%_
                      (##unchecked-structure-ref
                       _%self127852127860%_
                       '2
                       '#f
                       '#f))
                     (_%ctx127882%_ _%e127857127879%_)
                     (_%e127858127884%_
                      (##unchecked-structure-ref
                       _%self127852127860%_
                       '3
                       '#f
                       '#f))
                     (_%phi127887%_ _%e127858127884%_))
                (_%K127855127871%_ _%phi127887%_ _%ctx127882%_ _%K127877%_))
              (_%E127854127864%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self127892%_ _%stx127893%_)
        (let ((_%method127895%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self127892%_
           _%stx127893%_
           _%method127895%_))))
    (define gx#core-apply-user-expander
      (lambda _g130034_
        (let ((_g130035_ (##length _g130034_)))
          (cond ((##fx= _g130035_ 2)
                 (apply gx#core-apply-user-expander__0 _g130034_))
                ((##fx= _g130035_ 3)
                 (apply gx#core-apply-user-expander__% _g130034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g130034_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K127839%_
               _%stx127840%_
               _%ctx127841%_
               _%phi127842%_
               _%method127843%_)
        (let ((_%mark127845%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx127841%_
                _%phi127842%_
                _%stx127840%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K127839%_
               (gx#stx-apply-mark _%stx127840%_ _%mark127845%_)
               _%method127843%_)
              _%mark127845%_))
           gx#current-expander-marks
           (cons _%mark127845%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx127687%_ _%phi127688%_ _%ctx127689%_)
        (let _%lp127691%_ ((_%bind127693%_
                            (gx#core-resolve-identifier__%
                             _%stx127687%_
                             _%phi127688%_
                             _%ctx127689%_)))
          (if (##structure-direct-instance-of?
               _%bind127693%_
               'gx#import-binding::t)
              (_%lp127691%_
               (##unchecked-structure-ref _%bind127693%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind127693%_
                   'gx#alias-binding::t)
                  (_%lp127691%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind127693%_ '4 '#f '#f)
                    _%phi127688%_
                    _%ctx127689%_))
                  _%bind127693%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx127701%_)
        (let* ((_%phi127703%_ (gx#current-expander-phi))
               (_%ctx127705%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx127701%_
           _%phi127703%_
           _%ctx127705%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx127707%_ _%phi127708%_)
        (let ((_%ctx127710%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx127707%_
           _%phi127708%_
           _%ctx127710%_))))
    (define gx#resolve-identifier
      (lambda _g130036_
        (let ((_g130037_ (##length _g130036_)))
          (cond ((##fx= _g130037_ 1)
                 (apply gx#resolve-identifier__0 _g130036_))
                ((##fx= _g130037_ 2)
                 (apply gx#resolve-identifier__1 _g130036_))
                ((##fx= _g130037_ 3)
                 (apply gx#resolve-identifier__% _g130036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g130036_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx127642%_
               _%val127643%_
               _%rebind?127644%_
               _%phi127645%_
               _%ctx127646%_)
        (let ((_%rebind?127651%_
               (if (not _%rebind?127644%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?127644%_)
                       _%rebind?127644%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx127642%_)
           _%val127643%_
           _%rebind?127651%_
           _%phi127645%_
           _%ctx127646%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx127656%_ _%val127657%_)
        (let* ((_%rebind?127659%_ '#f)
               (_%phi127661%_ (gx#current-expander-phi))
               (_%ctx127663%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx127656%_
           _%val127657%_
           _%rebind?127659%_
           _%phi127661%_
           _%ctx127663%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx127665%_ _%val127666%_ _%rebind?127667%_)
        (let* ((_%phi127669%_ (gx#current-expander-phi))
               (_%ctx127671%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx127665%_
           _%val127666%_
           _%rebind?127667%_
           _%phi127669%_
           _%ctx127671%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx127673%_ _%val127674%_ _%rebind?127675%_ _%phi127676%_)
        (let ((_%ctx127678%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx127673%_
           _%val127674%_
           _%rebind?127675%_
           _%phi127676%_
           _%ctx127678%_))))
    (define gx#bind-identifier!
      (lambda _g130038_
        (let ((_g130039_ (##length _g130038_)))
          (cond ((##fx= _g130039_ 2) (apply gx#bind-identifier!__0 _g130038_))
                ((##fx= _g130039_ 3) (apply gx#bind-identifier!__1 _g130038_))
                ((##fx= _g130039_ 4) (apply gx#bind-identifier!__2 _g130038_))
                ((##fx= _g130039_ 5) (apply gx#bind-identifier!__% _g130038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g130038_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx127608%_ _%phi127609%_ _%ctx127610%_)
        (let _%lp127612%_ ((_%e127614%_ _%stx127608%_)
                           (_%marks127615%_ (gx#current-expander-marks)))
          (if (symbol? _%e127614%_)
              (gx#core-resolve-binding
               _%e127614%_
               _%phi127609%_
               _%phi127609%_
               _%ctx127610%_
               (reverse _%marks127615%_))
              (if (gx#identifier-quote? _%e127614%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e127614%_ '1 '#f '#f)
                   _%phi127609%_
                   '0
                   (##unchecked-structure-ref _%e127614%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e127614%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e127614%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e127614%_ '1 '#f '#f)
                       _%phi127609%_
                       _%phi127609%_
                       _%ctx127610%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e127614%_ '3 '#f '#f)
                        _%marks127615%_))
                      (if (##structure-direct-instance-of?
                           _%e127614%_
                           'gx#syntax-wrap::t)
                          (_%lp127612%_
                           (##unchecked-structure-ref _%e127614%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e127614%_ '3 '#f '#f)
                            _%marks127615%_))
                          (if (##structure-instance-of?
                               _%e127614%_
                               'gerbil#AST::t)
                              (_%lp127612%_
                               (##unchecked-structure-ref
                                _%e127614%_
                                '1
                                '#f
                                '#f)
                               _%marks127615%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx127608%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx127626%_)
        (let* ((_%phi127628%_ (gx#current-expander-phi))
               (_%ctx127630%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx127626%_
           _%phi127628%_
           _%ctx127630%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx127632%_ _%phi127633%_)
        (let ((_%ctx127635%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx127632%_
           _%phi127633%_
           _%ctx127635%_))))
    (define gx#core-resolve-identifier
      (lambda _g130040_
        (let ((_g130041_ (##length _g130040_)))
          (cond ((##fx= _g130041_ 1)
                 (apply gx#core-resolve-identifier__0 _g130040_))
                ((##fx= _g130041_ 2)
                 (apply gx#core-resolve-identifier__1 _g130040_))
                ((##fx= _g130041_ 3)
                 (apply gx#core-resolve-identifier__% _g130040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g130040_))))))
    (define gx#core-resolve-binding
      (lambda (_%id127518%_
               _%phi127519%_
               _%src-phi127520%_
               _%ctx127521%_
               _%marks127522%_)
        (letrec ((_%resolve127524%_
                  (lambda (_%ctx127592%_ _%src-phi127593%_ _%key127594%_)
                    (let _%lp127596%_ ((_%ctx127598%_
                                        (gx#core-context-shift
                                         _%ctx127592%_
                                         _%phi127519%_))
                                       (_%dphi127599%_
                                        (fx- _%phi127519%_ _%src-phi127593%_)))
                      (let ((_%$e127601%_
                             (gx#core-context-resolve
                              _%ctx127598%_
                              _%key127594%_)))
                        (if _%$e127601%_
                            _%$e127601%_
                            (if (fxzero? _%dphi127599%_)
                                '#f
                                (if (fxpositive? _%dphi127599%_)
                                    (_%lp127596%_
                                     (gx#core-context-shift _%ctx127598%_ '-1)
                                     (##fx- _%dphi127599%_ '1))
                                    (_%lp127596%_
                                     (gx#core-context-shift _%ctx127598%_ '1)
                                     (##fx+ _%dphi127599%_ '1))))))))))
          (let _%lp127526%_ ((_%ctx127528%_ _%ctx127521%_)
                             (_%src-phi127529%_ _%src-phi127520%_)
                             (_%rest127530%_ _%marks127522%_))
            (let* ((_%rest127531127539%_ _%rest127530%_)
                   (_%else127533127547%_
                    (lambda ()
                      (_%resolve127524%_
                       _%ctx127528%_
                       _%src-phi127529%_
                       _%id127518%_)))
                   (_%K127535127580%_
                    (lambda (_%rest127550%_ _%hd127551%_)
                      (let* ((_%hd127552127558%_ _%hd127551%_)
                             (_%E127554127562%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd127552127558%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K127555127572%_
                              (lambda (_%subst127565%_)
                                (let ((_%$e127569%_
                                       (let ((_%key127567%_
                                              (if _%subst127565%_
                                                  (hash-get
                                                   _%subst127565%_
                                                   _%id127518%_)
                                                  '#f)))
                                         (if _%key127567%_
                                             (_%resolve127524%_
                                              _%ctx127528%_
                                              _%src-phi127529%_
                                              _%key127567%_)
                                             '#f))))
                                  (if _%$e127569%_
                                      _%$e127569%_
                                      (_%lp127526%_
                                       (##unchecked-structure-ref
                                        _%hd127551%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd127551%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest127550%_))))))
                        (if (##structure-instance-of?
                             _%hd127552127558%_
                             'gx#expander-mark::t)
                            (let* ((_%e127556127575%_
                                    (##unchecked-structure-ref
                                     _%hd127552127558%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst127578%_ _%e127556127575%_))
                              (_%K127555127572%_ _%subst127578%_))
                            (_%E127554127562%_))))))
              (if (pair? _%rest127531127539%_)
                  (let ((_%hd127536127583%_ (##car _%rest127531127539%_))
                        (_%tl127537127585%_ (##cdr _%rest127531127539%_)))
                    (let* ((_%hd127588%_ _%hd127536127583%_)
                           (_%rest127590%_ _%tl127537127585%_))
                      (_%K127535127580%_ _%rest127590%_ _%hd127588%_)))
                  (_%else127533127547%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key127388%_
               _%val127389%_
               _%rebind?127390%_
               _%phi127391%_
               _%ctx127392%_)
        (letrec ((_%update-binding127394%_
                  (lambda (_%xval127467%_)
                    (if (or (_%rebind?127390%_
                             _%ctx127392%_
                             _%xval127467%_
                             _%val127389%_)
                            (and (##structure-direct-instance-of?
                                  _%xval127467%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval127467%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val127389%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val127389%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval127467%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val127389%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val127389%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval127467%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val127389%_
                        (if (and (##structure-direct-instance-of?
                                  _%val127389%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val127389%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval127467%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val127389%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval127467%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval127467%_
                            (if (and (##structure-direct-instance-of?
                                      _%val127389%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval127467%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key127388%_
                                 (cons (##unchecked-structure-ref
                                        _%val127389%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val127389%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval127467%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval127467%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval127467%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval127467%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key127388%_
                                 _%val127389%_
                                 _%xval127467%_))))))
                 (_%gensubst127395%_
                  (lambda (_%subst127462%_ _%id127463%_)
                    (let ((_%eid127465%_
                           (gensym (if (uninterned-symbol? _%id127463%_)
                                       '%
                                       _%id127463%_))))
                      (hash-put! _%subst127462%_ _%id127463%_ _%eid127465%_)
                      _%eid127465%_)))
                 (_%subst!127396%_
                  (lambda (_%key127398%_)
                    (let* ((_%key127399127407%_ _%key127398%_)
                           (_%else127401127415%_ (lambda () _%key127398%_))
                           (_%K127403127450%_
                            (lambda (_%mark127418%_ _%id127419%_)
                              (let* ((_%mark127420127426%_ _%mark127418%_)
                                     (_%E127422127430%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark127420127426%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K127423127442%_
                                      (lambda (_%subst127433%_)
                                        (if (not _%subst127433%_)
                                            (let ((_%subst127436%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark127418%_
                                               _%subst127436%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst127395%_
                                               _%subst127436%_
                                               _%id127419%_))
                                            (let ((_%$e127438%_
                                                   (hash-get
                                                    _%subst127433%_
                                                    _%id127419%_)))
                                              (if _%$e127438%_
                                                  _%$e127438%_
                                                  (_%gensubst127395%_
                                                   _%subst127433%_
                                                   _%id127419%_)))))))
                                (if (##structure-instance-of?
                                     _%mark127420127426%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e127424127445%_
                                            (##unchecked-structure-ref
                                             _%mark127420127426%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst127448%_ _%e127424127445%_))
                                      (_%K127423127442%_ _%subst127448%_))
                                    (_%E127422127430%_))))))
                      (if (pair? _%key127399127407%_)
                          (let ((_%hd127404127453%_
                                 (##car _%key127399127407%_))
                                (_%tl127405127455%_
                                 (##cdr _%key127399127407%_)))
                            (let* ((_%id127458%_ _%hd127404127453%_)
                                   (_%mark127460%_ _%tl127405127455%_))
                              (_%K127403127450%_ _%mark127460%_ _%id127458%_)))
                          (_%else127401127415%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx127392%_ _%phi127391%_)
           (_%subst!127396%_ _%key127388%_)
           _%val127389%_
           _%update-binding127394%_))))
    (define gx#core-bind!__0
      (lambda (_%key127488%_ _%val127489%_)
        (let* ((_%rebind?127491%_ false)
               (_%phi127493%_ (gx#current-expander-phi))
               (_%ctx127495%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key127488%_
           _%val127489%_
           _%rebind?127491%_
           _%phi127493%_
           _%ctx127495%_))))
    (define gx#core-bind!__1
      (lambda (_%key127497%_ _%val127498%_ _%rebind?127499%_)
        (let* ((_%phi127501%_ (gx#current-expander-phi))
               (_%ctx127503%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key127497%_
           _%val127498%_
           _%rebind?127499%_
           _%phi127501%_
           _%ctx127503%_))))
    (define gx#core-bind!__2
      (lambda (_%key127505%_ _%val127506%_ _%rebind?127507%_ _%phi127508%_)
        (let ((_%ctx127510%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key127505%_
           _%val127506%_
           _%rebind?127507%_
           _%phi127508%_
           _%ctx127510%_))))
    (define gx#core-bind!
      (lambda _g130042_
        (let ((_g130043_ (##length _g130042_)))
          (cond ((##fx= _g130043_ 2) (apply gx#core-bind!__0 _g130042_))
                ((##fx= _g130043_ 3) (apply gx#core-bind!__1 _g130042_))
                ((##fx= _g130043_ 4) (apply gx#core-bind!__2 _g130042_))
                ((##fx= _g130043_ 5) (apply gx#core-bind!__% _g130042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g130042_))))))
    (define gx#core-identifier-key
      (lambda (_%stx127319%_)
        (if (symbol? _%stx127319%_)
            (let* ((_%g127321127329%_ (gx#current-expander-marks))
                   (_%else127323127337%_ (lambda () _%stx127319%_))
                   (_%K127325127342%_
                    (lambda (_%hd127340%_) (cons _%stx127319%_ _%hd127340%_))))
              (if (pair? _%g127321127329%_)
                  (let* ((_%hd127326127345%_ (##car _%g127321127329%_))
                         (_%hd127348%_ _%hd127326127345%_))
                    (_%K127325127342%_ _%hd127348%_))
                  (_%else127323127337%_)))
            (if (gx#identifier? _%stx127319%_)
                (let* ((_%id127351%_ (gx#syntax-local-unwrap _%stx127319%_))
                       (_%eid127353%_ (gx#stx-e _%id127351%_))
                       (_%marks127355%_
                        (gx#stx-identifier-marks* _%id127351%_))
                       (_%marks127357127365%_ _%marks127355%_)
                       (_%else127359127373%_ (lambda () _%eid127353%_))
                       (_%K127361127378%_
                        (lambda (_%hd127376%_)
                          (cons _%eid127353%_ _%hd127376%_))))
                  (if (pair? _%marks127357127365%_)
                      (let* ((_%hd127362127381%_ (##car _%marks127357127365%_))
                             (_%hd127384%_ _%hd127362127381%_))
                        (_%K127361127378%_ _%hd127384%_))
                      (_%else127359127373%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx127319%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx127258%_ _%phi127259%_)
        (letrec ((_%make-phi127261%_
                  (lambda (_%super127317%_)
                    (let ((__obj130015
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj130015
                       (##gensym 'phi)
                       _%super127317%_)
                      __obj130015)))
                 (_%make-phi/up127262%_
                  (lambda (_%ctx127312%_ _%super127313%_)
                    (let ((_%ctx+1127315%_
                           (_%make-phi127261%_ _%super127313%_)))
                      (##unchecked-structure-set!
                       _%ctx127312%_
                       _%ctx+1127315%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1127315%_
                       _%ctx127312%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1127315%_)))
                 (_%make-phi/down127263%_
                  (lambda (_%ctx127307%_ _%super127308%_)
                    (let ((_%ctx-1127310%_
                           (_%make-phi127261%_ _%super127308%_)))
                      (##unchecked-structure-set!
                       _%ctx-1127310%_
                       _%ctx127307%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx127307%_
                       _%ctx-1127310%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1127310%_)))
                 (_%shift127264%_
                  (lambda (_%ctx127290%_
                           _%delta127291%_
                           _%make-delta-context127292%_
                           _%phi127293%_
                           _%K127294%_)
                    (let ((_%$e127296%_
                           (##unchecked-structure-ref
                            _%ctx127290%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e127296%_
                          ((lambda (_%super127299%_)
                             (let* ((_%super127301%_
                                     (_%K127294%_
                                      _%super127299%_
                                      _%delta127291%_))
                                    (_%ctx+d127303%_
                                     (_%make-delta-context127292%_
                                      _%ctx127290%_
                                      _%super127301%_)))
                               (_%K127294%_
                                _%ctx+d127303%_
                                (fx- _%phi127293%_ _%delta127291%_))))
                           _%$e127296%_)
                          (error '"Bad context" _%ctx127290%_))))))
          (let _%K127266%_ ((_%ctx127268%_ _%ctx127258%_)
                            (_%phi127269%_ _%phi127259%_))
            (if (fxzero? _%phi127269%_)
                _%ctx127268%_
                (if (##structure-instance-of? _%ctx127268%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi127269%_)
                        (let ((_%$e127273%_
                               (##unchecked-structure-ref
                                _%ctx127268%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e127273%_
                              ((lambda (_%g127275127277%_)
                                 (_%K127266%_
                                  _%g127275127277%_
                                  (##fx- _%phi127269%_ '1)))
                               _%$e127273%_)
                              (_%shift127264%_
                               _%ctx127268%_
                               '1
                               _%make-phi/up127262%_
                               _%phi127269%_
                               _%K127266%_)))
                        (let ((_%$e127281%_
                               (##unchecked-structure-ref
                                _%ctx127268%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e127281%_
                              ((lambda (_%g127283127285%_)
                                 (_%K127266%_
                                  _%g127283127285%_
                                  (##fx+ _%phi127269%_ '1)))
                               _%$e127281%_)
                              (_%shift127264%_
                               _%ctx127268%_
                               '-1
                               _%make-phi/down127263%_
                               _%phi127269%_
                               _%K127266%_))))
                    _%ctx127268%_))))))
    (define gx#core-context-get
      (lambda (_%ctx127255%_ _%key127256%_)
        (hash-get
         (##unchecked-structure-ref _%ctx127255%_ '2 '#f '#f)
         _%key127256%_)))
    (define gx#core-context-put!
      (lambda (_%ctx127251%_ _%key127252%_ _%val127253%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx127251%_ '2 '#f '#f)
         _%key127252%_
         _%val127253%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx127237%_ _%key127238%_)
        (let _%lp127240%_ ((_%ctx127242%_ _%ctx127237%_))
          (let ((_%$e127244%_
                 (gx#core-context-get _%ctx127242%_ _%key127238%_)))
            (if _%$e127244%_
                _%$e127244%_
                (let ((_%$e127247%_
                       (if (##structure-instance-of?
                            _%ctx127242%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx127242%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e127247%_ (_%lp127240%_ _%$e127247%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx127226%_ _%key127227%_ _%val127228%_ _%rebind127229%_)
        (let ((_%$e127231%_ (gx#core-context-get _%ctx127226%_ _%key127227%_)))
          (if _%$e127231%_
              ((lambda (_%xval127234%_)
                 (gx#core-context-put!
                  _%ctx127226%_
                  _%key127227%_
                  (_%rebind127229%_ _%xval127234%_)))
               _%$e127231%_)
              (gx#core-context-put!
               _%ctx127226%_
               _%key127227%_
               _%val127228%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx127201%_ _%stop?127202%_)
        (let _%lp127204%_ ((_%ctx127206%_ _%ctx127201%_))
          (if (_%stop?127202%_ _%ctx127206%_)
              _%ctx127206%_
              (if (##structure-instance-of? _%ctx127206%_ 'gx#phi-context::t)
                  (_%lp127204%_
                   (##unchecked-structure-ref _%ctx127206%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx127215%_ (gx#current-expander-context))
               (_%stop?127217%_ gx#top-context?))
          (gx#core-context-top__% _%ctx127215%_ _%stop?127217%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx127219%_)
        (let ((_%stop?127221%_ gx#top-context?))
          (gx#core-context-top__% _%ctx127219%_ _%stop?127221%_))))
    (define gx#core-context-top
      (lambda _g130044_
        (let ((_g130045_ (##length _g130044_)))
          (cond ((##fx= _g130045_ 0) (apply gx#core-context-top__0 _g130044_))
                ((##fx= _g130045_ 1) (apply gx#core-context-top__1 _g130044_))
                ((##fx= _g130045_ 2) (apply gx#core-context-top__% _g130044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g130044_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx127186%_)
        (let _%lp127188%_ ((_%ctx127190%_ _%ctx127186%_))
          (if (##structure-instance-of? _%ctx127190%_ 'gx#phi-context::t)
              (_%lp127188%_
               (##unchecked-structure-ref _%ctx127190%_ '3 '#f '#f))
              _%ctx127190%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx127196%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx127196%_))))
    (define gx#core-context-root
      (lambda _g130046_
        (let ((_g130047_ (##length _g130046_)))
          (cond ((##fx= _g130047_ 0) (apply gx#core-context-root__0 _g130046_))
                ((##fx= _g130047_ 1) (apply gx#core-context-root__% _g130046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g130046_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx127168%_ . _%ignore127169%_)
        (let ((_%$e127171%_ (gx#current-expander-allow-rebind?)))
          (if _%$e127171%_
              _%$e127171%_
              (if (##structure-instance-of? _%ctx127168%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx127168%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx127168%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx127178%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx127178%_))))
    (define gx#core-context-rebind?
      (lambda _g130048_
        (let ((_g130049_ (##length _g130048_)))
          (cond ((##fx= _g130049_ 0)
                 (apply gx#core-context-rebind?__0 _g130048_))
                ((##fx= _g130049_ 1)
                 (apply gx#core-context-rebind?__% _g130048_))
                ((##fx>= _g130049_ 1)
                 (apply gx#core-context-rebind?__% _g130048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g130048_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx127151%_)
        (let ((_%$e127153%_ (gx#core-context-top__1 _%ctx127151%_)))
          (if _%$e127153%_
              ((lambda (_%ctx127156%_)
                 (if (##structure-instance-of?
                      _%ctx127156%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx127156%_ '6 '#f '#f)
                     '#f))
               _%$e127153%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx127163%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx127163%_))))
    (define gx#core-context-namespace
      (lambda _g130050_
        (let ((_g130051_ (##length _g130050_)))
          (cond ((##fx= _g130051_ 0)
                 (apply gx#core-context-namespace__0 _g130050_))
                ((##fx= _g130051_ 1)
                 (apply gx#core-context-namespace__% _g130050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g130050_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind127137%_ _%is?127138%_)
        (if (##structure-direct-instance-of?
             _%bind127137%_
             'gx#syntax-binding::t)
            (_%is?127138%_
             (##unchecked-structure-ref _%bind127137%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind127143%_)
        (let ((_%is?127145%_ gx#expander?))
          (gx#expander-binding?__% _%bind127143%_ _%is?127145%_))))
    (define gx#expander-binding?
      (lambda _g130052_
        (let ((_g130053_ (##length _g130052_)))
          (cond ((##fx= _g130053_ 1) (apply gx#expander-binding?__0 _g130052_))
                ((##fx= _g130053_ 2) (apply gx#expander-binding?__% _g130052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g130052_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind127134%_)
        (gx#expander-binding?__% _%bind127134%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind127132%_)
        (gx#expander-binding?__% _%bind127132%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind127126%_)
        (letrec ((_%direct-special-form?127128%_
                  (lambda (_%obj127130%_)
                    (##structure-direct-instance-of?
                     _%obj127130%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind127126%_
           _%direct-special-form?127128%_))))
    (define gx#special-form-binding?
      (lambda (_%bind127124%_)
        (gx#expander-binding?__% _%bind127124%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind127115%_)
        (letrec ((_%feature?127117%_
                  (lambda (_%e127119%_)
                    (let ((_%$e127121%_
                           (##structure-instance-of?
                            _%e127119%_
                            'gx#feature-expander::t)))
                      (if _%$e127121%_
                          _%$e127121%_
                          (##structure-instance-of?
                           _%e127119%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind127115%_ _%feature?127117%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind127113%_)
        (gx#expander-binding?__% _%bind127113%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id127100%_ _%bound?127101%_)
        (if (gx#identifier? _%id127100%_)
            (_%bound?127101%_ (gx#resolve-identifier__0 _%id127100%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id127106%_)
        (let ((_%bound?127108%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id127106%_ _%bound?127108%_))))
    (define gx#core-bound-identifier?
      (lambda _g130054_
        (let ((_g130055_ (##length _g130054_)))
          (cond ((##fx= _g130055_ 1)
                 (apply gx#core-bound-identifier?__0 _g130054_))
                ((##fx= _g130055_ 2)
                 (apply gx#core-bound-identifier?__% _g130054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g130054_))))))
    (define gx#core-identifier=?
      (lambda (_%x127090%_ _%y127091%_)
        (letrec ((_%y=?127093%_
                  (lambda (_%xid127097%_)
                    ((if (list? _%y127091%_) memq eq?)
                     _%xid127097%_
                     _%y127091%_))))
          (let ((_%bind127095%_ (gx#resolve-identifier__0 _%x127090%_)))
            (if (##structure-instance-of? _%bind127095%_ 'gx#binding::t)
                (_%y=?127093%_
                 (##unchecked-structure-ref _%bind127095%_ '1 '#f '#f))
                (_%y=?127093%_ (gx#stx-e _%x127090%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e127088%_)
        (if (interned-symbol? _%e127088%_)
            (string-index__0 (symbol->string _%e127088%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx127041%_ _%src127042%_ _%ctx127043%_ _%marks127044%_)
        (if (##structure? _%stx127041%_)
            (let ((_%$e127046%_ (gx#sealed-syntax-unwrap _%stx127041%_)))
              (if _%$e127046%_
                  _%$e127046%_
                  (if (gx#identifier? _%stx127041%_)
                      (let ((_%id127050%_
                             (gx#stx-unwrap__% _%stx127041%_ _%marks127044%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id127050%_ '1 '#f '#f)
                         (let ((_%$e127052%_
                                (##unchecked-structure-ref
                                 _%id127050%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e127052%_ _%$e127052%_ _%src127042%_))
                         _%ctx127043%_
                         (##unchecked-structure-ref _%id127050%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx127041%_)
                       (let ((_%$e127056%_ (gx#stx-source _%stx127041%_)))
                         (if _%$e127056%_ _%$e127056%_ _%src127042%_))
                       _%ctx127043%_
                       (reverse _%marks127044%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx127041%_
             _%src127042%_
             _%ctx127043%_
             (reverse _%marks127044%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx127062%_)
        (let* ((_%src127064%_ '#f)
               (_%ctx127066%_ (gx#current-expander-context))
               (_%marks127068%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx127062%_
           _%src127064%_
           _%ctx127066%_
           _%marks127068%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx127070%_ _%src127071%_)
        (let* ((_%ctx127073%_ (gx#current-expander-context))
               (_%marks127075%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx127070%_
           _%src127071%_
           _%ctx127073%_
           _%marks127075%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx127077%_ _%src127078%_ _%ctx127079%_)
        (let ((_%marks127081%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx127077%_
           _%src127078%_
           _%ctx127079%_
           _%marks127081%_))))
    (define gx#core-quote-syntax
      (lambda _g130056_
        (let ((_g130057_ (##length _g130056_)))
          (cond ((##fx= _g130057_ 1) (apply gx#core-quote-syntax__0 _g130056_))
                ((##fx= _g130057_ 2) (apply gx#core-quote-syntax__1 _g130056_))
                ((##fx= _g130057_ 3) (apply gx#core-quote-syntax__2 _g130056_))
                ((##fx= _g130057_ 4) (apply gx#core-quote-syntax__% _g130056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g130056_))))))
    (define gx#core-cons
      (lambda (_%hd127037%_ _%tl127038%_)
        (cons (gx#core-quote-syntax__0 _%hd127037%_) _%tl127038%_)))
    (define gx#core-list
      (lambda (_%hd127034%_ . _%rest127035%_)
        (cons (gx#core-quote-syntax__0 _%hd127034%_) _%rest127035%_)))
    (define gx#core-cons*
      (lambda (_%hd127031%_ . _%rest127032%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd127031%_) _%rest127032%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path127000%_ _%rel127001%_)
        (let ((_%path127018%_ (gx#stx-e _%stx-path127000%_))
              (_%reldir127019%_
               (let _%lp127003%_ ((_%relsrc127005%_
                                   (let ((_%$e127015%_
                                          (gx#stx-source _%stx-path127000%_)))
                                     (if _%$e127015%_
                                         _%$e127015%_
                                         _%rel127001%_))))
                 (if (##structure-instance-of? _%relsrc127005%_ 'gerbil#AST::t)
                     (_%lp127003%_
                      (let ((_%$e127008%_ (gx#stx-source _%relsrc127005%_)))
                        (if _%$e127008%_
                            _%$e127008%_
                            (gx#stx-e _%relsrc127005%_))))
                     (if (source-location-path? _%relsrc127005%_)
                         (path-directory
                          (source-location-path _%relsrc127005%_))
                         (if (string? _%relsrc127005%_)
                             (path-directory _%relsrc127005%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path127018%_ (path-normalize _%reldir127019%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path127024%_)
        (let ((_%rel127026%_ '#f))
          (gx#core-resolve-path__% _%stx-path127024%_ _%rel127026%_))))
    (define gx#core-resolve-path
      (lambda _g130058_
        (let ((_g130059_ (##length _g130058_)))
          (cond ((##fx= _g130059_ 1) (apply gx#core-resolve-path__0 _g130058_))
                ((##fx= _g130059_ 2) (apply gx#core-resolve-path__% _g130058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g130058_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr126956%_ _%ctx126957%_)
        (let* ((_%repr126958126965%_ _%repr126956%_)
               (_%E126960126969%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr126958126965%_
                         '([phi . subs]))
                  '#!void))
               (_%K126961126977%_
                (lambda (_%subs126972%_ _%phi126973%_)
                  (let ((_%subst126975%_
                         (if (null? _%subs126972%_)
                             '#f
                             (list->hash-table-eq _%subs126972%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst126975%_
                     _%ctx126957%_
                     _%phi126973%_
                     '#f)))))
          (if (pair? _%repr126958126965%_)
              (let ((_%hd126962126980%_ (##car _%repr126958126965%_))
                    (_%tl126963126982%_ (##cdr _%repr126958126965%_)))
                (let* ((_%phi126985%_ _%hd126962126980%_)
                       (_%subs126987%_ _%tl126963126982%_))
                  (_%K126961126977%_ _%subs126987%_ _%phi126985%_)))
              (_%E126960126969%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr126992%_)
        (let ((_%ctx126994%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr126992%_ _%ctx126994%_))))
    (define gx#core-deserialize-mark
      (lambda _g130060_
        (let ((_g130061_ (##length _g130060_)))
          (cond ((##fx= _g130061_ 1)
                 (apply gx#core-deserialize-mark__0 _g130060_))
                ((##fx= _g130061_ 2)
                 (apply gx#core-deserialize-mark__% _g130060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g130060_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx126953%_)
        (gx#stx-rewrap _%stx126953%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx126951%_)
        (gx#stx-unwrap__% _%stx126951%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx126921%_)
        (let* ((_%g126922126930%_ (gx#current-expander-marks))
               (_%else126924126938%_ (lambda () _%stx126921%_))
               (_%K126926126943%_
                (lambda (_%hd126941%_)
                  (gx#stx-apply-mark _%stx126921%_ _%hd126941%_))))
          (if (pair? _%g126922126930%_)
              (let* ((_%hd126927126946%_ (##car _%g126922126930%_))
                     (_%hd126949%_ _%hd126927126946%_))
                (_%K126926126943%_ _%hd126949%_))
              (_%else126924126938%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx126906%_ _%E126907%_)
        (let ((_%bind126909%_ (gx#resolve-identifier__0 _%stx126906%_)))
          (if (##structure-direct-instance-of?
               _%bind126909%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind126909%_ '4 '#f '#f)
              (_%E126907%_ _%stx126906%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx126914%_)
        (let ((_%E126916%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx126914%_ _%E126916%_))))
    (define gx#syntax-local-e
      (lambda _g130062_
        (let ((_g130063_ (##length _g130062_)))
          (cond ((##fx= _g130063_ 1) (apply gx#syntax-local-e__0 _g130062_))
                ((##fx= _g130063_ 2) (apply gx#syntax-local-e__% _g130062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g130062_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx126890%_ _%E126891%_)
        (let ((_%e126893%_ (gx#syntax-local-e__% _%stx126890%_ _%E126891%_)))
          (if (##structure-instance-of? _%e126893%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e126893%_ '1 '#f '#f)
              _%e126893%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx126898%_)
        (let ((_%E126900%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx126898%_ _%E126900%_))))
    (define gx#syntax-local-value
      (lambda _g130064_
        (let ((_g130065_ (##length _g130064_)))
          (cond ((##fx= _g130065_ 1)
                 (apply gx#syntax-local-value__0 _g130064_))
                ((##fx= _g130065_ 2)
                 (apply gx#syntax-local-value__% _g130064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g130064_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx126887%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx126887%_)))))
