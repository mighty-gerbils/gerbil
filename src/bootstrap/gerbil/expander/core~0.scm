(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1779289639)
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
      (lambda _%$args179521%_
        (apply make-instance gx#expander-context::t _%$args179521%_)))
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
      (lambda _%$args179518%_
        (apply make-instance gx#root-context::t _%$args179518%_)))
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
      (lambda _%$args179515%_
        (apply make-instance gx#phi-context::t _%$args179515%_)))
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
      (lambda _%$args179512%_
        (apply make-instance gx#top-context::t _%$args179512%_)))
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
      (lambda _%$args179509%_
        (apply make-instance gx#module-context::t _%$args179509%_)))
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
      (lambda _%$args179506%_
        (apply make-instance gx#prelude-context::t _%$args179506%_)))
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
      (lambda _%$args179503%_
        (apply make-instance gx#local-context::t _%$args179503%_)))
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
      (lambda (_%self179476%_ _%id179477%_ _%super179478%_)
        (let ((_%self179481%_ _%self179476%_))
          (if (##fx< '3 (##structure-length _%self179481%_))
              (begin
                (##unchecked-structure-set!
                 _%self179481%_
                 _%id179477%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179481%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179481%_
                 _%super179478%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self179481%_
                     '3
                     (##structure-length _%self179481%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self179494%_ _%id179495%_)
        (let ((_%super179497%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self179494%_
           _%id179495%_
           _%super179497%_))))
    (define gx#phi-context:::init!
      (lambda _g179563_
        (let ((_g179564_ (##length _g179563_)))
          (cond ((##fx= _g179564_ 2)
                 (apply gx#phi-context:::init!__0 _g179563_))
                ((##fx= _g179564_ 3)
                 (apply gx#phi-context:::init!__% _g179563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g179563_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self179329%_ _%super179330%_)
        (let ((_%self179333%_ _%self179329%_))
          (if (##fx< '3 (##structure-length _%self179333%_))
              (begin
                (##unchecked-structure-set!
                 _%self179333%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179333%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179333%_
                 _%super179330%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self179333%_
                     '3
                     (##structure-length _%self179333%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self179346%_)
        (let ((_%super179348%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self179346%_ _%super179348%_))))
    (define gx#local-context:::init!
      (lambda _g179565_
        (let ((_g179566_ (##length _g179565_)))
          (cond ((##fx= _g179566_ 1)
                 (apply gx#local-context:::init!__0 _g179565_))
                ((##fx= _g179566_ 2)
                 (apply gx#local-context:::init!__% _g179565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g179565_))))))
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
      (lambda _%$args179203%_
        (apply make-instance gx#binding::t _%$args179203%_)))
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
      (lambda (_%self179186%_ _%id179187%_ _%key179188%_ _%phi179189%_)
        (let ((_%self179192%_ _%self179186%_))
          (##unchecked-structure-set! _%self179192%_ _%id179187%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self179192%_ _%key179188%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self179192%_
           _%phi179189%_
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
      (lambda _%$args179061%_
        (apply make-instance gx#runtime-binding::t _%$args179061%_)))
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
      (lambda _%$args179058%_
        (apply make-instance gx#local-binding::t _%$args179058%_)))
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
      (lambda _%$args179055%_
        (apply make-instance gx#top-binding::t _%$args179055%_)))
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
      (lambda _%$args179052%_
        (apply make-instance gx#module-binding::t _%$args179052%_)))
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
      (lambda _%$args179049%_
        (apply make-instance gx#extern-binding::t _%$args179049%_)))
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
      (lambda (_%self178665%_
               _%id178666%_
               _%key178667%_
               _%phi178668%_
               _%ctx178669%_)
        (let ((_%self178672%_ _%self178665%_))
          (gx#binding:::init!
           _%self178672%_
           _%id178666%_
           _%key178667%_
           _%phi178668%_)
          (##unchecked-structure-set!
           _%self178672%_
           _%ctx178669%_
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
      (lambda _%$args178418%_
        (apply make-instance gx#syntax-binding::t _%$args178418%_)))
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
      (lambda _%$args178415%_
        (apply make-instance gx#import-binding::t _%$args178415%_)))
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
      (lambda _%$args178412%_
        (apply make-instance gx#alias-binding::t _%$args178412%_)))
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
      (lambda (_%self178394%_
               _%id178395%_
               _%key178396%_
               _%phi178397%_
               _%e178398%_)
        (let ((_%self178401%_ _%self178394%_))
          (gx#binding:::init!
           _%self178401%_
           _%id178395%_
           _%key178396%_
           _%phi178397%_)
          (##unchecked-structure-set! _%self178401%_ _%e178398%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self178252%_
               _%id178253%_
               _%key178254%_
               _%phi178255%_
               _%e178256%_
               _%ctx178257%_
               _%weak?178258%_)
        (let ((_%self178261%_ _%self178252%_))
          (gx#binding:::init!
           _%self178261%_
           _%id178253%_
           _%key178254%_
           _%phi178255%_)
          (##unchecked-structure-set! _%self178261%_ _%e178256%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self178261%_ _%ctx178257%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self178261%_
           _%weak?178258%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self178112%_
               _%id178113%_
               _%key178114%_
               _%phi178115%_
               _%e178116%_)
        (let ((_%self178119%_ _%self178112%_))
          (gx#binding:::init!
           _%self178119%_
           _%id178113%_
           _%key178114%_
           _%phi178115%_)
          (##unchecked-structure-set! _%self178119%_ _%e178116%_ '5 '#f '#f))))
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
      (lambda _%$args177987%_
        (apply make-instance gx#expander::t _%$args177987%_)))
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
      (lambda _%$args177984%_
        (apply make-instance gx#core-expander::t _%$args177984%_)))
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
      (lambda _%$args177981%_
        (apply make-instance gx#expression-form::t _%$args177981%_)))
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
      (lambda _%$args177978%_
        (apply make-instance gx#special-form::t _%$args177978%_)))
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
      (lambda _%$args177975%_
        (apply make-instance gx#definition-form::t _%$args177975%_)))
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
      (lambda _%$args177972%_
        (apply make-instance gx#top-special-form::t _%$args177972%_)))
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
      (lambda _%$args177969%_
        (apply make-instance gx#module-special-form::t _%$args177969%_)))
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
      (lambda _%$args177966%_
        (apply make-instance gx#feature-expander::t _%$args177966%_)))
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
      (lambda _%$args177963%_
        (apply make-instance gx#private-feature-expander::t _%$args177963%_)))
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
      (lambda _%$args177960%_
        (apply make-instance gx#reserved-expander::t _%$args177960%_)))
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
      (lambda _%$args177957%_
        (apply make-instance gx#macro-expander::t _%$args177957%_)))
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
      (lambda _%$args177954%_
        (apply make-instance gx#rename-macro-expander::t _%$args177954%_)))
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
      (lambda _%$args177951%_
        (apply make-instance gx#user-expander::t _%$args177951%_)))
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
      (lambda _%$args177948%_
        (apply make-instance gx#expander-mark::t _%$args177948%_)))
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
      (lambda (_%ctx177932%_
               _%message177933%_
               _%stx177934%_
               .
               _%details177935%_)
        (let ((_%ctx177946%_
               (let ((_%$e177937%_ _%ctx177932%_))
                 (if _%$e177937%_
                     _%$e177937%_
                     (let ((_%$e177940%_ (gx#core-context-top__0)))
                       (if _%$e177940%_
                           (cons 'expand
                                 (cons (##structure-ref
                                        _%$e177940%_
                                        '1
                                        gx#expander-context::t
                                        '#f)
                                       '()))
                           '#f))))))
          (raise (make-syntax-error
                  _%message177933%_
                  (cons _%stx177934%_ _%details177935%_)
                  _%ctx177946%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx177919%_ _%expression?177920%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx177919%_ _%expression?177920%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx177925%_)
        (let ((_%expression?177927%_ '#f))
          (gx#eval-syntax__% _%stx177925%_ _%expression?177927%_))))
    (define gx#eval-syntax
      (lambda _g179567_
        (let ((_g179568_ (##length _g179567_)))
          (cond ((##fx= _g179568_ 1) (apply gx#eval-syntax__0 _g179567_))
                ((##fx= _g179568_ 2) (apply gx#eval-syntax__% _g179567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g179567_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx177904%_ _%expression?177905%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx177904%_ _%expression?177905%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx177911%_)
        (let ((_%expression?177913%_ '#f))
          (gx#eval-syntax+1__% _%stx177911%_ _%expression?177913%_))))
    (define gx#eval-syntax+1
      (lambda _g179569_
        (let ((_g179570_ (##length _g179569_)))
          (cond ((##fx= _g179570_ 1) (apply gx#eval-syntax+1__0 _g179569_))
                ((##fx= _g179570_ 2) (apply gx#eval-syntax+1__% _g179569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g179569_))))))
    (define gx#eval-expression+1
      (lambda (_%stx177901%_) (gx#eval-syntax+1__% _%stx177901%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx177899%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx177899%_))))
    (define gx#core-expand__%
      (lambda (_%stx177886%_ _%expression?177887%_)
        (if _%expression?177887%_
            (gx#core-expand-expression _%stx177886%_)
            (gx#core-expand-top _%stx177886%_))))
    (define gx#core-expand__0
      (lambda (_%stx177892%_)
        (let ((_%expression?177894%_ '#f))
          (gx#core-expand__% _%stx177892%_ _%expression?177894%_))))
    (define gx#core-expand
      (lambda _g179571_
        (let ((_g179572_ (##length _g179571_)))
          (cond ((##fx= _g179572_ 1) (apply gx#core-expand__0 _g179571_))
                ((##fx= _g179572_ 2) (apply gx#core-expand__% _g179571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g179571_))))))
    (define gx#core-expand-top
      (lambda (_%stx177853%_)
        (let* ((_%stx177855%_ (gx#core-expand*__0 _%stx177853%_))
               (_%e177856177863%_ _%stx177855%_)
               (_%E177858177867%_
                (lambda () (gx#core-expand-expression _%stx177855%_)))
               (_%E177857177881%_
                (lambda ()
                  (if (gx#stx-pair? _%e177856177863%_)
                      (let ((_%e177859177871%_
                             (gx#syntax-e _%e177856177863%_)))
                        (let ((_%hd177860177874%_ (##car _%e177859177871%_))
                              (_%tl177861177876%_ (##cdr _%e177859177871%_)))
                          (let ((_%form177879%_ _%hd177860177874%_))
                            (if (gx#core-bound-identifier?__0 _%form177879%_)
                                _%stx177855%_
                                (_%E177858177867%_)))))
                      (_%E177858177867%_)))))
          (_%E177857177881%_))))
    (define gx#core-expand-expression
      (lambda (_%stx177785%_)
        (letrec ((_%sealed-expression?177787%_
                  (lambda (_%hd177823%_)
                    (if (gx#sealed-syntax? _%hd177823%_)
                        (let* ((_%e177824177831%_ _%hd177823%_)
                               (_%E177826177835%_ (lambda () '#f))
                               (_%E177825177849%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e177824177831%_)
                                      (let ((_%e177827177839%_
                                             (gx#syntax-e _%e177824177831%_)))
                                        (let ((_%hd177828177842%_
                                               (##car _%e177827177839%_))
                                              (_%tl177829177844%_
                                               (##cdr _%e177827177839%_)))
                                          (let ((_%form177847%_
                                                 _%hd177828177842%_))
                                            (gx#core-bound-identifier?__%
                                             _%form177847%_
                                             gx#expression-form-binding?))))
                                      (_%E177826177835%_)))))
                          (_%E177825177849%_))
                        '#f)))
                 (_%illegal-expression177788%_
                  (lambda (_%hd177820%_ . _%_177821%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx177785%_
                     _%hd177820%_)))
                 (_%expand-e177789%_
                  (lambda (_%form177812%_ _%hd177813%_)
                    (let ((_%bind177815%_
                           (if (##structure-instance-of?
                                _%form177812%_
                                'gx#binding::t)
                               _%form177812%_
                               (gx#resolve-identifier__0 _%form177812%_))))
                      (if (gx#core-expander-binding? _%bind177815%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind177815%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd177813%_
                            (gx#stx-source _%stx177785%_)))
                          (if (##structure-direct-instance-of?
                               _%bind177815%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind177815%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd177813%_
                                 (gx#stx-source _%stx177785%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx177785%_
                               _%form177812%_)))))))
          (let ((_%hd177791%_ (gx#core-expand-head _%stx177785%_)))
            (if (_%sealed-expression?177787%_ _%hd177791%_)
                _%hd177791%_
                (if (gx#stx-pair? _%hd177791%_)
                    (let* ((_%form177795%_ (gx#stx-car _%hd177791%_))
                           (_%bind177797%_
                            (if (gx#identifier? _%form177795%_)
                                (gx#resolve-identifier__0 _%form177795%_)
                                '#f)))
                      (if (or (not _%bind177797%_)
                              (not (gx#core-expander-binding? _%bind177797%_)))
                          (_%expand-e177789%_
                           '%%app
                           (cons '%%app _%hd177791%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind177797%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd177791%_
                               _%illegal-expression177788%_)
                              (if (gx#expression-form-binding? _%bind177797%_)
                                  (_%expand-e177789%_
                                   _%bind177797%_
                                   _%hd177791%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind177797%_)
                                      (gx#core-expand-expression
                                       (_%expand-e177789%_
                                        _%bind177797%_
                                        _%hd177791%_))
                                      (_%illegal-expression177788%_
                                       _%hd177791%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd177791%_)
                        (_%illegal-expression177788%_ _%hd177791%_)
                        (if (gx#identifier? _%hd177791%_)
                            (_%expand-e177789%_
                             '%%ref
                             (cons '%%ref (cons _%hd177791%_ '())))
                            (if (gx#stx-datum? _%hd177791%_)
                                (_%expand-e177789%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd177791%_ '())))
                                (_%illegal-expression177788%_
                                 _%hd177791%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx177780%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx177783%_ (gx#core-expand-expression _%stx177780%_)))
             (values _%stx177783%_ (gx#eval-syntax* _%stx177783%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx177761%_ _%stop?177762%_)
        (let _%lp177764%_ ((_%stx177766%_ _%stx177761%_))
          (if (_%stop?177762%_ _%stx177766%_)
              _%stx177766%_
              (let ((_%rstx177768%_ (gx#core-expand1 _%stx177766%_)))
                (if (eq? _%stx177766%_ _%rstx177768%_)
                    _%stx177766%_
                    (_%lp177764%_ _%rstx177768%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx177773%_)
        (let ((_%stop?177775%_ false))
          (gx#core-expand*__% _%stx177773%_ _%stop?177775%_))))
    (define gx#core-expand*
      (lambda _g179573_
        (let ((_g179574_ (##length _g179573_)))
          (cond ((##fx= _g179574_ 1) (apply gx#core-expand*__0 _g179573_))
                ((##fx= _g179574_ 2) (apply gx#core-expand*__% _g179573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g179573_))))))
    (define gx#core-expand1
      (lambda (_%stx177713%_)
        (letrec ((_%step177715%_
                  (lambda (_%hd177752%_)
                    (let ((_%bind177754%_
                           (gx#resolve-identifier__0 _%hd177752%_)))
                      (if (##structure-instance-of?
                           _%bind177754%_
                           'gx#runtime-binding::t)
                          _%stx177713%_
                          (if (##structure-direct-instance-of?
                               _%bind177754%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind177754%_
                                '5
                                '#f
                                '#f)
                               _%stx177713%_)
                              (if (not _%bind177754%_)
                                  _%stx177713%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx177713%_))))))))
          (let* ((_%e177716177724%_ _%stx177713%_)
                 (_%E177722177728%_ (lambda () _%stx177713%_))
                 (_%E177718177734%_
                  (lambda ()
                    (let ((_%hd177732%_ _%e177716177724%_))
                      (if (gx#identifier? _%hd177732%_)
                          (_%step177715%_ _%hd177732%_)
                          (_%E177722177728%_)))))
                 (_%E177717177748%_
                  (lambda ()
                    (if (gx#stx-pair? _%e177716177724%_)
                        (let ((_%e177719177738%_
                               (gx#syntax-e _%e177716177724%_)))
                          (let ((_%hd177720177741%_ (##car _%e177719177738%_))
                                (_%tl177721177743%_ (##cdr _%e177719177738%_)))
                            (let ((_%hd177746%_ _%hd177720177741%_))
                              (if (gx#identifier? _%hd177746%_)
                                  (_%step177715%_ _%hd177746%_)
                                  (_%E177718177734%_)))))
                        (_%E177718177734%_)))))
            (_%E177717177748%_)))))
    (define gx#core-expand-head
      (lambda (_%stx177679%_)
        (letrec ((_%stop?177681%_
                  (lambda (_%stx177683%_)
                    (let* ((_%e177684177691%_ _%stx177683%_)
                           (_%E177686177695%_ (lambda () '#f))
                           (_%E177685177709%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177684177691%_)
                                  (let ((_%e177687177699%_
                                         (gx#syntax-e _%e177684177691%_)))
                                    (let ((_%hd177688177702%_
                                           (##car _%e177687177699%_))
                                          (_%tl177689177704%_
                                           (##cdr _%e177687177699%_)))
                                      (let ((_%hd177707%_ _%hd177688177702%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd177707%_))))
                                  (_%E177686177695%_)))))
                      (_%E177685177709%_)))))
          (gx#core-expand*__% _%stx177679%_ _%stop?177681%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx177485%_
               _%expand-special177486%_
               _%begin-form177487%_
               _%expand-e177488%_)
        (letrec ((_%expand-splice177490%_
                  (lambda (_%hd177653%_
                           _%body177654%_
                           _%rest177655%_
                           _%r177656%_)
                    (if (gx#stx-list? _%body177654%_)
                        (_%K177494%_
                         (gx#stx-foldr cons _%rest177655%_ _%body177654%_)
                         _%r177656%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx177485%_
                         _%hd177653%_))))
                 (_%expand-cond-expand177491%_
                  (lambda (_%hd177649%_ _%rest177650%_ _%r177651%_)
                    (_%K177494%_
                     (cons (gx#core-expand-cond-expand% _%hd177649%_)
                           _%rest177650%_)
                     _%r177651%_)))
                 (_%expand-include177492%_
                  (lambda (_%hd177598%_ _%rest177599%_ _%r177600%_)
                    (let* ((_%e177601177611%_ _%hd177598%_)
                           (_%E177603177615%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e177601177611%_)))
                           (_%E177602177645%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177601177611%_)
                                  (let ((_%e177604177619%_
                                         (gx#syntax-e _%e177601177611%_)))
                                    (let ((_%hd177605177622%_
                                           (##car _%e177604177619%_))
                                          (_%tl177606177624%_
                                           (##cdr _%e177604177619%_)))
                                      (if (gx#stx-pair? _%tl177606177624%_)
                                          (let ((_%e177607177627%_
                                                 (gx#syntax-e
                                                  _%tl177606177624%_)))
                                            (let ((_%hd177608177630%_
                                                   (##car _%e177607177627%_))
                                                  (_%tl177609177632%_
                                                   (##cdr _%e177607177627%_)))
                                              (let ((_%path177635%_
                                                     _%hd177608177630%_))
                                                (if (gx#stx-null?
                                                     _%tl177609177632%_)
                                                    (if (gx#stx-string?
                                                         _%path177635%_)
                                                        (let* ((_%rpath177637%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path177635%_
                         (gx#stx-source _%hd177598%_)))
                       (_%block177639%_
                        (gx#core-expand-include%__%
                         _%hd177598%_
                         _%rpath177637%_))
                       (_%rbody177642%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block177639%_
                            _%expand-special177486%_
                            '#f
                            _%expand-e177488%_))
                         gx#current-expander-path
                         (cons _%rpath177637%_ (gx#current-expander-path)))))
                  (_%K177494%_
                   _%rest177599%_
                   (foldr__0 cons _%r177600%_ _%rbody177642%_)))
                (_%E177603177615%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177603177615%_)))))
                                          (_%E177603177615%_))))
                                  (_%E177603177615%_)))))
                      (_%E177602177645%_))))
                 (_%expand-expression177493%_
                  (lambda (_%hd177594%_ _%rest177595%_ _%r177596%_)
                    (_%K177494%_
                     _%rest177595%_
                     (cons (_%expand-e177488%_ _%hd177594%_) _%r177596%_))))
                 (_%K177494%_
                  (lambda (_%rest177524%_ _%r177525%_)
                    (let* ((_%e177526177533%_ _%rest177524%_)
                           (_%E177528177537%_
                            (lambda ()
                              (if _%begin-form177487%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form177487%_
                                    (reverse _%r177525%_))
                                   (gx#stx-source _%stx177485%_))
                                  _%r177525%_)))
                           (_%E177527177590%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177526177533%_)
                                  (let ((_%e177529177541%_
                                         (gx#syntax-e _%e177526177533%_)))
                                    (let ((_%hd177530177544%_
                                           (##car _%e177529177541%_))
                                          (_%tl177531177546%_
                                           (##cdr _%e177529177541%_)))
                                      (let* ((_%hd177549%_ _%hd177530177544%_)
                                             (_%rest177551%_
                                              _%tl177531177546%_)
                                             (_%hd177553%_
                                              (gx#core-expand-head
                                               _%hd177549%_))
                                             (_%e177554177561%_ _%hd177553%_)
                                             (_%E177556177565%_
                                              (lambda ()
                                                (_%expand-expression177493%_
                                                 _%hd177553%_
                                                 _%rest177551%_
                                                 _%r177525%_)))
                                             (_%E177555177586%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e177554177561%_)
                                                    (let ((_%e177557177569%_
                                                           (gx#syntax-e
                                                            _%e177554177561%_)))
                                                      (let ((_%hd177558177572%_
                                                             (##car _%e177557177569%_))
                                                            (_%tl177559177574%_
                                                             (##cdr _%e177557177569%_)))
                                                        (let* ((_%form177577%_
                                                                _%hd177558177572%_)
                                                               (_%body177579%_
                                                                _%tl177559177574%_)
                                                               (_%bind177581%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form177577%_)
                            (gx#resolve-identifier__0 _%form177577%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind177581%_)
                      (let ((_%$e177583%_
                             (##unchecked-structure-ref
                              _%bind177581%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e177583%_)
                            (_%expand-splice177490%_
                             _%hd177553%_
                             _%body177579%_
                             _%rest177551%_
                             _%r177525%_)
                            (if (eq? '%#cond-expand _%$e177583%_)
                                (_%expand-cond-expand177491%_
                                 _%hd177553%_
                                 _%rest177551%_
                                 _%r177525%_)
                                (if (eq? '%#include _%$e177583%_)
                                    (_%expand-include177492%_
                                     _%hd177553%_
                                     _%rest177551%_
                                     _%r177525%_)
                                    (_%expand-special177486%_
                                     _%hd177553%_
                                     _%K177494%_
                                     _%rest177551%_
                                     _%r177525%_)))))
                      (_%expand-expression177493%_
                       _%hd177553%_
                       _%rest177551%_
                       _%r177525%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177556177565%_)))))
                                        (_%E177555177586%_))))
                                  (_%E177528177537%_)))))
                      (_%E177527177590%_)))))
          (let* ((_%e177495177502%_ _%stx177485%_)
                 (_%E177497177506%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e177495177502%_)))
                 (_%E177496177520%_
                  (lambda ()
                    (if (gx#stx-pair? _%e177495177502%_)
                        (let ((_%e177498177510%_
                               (gx#syntax-e _%e177495177502%_)))
                          (let ((_%hd177499177513%_ (##car _%e177498177510%_))
                                (_%tl177500177515%_ (##cdr _%e177498177510%_)))
                            (let ((_%body177518%_ _%tl177500177515%_))
                              (if (gx#stx-list? _%body177518%_)
                                  (_%K177494%_ _%body177518%_ '())
                                  (_%E177497177506%_)))))
                        (_%E177497177506%_)))))
            (_%E177496177520%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx177661%_ _%expand-special177662%_)
        (let* ((_%begin-form177664%_ '%#begin)
               (_%expand-e177666%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx177661%_
           _%expand-special177662%_
           _%begin-form177664%_
           _%expand-e177666%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx177668%_ _%expand-special177669%_ _%begin-form177670%_)
        (let ((_%expand-e177672%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx177668%_
           _%expand-special177669%_
           _%begin-form177670%_
           _%expand-e177672%_))))
    (define gx#core-expand-block
      (lambda _g179575_
        (let ((_g179576_ (##length _g179575_)))
          (cond ((##fx= _g179576_ 2) (apply gx#core-expand-block__0 _g179575_))
                ((##fx= _g179576_ 3) (apply gx#core-expand-block__1 _g179575_))
                ((##fx= _g179576_ 4) (apply gx#core-expand-block__% _g179575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g179575_))))))
    (define gx#core-expand-block*
      (lambda (_%stx177433%_ _%expand-special177434%_)
        (let* ((_%g177435177446%_
                (gx#core-expand-block__1
                 _%stx177433%_
                 _%expand-special177434%_
                 '#f))
               (_%E177439177450%_
                (lambda ()
                  (error '"No clause matching"
                         _%g177435177446%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K177444177481%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx177433%_)))
                (_%K177441177467%_ (lambda (_%expr177465%_) _%expr177465%_))
                (_%K177440177456%_
                 (lambda (_%body177454%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body177454%_))
                    (gx#stx-source _%stx177433%_)))))
            (let ((_%try-match177437177477%_
                   (lambda ()
                     (if (pair? _%g177435177446%_)
                         (let ((_%tl177443177472%_ (##cdr _%g177435177446%_))
                               (_%hd177442177470%_ (##car _%g177435177446%_)))
                           (if (null? _%tl177443177472%_)
                               (let ((_%expr177475%_ _%hd177442177470%_))
                                 (_%K177441177467%_ _%expr177475%_))
                               (let ((_%body177459%_ _%g177435177446%_))
                                 (_%K177440177456%_ _%body177459%_))))
                         (let ((_%body177459%_ _%g177435177446%_))
                           (_%K177440177456%_ _%body177459%_))))))
              (if (null? _%g177435177446%_)
                  (_%K177444177481%_)
                  (_%try-match177437177477%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx177259%_)
        (letrec ((_%satisfied?177261%_
                  (lambda (_%condition177362%_)
                    (let* ((_%e177363177378%_ _%condition177362%_)
                           (_%E177373177382%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e177363177378%_)))
                           (_%E177366177401%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177363177378%_)
                                  (let ((_%e177374177386%_
                                         (gx#syntax-e _%e177363177378%_)))
                                    (let ((_%hd177375177389%_
                                           (##car _%e177374177386%_))
                                          (_%tl177376177391%_
                                           (##cdr _%e177374177386%_)))
                                      (let* ((_%combinator177394%_
                                              _%hd177375177389%_)
                                             (_%body177396%_
                                              _%tl177376177391%_))
                                        (if (gx#stx-list? _%body177396%_)
                                            (let ((_%$e177398%_
                                                   (gx#stx-e
                                                    _%combinator177394%_)))
                                              (if (eq? 'not _%$e177398%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?177261%_
                                                        _%body177396%_))
                                                  (if (eq? 'and _%$e177398%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?177261%_
                                                       _%body177396%_)
                                                      (if (eq? 'or
                                                               _%$e177398%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?177261%_
                                                           _%body177396%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e177398%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body177396%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx177259%_
                       _%combinator177394%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E177373177382%_)))))
                                  (_%E177373177382%_))))
                           (_%E177365177423%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177363177378%_)
                                  (let ((_%e177367177405%_
                                         (gx#syntax-e _%e177363177378%_)))
                                    (let ((_%hd177368177408%_
                                           (##car _%e177367177405%_))
                                          (_%tl177369177410%_
                                           (##cdr _%e177367177405%_)))
                                      (if (and (gx#identifier?
                                                _%hd177368177408%_)
                                               (gx#core-identifier=?
                                                _%hd177368177408%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl177369177410%_)
                                              (let ((_%e177370177413%_
                                                     (gx#syntax-e
                                                      _%tl177369177410%_)))
                                                (let ((_%hd177371177416%_
                                                       (##car _%e177370177413%_))
                                                      (_%tl177372177418%_
                                                       (##cdr _%e177370177413%_)))
                                                  (let ((_%expr177421%_
                                                         _%hd177371177416%_))
                                                    (if (gx#stx-null?
                                                         _%tl177372177418%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr177421%_)
                                                        (_%E177366177401%_)))))
                                              (_%E177366177401%_))
                                          (_%E177366177401%_))))
                                  (_%E177366177401%_))))
                           (_%E177364177429%_
                            (lambda ()
                              (let ((_%id177427%_ _%e177363177378%_))
                                (if (gx#identifier? _%id177427%_)
                                    (gx#core-bound-identifier?__%
                                     _%id177427%_
                                     gx#feature-binding?)
                                    (_%E177365177423%_))))))
                      (_%E177364177429%_))))
                 (_%loop177262%_
                  (lambda (_%rest177292%_)
                    (let* ((_%e177293177301%_ _%rest177292%_)
                           (_%E177299177305%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e177293177301%_)))
                           (_%E177295177309%_
                            (lambda ()
                              (if (gx#stx-null? _%e177293177301%_)
                                  '()
                                  (_%E177299177305%_))))
                           (_%E177294177358%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177293177301%_)
                                  (let ((_%e177296177313%_
                                         (gx#syntax-e _%e177293177301%_)))
                                    (let ((_%hd177297177316%_
                                           (##car _%e177296177313%_))
                                          (_%tl177298177318%_
                                           (##cdr _%e177296177313%_)))
                                      (let* ((_%hd177321%_ _%hd177297177316%_)
                                             (_%rest177323%_
                                              _%tl177298177318%_)
                                             (_%e177324177331%_ _%hd177321%_)
                                             (_%E177326177335%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e177324177331%_)))
                                             (_%E177325177354%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e177324177331%_)
                                                    (let ((_%e177327177339%_
                                                           (gx#syntax-e
                                                            _%e177324177331%_)))
                                                      (let ((_%hd177328177342%_
                                                             (##car _%e177327177339%_))
                                                            (_%tl177329177344%_
                                                             (##cdr _%e177327177339%_)))
                                                        (let* ((_%condition177347%_
                                                                _%hd177328177342%_)
                                                               (_%body177349%_
                                                                _%tl177329177344%_))
                                                          (if (gx#stx-eq?
                                                               _%condition177347%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest177323%_)
                          _%body177349%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx177259%_
                           _%hd177321%_))
                      (if (_%satisfied?177261%_ _%condition177347%_)
                          _%body177349%_
                          (_%loop177262%_ _%rest177323%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177326177335%_)))))
                                        (_%E177325177354%_))))
                                  (_%E177295177309%_)))))
                      (_%E177294177358%_)))))
          (let* ((_%e177263177270%_ _%stx177259%_)
                 (_%E177265177274%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e177263177270%_)))
                 (_%E177264177288%_
                  (lambda ()
                    (if (gx#stx-pair? _%e177263177270%_)
                        (let ((_%e177266177278%_
                               (gx#syntax-e _%e177263177270%_)))
                          (let ((_%hd177267177281%_ (##car _%e177266177278%_))
                                (_%tl177268177283%_ (##cdr _%e177266177278%_)))
                            (let ((_%clauses177286%_ _%tl177268177283%_))
                              (if (gx#stx-list? _%clauses177286%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop177262%_ _%clauses177286%_))
                                  (_%E177265177274%_)))))
                        (_%E177265177274%_)))))
            (_%E177264177288%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx177202%_ _%rpath177203%_)
        (let* ((_%e177204177214%_ _%stx177202%_)
               (_%E177206177218%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177204177214%_)))
               (_%E177205177245%_
                (lambda ()
                  (if (gx#stx-pair? _%e177204177214%_)
                      (let ((_%e177207177222%_
                             (gx#syntax-e _%e177204177214%_)))
                        (let ((_%hd177208177225%_ (##car _%e177207177222%_))
                              (_%tl177209177227%_ (##cdr _%e177207177222%_)))
                          (if (gx#stx-pair? _%tl177209177227%_)
                              (let ((_%e177210177230%_
                                     (gx#syntax-e _%tl177209177227%_)))
                                (let ((_%hd177211177233%_
                                       (##car _%e177210177230%_))
                                      (_%tl177212177235%_
                                       (##cdr _%e177210177230%_)))
                                  (let ((_%path177238%_ _%hd177211177233%_))
                                    (if (gx#stx-null? _%tl177212177235%_)
                                        (if (gx#stx-string? _%path177238%_)
                                            (let ((_%rpath177243%_
                                                   (let ((_%$e177240%_
                                                          _%rpath177203%_))
                                                     (if _%$e177240%_
                                                         _%$e177240%_
                                                         (gx#core-resolve-path__%
                                                          _%path177238%_
                                                          (gx#stx-source
                                                           _%stx177202%_))))))
                                              (if (member _%rpath177243%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx177202%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath177243%_))
                                                    (gx#stx-source
                                                     _%stx177202%_)))))
                                            (_%E177206177218%_))
                                        (_%E177206177218%_)))))
                              (_%E177206177218%_))))
                      (_%E177206177218%_)))))
          (_%E177205177245%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx177252%_)
        (let ((_%rpath177254%_ '#f))
          (gx#core-expand-include%__% _%stx177252%_ _%rpath177254%_))))
    (define gx#core-expand-include%
      (lambda _g179577_
        (let ((_g179578_ (##length _g179577_)))
          (cond ((##fx= _g179578_ 1)
                 (apply gx#core-expand-include%__0 _g179577_))
                ((##fx= _g179578_ 2)
                 (apply gx#core-expand-include%__% _g179577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g179577_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K177168%_ _%stx177169%_ _%method177170%_)
        (if (procedure? _%K177168%_)
            (let ((_%$e177173%_ (gx#stx-source _%stx177169%_)))
              (if _%$e177173%_
                  (gx#stx-wrap-source (_%K177168%_ _%stx177169%_) _%$e177173%_)
                  (_%K177168%_ _%stx177169%_)))
            (let ((_%$e177181%_
                   (bound-method-ref _%K177168%_ _%method177170%_)))
              (if _%$e177181%_
                  (gx#core-apply-expander__%
                   _%$e177181%_
                   _%stx177169%_
                   _%method177170%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx177169%_
                   _%method177170%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K177192%_ _%stx177193%_)
        (let ((_%method177195%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K177192%_
           _%stx177193%_
           _%method177195%_))))
    (define gx#core-apply-expander
      (lambda _g179579_
        (let ((_g179580_ (##length _g179579_)))
          (cond ((##fx= _g179580_ 2)
                 (apply gx#core-apply-expander__0 _g179579_))
                ((##fx= _g179580_ 3)
                 (apply gx#core-apply-expander__% _g179579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g179579_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self177153%_ _%stx177154%_)
        (let ((_%self177157%_ _%self177153%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx177154%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self176996%_ _%stx176997%_)
        (let* ((_%self177000%_ _%self176996%_)
               (_%self177009177015%_ _%self177000%_)
               (_%E177011177018%_
                (lambda ()
                  (error '"No clause matching"
                         _%self177009177015%_
                         '((macro-expander K)))
                  '#!void))
               (_%K177012177023%_
                (lambda (_%K177021%_)
                  (gx#core-apply-expander__0 _%K177021%_ _%stx176997%_)))
               (_%e177013177026%_
                (##unchecked-structure-ref _%self177009177015%_ '1 '#f '#f))
               (_%K177029%_ _%e177013177026%_))
          (_%K177012177023%_ _%K177029%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self176839%_ _%stx176840%_)
        (let ((_%self176843%_ _%self176839%_))
          (if (gx#sealed-syntax? _%stx176840%_)
              _%stx176840%_
              (let* ((_%self176852176858%_ _%self176843%_)
                     (_%E176854176861%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self176852176858%_
                               '((core-expander K)))
                        '#!void))
                     (_%K176855176866%_
                      (lambda (_%K176864%_)
                        (gx#core-apply-expander__0 _%K176864%_ _%stx176840%_)))
                     (_%e176856176869%_
                      (##unchecked-structure-ref
                       _%self176852176858%_
                       '1
                       '#f
                       '#f))
                     (_%K176872%_ _%e176856176869%_))
                (_%K176855176866%_ _%K176872%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self176690%_ _%stx176691%_ _%top?176692%_)
        (let ((_%self176695%_ _%self176690%_))
          (if (_%top?176692%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self176695%_
               _%stx176691%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx176691%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self176708%_ _%stx176709%_)
        (let ((_%top?176711%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self176708%_
           _%stx176709%_
           _%top?176711%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g179581_
        (let ((_g179582_ (##length _g179581_)))
          (cond ((##fx= _g179582_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g179581_))
                ((##fx= _g179582_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g179581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g179581_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self176553%_ _%stx176554%_)
        (let ((_%self176557%_ _%self176553%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self176557%_
           _%stx176554%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self176368%_ _%stx176369%_)
        (let* ((_%self176372%_ _%self176368%_)
               (_%self176381176387%_ _%self176372%_)
               (_%E176383176390%_
                (lambda ()
                  (error '"No clause matching"
                         _%self176381176387%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K176384176423%_
                (lambda (_%id176393%_)
                  (let* ((_%e176394176401%_ _%stx176369%_)
                         (_%E176396176405%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e176394176401%_)))
                         (_%E176395176419%_
                          (lambda ()
                            (if (gx#stx-pair? _%e176394176401%_)
                                (let ((_%e176397176409%_
                                       (gx#syntax-e _%e176394176401%_)))
                                  (let ((_%hd176398176412%_
                                         (##car _%e176397176409%_))
                                        (_%tl176399176414%_
                                         (##cdr _%e176397176409%_)))
                                    (let ((_%body176417%_ _%tl176399176414%_))
                                      (gx#core-cons
                                       _%id176393%_
                                       _%body176417%_))))
                                (_%E176396176405%_)))))
                    (_%E176395176419%_))))
               (_%e176385176426%_
                (##unchecked-structure-ref _%self176381176387%_ '1 '#f '#f))
               (_%id176429%_ _%e176385176426%_))
          (_%K176384176423%_ _%id176429%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self176195%_ _%stx176196%_ _%method176197%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx176196%_))
              (force-output))
            '#!void)
        (let* ((_%self176198176206%_ _%self176195%_)
               (_%E176200176209%_
                (lambda ()
                  (error '"No clause matching"
                         _%self176198176206%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K176201176216%_
                (lambda (_%phi176212%_ _%ctx176213%_ _%K176214%_)
                  (gx#core-apply-user-macro
                   _%K176214%_
                   _%stx176196%_
                   _%ctx176213%_
                   _%phi176212%_
                   _%method176197%_))))
          (if (##structure-instance-of?
               _%self176198176206%_
               'gx#user-expander::t)
              (let* ((_%e176202176219%_
                      (##unchecked-structure-ref
                       _%self176198176206%_
                       '1
                       '#f
                       '#f))
                     (_%K176222%_ _%e176202176219%_)
                     (_%e176203176224%_
                      (##unchecked-structure-ref
                       _%self176198176206%_
                       '2
                       '#f
                       '#f))
                     (_%ctx176227%_ _%e176203176224%_)
                     (_%e176204176229%_
                      (##unchecked-structure-ref
                       _%self176198176206%_
                       '3
                       '#f
                       '#f))
                     (_%phi176232%_ _%e176204176229%_))
                (_%K176201176216%_ _%phi176232%_ _%ctx176227%_ _%K176222%_))
              (_%E176200176209%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self176237%_ _%stx176238%_)
        (let ((_%method176240%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self176237%_
           _%stx176238%_
           _%method176240%_))))
    (define gx#core-apply-user-expander
      (lambda _g179583_
        (let ((_g179584_ (##length _g179583_)))
          (cond ((##fx= _g179584_ 2)
                 (apply gx#core-apply-user-expander__0 _g179583_))
                ((##fx= _g179584_ 3)
                 (apply gx#core-apply-user-expander__% _g179583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g179583_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K176185%_
               _%stx176186%_
               _%ctx176187%_
               _%phi176188%_
               _%method176189%_)
        (let ((_%mark176191%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx176187%_
                _%phi176188%_
                _%stx176186%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K176185%_
               (gx#stx-apply-mark _%stx176186%_ _%mark176191%_)
               _%method176189%_)
              _%mark176191%_))
           gx#current-expander-marks
           (cons _%mark176191%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx176033%_ _%phi176034%_ _%ctx176035%_)
        (let _%lp176037%_ ((_%bind176039%_
                            (gx#core-resolve-identifier__%
                             _%stx176033%_
                             _%phi176034%_
                             _%ctx176035%_)))
          (if (##structure-direct-instance-of?
               _%bind176039%_
               'gx#import-binding::t)
              (_%lp176037%_
               (##unchecked-structure-ref _%bind176039%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind176039%_
                   'gx#alias-binding::t)
                  (_%lp176037%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind176039%_ '5 '#f '#f)
                    _%phi176034%_
                    _%ctx176035%_))
                  _%bind176039%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx176047%_)
        (let* ((_%phi176049%_ (gx#current-expander-phi))
               (_%ctx176051%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx176047%_
           _%phi176049%_
           _%ctx176051%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx176053%_ _%phi176054%_)
        (let ((_%ctx176056%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx176053%_
           _%phi176054%_
           _%ctx176056%_))))
    (define gx#resolve-identifier
      (lambda _g179585_
        (let ((_g179586_ (##length _g179585_)))
          (cond ((##fx= _g179586_ 1)
                 (apply gx#resolve-identifier__0 _g179585_))
                ((##fx= _g179586_ 2)
                 (apply gx#resolve-identifier__1 _g179585_))
                ((##fx= _g179586_ 3)
                 (apply gx#resolve-identifier__% _g179585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g179585_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx175988%_
               _%val175989%_
               _%rebind?175990%_
               _%phi175991%_
               _%ctx175992%_)
        (let ((_%rebind?175997%_
               (if (not _%rebind?175990%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?175990%_)
                       _%rebind?175990%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx175988%_)
           _%val175989%_
           _%rebind?175997%_
           _%phi175991%_
           _%ctx175992%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx176002%_ _%val176003%_)
        (let* ((_%rebind?176005%_ '#f)
               (_%phi176007%_ (gx#current-expander-phi))
               (_%ctx176009%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx176002%_
           _%val176003%_
           _%rebind?176005%_
           _%phi176007%_
           _%ctx176009%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx176011%_ _%val176012%_ _%rebind?176013%_)
        (let* ((_%phi176015%_ (gx#current-expander-phi))
               (_%ctx176017%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx176011%_
           _%val176012%_
           _%rebind?176013%_
           _%phi176015%_
           _%ctx176017%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx176019%_ _%val176020%_ _%rebind?176021%_ _%phi176022%_)
        (let ((_%ctx176024%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx176019%_
           _%val176020%_
           _%rebind?176021%_
           _%phi176022%_
           _%ctx176024%_))))
    (define gx#bind-identifier!
      (lambda _g179587_
        (let ((_g179588_ (##length _g179587_)))
          (cond ((##fx= _g179588_ 2) (apply gx#bind-identifier!__0 _g179587_))
                ((##fx= _g179588_ 3) (apply gx#bind-identifier!__1 _g179587_))
                ((##fx= _g179588_ 4) (apply gx#bind-identifier!__2 _g179587_))
                ((##fx= _g179588_ 5) (apply gx#bind-identifier!__% _g179587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g179587_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx175954%_ _%phi175955%_ _%ctx175956%_)
        (let _%lp175958%_ ((_%e175960%_ _%stx175954%_)
                           (_%marks175961%_ (gx#current-expander-marks)))
          (if (symbol? _%e175960%_)
              (gx#core-resolve-binding
               _%e175960%_
               _%phi175955%_
               _%phi175955%_
               _%ctx175956%_
               (reverse _%marks175961%_))
              (if (gx#identifier-quote? _%e175960%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e175960%_ '1 '#f '#f)
                   _%phi175955%_
                   '0
                   (##unchecked-structure-ref _%e175960%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e175960%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e175960%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e175960%_ '1 '#f '#f)
                       _%phi175955%_
                       _%phi175955%_
                       _%ctx175956%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e175960%_ '3 '#f '#f)
                        _%marks175961%_))
                      (if (##structure-direct-instance-of?
                           _%e175960%_
                           'gx#syntax-wrap::t)
                          (_%lp175958%_
                           (##unchecked-structure-ref _%e175960%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e175960%_ '3 '#f '#f)
                            _%marks175961%_))
                          (if (##structure-instance-of?
                               _%e175960%_
                               'gerbil#AST::t)
                              (_%lp175958%_
                               (##unchecked-structure-ref
                                _%e175960%_
                                '1
                                '#f
                                '#f)
                               _%marks175961%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx175954%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx175972%_)
        (let* ((_%phi175974%_ (gx#current-expander-phi))
               (_%ctx175976%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx175972%_
           _%phi175974%_
           _%ctx175976%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx175978%_ _%phi175979%_)
        (let ((_%ctx175981%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx175978%_
           _%phi175979%_
           _%ctx175981%_))))
    (define gx#core-resolve-identifier
      (lambda _g179589_
        (let ((_g179590_ (##length _g179589_)))
          (cond ((##fx= _g179590_ 1)
                 (apply gx#core-resolve-identifier__0 _g179589_))
                ((##fx= _g179590_ 2)
                 (apply gx#core-resolve-identifier__1 _g179589_))
                ((##fx= _g179590_ 3)
                 (apply gx#core-resolve-identifier__% _g179589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g179589_))))))
    (define gx#core-resolve-binding
      (lambda (_%id175865%_
               _%phi175866%_
               _%src-phi175867%_
               _%ctx175868%_
               _%marks175869%_)
        (letrec ((_%resolve175871%_
                  (lambda (_%ctx175938%_ _%src-phi175939%_ _%key175940%_)
                    (let _%lp175942%_ ((_%ctx175944%_
                                        (gx#core-context-shift
                                         _%ctx175938%_
                                         _%phi175866%_))
                                       (_%dphi175945%_
                                        (fx- _%phi175866%_ _%src-phi175939%_)))
                      (let ((_%$e175947%_
                             (gx#core-context-resolve
                              _%ctx175944%_
                              _%key175940%_)))
                        (if _%$e175947%_
                            _%$e175947%_
                            (if (fxzero? _%dphi175945%_)
                                '#f
                                (if (fxpositive? _%dphi175945%_)
                                    (_%lp175942%_
                                     (gx#core-context-shift _%ctx175944%_ '-1)
                                     (##fx- _%dphi175945%_ '1))
                                    (_%lp175942%_
                                     (gx#core-context-shift _%ctx175944%_ '1)
                                     (##fx+ _%dphi175945%_ '1))))))))))
          (let _%lp175873%_ ((_%ctx175875%_ _%ctx175868%_)
                             (_%src-phi175876%_ _%src-phi175867%_)
                             (_%rest175877%_ _%marks175869%_))
            (let* ((_%rest175878175886%_ _%rest175877%_)
                   (_%else175880175894%_
                    (lambda ()
                      (_%resolve175871%_
                       _%ctx175875%_
                       _%src-phi175876%_
                       _%id175865%_)))
                   (_%K175882175926%_
                    (lambda (_%rest175897%_ _%hd175898%_)
                      (let* ((_%hd175899175905%_ _%hd175898%_)
                             (_%E175901175908%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd175899175905%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K175902175918%_
                              (lambda (_%subst175911%_)
                                (let ((_%$e175915%_
                                       (let ((_%key175913%_
                                              (if _%subst175911%_
                                                  (hash-get
                                                   _%subst175911%_
                                                   _%id175865%_)
                                                  '#f)))
                                         (if _%key175913%_
                                             (_%resolve175871%_
                                              _%ctx175875%_
                                              _%src-phi175876%_
                                              _%key175913%_)
                                             '#f))))
                                  (if _%$e175915%_
                                      _%$e175915%_
                                      (_%lp175873%_
                                       (##unchecked-structure-ref
                                        _%hd175898%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd175898%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest175897%_))))))
                        (if (##structure-instance-of?
                             _%hd175899175905%_
                             'gx#expander-mark::t)
                            (let* ((_%e175903175921%_
                                    (##unchecked-structure-ref
                                     _%hd175899175905%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst175924%_ _%e175903175921%_))
                              (_%K175902175918%_ _%subst175924%_))
                            (_%E175901175908%_))))))
              (if (pair? _%rest175878175886%_)
                  (let ((_%hd175883175929%_ (##car _%rest175878175886%_))
                        (_%tl175884175931%_ (##cdr _%rest175878175886%_)))
                    (let* ((_%hd175934%_ _%hd175883175929%_)
                           (_%rest175936%_ _%tl175884175931%_))
                      (_%K175882175926%_ _%rest175936%_ _%hd175934%_)))
                  (_%else175880175894%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key175736%_
               _%val175737%_
               _%rebind?175738%_
               _%phi175739%_
               _%ctx175740%_)
        (letrec ((_%update-binding175742%_
                  (lambda (_%xval175814%_)
                    (if (or (_%rebind?175738%_
                             _%ctx175740%_
                             _%xval175814%_
                             _%val175737%_)
                            (and (##structure-direct-instance-of?
                                  _%xval175814%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval175814%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val175737%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val175737%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval175814%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val175737%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val175737%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval175814%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val175737%_
                        (if (and (##structure-direct-instance-of?
                                  _%val175737%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val175737%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval175814%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val175737%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval175814%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval175814%_
                            (if (and (##structure-direct-instance-of?
                                      _%val175737%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval175814%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key175736%_
                                 (cons (##unchecked-structure-ref
                                        _%val175737%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val175737%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval175814%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval175814%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval175814%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval175814%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key175736%_
                                 _%val175737%_
                                 _%xval175814%_))))))
                 (_%gensubst175743%_
                  (lambda (_%subst175809%_ _%id175810%_)
                    (let ((_%eid175812%_
                           (gensym (if (uninterned-symbol? _%id175810%_)
                                       '%
                                       _%id175810%_))))
                      (hash-put! _%subst175809%_ _%id175810%_ _%eid175812%_)
                      _%eid175812%_)))
                 (_%subst!175744%_
                  (lambda (_%key175746%_)
                    (let* ((_%key175747175755%_ _%key175746%_)
                           (_%else175749175763%_ (lambda () _%key175746%_))
                           (_%K175751175797%_
                            (lambda (_%mark175766%_ _%id175767%_)
                              (let* ((_%mark175768175774%_ _%mark175766%_)
                                     (_%E175770175777%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark175768175774%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K175771175789%_
                                      (lambda (_%subst175780%_)
                                        (if (not _%subst175780%_)
                                            (let ((_%subst175783%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark175766%_
                                               _%subst175783%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst175743%_
                                               _%subst175783%_
                                               _%id175767%_))
                                            (let ((_%$e175785%_
                                                   (hash-get
                                                    _%subst175780%_
                                                    _%id175767%_)))
                                              (if _%$e175785%_
                                                  _%$e175785%_
                                                  (_%gensubst175743%_
                                                   _%subst175780%_
                                                   _%id175767%_)))))))
                                (if (##structure-instance-of?
                                     _%mark175768175774%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e175772175792%_
                                            (##unchecked-structure-ref
                                             _%mark175768175774%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst175795%_ _%e175772175792%_))
                                      (_%K175771175789%_ _%subst175795%_))
                                    (_%E175770175777%_))))))
                      (if (pair? _%key175747175755%_)
                          (let ((_%hd175752175800%_
                                 (##car _%key175747175755%_))
                                (_%tl175753175802%_
                                 (##cdr _%key175747175755%_)))
                            (let* ((_%id175805%_ _%hd175752175800%_)
                                   (_%mark175807%_ _%tl175753175802%_))
                              (_%K175751175797%_ _%mark175807%_ _%id175805%_)))
                          (_%else175749175763%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx175740%_ _%phi175739%_)
           (_%subst!175744%_ _%key175736%_)
           _%val175737%_
           _%update-binding175742%_))))
    (define gx#core-bind!__0
      (lambda (_%key175835%_ _%val175836%_)
        (let* ((_%rebind?175838%_ false)
               (_%phi175840%_ (gx#current-expander-phi))
               (_%ctx175842%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key175835%_
           _%val175836%_
           _%rebind?175838%_
           _%phi175840%_
           _%ctx175842%_))))
    (define gx#core-bind!__1
      (lambda (_%key175844%_ _%val175845%_ _%rebind?175846%_)
        (let* ((_%phi175848%_ (gx#current-expander-phi))
               (_%ctx175850%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key175844%_
           _%val175845%_
           _%rebind?175846%_
           _%phi175848%_
           _%ctx175850%_))))
    (define gx#core-bind!__2
      (lambda (_%key175852%_ _%val175853%_ _%rebind?175854%_ _%phi175855%_)
        (let ((_%ctx175857%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key175852%_
           _%val175853%_
           _%rebind?175854%_
           _%phi175855%_
           _%ctx175857%_))))
    (define gx#core-bind!
      (lambda _g179591_
        (let ((_g179592_ (##length _g179591_)))
          (cond ((##fx= _g179592_ 2) (apply gx#core-bind!__0 _g179591_))
                ((##fx= _g179592_ 3) (apply gx#core-bind!__1 _g179591_))
                ((##fx= _g179592_ 4) (apply gx#core-bind!__2 _g179591_))
                ((##fx= _g179592_ 5) (apply gx#core-bind!__% _g179591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g179591_))))))
    (define gx#core-identifier-key
      (lambda (_%stx175667%_)
        (if (symbol? _%stx175667%_)
            (let* ((_%g175669175677%_ (gx#current-expander-marks))
                   (_%else175671175685%_ (lambda () _%stx175667%_))
                   (_%K175673175690%_
                    (lambda (_%hd175688%_) (cons _%stx175667%_ _%hd175688%_))))
              (if (pair? _%g175669175677%_)
                  (let* ((_%hd175674175693%_ (##car _%g175669175677%_))
                         (_%hd175696%_ _%hd175674175693%_))
                    (_%K175673175690%_ _%hd175696%_))
                  (_%else175671175685%_)))
            (if (gx#identifier? _%stx175667%_)
                (let* ((_%id175699%_ (gx#syntax-local-unwrap _%stx175667%_))
                       (_%eid175701%_ (gx#stx-e _%id175699%_))
                       (_%marks175703%_
                        (gx#stx-identifier-marks* _%id175699%_))
                       (_%marks175705175713%_ _%marks175703%_)
                       (_%else175707175721%_ (lambda () _%eid175701%_))
                       (_%K175709175726%_
                        (lambda (_%hd175724%_)
                          (cons _%eid175701%_ _%hd175724%_))))
                  (if (pair? _%marks175705175713%_)
                      (let* ((_%hd175710175729%_ (##car _%marks175705175713%_))
                             (_%hd175732%_ _%hd175710175729%_))
                        (_%K175709175726%_ _%hd175732%_))
                      (_%else175707175721%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx175667%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx175606%_ _%phi175607%_)
        (letrec ((_%make-phi175609%_
                  (lambda (_%super175665%_)
                    (let ((__obj179562
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj179562
                       (##gensym 'phi)
                       _%super175665%_)
                      __obj179562)))
                 (_%make-phi/up175610%_
                  (lambda (_%ctx175660%_ _%super175661%_)
                    (let ((_%ctx+1175663%_
                           (_%make-phi175609%_ _%super175661%_)))
                      (##unchecked-structure-set!
                       _%ctx175660%_
                       _%ctx+1175663%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1175663%_
                       _%ctx175660%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1175663%_)))
                 (_%make-phi/down175611%_
                  (lambda (_%ctx175655%_ _%super175656%_)
                    (let ((_%ctx-1175658%_
                           (_%make-phi175609%_ _%super175656%_)))
                      (##unchecked-structure-set!
                       _%ctx-1175658%_
                       _%ctx175655%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx175655%_
                       _%ctx-1175658%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1175658%_)))
                 (_%shift175612%_
                  (lambda (_%ctx175638%_
                           _%delta175639%_
                           _%make-delta-context175640%_
                           _%phi175641%_
                           _%K175642%_)
                    (let ((_%$e175644%_
                           (##unchecked-structure-ref
                            _%ctx175638%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e175644%_
                          (let* ((_%super175649%_
                                  (_%K175642%_ _%$e175644%_ _%delta175639%_))
                                 (_%ctx+d175651%_
                                  (_%make-delta-context175640%_
                                   _%ctx175638%_
                                   _%super175649%_)))
                            (_%K175642%_
                             _%ctx+d175651%_
                             (fx- _%phi175641%_ _%delta175639%_)))
                          (error '"Bad context" _%ctx175638%_))))))
          (let _%K175614%_ ((_%ctx175616%_ _%ctx175606%_)
                            (_%phi175617%_ _%phi175607%_))
            (if (fxzero? _%phi175617%_)
                _%ctx175616%_
                (if (##structure-instance-of? _%ctx175616%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi175617%_)
                        (let ((_%$e175621%_
                               (##unchecked-structure-ref
                                _%ctx175616%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e175621%_
                              (_%K175614%_
                               _%$e175621%_
                               (##fx- _%phi175617%_ '1))
                              (_%shift175612%_
                               _%ctx175616%_
                               '1
                               _%make-phi/up175610%_
                               _%phi175617%_
                               _%K175614%_)))
                        (let ((_%$e175629%_
                               (##unchecked-structure-ref
                                _%ctx175616%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e175629%_
                              (_%K175614%_
                               _%$e175629%_
                               (##fx+ _%phi175617%_ '1))
                              (_%shift175612%_
                               _%ctx175616%_
                               '-1
                               _%make-phi/down175611%_
                               _%phi175617%_
                               _%K175614%_))))
                    _%ctx175616%_))))))
    (define gx#core-context-get
      (lambda (_%ctx175603%_ _%key175604%_)
        (hash-get
         (##unchecked-structure-ref _%ctx175603%_ '2 '#f '#f)
         _%key175604%_)))
    (define gx#core-context-put!
      (lambda (_%ctx175599%_ _%key175600%_ _%val175601%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx175599%_ '2 '#f '#f)
         _%key175600%_
         _%val175601%_)
        _%val175601%_))
    (define gx#core-context-resolve
      (lambda (_%ctx175585%_ _%key175586%_)
        (let _%lp175588%_ ((_%ctx175590%_ _%ctx175585%_))
          (let ((_%$e175592%_
                 (gx#core-context-get _%ctx175590%_ _%key175586%_)))
            (if _%$e175592%_
                _%$e175592%_
                (let ((_%$e175595%_
                       (if (##structure-instance-of?
                            _%ctx175590%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx175590%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e175595%_ (_%lp175588%_ _%$e175595%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx175574%_ _%key175575%_ _%val175576%_ _%rebind175577%_)
        (let ((_%$e175579%_ (gx#core-context-get _%ctx175574%_ _%key175575%_)))
          (if _%$e175579%_
              (gx#core-context-put!
               _%ctx175574%_
               _%key175575%_
               (_%rebind175577%_ _%$e175579%_))
              (gx#core-context-put!
               _%ctx175574%_
               _%key175575%_
               _%val175576%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx175549%_ _%stop?175550%_)
        (let _%lp175552%_ ((_%ctx175554%_ _%ctx175549%_))
          (if (_%stop?175550%_ _%ctx175554%_)
              _%ctx175554%_
              (if (##structure-instance-of? _%ctx175554%_ 'gx#phi-context::t)
                  (_%lp175552%_
                   (##unchecked-structure-ref _%ctx175554%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx175563%_ (gx#current-expander-context))
               (_%stop?175565%_ gx#top-context?))
          (gx#core-context-top__% _%ctx175563%_ _%stop?175565%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx175567%_)
        (let ((_%stop?175569%_ gx#top-context?))
          (gx#core-context-top__% _%ctx175567%_ _%stop?175569%_))))
    (define gx#core-context-top
      (lambda _g179593_
        (let ((_g179594_ (##length _g179593_)))
          (cond ((##fx= _g179594_ 0) (apply gx#core-context-top__0 _g179593_))
                ((##fx= _g179594_ 1) (apply gx#core-context-top__1 _g179593_))
                ((##fx= _g179594_ 2) (apply gx#core-context-top__% _g179593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g179593_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx175534%_)
        (let _%lp175536%_ ((_%ctx175538%_ _%ctx175534%_))
          (if (##structure-instance-of? _%ctx175538%_ 'gx#phi-context::t)
              (_%lp175536%_
               (##unchecked-structure-ref _%ctx175538%_ '3 '#f '#f))
              _%ctx175538%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx175544%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx175544%_))))
    (define gx#core-context-root
      (lambda _g179595_
        (let ((_g179596_ (##length _g179595_)))
          (cond ((##fx= _g179596_ 0) (apply gx#core-context-root__0 _g179595_))
                ((##fx= _g179596_ 1) (apply gx#core-context-root__% _g179595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g179595_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx175516%_ . _%ignore175517%_)
        (let ((_%$e175519%_ (gx#current-expander-allow-rebind?)))
          (if _%$e175519%_
              _%$e175519%_
              (if (##structure-instance-of? _%ctx175516%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx175516%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx175516%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx175526%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx175526%_))))
    (define gx#core-context-rebind?
      (lambda _g179597_
        (let ((_g179598_ (##length _g179597_)))
          (cond ((##fx= _g179598_ 0)
                 (apply gx#core-context-rebind?__0 _g179597_))
                ((##fx= _g179598_ 1)
                 (apply gx#core-context-rebind?__% _g179597_))
                ((##fx>= _g179598_ 1)
                 (apply gx#core-context-rebind?__% _g179597_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g179597_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx175499%_)
        (let ((_%$e175501%_ (gx#core-context-top__1 _%ctx175499%_)))
          (if _%$e175501%_
              (if (##structure-instance-of? _%$e175501%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e175501%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx175511%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx175511%_))))
    (define gx#core-context-namespace
      (lambda _g179599_
        (let ((_g179600_ (##length _g179599_)))
          (cond ((##fx= _g179600_ 0)
                 (apply gx#core-context-namespace__0 _g179599_))
                ((##fx= _g179600_ 1)
                 (apply gx#core-context-namespace__% _g179599_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g179599_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind175485%_ _%is?175486%_)
        (if (##structure-direct-instance-of?
             _%bind175485%_
             'gx#syntax-binding::t)
            (_%is?175486%_
             (##unchecked-structure-ref _%bind175485%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind175491%_)
        (let ((_%is?175493%_ gx#expander?))
          (gx#expander-binding?__% _%bind175491%_ _%is?175493%_))))
    (define gx#expander-binding?
      (lambda _g179601_
        (let ((_g179602_ (##length _g179601_)))
          (cond ((##fx= _g179602_ 1) (apply gx#expander-binding?__0 _g179601_))
                ((##fx= _g179602_ 2) (apply gx#expander-binding?__% _g179601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g179601_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind175482%_)
        (gx#expander-binding?__% _%bind175482%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind175480%_)
        (gx#expander-binding?__% _%bind175480%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind175474%_)
        (letrec ((_%direct-special-form?175476%_
                  (lambda (_%obj175478%_)
                    (##structure-direct-instance-of?
                     _%obj175478%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind175474%_
           _%direct-special-form?175476%_))))
    (define gx#special-form-binding?
      (lambda (_%bind175472%_)
        (gx#expander-binding?__% _%bind175472%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind175463%_)
        (letrec ((_%feature?175465%_
                  (lambda (_%e175467%_)
                    (let ((_%$e175469%_
                           (##structure-instance-of?
                            _%e175467%_
                            'gx#feature-expander::t)))
                      (if _%$e175469%_
                          _%$e175469%_
                          (##structure-instance-of?
                           _%e175467%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind175463%_ _%feature?175465%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind175461%_)
        (gx#expander-binding?__% _%bind175461%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id175448%_ _%bound?175449%_)
        (if (gx#identifier? _%id175448%_)
            (_%bound?175449%_ (gx#resolve-identifier__0 _%id175448%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id175454%_)
        (let ((_%bound?175456%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id175454%_ _%bound?175456%_))))
    (define gx#core-bound-identifier?
      (lambda _g179603_
        (let ((_g179604_ (##length _g179603_)))
          (cond ((##fx= _g179604_ 1)
                 (apply gx#core-bound-identifier?__0 _g179603_))
                ((##fx= _g179604_ 2)
                 (apply gx#core-bound-identifier?__% _g179603_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g179603_))))))
    (define gx#core-identifier=?
      (lambda (_%x175438%_ _%y175439%_)
        (letrec ((_%y=?175441%_
                  (lambda (_%xid175445%_)
                    ((if (list? _%y175439%_) memq eq?)
                     _%xid175445%_
                     _%y175439%_))))
          (let ((_%bind175443%_ (gx#resolve-identifier__0 _%x175438%_)))
            (if (##structure-instance-of? _%bind175443%_ 'gx#binding::t)
                (_%y=?175441%_
                 (##unchecked-structure-ref _%bind175443%_ '1 '#f '#f))
                (_%y=?175441%_ (gx#stx-e _%x175438%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e175436%_)
        (if (interned-symbol? _%e175436%_)
            (string-index__0 (symbol->string _%e175436%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx175389%_ _%src175390%_ _%ctx175391%_ _%marks175392%_)
        (if (##structure? _%stx175389%_)
            (let ((_%$e175394%_ (gx#sealed-syntax-unwrap _%stx175389%_)))
              (if _%$e175394%_
                  _%$e175394%_
                  (if (gx#identifier? _%stx175389%_)
                      (let ((_%id175398%_
                             (gx#stx-unwrap__% _%stx175389%_ _%marks175392%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id175398%_ '1 '#f '#f)
                         (let ((_%$e175400%_
                                (##unchecked-structure-ref
                                 _%id175398%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e175400%_ _%$e175400%_ _%src175390%_))
                         _%ctx175391%_
                         (##unchecked-structure-ref _%id175398%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx175389%_)
                       (let ((_%$e175404%_ (gx#stx-source _%stx175389%_)))
                         (if _%$e175404%_ _%$e175404%_ _%src175390%_))
                       _%ctx175391%_
                       (reverse _%marks175392%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx175389%_
             _%src175390%_
             _%ctx175391%_
             (reverse _%marks175392%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx175410%_)
        (let* ((_%src175412%_ '#f)
               (_%ctx175414%_ (gx#current-expander-context))
               (_%marks175416%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx175410%_
           _%src175412%_
           _%ctx175414%_
           _%marks175416%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx175418%_ _%src175419%_)
        (let* ((_%ctx175421%_ (gx#current-expander-context))
               (_%marks175423%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx175418%_
           _%src175419%_
           _%ctx175421%_
           _%marks175423%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx175425%_ _%src175426%_ _%ctx175427%_)
        (let ((_%marks175429%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx175425%_
           _%src175426%_
           _%ctx175427%_
           _%marks175429%_))))
    (define gx#core-quote-syntax
      (lambda _g179605_
        (let ((_g179606_ (##length _g179605_)))
          (cond ((##fx= _g179606_ 1) (apply gx#core-quote-syntax__0 _g179605_))
                ((##fx= _g179606_ 2) (apply gx#core-quote-syntax__1 _g179605_))
                ((##fx= _g179606_ 3) (apply gx#core-quote-syntax__2 _g179605_))
                ((##fx= _g179606_ 4) (apply gx#core-quote-syntax__% _g179605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g179605_))))))
    (define gx#core-cons
      (lambda (_%hd175385%_ _%tl175386%_)
        (cons (gx#core-quote-syntax__0 _%hd175385%_) _%tl175386%_)))
    (define gx#core-list
      (lambda (_%hd175382%_ . _%rest175383%_)
        (cons (gx#core-quote-syntax__0 _%hd175382%_) _%rest175383%_)))
    (define gx#core-cons*
      (lambda (_%hd175379%_ . _%rest175380%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd175379%_) _%rest175380%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path175348%_ _%rel175349%_)
        (let ((_%path175366%_ (gx#stx-e _%stx-path175348%_))
              (_%reldir175367%_
               (let _%lp175351%_ ((_%relsrc175353%_
                                   (let ((_%$e175363%_
                                          (gx#stx-source _%stx-path175348%_)))
                                     (if _%$e175363%_
                                         _%$e175363%_
                                         _%rel175349%_))))
                 (if (##structure-instance-of? _%relsrc175353%_ 'gerbil#AST::t)
                     (_%lp175351%_
                      (let ((_%$e175356%_ (gx#stx-source _%relsrc175353%_)))
                        (if _%$e175356%_
                            _%$e175356%_
                            (gx#stx-e _%relsrc175353%_))))
                     (if (source-location-path? _%relsrc175353%_)
                         (path-directory
                          (source-location-path _%relsrc175353%_))
                         (if (string? _%relsrc175353%_)
                             (path-directory _%relsrc175353%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path175366%_ (path-normalize _%reldir175367%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path175372%_)
        (let ((_%rel175374%_ '#f))
          (gx#core-resolve-path__% _%stx-path175372%_ _%rel175374%_))))
    (define gx#core-resolve-path
      (lambda _g179607_
        (let ((_g179608_ (##length _g179607_)))
          (cond ((##fx= _g179608_ 1) (apply gx#core-resolve-path__0 _g179607_))
                ((##fx= _g179608_ 2) (apply gx#core-resolve-path__% _g179607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g179607_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr175304%_ _%ctx175305%_)
        (let* ((_%repr175306175313%_ _%repr175304%_)
               (_%E175308175317%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr175306175313%_
                         '([phi . subs]))
                  '#!void))
               (_%K175309175325%_
                (lambda (_%subs175320%_ _%phi175321%_)
                  (let ((_%subst175323%_
                         (if (null? _%subs175320%_)
                             '#f
                             (list->hash-table-eq _%subs175320%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst175323%_
                     _%ctx175305%_
                     _%phi175321%_
                     '#f)))))
          (if (pair? _%repr175306175313%_)
              (let ((_%hd175310175328%_ (##car _%repr175306175313%_))
                    (_%tl175311175330%_ (##cdr _%repr175306175313%_)))
                (let* ((_%phi175333%_ _%hd175310175328%_)
                       (_%subs175335%_ _%tl175311175330%_))
                  (_%K175309175325%_ _%subs175335%_ _%phi175333%_)))
              (_%E175308175317%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr175340%_)
        (let ((_%ctx175342%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr175340%_ _%ctx175342%_))))
    (define gx#core-deserialize-mark
      (lambda _g179609_
        (let ((_g179610_ (##length _g179609_)))
          (cond ((##fx= _g179610_ 1)
                 (apply gx#core-deserialize-mark__0 _g179609_))
                ((##fx= _g179610_ 2)
                 (apply gx#core-deserialize-mark__% _g179609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g179609_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx175301%_)
        (gx#stx-rewrap _%stx175301%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx175299%_)
        (gx#stx-unwrap__% _%stx175299%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx175269%_)
        (let* ((_%g175270175278%_ (gx#current-expander-marks))
               (_%else175272175286%_ (lambda () _%stx175269%_))
               (_%K175274175291%_
                (lambda (_%hd175289%_)
                  (gx#stx-apply-mark _%stx175269%_ _%hd175289%_))))
          (if (pair? _%g175270175278%_)
              (let* ((_%hd175275175294%_ (##car _%g175270175278%_))
                     (_%hd175297%_ _%hd175275175294%_))
                (_%K175274175291%_ _%hd175297%_))
              (_%else175272175286%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym175267%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym175267%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx175252%_ _%E175253%_)
        (let ((_%bind175255%_ (gx#resolve-identifier__0 _%stx175252%_)))
          (if (##structure-direct-instance-of?
               _%bind175255%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind175255%_ '5 '#f '#f)
              (_%E175253%_ _%stx175252%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx175260%_)
        (let ((_%E175262%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx175260%_ _%E175262%_))))
    (define gx#syntax-local-e
      (lambda _g179611_
        (let ((_g179612_ (##length _g179611_)))
          (cond ((##fx= _g179612_ 1) (apply gx#syntax-local-e__0 _g179611_))
                ((##fx= _g179612_ 2) (apply gx#syntax-local-e__% _g179611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g179611_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx175236%_ _%E175237%_)
        (let ((_%e175239%_ (gx#syntax-local-e__% _%stx175236%_ _%E175237%_)))
          (if (##structure-instance-of? _%e175239%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e175239%_ '1 '#f '#f)
              _%e175239%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx175244%_)
        (let ((_%E175246%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx175244%_ _%E175246%_))))
    (define gx#syntax-local-value
      (lambda _g179613_
        (let ((_g179614_ (##length _g179613_)))
          (cond ((##fx= _g179614_ 1)
                 (apply gx#syntax-local-value__0 _g179613_))
                ((##fx= _g179614_ 2)
                 (apply gx#syntax-local-value__% _g179613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g179613_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx175233%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx175233%_)))))
