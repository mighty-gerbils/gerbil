(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1779967243)
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
      (lambda _%$args179853%_
        (apply make-instance gx#expander-context::t _%$args179853%_)))
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
      (lambda _%$args179850%_
        (apply make-instance gx#root-context::t _%$args179850%_)))
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
      (lambda _%$args179847%_
        (apply make-instance gx#phi-context::t _%$args179847%_)))
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
      (lambda _%$args179844%_
        (apply make-instance gx#top-context::t _%$args179844%_)))
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
      (lambda _%$args179841%_
        (apply make-instance gx#module-context::t _%$args179841%_)))
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
      (lambda _%$args179838%_
        (apply make-instance gx#prelude-context::t _%$args179838%_)))
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
      (lambda _%$args179835%_
        (apply make-instance gx#local-context::t _%$args179835%_)))
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
      (lambda (_%self179808%_ _%id179809%_ _%super179810%_)
        (let ((_%self179813%_ _%self179808%_))
          (if (##fx< '3 (##structure-length _%self179813%_))
              (begin
                (##unchecked-structure-set!
                 _%self179813%_
                 _%id179809%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179813%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179813%_
                 _%super179810%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self179813%_
                     '3
                     (##structure-length _%self179813%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self179826%_ _%id179827%_)
        (let ((_%super179829%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self179826%_
           _%id179827%_
           _%super179829%_))))
    (define gx#phi-context:::init!
      (lambda _g179895_
        (let ((_g179896_ (##length _g179895_)))
          (cond ((##fx= _g179896_ 2)
                 (apply gx#phi-context:::init!__0 _g179895_))
                ((##fx= _g179896_ 3)
                 (apply gx#phi-context:::init!__% _g179895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g179895_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self179661%_ _%super179662%_)
        (let ((_%self179665%_ _%self179661%_))
          (if (##fx< '3 (##structure-length _%self179665%_))
              (begin
                (##unchecked-structure-set!
                 _%self179665%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179665%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self179665%_
                 _%super179662%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self179665%_
                     '3
                     (##structure-length _%self179665%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self179678%_)
        (let ((_%super179680%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self179678%_ _%super179680%_))))
    (define gx#local-context:::init!
      (lambda _g179897_
        (let ((_g179898_ (##length _g179897_)))
          (cond ((##fx= _g179898_ 1)
                 (apply gx#local-context:::init!__0 _g179897_))
                ((##fx= _g179898_ 2)
                 (apply gx#local-context:::init!__% _g179897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g179897_))))))
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
      (lambda _%$args179535%_
        (apply make-instance gx#binding::t _%$args179535%_)))
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
      (lambda (_%self179518%_ _%id179519%_ _%key179520%_ _%phi179521%_)
        (let ((_%self179524%_ _%self179518%_))
          (##unchecked-structure-set! _%self179524%_ _%id179519%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self179524%_ _%key179520%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self179524%_
           _%phi179521%_
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
      (lambda _%$args179393%_
        (apply make-instance gx#runtime-binding::t _%$args179393%_)))
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
      (lambda _%$args179390%_
        (apply make-instance gx#local-binding::t _%$args179390%_)))
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
      (lambda _%$args179387%_
        (apply make-instance gx#top-binding::t _%$args179387%_)))
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
      (lambda _%$args179384%_
        (apply make-instance gx#module-binding::t _%$args179384%_)))
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
      (lambda _%$args179381%_
        (apply make-instance gx#extern-binding::t _%$args179381%_)))
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
      (lambda (_%self178997%_
               _%id178998%_
               _%key178999%_
               _%phi179000%_
               _%ctx179001%_)
        (let ((_%self179004%_ _%self178997%_))
          (gx#binding:::init!
           _%self179004%_
           _%id178998%_
           _%key178999%_
           _%phi179000%_)
          (##unchecked-structure-set!
           _%self179004%_
           _%ctx179001%_
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
      (lambda _%$args178750%_
        (apply make-instance gx#syntax-binding::t _%$args178750%_)))
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
      (lambda _%$args178747%_
        (apply make-instance gx#import-binding::t _%$args178747%_)))
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
      (lambda _%$args178744%_
        (apply make-instance gx#alias-binding::t _%$args178744%_)))
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
      (lambda (_%self178726%_
               _%id178727%_
               _%key178728%_
               _%phi178729%_
               _%e178730%_)
        (let ((_%self178733%_ _%self178726%_))
          (gx#binding:::init!
           _%self178733%_
           _%id178727%_
           _%key178728%_
           _%phi178729%_)
          (##unchecked-structure-set! _%self178733%_ _%e178730%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self178584%_
               _%id178585%_
               _%key178586%_
               _%phi178587%_
               _%e178588%_
               _%ctx178589%_
               _%weak?178590%_)
        (let ((_%self178593%_ _%self178584%_))
          (gx#binding:::init!
           _%self178593%_
           _%id178585%_
           _%key178586%_
           _%phi178587%_)
          (##unchecked-structure-set! _%self178593%_ _%e178588%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self178593%_ _%ctx178589%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self178593%_
           _%weak?178590%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self178444%_
               _%id178445%_
               _%key178446%_
               _%phi178447%_
               _%e178448%_)
        (let ((_%self178451%_ _%self178444%_))
          (gx#binding:::init!
           _%self178451%_
           _%id178445%_
           _%key178446%_
           _%phi178447%_)
          (##unchecked-structure-set! _%self178451%_ _%e178448%_ '5 '#f '#f))))
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
      (lambda _%$args178319%_
        (apply make-instance gx#expander::t _%$args178319%_)))
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
      (lambda _%$args178316%_
        (apply make-instance gx#core-expander::t _%$args178316%_)))
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
      (lambda _%$args178313%_
        (apply make-instance gx#expression-form::t _%$args178313%_)))
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
      (lambda _%$args178310%_
        (apply make-instance gx#special-form::t _%$args178310%_)))
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
      (lambda _%$args178307%_
        (apply make-instance gx#definition-form::t _%$args178307%_)))
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
      (lambda _%$args178304%_
        (apply make-instance gx#top-special-form::t _%$args178304%_)))
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
      (lambda _%$args178301%_
        (apply make-instance gx#module-special-form::t _%$args178301%_)))
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
      (lambda _%$args178298%_
        (apply make-instance gx#feature-expander::t _%$args178298%_)))
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
      (lambda _%$args178295%_
        (apply make-instance gx#private-feature-expander::t _%$args178295%_)))
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
      (lambda _%$args178292%_
        (apply make-instance gx#reserved-expander::t _%$args178292%_)))
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
      (lambda _%$args178289%_
        (apply make-instance gx#macro-expander::t _%$args178289%_)))
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
      (lambda _%$args178286%_
        (apply make-instance gx#rename-macro-expander::t _%$args178286%_)))
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
      (lambda _%$args178283%_
        (apply make-instance gx#user-expander::t _%$args178283%_)))
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
      (lambda _%$args178280%_
        (apply make-instance gx#expander-mark::t _%$args178280%_)))
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
      (lambda (_%ctx178264%_
               _%message178265%_
               _%stx178266%_
               .
               _%details178267%_)
        (let ((_%ctx178278%_
               (let ((_%$e178269%_ _%ctx178264%_))
                 (if _%$e178269%_
                     _%$e178269%_
                     (let ((_%$e178272%_ (gx#core-context-top__0)))
                       (if _%$e178272%_
                           (cons 'expand
                                 (cons (##structure-ref
                                        _%$e178272%_
                                        '1
                                        gx#expander-context::t
                                        '#f)
                                       '()))
                           '#f))))))
          (raise (make-syntax-error
                  _%message178265%_
                  (cons _%stx178266%_ _%details178267%_)
                  _%ctx178278%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx178251%_ _%expression?178252%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx178251%_ _%expression?178252%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx178257%_)
        (let ((_%expression?178259%_ '#f))
          (gx#eval-syntax__% _%stx178257%_ _%expression?178259%_))))
    (define gx#eval-syntax
      (lambda _g179899_
        (let ((_g179900_ (##length _g179899_)))
          (cond ((##fx= _g179900_ 1) (apply gx#eval-syntax__0 _g179899_))
                ((##fx= _g179900_ 2) (apply gx#eval-syntax__% _g179899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g179899_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx178236%_ _%expression?178237%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx178236%_ _%expression?178237%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx178243%_)
        (let ((_%expression?178245%_ '#f))
          (gx#eval-syntax+1__% _%stx178243%_ _%expression?178245%_))))
    (define gx#eval-syntax+1
      (lambda _g179901_
        (let ((_g179902_ (##length _g179901_)))
          (cond ((##fx= _g179902_ 1) (apply gx#eval-syntax+1__0 _g179901_))
                ((##fx= _g179902_ 2) (apply gx#eval-syntax+1__% _g179901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g179901_))))))
    (define gx#eval-expression+1
      (lambda (_%stx178233%_) (gx#eval-syntax+1__% _%stx178233%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx178231%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx178231%_))))
    (define gx#core-expand__%
      (lambda (_%stx178218%_ _%expression?178219%_)
        (if _%expression?178219%_
            (gx#core-expand-expression _%stx178218%_)
            (gx#core-expand-top _%stx178218%_))))
    (define gx#core-expand__0
      (lambda (_%stx178224%_)
        (let ((_%expression?178226%_ '#f))
          (gx#core-expand__% _%stx178224%_ _%expression?178226%_))))
    (define gx#core-expand
      (lambda _g179903_
        (let ((_g179904_ (##length _g179903_)))
          (cond ((##fx= _g179904_ 1) (apply gx#core-expand__0 _g179903_))
                ((##fx= _g179904_ 2) (apply gx#core-expand__% _g179903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g179903_))))))
    (define gx#core-expand-top
      (lambda (_%stx178185%_)
        (let* ((_%stx178187%_ (gx#core-expand*__0 _%stx178185%_))
               (_%e178188178195%_ _%stx178187%_)
               (_%E178190178199%_
                (lambda () (gx#core-expand-expression _%stx178187%_)))
               (_%E178189178213%_
                (lambda ()
                  (if (gx#stx-pair? _%e178188178195%_)
                      (let ((_%e178191178203%_
                             (gx#syntax-e _%e178188178195%_)))
                        (let ((_%hd178192178206%_ (##car _%e178191178203%_))
                              (_%tl178193178208%_ (##cdr _%e178191178203%_)))
                          (let ((_%form178211%_ _%hd178192178206%_))
                            (if (gx#core-bound-identifier?__0 _%form178211%_)
                                _%stx178187%_
                                (_%E178190178199%_)))))
                      (_%E178190178199%_)))))
          (_%E178189178213%_))))
    (define gx#core-expand-expression
      (lambda (_%stx178117%_)
        (letrec ((_%sealed-expression?178119%_
                  (lambda (_%hd178155%_)
                    (if (gx#sealed-syntax? _%hd178155%_)
                        (let* ((_%e178156178163%_ _%hd178155%_)
                               (_%E178158178167%_ (lambda () '#f))
                               (_%E178157178181%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e178156178163%_)
                                      (let ((_%e178159178171%_
                                             (gx#syntax-e _%e178156178163%_)))
                                        (let ((_%hd178160178174%_
                                               (##car _%e178159178171%_))
                                              (_%tl178161178176%_
                                               (##cdr _%e178159178171%_)))
                                          (let ((_%form178179%_
                                                 _%hd178160178174%_))
                                            (gx#core-bound-identifier?__%
                                             _%form178179%_
                                             gx#expression-form-binding?))))
                                      (_%E178158178167%_)))))
                          (_%E178157178181%_))
                        '#f)))
                 (_%illegal-expression178120%_
                  (lambda (_%hd178152%_ . _%_178153%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx178117%_
                     _%hd178152%_)))
                 (_%expand-e178121%_
                  (lambda (_%form178144%_ _%hd178145%_)
                    (let ((_%bind178147%_
                           (if (##structure-instance-of?
                                _%form178144%_
                                'gx#binding::t)
                               _%form178144%_
                               (gx#resolve-identifier__0 _%form178144%_))))
                      (if (gx#core-expander-binding? _%bind178147%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind178147%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd178145%_
                            (gx#stx-source _%stx178117%_)))
                          (if (##structure-direct-instance-of?
                               _%bind178147%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind178147%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd178145%_
                                 (gx#stx-source _%stx178117%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx178117%_
                               _%form178144%_)))))))
          (let ((_%hd178123%_ (gx#core-expand-head _%stx178117%_)))
            (if (_%sealed-expression?178119%_ _%hd178123%_)
                _%hd178123%_
                (if (gx#stx-pair? _%hd178123%_)
                    (let* ((_%form178127%_ (gx#stx-car _%hd178123%_))
                           (_%bind178129%_
                            (if (gx#identifier? _%form178127%_)
                                (gx#resolve-identifier__0 _%form178127%_)
                                '#f)))
                      (if (or (not _%bind178129%_)
                              (not (gx#core-expander-binding? _%bind178129%_)))
                          (_%expand-e178121%_
                           '%%app
                           (cons '%%app _%hd178123%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind178129%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd178123%_
                               _%illegal-expression178120%_)
                              (if (gx#expression-form-binding? _%bind178129%_)
                                  (_%expand-e178121%_
                                   _%bind178129%_
                                   _%hd178123%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind178129%_)
                                      (gx#core-expand-expression
                                       (_%expand-e178121%_
                                        _%bind178129%_
                                        _%hd178123%_))
                                      (_%illegal-expression178120%_
                                       _%hd178123%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd178123%_)
                        (_%illegal-expression178120%_ _%hd178123%_)
                        (if (gx#identifier? _%hd178123%_)
                            (_%expand-e178121%_
                             '%%ref
                             (cons '%%ref (cons _%hd178123%_ '())))
                            (if (gx#stx-datum? _%hd178123%_)
                                (_%expand-e178121%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd178123%_ '())))
                                (_%illegal-expression178120%_
                                 _%hd178123%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx178112%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx178115%_ (gx#core-expand-expression _%stx178112%_)))
             (values _%stx178115%_ (gx#eval-syntax* _%stx178115%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx178093%_ _%stop?178094%_)
        (let _%lp178096%_ ((_%stx178098%_ _%stx178093%_))
          (if (_%stop?178094%_ _%stx178098%_)
              _%stx178098%_
              (let ((_%rstx178100%_ (gx#core-expand1 _%stx178098%_)))
                (if (eq? _%stx178098%_ _%rstx178100%_)
                    _%stx178098%_
                    (_%lp178096%_ _%rstx178100%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx178105%_)
        (let ((_%stop?178107%_ false))
          (gx#core-expand*__% _%stx178105%_ _%stop?178107%_))))
    (define gx#core-expand*
      (lambda _g179905_
        (let ((_g179906_ (##length _g179905_)))
          (cond ((##fx= _g179906_ 1) (apply gx#core-expand*__0 _g179905_))
                ((##fx= _g179906_ 2) (apply gx#core-expand*__% _g179905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g179905_))))))
    (define gx#core-expand1
      (lambda (_%stx178045%_)
        (letrec ((_%step178047%_
                  (lambda (_%hd178084%_)
                    (let ((_%bind178086%_
                           (gx#resolve-identifier__0 _%hd178084%_)))
                      (if (##structure-instance-of?
                           _%bind178086%_
                           'gx#runtime-binding::t)
                          _%stx178045%_
                          (if (##structure-direct-instance-of?
                               _%bind178086%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind178086%_
                                '5
                                '#f
                                '#f)
                               _%stx178045%_)
                              (if (not _%bind178086%_)
                                  _%stx178045%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx178045%_))))))))
          (let* ((_%e178048178056%_ _%stx178045%_)
                 (_%E178054178060%_ (lambda () _%stx178045%_))
                 (_%E178050178066%_
                  (lambda ()
                    (let ((_%hd178064%_ _%e178048178056%_))
                      (if (gx#identifier? _%hd178064%_)
                          (_%step178047%_ _%hd178064%_)
                          (_%E178054178060%_)))))
                 (_%E178049178080%_
                  (lambda ()
                    (if (gx#stx-pair? _%e178048178056%_)
                        (let ((_%e178051178070%_
                               (gx#syntax-e _%e178048178056%_)))
                          (let ((_%hd178052178073%_ (##car _%e178051178070%_))
                                (_%tl178053178075%_ (##cdr _%e178051178070%_)))
                            (let ((_%hd178078%_ _%hd178052178073%_))
                              (if (gx#identifier? _%hd178078%_)
                                  (_%step178047%_ _%hd178078%_)
                                  (_%E178050178066%_)))))
                        (_%E178050178066%_)))))
            (_%E178049178080%_)))))
    (define gx#core-expand-head
      (lambda (_%stx178011%_)
        (letrec ((_%stop?178013%_
                  (lambda (_%stx178015%_)
                    (let* ((_%e178016178023%_ _%stx178015%_)
                           (_%E178018178027%_ (lambda () '#f))
                           (_%E178017178041%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178016178023%_)
                                  (let ((_%e178019178031%_
                                         (gx#syntax-e _%e178016178023%_)))
                                    (let ((_%hd178020178034%_
                                           (##car _%e178019178031%_))
                                          (_%tl178021178036%_
                                           (##cdr _%e178019178031%_)))
                                      (let ((_%hd178039%_ _%hd178020178034%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd178039%_))))
                                  (_%E178018178027%_)))))
                      (_%E178017178041%_)))))
          (gx#core-expand*__% _%stx178011%_ _%stop?178013%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx177817%_
               _%expand-special177818%_
               _%begin-form177819%_
               _%expand-e177820%_)
        (letrec ((_%expand-splice177822%_
                  (lambda (_%hd177985%_
                           _%body177986%_
                           _%rest177987%_
                           _%r177988%_)
                    (if (gx#stx-list? _%body177986%_)
                        (_%K177826%_
                         (gx#stx-foldr cons _%rest177987%_ _%body177986%_)
                         _%r177988%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx177817%_
                         _%hd177985%_))))
                 (_%expand-cond-expand177823%_
                  (lambda (_%hd177981%_ _%rest177982%_ _%r177983%_)
                    (_%K177826%_
                     (cons (gx#core-expand-cond-expand% _%hd177981%_)
                           _%rest177982%_)
                     _%r177983%_)))
                 (_%expand-include177824%_
                  (lambda (_%hd177930%_ _%rest177931%_ _%r177932%_)
                    (let* ((_%e177933177943%_ _%hd177930%_)
                           (_%E177935177947%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e177933177943%_)))
                           (_%E177934177977%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177933177943%_)
                                  (let ((_%e177936177951%_
                                         (gx#syntax-e _%e177933177943%_)))
                                    (let ((_%hd177937177954%_
                                           (##car _%e177936177951%_))
                                          (_%tl177938177956%_
                                           (##cdr _%e177936177951%_)))
                                      (if (gx#stx-pair? _%tl177938177956%_)
                                          (let ((_%e177939177959%_
                                                 (gx#syntax-e
                                                  _%tl177938177956%_)))
                                            (let ((_%hd177940177962%_
                                                   (##car _%e177939177959%_))
                                                  (_%tl177941177964%_
                                                   (##cdr _%e177939177959%_)))
                                              (let ((_%path177967%_
                                                     _%hd177940177962%_))
                                                (if (gx#stx-null?
                                                     _%tl177941177964%_)
                                                    (if (gx#stx-string?
                                                         _%path177967%_)
                                                        (let* ((_%rpath177969%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path177967%_
                         (gx#stx-source _%hd177930%_)))
                       (_%block177971%_
                        (gx#core-expand-include%__%
                         _%hd177930%_
                         _%rpath177969%_))
                       (_%rbody177974%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block177971%_
                            _%expand-special177818%_
                            '#f
                            _%expand-e177820%_))
                         gx#current-expander-path
                         (cons _%rpath177969%_ (gx#current-expander-path)))))
                  (_%K177826%_
                   _%rest177931%_
                   (foldr__0 cons _%r177932%_ _%rbody177974%_)))
                (_%E177935177947%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177935177947%_)))))
                                          (_%E177935177947%_))))
                                  (_%E177935177947%_)))))
                      (_%E177934177977%_))))
                 (_%expand-expression177825%_
                  (lambda (_%hd177926%_ _%rest177927%_ _%r177928%_)
                    (_%K177826%_
                     _%rest177927%_
                     (cons (_%expand-e177820%_ _%hd177926%_) _%r177928%_))))
                 (_%K177826%_
                  (lambda (_%rest177856%_ _%r177857%_)
                    (let* ((_%e177858177865%_ _%rest177856%_)
                           (_%E177860177869%_
                            (lambda ()
                              (if _%begin-form177819%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form177819%_
                                    (reverse _%r177857%_))
                                   (gx#stx-source _%stx177817%_))
                                  _%r177857%_)))
                           (_%E177859177922%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177858177865%_)
                                  (let ((_%e177861177873%_
                                         (gx#syntax-e _%e177858177865%_)))
                                    (let ((_%hd177862177876%_
                                           (##car _%e177861177873%_))
                                          (_%tl177863177878%_
                                           (##cdr _%e177861177873%_)))
                                      (let* ((_%hd177881%_ _%hd177862177876%_)
                                             (_%rest177883%_
                                              _%tl177863177878%_)
                                             (_%hd177885%_
                                              (gx#core-expand-head
                                               _%hd177881%_))
                                             (_%e177886177893%_ _%hd177885%_)
                                             (_%E177888177897%_
                                              (lambda ()
                                                (_%expand-expression177825%_
                                                 _%hd177885%_
                                                 _%rest177883%_
                                                 _%r177857%_)))
                                             (_%E177887177918%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e177886177893%_)
                                                    (let ((_%e177889177901%_
                                                           (gx#syntax-e
                                                            _%e177886177893%_)))
                                                      (let ((_%hd177890177904%_
                                                             (##car _%e177889177901%_))
                                                            (_%tl177891177906%_
                                                             (##cdr _%e177889177901%_)))
                                                        (let* ((_%form177909%_
                                                                _%hd177890177904%_)
                                                               (_%body177911%_
                                                                _%tl177891177906%_)
                                                               (_%bind177913%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form177909%_)
                            (gx#resolve-identifier__0 _%form177909%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind177913%_)
                      (let ((_%$e177915%_
                             (##unchecked-structure-ref
                              _%bind177913%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e177915%_)
                            (_%expand-splice177822%_
                             _%hd177885%_
                             _%body177911%_
                             _%rest177883%_
                             _%r177857%_)
                            (if (eq? '%#cond-expand _%$e177915%_)
                                (_%expand-cond-expand177823%_
                                 _%hd177885%_
                                 _%rest177883%_
                                 _%r177857%_)
                                (if (eq? '%#include _%$e177915%_)
                                    (_%expand-include177824%_
                                     _%hd177885%_
                                     _%rest177883%_
                                     _%r177857%_)
                                    (_%expand-special177818%_
                                     _%hd177885%_
                                     _%K177826%_
                                     _%rest177883%_
                                     _%r177857%_)))))
                      (_%expand-expression177825%_
                       _%hd177885%_
                       _%rest177883%_
                       _%r177857%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177888177897%_)))))
                                        (_%E177887177918%_))))
                                  (_%E177860177869%_)))))
                      (_%E177859177922%_)))))
          (let* ((_%e177827177834%_ _%stx177817%_)
                 (_%E177829177838%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e177827177834%_)))
                 (_%E177828177852%_
                  (lambda ()
                    (if (gx#stx-pair? _%e177827177834%_)
                        (let ((_%e177830177842%_
                               (gx#syntax-e _%e177827177834%_)))
                          (let ((_%hd177831177845%_ (##car _%e177830177842%_))
                                (_%tl177832177847%_ (##cdr _%e177830177842%_)))
                            (let ((_%body177850%_ _%tl177832177847%_))
                              (if (gx#stx-list? _%body177850%_)
                                  (_%K177826%_ _%body177850%_ '())
                                  (_%E177829177838%_)))))
                        (_%E177829177838%_)))))
            (_%E177828177852%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx177993%_ _%expand-special177994%_)
        (let* ((_%begin-form177996%_ '%#begin)
               (_%expand-e177998%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx177993%_
           _%expand-special177994%_
           _%begin-form177996%_
           _%expand-e177998%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx178000%_ _%expand-special178001%_ _%begin-form178002%_)
        (let ((_%expand-e178004%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx178000%_
           _%expand-special178001%_
           _%begin-form178002%_
           _%expand-e178004%_))))
    (define gx#core-expand-block
      (lambda _g179907_
        (let ((_g179908_ (##length _g179907_)))
          (cond ((##fx= _g179908_ 2) (apply gx#core-expand-block__0 _g179907_))
                ((##fx= _g179908_ 3) (apply gx#core-expand-block__1 _g179907_))
                ((##fx= _g179908_ 4) (apply gx#core-expand-block__% _g179907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g179907_))))))
    (define gx#core-expand-block*
      (lambda (_%stx177765%_ _%expand-special177766%_)
        (let* ((_%g177767177778%_
                (gx#core-expand-block__1
                 _%stx177765%_
                 _%expand-special177766%_
                 '#f))
               (_%E177771177782%_
                (lambda ()
                  (error '"No clause matching"
                         _%g177767177778%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K177776177813%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx177765%_)))
                (_%K177773177799%_ (lambda (_%expr177797%_) _%expr177797%_))
                (_%K177772177788%_
                 (lambda (_%body177786%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body177786%_))
                    (gx#stx-source _%stx177765%_)))))
            (let ((_%try-match177769177809%_
                   (lambda ()
                     (if (pair? _%g177767177778%_)
                         (let ((_%tl177775177804%_ (##cdr _%g177767177778%_))
                               (_%hd177774177802%_ (##car _%g177767177778%_)))
                           (if (null? _%tl177775177804%_)
                               (let ((_%expr177807%_ _%hd177774177802%_))
                                 (_%K177773177799%_ _%expr177807%_))
                               (let ((_%body177791%_ _%g177767177778%_))
                                 (_%K177772177788%_ _%body177791%_))))
                         (let ((_%body177791%_ _%g177767177778%_))
                           (_%K177772177788%_ _%body177791%_))))))
              (if (null? _%g177767177778%_)
                  (_%K177776177813%_)
                  (_%try-match177769177809%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx177591%_)
        (letrec ((_%satisfied?177593%_
                  (lambda (_%condition177694%_)
                    (let* ((_%e177695177710%_ _%condition177694%_)
                           (_%E177705177714%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e177695177710%_)))
                           (_%E177698177733%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177695177710%_)
                                  (let ((_%e177706177718%_
                                         (gx#syntax-e _%e177695177710%_)))
                                    (let ((_%hd177707177721%_
                                           (##car _%e177706177718%_))
                                          (_%tl177708177723%_
                                           (##cdr _%e177706177718%_)))
                                      (let* ((_%combinator177726%_
                                              _%hd177707177721%_)
                                             (_%body177728%_
                                              _%tl177708177723%_))
                                        (if (gx#stx-list? _%body177728%_)
                                            (let ((_%$e177730%_
                                                   (gx#stx-e
                                                    _%combinator177726%_)))
                                              (if (eq? 'not _%$e177730%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?177593%_
                                                        _%body177728%_))
                                                  (if (eq? 'and _%$e177730%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?177593%_
                                                       _%body177728%_)
                                                      (if (eq? 'or
                                                               _%$e177730%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?177593%_
                                                           _%body177728%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e177730%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body177728%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx177591%_
                       _%combinator177726%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E177705177714%_)))))
                                  (_%E177705177714%_))))
                           (_%E177697177755%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177695177710%_)
                                  (let ((_%e177699177737%_
                                         (gx#syntax-e _%e177695177710%_)))
                                    (let ((_%hd177700177740%_
                                           (##car _%e177699177737%_))
                                          (_%tl177701177742%_
                                           (##cdr _%e177699177737%_)))
                                      (if (and (gx#identifier?
                                                _%hd177700177740%_)
                                               (gx#core-identifier=?
                                                _%hd177700177740%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl177701177742%_)
                                              (let ((_%e177702177745%_
                                                     (gx#syntax-e
                                                      _%tl177701177742%_)))
                                                (let ((_%hd177703177748%_
                                                       (##car _%e177702177745%_))
                                                      (_%tl177704177750%_
                                                       (##cdr _%e177702177745%_)))
                                                  (let ((_%expr177753%_
                                                         _%hd177703177748%_))
                                                    (if (gx#stx-null?
                                                         _%tl177704177750%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr177753%_)
                                                        (_%E177698177733%_)))))
                                              (_%E177698177733%_))
                                          (_%E177698177733%_))))
                                  (_%E177698177733%_))))
                           (_%E177696177761%_
                            (lambda ()
                              (let ((_%id177759%_ _%e177695177710%_))
                                (if (gx#identifier? _%id177759%_)
                                    (gx#core-bound-identifier?__%
                                     _%id177759%_
                                     gx#feature-binding?)
                                    (_%E177697177755%_))))))
                      (_%E177696177761%_))))
                 (_%loop177594%_
                  (lambda (_%rest177624%_)
                    (let* ((_%e177625177633%_ _%rest177624%_)
                           (_%E177631177637%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e177625177633%_)))
                           (_%E177627177641%_
                            (lambda ()
                              (if (gx#stx-null? _%e177625177633%_)
                                  '()
                                  (_%E177631177637%_))))
                           (_%E177626177690%_
                            (lambda ()
                              (if (gx#stx-pair? _%e177625177633%_)
                                  (let ((_%e177628177645%_
                                         (gx#syntax-e _%e177625177633%_)))
                                    (let ((_%hd177629177648%_
                                           (##car _%e177628177645%_))
                                          (_%tl177630177650%_
                                           (##cdr _%e177628177645%_)))
                                      (let* ((_%hd177653%_ _%hd177629177648%_)
                                             (_%rest177655%_
                                              _%tl177630177650%_)
                                             (_%e177656177663%_ _%hd177653%_)
                                             (_%E177658177667%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e177656177663%_)))
                                             (_%E177657177686%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e177656177663%_)
                                                    (let ((_%e177659177671%_
                                                           (gx#syntax-e
                                                            _%e177656177663%_)))
                                                      (let ((_%hd177660177674%_
                                                             (##car _%e177659177671%_))
                                                            (_%tl177661177676%_
                                                             (##cdr _%e177659177671%_)))
                                                        (let* ((_%condition177679%_
                                                                _%hd177660177674%_)
                                                               (_%body177681%_
                                                                _%tl177661177676%_))
                                                          (if (gx#stx-eq?
                                                               _%condition177679%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest177655%_)
                          _%body177681%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx177591%_
                           _%hd177653%_))
                      (if (_%satisfied?177593%_ _%condition177679%_)
                          _%body177681%_
                          (_%loop177594%_ _%rest177655%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177658177667%_)))))
                                        (_%E177657177686%_))))
                                  (_%E177627177641%_)))))
                      (_%E177626177690%_)))))
          (let* ((_%e177595177602%_ _%stx177591%_)
                 (_%E177597177606%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e177595177602%_)))
                 (_%E177596177620%_
                  (lambda ()
                    (if (gx#stx-pair? _%e177595177602%_)
                        (let ((_%e177598177610%_
                               (gx#syntax-e _%e177595177602%_)))
                          (let ((_%hd177599177613%_ (##car _%e177598177610%_))
                                (_%tl177600177615%_ (##cdr _%e177598177610%_)))
                            (let ((_%clauses177618%_ _%tl177600177615%_))
                              (if (gx#stx-list? _%clauses177618%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop177594%_ _%clauses177618%_))
                                  (_%E177597177606%_)))))
                        (_%E177597177606%_)))))
            (_%E177596177620%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx177534%_ _%rpath177535%_)
        (let* ((_%e177536177546%_ _%stx177534%_)
               (_%E177538177550%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177536177546%_)))
               (_%E177537177577%_
                (lambda ()
                  (if (gx#stx-pair? _%e177536177546%_)
                      (let ((_%e177539177554%_
                             (gx#syntax-e _%e177536177546%_)))
                        (let ((_%hd177540177557%_ (##car _%e177539177554%_))
                              (_%tl177541177559%_ (##cdr _%e177539177554%_)))
                          (if (gx#stx-pair? _%tl177541177559%_)
                              (let ((_%e177542177562%_
                                     (gx#syntax-e _%tl177541177559%_)))
                                (let ((_%hd177543177565%_
                                       (##car _%e177542177562%_))
                                      (_%tl177544177567%_
                                       (##cdr _%e177542177562%_)))
                                  (let ((_%path177570%_ _%hd177543177565%_))
                                    (if (gx#stx-null? _%tl177544177567%_)
                                        (if (gx#stx-string? _%path177570%_)
                                            (let ((_%rpath177575%_
                                                   (let ((_%$e177572%_
                                                          _%rpath177535%_))
                                                     (if _%$e177572%_
                                                         _%$e177572%_
                                                         (gx#core-resolve-path__%
                                                          _%path177570%_
                                                          (gx#stx-source
                                                           _%stx177534%_))))))
                                              (if (member _%rpath177575%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx177534%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath177575%_))
                                                    (gx#stx-source
                                                     _%stx177534%_)))))
                                            (_%E177538177550%_))
                                        (_%E177538177550%_)))))
                              (_%E177538177550%_))))
                      (_%E177538177550%_)))))
          (_%E177537177577%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx177584%_)
        (let ((_%rpath177586%_ '#f))
          (gx#core-expand-include%__% _%stx177584%_ _%rpath177586%_))))
    (define gx#core-expand-include%
      (lambda _g179909_
        (let ((_g179910_ (##length _g179909_)))
          (cond ((##fx= _g179910_ 1)
                 (apply gx#core-expand-include%__0 _g179909_))
                ((##fx= _g179910_ 2)
                 (apply gx#core-expand-include%__% _g179909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g179909_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K177500%_ _%stx177501%_ _%method177502%_)
        (if (procedure? _%K177500%_)
            (let ((_%$e177505%_ (gx#stx-source _%stx177501%_)))
              (if _%$e177505%_
                  (gx#stx-wrap-source (_%K177500%_ _%stx177501%_) _%$e177505%_)
                  (_%K177500%_ _%stx177501%_)))
            (let ((_%$e177513%_
                   (bound-method-ref _%K177500%_ _%method177502%_)))
              (if _%$e177513%_
                  (gx#core-apply-expander__%
                   _%$e177513%_
                   _%stx177501%_
                   _%method177502%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx177501%_
                   _%method177502%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K177524%_ _%stx177525%_)
        (let ((_%method177527%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K177524%_
           _%stx177525%_
           _%method177527%_))))
    (define gx#core-apply-expander
      (lambda _g179911_
        (let ((_g179912_ (##length _g179911_)))
          (cond ((##fx= _g179912_ 2)
                 (apply gx#core-apply-expander__0 _g179911_))
                ((##fx= _g179912_ 3)
                 (apply gx#core-apply-expander__% _g179911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g179911_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self177485%_ _%stx177486%_)
        (let ((_%self177489%_ _%self177485%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx177486%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self177328%_ _%stx177329%_)
        (let* ((_%self177332%_ _%self177328%_)
               (_%self177341177347%_ _%self177332%_)
               (_%E177343177350%_
                (lambda ()
                  (error '"No clause matching"
                         _%self177341177347%_
                         '((macro-expander K)))
                  '#!void))
               (_%K177344177355%_
                (lambda (_%K177353%_)
                  (gx#core-apply-expander__0 _%K177353%_ _%stx177329%_)))
               (_%e177345177358%_
                (##unchecked-structure-ref _%self177341177347%_ '1 '#f '#f))
               (_%K177361%_ _%e177345177358%_))
          (_%K177344177355%_ _%K177361%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self177171%_ _%stx177172%_)
        (let ((_%self177175%_ _%self177171%_))
          (if (gx#sealed-syntax? _%stx177172%_)
              _%stx177172%_
              (let* ((_%self177184177190%_ _%self177175%_)
                     (_%E177186177193%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self177184177190%_
                               '((core-expander K)))
                        '#!void))
                     (_%K177187177198%_
                      (lambda (_%K177196%_)
                        (gx#core-apply-expander__0 _%K177196%_ _%stx177172%_)))
                     (_%e177188177201%_
                      (##unchecked-structure-ref
                       _%self177184177190%_
                       '1
                       '#f
                       '#f))
                     (_%K177204%_ _%e177188177201%_))
                (_%K177187177198%_ _%K177204%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self177021%_ _%stx177022%_ _%top?177023%_)
        (let ((_%self177026%_ _%self177021%_))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin
                (displayln '"@expand " (gx#syntax->datum _%stx177022%_))
                (force-output))
              '#!void)
          (if (_%top?177023%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self177026%_
               _%stx177022%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx177022%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self177040%_ _%stx177041%_)
        (let ((_%top?177043%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self177040%_
           _%stx177041%_
           _%top?177043%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g179913_
        (let ((_g179914_ (##length _g179913_)))
          (cond ((##fx= _g179914_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g179913_))
                ((##fx= _g179914_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g179913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g179913_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self176884%_ _%stx176885%_)
        (let ((_%self176888%_ _%self176884%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self176888%_
           _%stx176885%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self176699%_ _%stx176700%_)
        (let* ((_%self176703%_ _%self176699%_)
               (_%self176712176718%_ _%self176703%_)
               (_%E176714176721%_
                (lambda ()
                  (error '"No clause matching"
                         _%self176712176718%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K176715176754%_
                (lambda (_%id176724%_)
                  (let* ((_%e176725176732%_ _%stx176700%_)
                         (_%E176727176736%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e176725176732%_)))
                         (_%E176726176750%_
                          (lambda ()
                            (if (gx#stx-pair? _%e176725176732%_)
                                (let ((_%e176728176740%_
                                       (gx#syntax-e _%e176725176732%_)))
                                  (let ((_%hd176729176743%_
                                         (##car _%e176728176740%_))
                                        (_%tl176730176745%_
                                         (##cdr _%e176728176740%_)))
                                    (let ((_%body176748%_ _%tl176730176745%_))
                                      (gx#core-cons
                                       _%id176724%_
                                       _%body176748%_))))
                                (_%E176727176736%_)))))
                    (_%E176726176750%_))))
               (_%e176716176757%_
                (##unchecked-structure-ref _%self176712176718%_ '1 '#f '#f))
               (_%id176760%_ _%e176716176757%_))
          (_%K176715176754%_ _%id176760%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self176526%_ _%stx176527%_ _%method176528%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx176527%_))
              (force-output))
            '#!void)
        (let* ((_%self176529176537%_ _%self176526%_)
               (_%E176531176540%_
                (lambda ()
                  (error '"No clause matching"
                         _%self176529176537%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K176532176547%_
                (lambda (_%phi176543%_ _%ctx176544%_ _%K176545%_)
                  (gx#core-apply-user-macro
                   _%K176545%_
                   _%stx176527%_
                   _%ctx176544%_
                   _%phi176543%_
                   _%method176528%_))))
          (if (##structure-instance-of?
               _%self176529176537%_
               'gx#user-expander::t)
              (let* ((_%e176533176550%_
                      (##unchecked-structure-ref
                       _%self176529176537%_
                       '1
                       '#f
                       '#f))
                     (_%K176553%_ _%e176533176550%_)
                     (_%e176534176555%_
                      (##unchecked-structure-ref
                       _%self176529176537%_
                       '2
                       '#f
                       '#f))
                     (_%ctx176558%_ _%e176534176555%_)
                     (_%e176535176560%_
                      (##unchecked-structure-ref
                       _%self176529176537%_
                       '3
                       '#f
                       '#f))
                     (_%phi176563%_ _%e176535176560%_))
                (_%K176532176547%_ _%phi176563%_ _%ctx176558%_ _%K176553%_))
              (_%E176531176540%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self176568%_ _%stx176569%_)
        (let ((_%method176571%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self176568%_
           _%stx176569%_
           _%method176571%_))))
    (define gx#core-apply-user-expander
      (lambda _g179915_
        (let ((_g179916_ (##length _g179915_)))
          (cond ((##fx= _g179916_ 2)
                 (apply gx#core-apply-user-expander__0 _g179915_))
                ((##fx= _g179916_ 3)
                 (apply gx#core-apply-user-expander__% _g179915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g179915_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K176516%_
               _%stx176517%_
               _%ctx176518%_
               _%phi176519%_
               _%method176520%_)
        (let ((_%mark176522%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx176518%_
                _%phi176519%_
                _%stx176517%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K176516%_
               (gx#stx-apply-mark _%stx176517%_ _%mark176522%_)
               _%method176520%_)
              _%mark176522%_))
           gx#current-expander-marks
           (cons _%mark176522%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx176364%_ _%phi176365%_ _%ctx176366%_)
        (let _%lp176368%_ ((_%bind176370%_
                            (gx#core-resolve-identifier__%
                             _%stx176364%_
                             _%phi176365%_
                             _%ctx176366%_)))
          (if (##structure-direct-instance-of?
               _%bind176370%_
               'gx#import-binding::t)
              (_%lp176368%_
               (##unchecked-structure-ref _%bind176370%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind176370%_
                   'gx#alias-binding::t)
                  (_%lp176368%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind176370%_ '5 '#f '#f)
                    _%phi176365%_
                    _%ctx176366%_))
                  _%bind176370%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx176378%_)
        (let* ((_%phi176380%_ (gx#current-expander-phi))
               (_%ctx176382%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx176378%_
           _%phi176380%_
           _%ctx176382%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx176384%_ _%phi176385%_)
        (let ((_%ctx176387%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx176384%_
           _%phi176385%_
           _%ctx176387%_))))
    (define gx#resolve-identifier
      (lambda _g179917_
        (let ((_g179918_ (##length _g179917_)))
          (cond ((##fx= _g179918_ 1)
                 (apply gx#resolve-identifier__0 _g179917_))
                ((##fx= _g179918_ 2)
                 (apply gx#resolve-identifier__1 _g179917_))
                ((##fx= _g179918_ 3)
                 (apply gx#resolve-identifier__% _g179917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g179917_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx176319%_
               _%val176320%_
               _%rebind?176321%_
               _%phi176322%_
               _%ctx176323%_)
        (let ((_%rebind?176328%_
               (if (not _%rebind?176321%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?176321%_)
                       _%rebind?176321%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx176319%_)
           _%val176320%_
           _%rebind?176328%_
           _%phi176322%_
           _%ctx176323%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx176333%_ _%val176334%_)
        (let* ((_%rebind?176336%_ '#f)
               (_%phi176338%_ (gx#current-expander-phi))
               (_%ctx176340%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx176333%_
           _%val176334%_
           _%rebind?176336%_
           _%phi176338%_
           _%ctx176340%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx176342%_ _%val176343%_ _%rebind?176344%_)
        (let* ((_%phi176346%_ (gx#current-expander-phi))
               (_%ctx176348%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx176342%_
           _%val176343%_
           _%rebind?176344%_
           _%phi176346%_
           _%ctx176348%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx176350%_ _%val176351%_ _%rebind?176352%_ _%phi176353%_)
        (let ((_%ctx176355%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx176350%_
           _%val176351%_
           _%rebind?176352%_
           _%phi176353%_
           _%ctx176355%_))))
    (define gx#bind-identifier!
      (lambda _g179919_
        (let ((_g179920_ (##length _g179919_)))
          (cond ((##fx= _g179920_ 2) (apply gx#bind-identifier!__0 _g179919_))
                ((##fx= _g179920_ 3) (apply gx#bind-identifier!__1 _g179919_))
                ((##fx= _g179920_ 4) (apply gx#bind-identifier!__2 _g179919_))
                ((##fx= _g179920_ 5) (apply gx#bind-identifier!__% _g179919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g179919_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx176285%_ _%phi176286%_ _%ctx176287%_)
        (let _%lp176289%_ ((_%e176291%_ _%stx176285%_)
                           (_%marks176292%_ (gx#current-expander-marks)))
          (if (symbol? _%e176291%_)
              (gx#core-resolve-binding
               _%e176291%_
               _%phi176286%_
               _%phi176286%_
               _%ctx176287%_
               (reverse _%marks176292%_))
              (if (gx#identifier-quote? _%e176291%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e176291%_ '1 '#f '#f)
                   _%phi176286%_
                   '0
                   (##unchecked-structure-ref _%e176291%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e176291%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e176291%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e176291%_ '1 '#f '#f)
                       _%phi176286%_
                       _%phi176286%_
                       _%ctx176287%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e176291%_ '3 '#f '#f)
                        _%marks176292%_))
                      (if (##structure-direct-instance-of?
                           _%e176291%_
                           'gx#syntax-wrap::t)
                          (_%lp176289%_
                           (##unchecked-structure-ref _%e176291%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e176291%_ '3 '#f '#f)
                            _%marks176292%_))
                          (if (##structure-instance-of?
                               _%e176291%_
                               'gerbil#AST::t)
                              (_%lp176289%_
                               (##unchecked-structure-ref
                                _%e176291%_
                                '1
                                '#f
                                '#f)
                               _%marks176292%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx176285%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx176303%_)
        (let* ((_%phi176305%_ (gx#current-expander-phi))
               (_%ctx176307%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx176303%_
           _%phi176305%_
           _%ctx176307%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx176309%_ _%phi176310%_)
        (let ((_%ctx176312%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx176309%_
           _%phi176310%_
           _%ctx176312%_))))
    (define gx#core-resolve-identifier
      (lambda _g179921_
        (let ((_g179922_ (##length _g179921_)))
          (cond ((##fx= _g179922_ 1)
                 (apply gx#core-resolve-identifier__0 _g179921_))
                ((##fx= _g179922_ 2)
                 (apply gx#core-resolve-identifier__1 _g179921_))
                ((##fx= _g179922_ 3)
                 (apply gx#core-resolve-identifier__% _g179921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g179921_))))))
    (define gx#core-resolve-binding
      (lambda (_%id176196%_
               _%phi176197%_
               _%src-phi176198%_
               _%ctx176199%_
               _%marks176200%_)
        (letrec ((_%resolve176202%_
                  (lambda (_%ctx176269%_ _%src-phi176270%_ _%key176271%_)
                    (let _%lp176273%_ ((_%ctx176275%_
                                        (gx#core-context-shift
                                         _%ctx176269%_
                                         _%phi176197%_))
                                       (_%dphi176276%_
                                        (fx- _%phi176197%_ _%src-phi176270%_)))
                      (let ((_%$e176278%_
                             (gx#core-context-resolve
                              _%ctx176275%_
                              _%key176271%_)))
                        (if _%$e176278%_
                            _%$e176278%_
                            (if (fxzero? _%dphi176276%_)
                                '#f
                                (if (fxpositive? _%dphi176276%_)
                                    (_%lp176273%_
                                     (gx#core-context-shift _%ctx176275%_ '-1)
                                     (##fx- _%dphi176276%_ '1))
                                    (_%lp176273%_
                                     (gx#core-context-shift _%ctx176275%_ '1)
                                     (##fx+ _%dphi176276%_ '1))))))))))
          (let _%lp176204%_ ((_%ctx176206%_ _%ctx176199%_)
                             (_%src-phi176207%_ _%src-phi176198%_)
                             (_%rest176208%_ _%marks176200%_))
            (let* ((_%rest176209176217%_ _%rest176208%_)
                   (_%else176211176225%_
                    (lambda ()
                      (_%resolve176202%_
                       _%ctx176206%_
                       _%src-phi176207%_
                       _%id176196%_)))
                   (_%K176213176257%_
                    (lambda (_%rest176228%_ _%hd176229%_)
                      (let* ((_%hd176230176236%_ _%hd176229%_)
                             (_%E176232176239%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd176230176236%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K176233176249%_
                              (lambda (_%subst176242%_)
                                (let ((_%$e176246%_
                                       (let ((_%key176244%_
                                              (if _%subst176242%_
                                                  (hash-get
                                                   _%subst176242%_
                                                   _%id176196%_)
                                                  '#f)))
                                         (if _%key176244%_
                                             (_%resolve176202%_
                                              _%ctx176206%_
                                              _%src-phi176207%_
                                              _%key176244%_)
                                             '#f))))
                                  (if _%$e176246%_
                                      _%$e176246%_
                                      (_%lp176204%_
                                       (##unchecked-structure-ref
                                        _%hd176229%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd176229%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest176228%_))))))
                        (if (##structure-instance-of?
                             _%hd176230176236%_
                             'gx#expander-mark::t)
                            (let* ((_%e176234176252%_
                                    (##unchecked-structure-ref
                                     _%hd176230176236%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst176255%_ _%e176234176252%_))
                              (_%K176233176249%_ _%subst176255%_))
                            (_%E176232176239%_))))))
              (if (pair? _%rest176209176217%_)
                  (let ((_%hd176214176260%_ (##car _%rest176209176217%_))
                        (_%tl176215176262%_ (##cdr _%rest176209176217%_)))
                    (let* ((_%hd176265%_ _%hd176214176260%_)
                           (_%rest176267%_ _%tl176215176262%_))
                      (_%K176213176257%_ _%rest176267%_ _%hd176265%_)))
                  (_%else176211176225%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key176067%_
               _%val176068%_
               _%rebind?176069%_
               _%phi176070%_
               _%ctx176071%_)
        (letrec ((_%update-binding176073%_
                  (lambda (_%xval176145%_)
                    (if (or (_%rebind?176069%_
                             _%ctx176071%_
                             _%xval176145%_
                             _%val176068%_)
                            (and (##structure-direct-instance-of?
                                  _%xval176145%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval176145%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val176068%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val176068%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval176145%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val176068%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val176068%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval176145%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val176068%_
                        (if (and (##structure-direct-instance-of?
                                  _%val176068%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val176068%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval176145%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val176068%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval176145%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval176145%_
                            (if (and (##structure-direct-instance-of?
                                      _%val176068%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval176145%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key176067%_
                                 (cons (##unchecked-structure-ref
                                        _%val176068%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val176068%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval176145%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval176145%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval176145%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval176145%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key176067%_
                                 _%val176068%_
                                 _%xval176145%_))))))
                 (_%gensubst176074%_
                  (lambda (_%subst176140%_ _%id176141%_)
                    (let ((_%eid176143%_
                           (gensym (if (uninterned-symbol? _%id176141%_)
                                       '%
                                       _%id176141%_))))
                      (hash-put! _%subst176140%_ _%id176141%_ _%eid176143%_)
                      _%eid176143%_)))
                 (_%subst!176075%_
                  (lambda (_%key176077%_)
                    (let* ((_%key176078176086%_ _%key176077%_)
                           (_%else176080176094%_ (lambda () _%key176077%_))
                           (_%K176082176128%_
                            (lambda (_%mark176097%_ _%id176098%_)
                              (let* ((_%mark176099176105%_ _%mark176097%_)
                                     (_%E176101176108%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark176099176105%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K176102176120%_
                                      (lambda (_%subst176111%_)
                                        (if (not _%subst176111%_)
                                            (let ((_%subst176114%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark176097%_
                                               _%subst176114%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst176074%_
                                               _%subst176114%_
                                               _%id176098%_))
                                            (let ((_%$e176116%_
                                                   (hash-get
                                                    _%subst176111%_
                                                    _%id176098%_)))
                                              (if _%$e176116%_
                                                  _%$e176116%_
                                                  (_%gensubst176074%_
                                                   _%subst176111%_
                                                   _%id176098%_)))))))
                                (if (##structure-instance-of?
                                     _%mark176099176105%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e176103176123%_
                                            (##unchecked-structure-ref
                                             _%mark176099176105%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst176126%_ _%e176103176123%_))
                                      (_%K176102176120%_ _%subst176126%_))
                                    (_%E176101176108%_))))))
                      (if (pair? _%key176078176086%_)
                          (let ((_%hd176083176131%_
                                 (##car _%key176078176086%_))
                                (_%tl176084176133%_
                                 (##cdr _%key176078176086%_)))
                            (let* ((_%id176136%_ _%hd176083176131%_)
                                   (_%mark176138%_ _%tl176084176133%_))
                              (_%K176082176128%_ _%mark176138%_ _%id176136%_)))
                          (_%else176080176094%_))))))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin (displayln '"@bind " _%key176067%_) (force-output))
              '#!void)
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx176071%_ _%phi176070%_)
           (_%subst!176075%_ _%key176067%_)
           _%val176068%_
           _%update-binding176073%_))))
    (define gx#core-bind!__0
      (lambda (_%key176166%_ _%val176167%_)
        (let* ((_%rebind?176169%_ false)
               (_%phi176171%_ (gx#current-expander-phi))
               (_%ctx176173%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key176166%_
           _%val176167%_
           _%rebind?176169%_
           _%phi176171%_
           _%ctx176173%_))))
    (define gx#core-bind!__1
      (lambda (_%key176175%_ _%val176176%_ _%rebind?176177%_)
        (let* ((_%phi176179%_ (gx#current-expander-phi))
               (_%ctx176181%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key176175%_
           _%val176176%_
           _%rebind?176177%_
           _%phi176179%_
           _%ctx176181%_))))
    (define gx#core-bind!__2
      (lambda (_%key176183%_ _%val176184%_ _%rebind?176185%_ _%phi176186%_)
        (let ((_%ctx176188%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key176183%_
           _%val176184%_
           _%rebind?176185%_
           _%phi176186%_
           _%ctx176188%_))))
    (define gx#core-bind!
      (lambda _g179923_
        (let ((_g179924_ (##length _g179923_)))
          (cond ((##fx= _g179924_ 2) (apply gx#core-bind!__0 _g179923_))
                ((##fx= _g179924_ 3) (apply gx#core-bind!__1 _g179923_))
                ((##fx= _g179924_ 4) (apply gx#core-bind!__2 _g179923_))
                ((##fx= _g179924_ 5) (apply gx#core-bind!__% _g179923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g179923_))))))
    (define gx#core-identifier-key
      (lambda (_%stx175998%_)
        (if (symbol? _%stx175998%_)
            (let* ((_%g176000176008%_ (gx#current-expander-marks))
                   (_%else176002176016%_ (lambda () _%stx175998%_))
                   (_%K176004176021%_
                    (lambda (_%hd176019%_) (cons _%stx175998%_ _%hd176019%_))))
              (if (pair? _%g176000176008%_)
                  (let* ((_%hd176005176024%_ (##car _%g176000176008%_))
                         (_%hd176027%_ _%hd176005176024%_))
                    (_%K176004176021%_ _%hd176027%_))
                  (_%else176002176016%_)))
            (if (gx#identifier? _%stx175998%_)
                (let* ((_%id176030%_ (gx#syntax-local-unwrap _%stx175998%_))
                       (_%eid176032%_ (gx#stx-e _%id176030%_))
                       (_%marks176034%_
                        (gx#stx-identifier-marks* _%id176030%_))
                       (_%marks176036176044%_ _%marks176034%_)
                       (_%else176038176052%_ (lambda () _%eid176032%_))
                       (_%K176040176057%_
                        (lambda (_%hd176055%_)
                          (cons _%eid176032%_ _%hd176055%_))))
                  (if (pair? _%marks176036176044%_)
                      (let* ((_%hd176041176060%_ (##car _%marks176036176044%_))
                             (_%hd176063%_ _%hd176041176060%_))
                        (_%K176040176057%_ _%hd176063%_))
                      (_%else176038176052%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx175998%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx175937%_ _%phi175938%_)
        (letrec ((_%make-phi175940%_
                  (lambda (_%super175996%_)
                    (let ((__obj179894
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj179894
                       (##gensym 'phi)
                       _%super175996%_)
                      __obj179894)))
                 (_%make-phi/up175941%_
                  (lambda (_%ctx175991%_ _%super175992%_)
                    (let ((_%ctx+1175994%_
                           (_%make-phi175940%_ _%super175992%_)))
                      (##unchecked-structure-set!
                       _%ctx175991%_
                       _%ctx+1175994%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1175994%_
                       _%ctx175991%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1175994%_)))
                 (_%make-phi/down175942%_
                  (lambda (_%ctx175986%_ _%super175987%_)
                    (let ((_%ctx-1175989%_
                           (_%make-phi175940%_ _%super175987%_)))
                      (##unchecked-structure-set!
                       _%ctx-1175989%_
                       _%ctx175986%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx175986%_
                       _%ctx-1175989%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1175989%_)))
                 (_%shift175943%_
                  (lambda (_%ctx175969%_
                           _%delta175970%_
                           _%make-delta-context175971%_
                           _%phi175972%_
                           _%K175973%_)
                    (let ((_%$e175975%_
                           (##unchecked-structure-ref
                            _%ctx175969%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e175975%_
                          (let* ((_%super175980%_
                                  (_%K175973%_ _%$e175975%_ _%delta175970%_))
                                 (_%ctx+d175982%_
                                  (_%make-delta-context175971%_
                                   _%ctx175969%_
                                   _%super175980%_)))
                            (_%K175973%_
                             _%ctx+d175982%_
                             (fx- _%phi175972%_ _%delta175970%_)))
                          (error '"Bad context" _%ctx175969%_))))))
          (let _%K175945%_ ((_%ctx175947%_ _%ctx175937%_)
                            (_%phi175948%_ _%phi175938%_))
            (if (fxzero? _%phi175948%_)
                _%ctx175947%_
                (if (##structure-instance-of? _%ctx175947%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi175948%_)
                        (let ((_%$e175952%_
                               (##unchecked-structure-ref
                                _%ctx175947%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e175952%_
                              (_%K175945%_
                               _%$e175952%_
                               (##fx- _%phi175948%_ '1))
                              (_%shift175943%_
                               _%ctx175947%_
                               '1
                               _%make-phi/up175941%_
                               _%phi175948%_
                               _%K175945%_)))
                        (let ((_%$e175960%_
                               (##unchecked-structure-ref
                                _%ctx175947%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e175960%_
                              (_%K175945%_
                               _%$e175960%_
                               (##fx+ _%phi175948%_ '1))
                              (_%shift175943%_
                               _%ctx175947%_
                               '-1
                               _%make-phi/down175942%_
                               _%phi175948%_
                               _%K175945%_))))
                    _%ctx175947%_))))))
    (define gx#core-context-get
      (lambda (_%ctx175934%_ _%key175935%_)
        (hash-get
         (##unchecked-structure-ref _%ctx175934%_ '2 '#f '#f)
         _%key175935%_)))
    (define gx#core-context-put!
      (lambda (_%ctx175930%_ _%key175931%_ _%val175932%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx175930%_ '2 '#f '#f)
         _%key175931%_
         _%val175932%_)
        _%val175932%_))
    (define gx#core-context-resolve
      (lambda (_%ctx175916%_ _%key175917%_)
        (let _%lp175919%_ ((_%ctx175921%_ _%ctx175916%_))
          (let ((_%$e175923%_
                 (gx#core-context-get _%ctx175921%_ _%key175917%_)))
            (if _%$e175923%_
                _%$e175923%_
                (let ((_%$e175926%_
                       (if (##structure-instance-of?
                            _%ctx175921%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx175921%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e175926%_ (_%lp175919%_ _%$e175926%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx175905%_ _%key175906%_ _%val175907%_ _%rebind175908%_)
        (let ((_%$e175910%_ (gx#core-context-get _%ctx175905%_ _%key175906%_)))
          (if _%$e175910%_
              (gx#core-context-put!
               _%ctx175905%_
               _%key175906%_
               (_%rebind175908%_ _%$e175910%_))
              (gx#core-context-put!
               _%ctx175905%_
               _%key175906%_
               _%val175907%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx175880%_ _%stop?175881%_)
        (let _%lp175883%_ ((_%ctx175885%_ _%ctx175880%_))
          (if (_%stop?175881%_ _%ctx175885%_)
              _%ctx175885%_
              (if (##structure-instance-of? _%ctx175885%_ 'gx#phi-context::t)
                  (_%lp175883%_
                   (##unchecked-structure-ref _%ctx175885%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx175894%_ (gx#current-expander-context))
               (_%stop?175896%_ gx#top-context?))
          (gx#core-context-top__% _%ctx175894%_ _%stop?175896%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx175898%_)
        (let ((_%stop?175900%_ gx#top-context?))
          (gx#core-context-top__% _%ctx175898%_ _%stop?175900%_))))
    (define gx#core-context-top
      (lambda _g179925_
        (let ((_g179926_ (##length _g179925_)))
          (cond ((##fx= _g179926_ 0) (apply gx#core-context-top__0 _g179925_))
                ((##fx= _g179926_ 1) (apply gx#core-context-top__1 _g179925_))
                ((##fx= _g179926_ 2) (apply gx#core-context-top__% _g179925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g179925_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx175865%_)
        (let _%lp175867%_ ((_%ctx175869%_ _%ctx175865%_))
          (if (##structure-instance-of? _%ctx175869%_ 'gx#phi-context::t)
              (_%lp175867%_
               (##unchecked-structure-ref _%ctx175869%_ '3 '#f '#f))
              _%ctx175869%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx175875%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx175875%_))))
    (define gx#core-context-root
      (lambda _g179927_
        (let ((_g179928_ (##length _g179927_)))
          (cond ((##fx= _g179928_ 0) (apply gx#core-context-root__0 _g179927_))
                ((##fx= _g179928_ 1) (apply gx#core-context-root__% _g179927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g179927_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx175847%_ . _%ignore175848%_)
        (let ((_%$e175850%_ (gx#current-expander-allow-rebind?)))
          (if _%$e175850%_
              _%$e175850%_
              (if (##structure-instance-of? _%ctx175847%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx175847%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx175847%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx175857%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx175857%_))))
    (define gx#core-context-rebind?
      (lambda _g179929_
        (let ((_g179930_ (##length _g179929_)))
          (cond ((##fx= _g179930_ 0)
                 (apply gx#core-context-rebind?__0 _g179929_))
                ((##fx= _g179930_ 1)
                 (apply gx#core-context-rebind?__% _g179929_))
                ((##fx>= _g179930_ 1)
                 (apply gx#core-context-rebind?__% _g179929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g179929_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx175830%_)
        (let ((_%$e175832%_ (gx#core-context-top__1 _%ctx175830%_)))
          (if _%$e175832%_
              (if (##structure-instance-of? _%$e175832%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e175832%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx175842%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx175842%_))))
    (define gx#core-context-namespace
      (lambda _g179931_
        (let ((_g179932_ (##length _g179931_)))
          (cond ((##fx= _g179932_ 0)
                 (apply gx#core-context-namespace__0 _g179931_))
                ((##fx= _g179932_ 1)
                 (apply gx#core-context-namespace__% _g179931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g179931_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind175816%_ _%is?175817%_)
        (if (##structure-direct-instance-of?
             _%bind175816%_
             'gx#syntax-binding::t)
            (_%is?175817%_
             (##unchecked-structure-ref _%bind175816%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind175822%_)
        (let ((_%is?175824%_ gx#expander?))
          (gx#expander-binding?__% _%bind175822%_ _%is?175824%_))))
    (define gx#expander-binding?
      (lambda _g179933_
        (let ((_g179934_ (##length _g179933_)))
          (cond ((##fx= _g179934_ 1) (apply gx#expander-binding?__0 _g179933_))
                ((##fx= _g179934_ 2) (apply gx#expander-binding?__% _g179933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g179933_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind175813%_)
        (gx#expander-binding?__% _%bind175813%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind175811%_)
        (gx#expander-binding?__% _%bind175811%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind175805%_)
        (letrec ((_%direct-special-form?175807%_
                  (lambda (_%obj175809%_)
                    (##structure-direct-instance-of?
                     _%obj175809%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind175805%_
           _%direct-special-form?175807%_))))
    (define gx#special-form-binding?
      (lambda (_%bind175803%_)
        (gx#expander-binding?__% _%bind175803%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind175794%_)
        (letrec ((_%feature?175796%_
                  (lambda (_%e175798%_)
                    (let ((_%$e175800%_
                           (##structure-instance-of?
                            _%e175798%_
                            'gx#feature-expander::t)))
                      (if _%$e175800%_
                          _%$e175800%_
                          (##structure-instance-of?
                           _%e175798%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind175794%_ _%feature?175796%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind175792%_)
        (gx#expander-binding?__% _%bind175792%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id175779%_ _%bound?175780%_)
        (if (gx#identifier? _%id175779%_)
            (_%bound?175780%_ (gx#resolve-identifier__0 _%id175779%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id175785%_)
        (let ((_%bound?175787%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id175785%_ _%bound?175787%_))))
    (define gx#core-bound-identifier?
      (lambda _g179935_
        (let ((_g179936_ (##length _g179935_)))
          (cond ((##fx= _g179936_ 1)
                 (apply gx#core-bound-identifier?__0 _g179935_))
                ((##fx= _g179936_ 2)
                 (apply gx#core-bound-identifier?__% _g179935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g179935_))))))
    (define gx#core-identifier=?
      (lambda (_%x175769%_ _%y175770%_)
        (letrec ((_%y=?175772%_
                  (lambda (_%xid175776%_)
                    ((if (list? _%y175770%_) memq eq?)
                     _%xid175776%_
                     _%y175770%_))))
          (let ((_%bind175774%_ (gx#resolve-identifier__0 _%x175769%_)))
            (if (##structure-instance-of? _%bind175774%_ 'gx#binding::t)
                (_%y=?175772%_
                 (##unchecked-structure-ref _%bind175774%_ '1 '#f '#f))
                (_%y=?175772%_ (gx#stx-e _%x175769%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e175767%_)
        (if (interned-symbol? _%e175767%_)
            (string-index__0 (symbol->string _%e175767%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx175720%_ _%src175721%_ _%ctx175722%_ _%marks175723%_)
        (if (##structure? _%stx175720%_)
            (let ((_%$e175725%_ (gx#sealed-syntax-unwrap _%stx175720%_)))
              (if _%$e175725%_
                  _%$e175725%_
                  (if (gx#identifier? _%stx175720%_)
                      (let ((_%id175729%_
                             (gx#stx-unwrap__% _%stx175720%_ _%marks175723%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id175729%_ '1 '#f '#f)
                         (let ((_%$e175731%_
                                (##unchecked-structure-ref
                                 _%id175729%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e175731%_ _%$e175731%_ _%src175721%_))
                         _%ctx175722%_
                         (##unchecked-structure-ref _%id175729%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx175720%_)
                       (let ((_%$e175735%_ (gx#stx-source _%stx175720%_)))
                         (if _%$e175735%_ _%$e175735%_ _%src175721%_))
                       _%ctx175722%_
                       (reverse _%marks175723%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx175720%_
             _%src175721%_
             _%ctx175722%_
             (reverse _%marks175723%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx175741%_)
        (let* ((_%src175743%_ '#f)
               (_%ctx175745%_ (gx#current-expander-context))
               (_%marks175747%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx175741%_
           _%src175743%_
           _%ctx175745%_
           _%marks175747%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx175749%_ _%src175750%_)
        (let* ((_%ctx175752%_ (gx#current-expander-context))
               (_%marks175754%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx175749%_
           _%src175750%_
           _%ctx175752%_
           _%marks175754%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx175756%_ _%src175757%_ _%ctx175758%_)
        (let ((_%marks175760%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx175756%_
           _%src175757%_
           _%ctx175758%_
           _%marks175760%_))))
    (define gx#core-quote-syntax
      (lambda _g179937_
        (let ((_g179938_ (##length _g179937_)))
          (cond ((##fx= _g179938_ 1) (apply gx#core-quote-syntax__0 _g179937_))
                ((##fx= _g179938_ 2) (apply gx#core-quote-syntax__1 _g179937_))
                ((##fx= _g179938_ 3) (apply gx#core-quote-syntax__2 _g179937_))
                ((##fx= _g179938_ 4) (apply gx#core-quote-syntax__% _g179937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g179937_))))))
    (define gx#core-cons
      (lambda (_%hd175716%_ _%tl175717%_)
        (cons (gx#core-quote-syntax__0 _%hd175716%_) _%tl175717%_)))
    (define gx#core-list
      (lambda (_%hd175713%_ . _%rest175714%_)
        (cons (gx#core-quote-syntax__0 _%hd175713%_) _%rest175714%_)))
    (define gx#core-cons*
      (lambda (_%hd175710%_ . _%rest175711%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd175710%_) _%rest175711%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path175679%_ _%rel175680%_)
        (let ((_%path175697%_ (gx#stx-e _%stx-path175679%_))
              (_%reldir175698%_
               (let _%lp175682%_ ((_%relsrc175684%_
                                   (let ((_%$e175694%_
                                          (gx#stx-source _%stx-path175679%_)))
                                     (if _%$e175694%_
                                         _%$e175694%_
                                         _%rel175680%_))))
                 (if (##structure-instance-of? _%relsrc175684%_ 'gerbil#AST::t)
                     (_%lp175682%_
                      (let ((_%$e175687%_ (gx#stx-source _%relsrc175684%_)))
                        (if _%$e175687%_
                            _%$e175687%_
                            (gx#stx-e _%relsrc175684%_))))
                     (if (source-location-path? _%relsrc175684%_)
                         (path-directory
                          (source-location-path _%relsrc175684%_))
                         (if (string? _%relsrc175684%_)
                             (path-directory _%relsrc175684%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path175697%_ (path-normalize _%reldir175698%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path175703%_)
        (let ((_%rel175705%_ '#f))
          (gx#core-resolve-path__% _%stx-path175703%_ _%rel175705%_))))
    (define gx#core-resolve-path
      (lambda _g179939_
        (let ((_g179940_ (##length _g179939_)))
          (cond ((##fx= _g179940_ 1) (apply gx#core-resolve-path__0 _g179939_))
                ((##fx= _g179940_ 2) (apply gx#core-resolve-path__% _g179939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g179939_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr175635%_ _%ctx175636%_)
        (let* ((_%repr175637175644%_ _%repr175635%_)
               (_%E175639175648%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr175637175644%_
                         '([phi . subs]))
                  '#!void))
               (_%K175640175656%_
                (lambda (_%subs175651%_ _%phi175652%_)
                  (let ((_%subst175654%_
                         (if (null? _%subs175651%_)
                             '#f
                             (list->hash-table-eq _%subs175651%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst175654%_
                     _%ctx175636%_
                     _%phi175652%_
                     '#f)))))
          (if (pair? _%repr175637175644%_)
              (let ((_%hd175641175659%_ (##car _%repr175637175644%_))
                    (_%tl175642175661%_ (##cdr _%repr175637175644%_)))
                (let* ((_%phi175664%_ _%hd175641175659%_)
                       (_%subs175666%_ _%tl175642175661%_))
                  (_%K175640175656%_ _%subs175666%_ _%phi175664%_)))
              (_%E175639175648%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr175671%_)
        (let ((_%ctx175673%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr175671%_ _%ctx175673%_))))
    (define gx#core-deserialize-mark
      (lambda _g179941_
        (let ((_g179942_ (##length _g179941_)))
          (cond ((##fx= _g179942_ 1)
                 (apply gx#core-deserialize-mark__0 _g179941_))
                ((##fx= _g179942_ 2)
                 (apply gx#core-deserialize-mark__% _g179941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g179941_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx175632%_)
        (gx#stx-rewrap _%stx175632%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx175630%_)
        (gx#stx-unwrap__% _%stx175630%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx175600%_)
        (let* ((_%g175601175609%_ (gx#current-expander-marks))
               (_%else175603175617%_ (lambda () _%stx175600%_))
               (_%K175605175622%_
                (lambda (_%hd175620%_)
                  (gx#stx-apply-mark _%stx175600%_ _%hd175620%_))))
          (if (pair? _%g175601175609%_)
              (let* ((_%hd175606175625%_ (##car _%g175601175609%_))
                     (_%hd175628%_ _%hd175606175625%_))
                (_%K175605175622%_ _%hd175628%_))
              (_%else175603175617%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym175598%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym175598%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx175583%_ _%E175584%_)
        (let ((_%bind175586%_ (gx#resolve-identifier__0 _%stx175583%_)))
          (if (##structure-direct-instance-of?
               _%bind175586%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind175586%_ '5 '#f '#f)
              (_%E175584%_ _%stx175583%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx175591%_)
        (let ((_%E175593%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx175591%_ _%E175593%_))))
    (define gx#syntax-local-e
      (lambda _g179943_
        (let ((_g179944_ (##length _g179943_)))
          (cond ((##fx= _g179944_ 1) (apply gx#syntax-local-e__0 _g179943_))
                ((##fx= _g179944_ 2) (apply gx#syntax-local-e__% _g179943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g179943_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx175567%_ _%E175568%_)
        (let ((_%e175570%_ (gx#syntax-local-e__% _%stx175567%_ _%E175568%_)))
          (if (##structure-instance-of? _%e175570%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e175570%_ '1 '#f '#f)
              _%e175570%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx175575%_)
        (let ((_%E175577%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx175575%_ _%E175577%_))))
    (define gx#syntax-local-value
      (lambda _g179945_
        (let ((_g179946_ (##length _g179945_)))
          (cond ((##fx= _g179946_ 1)
                 (apply gx#syntax-local-value__0 _g179945_))
                ((##fx= _g179946_ 2)
                 (apply gx#syntax-local-value__% _g179945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g179945_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx175564%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx175564%_)))))
