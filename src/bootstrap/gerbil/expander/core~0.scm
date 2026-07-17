(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1784471382)
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
      (lambda _%$args186910%_
        (apply make-instance gx#expander-context::t _%$args186910%_)))
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
      (lambda _%$args186907%_
        (apply make-instance gx#root-context::t _%$args186907%_)))
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
      (lambda _%$args186904%_
        (apply make-instance gx#phi-context::t _%$args186904%_)))
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
      (lambda _%$args186901%_
        (apply make-instance gx#top-context::t _%$args186901%_)))
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
      (lambda _%$args186898%_
        (apply make-instance gx#module-context::t _%$args186898%_)))
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
      (lambda _%$args186895%_
        (apply make-instance gx#prelude-context::t _%$args186895%_)))
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
      (lambda _%$args186892%_
        (apply make-instance gx#local-context::t _%$args186892%_)))
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
      (lambda (_%self186865%_ _%id186866%_ _%super186867%_)
        (let ((_%self186870%_ _%self186865%_))
          (if (##fx< '3 (##structure-length _%self186870%_))
              (begin
                (##unchecked-structure-set!
                 _%self186870%_
                 _%id186866%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186870%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186870%_
                 _%super186867%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self186870%_
                     '3
                     (##structure-length _%self186870%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self186883%_ _%id186884%_)
        (let ((_%super186886%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self186883%_
           _%id186884%_
           _%super186886%_))))
    (define gx#phi-context:::init!
      (lambda _g186952_
        (let ((_g186953_ (##length _g186952_)))
          (cond ((##fx= _g186953_ 2)
                 (apply gx#phi-context:::init!__0 _g186952_))
                ((##fx= _g186953_ 3)
                 (apply gx#phi-context:::init!__% _g186952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g186952_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self186718%_ _%super186719%_)
        (let ((_%self186722%_ _%self186718%_))
          (if (##fx< '3 (##structure-length _%self186722%_))
              (begin
                (##unchecked-structure-set!
                 _%self186722%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186722%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self186722%_
                 _%super186719%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self186722%_
                     '3
                     (##structure-length _%self186722%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self186735%_)
        (let ((_%super186737%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self186735%_ _%super186737%_))))
    (define gx#local-context:::init!
      (lambda _g186954_
        (let ((_g186955_ (##length _g186954_)))
          (cond ((##fx= _g186955_ 1)
                 (apply gx#local-context:::init!__0 _g186954_))
                ((##fx= _g186955_ 2)
                 (apply gx#local-context:::init!__% _g186954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g186954_))))))
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
      (lambda _%$args186592%_
        (apply make-instance gx#binding::t _%$args186592%_)))
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
      (lambda (_%self186575%_ _%id186576%_ _%key186577%_ _%phi186578%_)
        (let ((_%self186581%_ _%self186575%_))
          (##unchecked-structure-set! _%self186581%_ _%id186576%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self186581%_ _%key186577%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self186581%_
           _%phi186578%_
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
      (lambda _%$args186450%_
        (apply make-instance gx#runtime-binding::t _%$args186450%_)))
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
      (lambda _%$args186447%_
        (apply make-instance gx#local-binding::t _%$args186447%_)))
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
      (lambda _%$args186444%_
        (apply make-instance gx#top-binding::t _%$args186444%_)))
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
      (lambda _%$args186441%_
        (apply make-instance gx#module-binding::t _%$args186441%_)))
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
      (lambda _%$args186438%_
        (apply make-instance gx#extern-binding::t _%$args186438%_)))
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
      (lambda (_%self186054%_
               _%id186055%_
               _%key186056%_
               _%phi186057%_
               _%ctx186058%_)
        (let ((_%self186061%_ _%self186054%_))
          (gx#binding:::init!
           _%self186061%_
           _%id186055%_
           _%key186056%_
           _%phi186057%_)
          (##unchecked-structure-set!
           _%self186061%_
           _%ctx186058%_
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
      (lambda _%$args185807%_
        (apply make-instance gx#syntax-binding::t _%$args185807%_)))
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
      (lambda _%$args185804%_
        (apply make-instance gx#import-binding::t _%$args185804%_)))
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
      (lambda _%$args185801%_
        (apply make-instance gx#alias-binding::t _%$args185801%_)))
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
      (lambda (_%self185783%_
               _%id185784%_
               _%key185785%_
               _%phi185786%_
               _%e185787%_)
        (let ((_%self185790%_ _%self185783%_))
          (gx#binding:::init!
           _%self185790%_
           _%id185784%_
           _%key185785%_
           _%phi185786%_)
          (##unchecked-structure-set! _%self185790%_ _%e185787%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self185641%_
               _%id185642%_
               _%key185643%_
               _%phi185644%_
               _%e185645%_
               _%ctx185646%_
               _%weak?185647%_)
        (let ((_%self185650%_ _%self185641%_))
          (gx#binding:::init!
           _%self185650%_
           _%id185642%_
           _%key185643%_
           _%phi185644%_)
          (##unchecked-structure-set! _%self185650%_ _%e185645%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self185650%_ _%ctx185646%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self185650%_
           _%weak?185647%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self185501%_
               _%id185502%_
               _%key185503%_
               _%phi185504%_
               _%e185505%_)
        (let ((_%self185508%_ _%self185501%_))
          (gx#binding:::init!
           _%self185508%_
           _%id185502%_
           _%key185503%_
           _%phi185504%_)
          (##unchecked-structure-set! _%self185508%_ _%e185505%_ '5 '#f '#f))))
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
      (lambda _%$args185376%_
        (apply make-instance gx#expander::t _%$args185376%_)))
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
      (lambda _%$args185373%_
        (apply make-instance gx#core-expander::t _%$args185373%_)))
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
      (lambda _%$args185370%_
        (apply make-instance gx#expression-form::t _%$args185370%_)))
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
      (lambda _%$args185367%_
        (apply make-instance gx#special-form::t _%$args185367%_)))
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
      (lambda _%$args185364%_
        (apply make-instance gx#definition-form::t _%$args185364%_)))
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
      (lambda _%$args185361%_
        (apply make-instance gx#top-special-form::t _%$args185361%_)))
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
      (lambda _%$args185358%_
        (apply make-instance gx#module-special-form::t _%$args185358%_)))
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
      (lambda _%$args185355%_
        (apply make-instance gx#feature-expander::t _%$args185355%_)))
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
      (lambda _%$args185352%_
        (apply make-instance gx#private-feature-expander::t _%$args185352%_)))
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
      (lambda _%$args185349%_
        (apply make-instance gx#reserved-expander::t _%$args185349%_)))
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
      (lambda _%$args185346%_
        (apply make-instance gx#macro-expander::t _%$args185346%_)))
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
      (lambda _%$args185343%_
        (apply make-instance gx#rename-macro-expander::t _%$args185343%_)))
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
      (lambda _%$args185340%_
        (apply make-instance gx#user-expander::t _%$args185340%_)))
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
      (lambda _%$args185337%_
        (apply make-instance gx#expander-mark::t _%$args185337%_)))
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
      (lambda (_%ctx185321%_
               _%message185322%_
               _%stx185323%_
               .
               _%details185324%_)
        (let ((_%ctx185335%_
               (let ((_%$e185326%_ _%ctx185321%_))
                 (if _%$e185326%_
                     _%$e185326%_
                     (let ((_%$e185329%_ (gx#core-context-top__0)))
                       (if _%$e185329%_
                           (list 'expand
                                 (##structure-ref
                                  _%$e185329%_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                           '#f))))))
          (raise (make-syntax-error
                  _%message185322%_
                  (cons _%stx185323%_ _%details185324%_)
                  _%ctx185335%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx185308%_ _%expression?185309%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx185308%_ _%expression?185309%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx185314%_)
        (let ((_%expression?185316%_ '#f))
          (gx#eval-syntax__% _%stx185314%_ _%expression?185316%_))))
    (define gx#eval-syntax
      (lambda _g186956_
        (let ((_g186957_ (##length _g186956_)))
          (cond ((##fx= _g186957_ 1) (apply gx#eval-syntax__0 _g186956_))
                ((##fx= _g186957_ 2) (apply gx#eval-syntax__% _g186956_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g186956_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx185293%_ _%expression?185294%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx185293%_ _%expression?185294%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx185300%_)
        (let ((_%expression?185302%_ '#f))
          (gx#eval-syntax+1__% _%stx185300%_ _%expression?185302%_))))
    (define gx#eval-syntax+1
      (lambda _g186958_
        (let ((_g186959_ (##length _g186958_)))
          (cond ((##fx= _g186959_ 1) (apply gx#eval-syntax+1__0 _g186958_))
                ((##fx= _g186959_ 2) (apply gx#eval-syntax+1__% _g186958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g186958_))))))
    (define gx#eval-expression+1
      (lambda (_%stx185290%_) (gx#eval-syntax+1__% _%stx185290%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx185288%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx185288%_))))
    (define gx#core-expand__%
      (lambda (_%stx185275%_ _%expression?185276%_)
        (if _%expression?185276%_
            (gx#core-expand-expression _%stx185275%_)
            (gx#core-expand-top _%stx185275%_))))
    (define gx#core-expand__0
      (lambda (_%stx185281%_)
        (let ((_%expression?185283%_ '#f))
          (gx#core-expand__% _%stx185281%_ _%expression?185283%_))))
    (define gx#core-expand
      (lambda _g186960_
        (let ((_g186961_ (##length _g186960_)))
          (cond ((##fx= _g186961_ 1) (apply gx#core-expand__0 _g186960_))
                ((##fx= _g186961_ 2) (apply gx#core-expand__% _g186960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g186960_))))))
    (define gx#core-expand-top
      (lambda (_%stx185242%_)
        (let* ((_%stx185244%_ (gx#core-expand*__0 _%stx185242%_))
               (_%$%e185245185252%_ _%stx185244%_)
               (_%$%E185247185256%_
                (lambda () (gx#core-expand-expression _%stx185244%_)))
               (_%$%E185246185270%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185245185252%_)
                      (let ((_%$%e185248185260%_
                             (gx#syntax-e _%$%e185245185252%_)))
                        (let ((_%$%hd185249185263%_
                               (##car _%$%e185248185260%_))
                              (_%$%tl185250185265%_
                               (##cdr _%$%e185248185260%_)))
                          (let ((_%form185268%_ _%$%hd185249185263%_))
                            (if (gx#core-bound-identifier?__0 _%form185268%_)
                                _%stx185244%_
                                (_%$%E185247185256%_)))))
                      (_%$%E185247185256%_)))))
          (_%$%E185246185270%_))))
    (define gx#core-expand-expression
      (lambda (_%stx185174%_)
        (letrec ((_%sealed-expression?185176%_
                  (lambda (_%hd185212%_)
                    (if (gx#sealed-syntax? _%hd185212%_)
                        (let* ((_%$%e185213185220%_ _%hd185212%_)
                               (_%$%E185215185224%_ (lambda () '#f))
                               (_%$%E185214185238%_
                                (lambda ()
                                  (if (gx#stx-pair? _%$%e185213185220%_)
                                      (let ((_%$%e185216185228%_
                                             (gx#syntax-e
                                              _%$%e185213185220%_)))
                                        (let ((_%$%hd185217185231%_
                                               (##car _%$%e185216185228%_))
                                              (_%$%tl185218185233%_
                                               (##cdr _%$%e185216185228%_)))
                                          (let ((_%form185236%_
                                                 _%$%hd185217185231%_))
                                            (gx#core-bound-identifier?__%
                                             _%form185236%_
                                             gx#expression-form-binding?))))
                                      (_%$%E185215185224%_)))))
                          (_%$%E185214185238%_))
                        '#f)))
                 (_%illegal-expression185177%_
                  (lambda (_%hd185209%_ . _%_185210%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx185174%_
                     _%hd185209%_)))
                 (_%expand-e185178%_
                  (lambda (_%form185201%_ _%hd185202%_)
                    (let ((_%bind185204%_
                           (if (##structure-instance-of?
                                _%form185201%_
                                'gx#binding::t)
                               _%form185201%_
                               (gx#resolve-identifier__0 _%form185201%_))))
                      (if (gx#core-expander-binding? _%bind185204%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind185204%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd185202%_
                            (gx#stx-source _%stx185174%_)))
                          (if (##structure-direct-instance-of?
                               _%bind185204%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind185204%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd185202%_
                                 (gx#stx-source _%stx185174%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx185174%_
                               _%form185201%_)))))))
          (let ((_%hd185180%_ (gx#core-expand-head _%stx185174%_)))
            (if (_%sealed-expression?185176%_ _%hd185180%_)
                _%hd185180%_
                (if (gx#stx-pair? _%hd185180%_)
                    (let* ((_%form185184%_ (gx#stx-car _%hd185180%_))
                           (_%bind185186%_
                            (if (gx#identifier? _%form185184%_)
                                (gx#resolve-identifier__0 _%form185184%_)
                                '#f)))
                      (if (or (not _%bind185186%_)
                              (not (gx#core-expander-binding? _%bind185186%_)))
                          (_%expand-e185178%_
                           '%%app
                           (cons '%%app _%hd185180%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind185186%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd185180%_
                               _%illegal-expression185177%_)
                              (if (gx#expression-form-binding? _%bind185186%_)
                                  (_%expand-e185178%_
                                   _%bind185186%_
                                   _%hd185180%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind185186%_)
                                      (gx#core-expand-expression
                                       (_%expand-e185178%_
                                        _%bind185186%_
                                        _%hd185180%_))
                                      (_%illegal-expression185177%_
                                       _%hd185180%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd185180%_)
                        (_%illegal-expression185177%_ _%hd185180%_)
                        (if (gx#identifier? _%hd185180%_)
                            (_%expand-e185178%_
                             '%%ref
                             (cons '%%ref (cons _%hd185180%_ '())))
                            (if (gx#stx-datum? _%hd185180%_)
                                (_%expand-e185178%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd185180%_ '())))
                                (_%illegal-expression185177%_
                                 _%hd185180%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx185169%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx185172%_ (gx#core-expand-expression _%stx185169%_)))
             (values _%stx185172%_ (gx#eval-syntax* _%stx185172%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx185150%_ _%stop?185151%_)
        (let _%lp185153%_ ((_%stx185155%_ _%stx185150%_))
          (if (_%stop?185151%_ _%stx185155%_)
              _%stx185155%_
              (let ((_%rstx185157%_ (gx#core-expand1 _%stx185155%_)))
                (if (eq? _%stx185155%_ _%rstx185157%_)
                    _%stx185155%_
                    (_%lp185153%_ _%rstx185157%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx185162%_)
        (let ((_%stop?185164%_ false))
          (gx#core-expand*__% _%stx185162%_ _%stop?185164%_))))
    (define gx#core-expand*
      (lambda _g186962_
        (let ((_g186963_ (##length _g186962_)))
          (cond ((##fx= _g186963_ 1) (apply gx#core-expand*__0 _g186962_))
                ((##fx= _g186963_ 2) (apply gx#core-expand*__% _g186962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g186962_))))))
    (define gx#core-expand1
      (lambda (_%stx185102%_)
        (letrec ((_%step185104%_
                  (lambda (_%hd185141%_)
                    (let ((_%bind185143%_
                           (gx#resolve-identifier__0 _%hd185141%_)))
                      (if (##structure-instance-of?
                           _%bind185143%_
                           'gx#runtime-binding::t)
                          _%stx185102%_
                          (if (##structure-direct-instance-of?
                               _%bind185143%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind185143%_
                                '5
                                '#f
                                '#f)
                               _%stx185102%_)
                              (if (not _%bind185143%_)
                                  _%stx185102%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx185102%_))))))))
          (let* ((_%$%e185105185113%_ _%stx185102%_)
                 (_%$%E185111185117%_ (lambda () _%stx185102%_))
                 (_%$%E185107185123%_
                  (lambda ()
                    (let ((_%hd185121%_ _%$%e185105185113%_))
                      (if (gx#identifier? _%hd185121%_)
                          (_%step185104%_ _%hd185121%_)
                          (_%$%E185111185117%_)))))
                 (_%$%E185106185137%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185105185113%_)
                        (let ((_%$%e185108185127%_
                               (gx#syntax-e _%$%e185105185113%_)))
                          (let ((_%$%hd185109185130%_
                                 (##car _%$%e185108185127%_))
                                (_%$%tl185110185132%_
                                 (##cdr _%$%e185108185127%_)))
                            (let ((_%hd185135%_ _%$%hd185109185130%_))
                              (if (gx#identifier? _%hd185135%_)
                                  (_%step185104%_ _%hd185135%_)
                                  (_%$%E185107185123%_)))))
                        (_%$%E185107185123%_)))))
            (_%$%E185106185137%_)))))
    (define gx#core-expand-head
      (lambda (_%stx185068%_)
        (letrec ((_%stop?185070%_
                  (lambda (_%stx185072%_)
                    (let* ((_%$%e185073185080%_ _%stx185072%_)
                           (_%$%E185075185084%_ (lambda () '#f))
                           (_%$%E185074185098%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185073185080%_)
                                  (let ((_%$%e185076185088%_
                                         (gx#syntax-e _%$%e185073185080%_)))
                                    (let ((_%$%hd185077185091%_
                                           (##car _%$%e185076185088%_))
                                          (_%$%tl185078185093%_
                                           (##cdr _%$%e185076185088%_)))
                                      (let ((_%hd185096%_
                                             _%$%hd185077185091%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd185096%_))))
                                  (_%$%E185075185084%_)))))
                      (_%$%E185074185098%_)))))
          (gx#core-expand*__% _%stx185068%_ _%stop?185070%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx184874%_
               _%expand-special184875%_
               _%begin-form184876%_
               _%expand-e184877%_)
        (letrec ((_%expand-splice184879%_
                  (lambda (_%hd185042%_
                           _%body185043%_
                           _%rest185044%_
                           _%r185045%_)
                    (if (gx#stx-list? _%body185043%_)
                        (_%K184883%_
                         (gx#stx-foldr cons _%rest185044%_ _%body185043%_)
                         _%r185045%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx184874%_
                         _%hd185042%_))))
                 (_%expand-cond-expand184880%_
                  (lambda (_%hd185038%_ _%rest185039%_ _%r185040%_)
                    (_%K184883%_
                     (cons (gx#core-expand-cond-expand% _%hd185038%_)
                           _%rest185039%_)
                     _%r185040%_)))
                 (_%expand-include184881%_
                  (lambda (_%hd184987%_ _%rest184988%_ _%r184989%_)
                    (let* ((_%$%e184990185000%_ _%hd184987%_)
                           (_%$%E184992185004%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e184990185000%_)))
                           (_%$%E184991185034%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184990185000%_)
                                  (let ((_%$%e184993185008%_
                                         (gx#syntax-e _%$%e184990185000%_)))
                                    (let ((_%$%hd184994185011%_
                                           (##car _%$%e184993185008%_))
                                          (_%$%tl184995185013%_
                                           (##cdr _%$%e184993185008%_)))
                                      (if (gx#stx-pair? _%$%tl184995185013%_)
                                          (let ((_%$%e184996185016%_
                                                 (gx#syntax-e
                                                  _%$%tl184995185013%_)))
                                            (let ((_%$%hd184997185019%_
                                                   (##car _%$%e184996185016%_))
                                                  (_%$%tl184998185021%_
                                                   (##cdr _%$%e184996185016%_)))
                                              (let ((_%path185024%_
                                                     _%$%hd184997185019%_))
                                                (if (gx#stx-null?
                                                     _%$%tl184998185021%_)
                                                    (if (gx#stx-string?
                                                         _%path185024%_)
                                                        (let* ((_%rpath185026%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path185024%_
                         (gx#stx-source _%hd184987%_)))
                       (_%block185028%_
                        (gx#core-expand-include%__%
                         _%hd184987%_
                         _%rpath185026%_))
                       (_%rbody185031%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block185028%_
                            _%expand-special184875%_
                            '#f
                            _%expand-e184877%_))
                         gx#current-expander-path
                         (cons _%rpath185026%_ (gx#current-expander-path)))))
                  (_%K184883%_
                   _%rest184988%_
                   (append _%rbody185031%_ _%r184989%_)))
                (_%$%E184992185004%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E184992185004%_)))))
                                          (_%$%E184992185004%_))))
                                  (_%$%E184992185004%_)))))
                      (_%$%E184991185034%_))))
                 (_%expand-expression184882%_
                  (lambda (_%hd184983%_ _%rest184984%_ _%r184985%_)
                    (_%K184883%_
                     _%rest184984%_
                     (cons (_%expand-e184877%_ _%hd184983%_) _%r184985%_))))
                 (_%K184883%_
                  (lambda (_%rest184913%_ _%r184914%_)
                    (let* ((_%$%e184915184922%_ _%rest184913%_)
                           (_%$%E184917184926%_
                            (lambda ()
                              (if _%begin-form184876%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form184876%_
                                    (reverse _%r184914%_))
                                   (gx#stx-source _%stx184874%_))
                                  _%r184914%_)))
                           (_%$%E184916184979%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184915184922%_)
                                  (let ((_%$%e184918184930%_
                                         (gx#syntax-e _%$%e184915184922%_)))
                                    (let ((_%$%hd184919184933%_
                                           (##car _%$%e184918184930%_))
                                          (_%$%tl184920184935%_
                                           (##cdr _%$%e184918184930%_)))
                                      (let* ((_%hd184938%_
                                              _%$%hd184919184933%_)
                                             (_%rest184940%_
                                              _%$%tl184920184935%_)
                                             (_%hd184942%_
                                              (gx#core-expand-head
                                               _%hd184938%_))
                                             (_%$%e184943184950%_ _%hd184942%_)
                                             (_%$%E184945184954%_
                                              (lambda ()
                                                (_%expand-expression184882%_
                                                 _%hd184942%_
                                                 _%rest184940%_
                                                 _%r184914%_)))
                                             (_%$%E184944184975%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e184943184950%_)
                                                    (let ((_%$%e184946184958%_
                                                           (gx#syntax-e
                                                            _%$%e184943184950%_)))
                                                      (let ((_%$%hd184947184961%_
                                                             (##car _%$%e184946184958%_))
                                                            (_%$%tl184948184963%_
                                                             (##cdr _%$%e184946184958%_)))
                                                        (let* ((_%form184966%_
                                                                _%$%hd184947184961%_)
                                                               (_%body184968%_
                                                                _%$%tl184948184963%_)
                                                               (_%bind184970%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form184966%_)
                            (gx#resolve-identifier__0 _%form184966%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind184970%_)
                      (let ((_%$e184972%_
                             (##unchecked-structure-ref
                              _%bind184970%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e184972%_)
                            (_%expand-splice184879%_
                             _%hd184942%_
                             _%body184968%_
                             _%rest184940%_
                             _%r184914%_)
                            (if (eq? '%#cond-expand _%$e184972%_)
                                (_%expand-cond-expand184880%_
                                 _%hd184942%_
                                 _%rest184940%_
                                 _%r184914%_)
                                (if (eq? '%#include _%$e184972%_)
                                    (_%expand-include184881%_
                                     _%hd184942%_
                                     _%rest184940%_
                                     _%r184914%_)
                                    (_%expand-special184875%_
                                     _%hd184942%_
                                     _%K184883%_
                                     _%rest184940%_
                                     _%r184914%_)))))
                      (_%expand-expression184882%_
                       _%hd184942%_
                       _%rest184940%_
                       _%r184914%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E184945184954%_)))))
                                        (_%$%E184944184975%_))))
                                  (_%$%E184917184926%_)))))
                      (_%$%E184916184979%_)))))
          (let* ((_%$%e184884184891%_ _%stx184874%_)
                 (_%$%E184886184895%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e184884184891%_)))
                 (_%$%E184885184909%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e184884184891%_)
                        (let ((_%$%e184887184899%_
                               (gx#syntax-e _%$%e184884184891%_)))
                          (let ((_%$%hd184888184902%_
                                 (##car _%$%e184887184899%_))
                                (_%$%tl184889184904%_
                                 (##cdr _%$%e184887184899%_)))
                            (let ((_%body184907%_ _%$%tl184889184904%_))
                              (if (gx#stx-list? _%body184907%_)
                                  (_%K184883%_ _%body184907%_ '())
                                  (_%$%E184886184895%_)))))
                        (_%$%E184886184895%_)))))
            (_%$%E184885184909%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx185050%_ _%expand-special185051%_)
        (let* ((_%begin-form185053%_ '%#begin)
               (_%expand-e185055%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx185050%_
           _%expand-special185051%_
           _%begin-form185053%_
           _%expand-e185055%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx185057%_ _%expand-special185058%_ _%begin-form185059%_)
        (let ((_%expand-e185061%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx185057%_
           _%expand-special185058%_
           _%begin-form185059%_
           _%expand-e185061%_))))
    (define gx#core-expand-block
      (lambda _g186964_
        (let ((_g186965_ (##length _g186964_)))
          (cond ((##fx= _g186965_ 2) (apply gx#core-expand-block__0 _g186964_))
                ((##fx= _g186965_ 3) (apply gx#core-expand-block__1 _g186964_))
                ((##fx= _g186965_ 4) (apply gx#core-expand-block__% _g186964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g186964_))))))
    (define gx#core-expand-block*
      (lambda (_%stx184822%_ _%expand-special184823%_)
        (let* ((_%$%g184824184835%_
                (gx#core-expand-block__1
                 _%stx184822%_
                 _%expand-special184823%_
                 '#f))
               (_%$%E184828184839%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g184824184835%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%$%K184833184870%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx184822%_)))
                (_%$%K184830184856%_ (lambda (_%expr184854%_) _%expr184854%_))
                (_%$%K184829184845%_
                 (lambda (_%body184843%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body184843%_))
                    (gx#stx-source _%stx184822%_)))))
            (let ((_%$%try-match184826184866%_
                   (lambda ()
                     (if (pair? _%$%g184824184835%_)
                         (let ((_%$%tl184832184861%_
                                (##cdr _%$%g184824184835%_))
                               (_%$%hd184831184859%_
                                (##car _%$%g184824184835%_)))
                           (if (null? _%$%tl184832184861%_)
                               (let ((_%expr184864%_ _%$%hd184831184859%_))
                                 (_%$%K184830184856%_ _%expr184864%_))
                               (let ((_%body184848%_ _%$%g184824184835%_))
                                 (_%$%K184829184845%_ _%body184848%_))))
                         (let ((_%body184848%_ _%$%g184824184835%_))
                           (_%$%K184829184845%_ _%body184848%_))))))
              (if (null? _%$%g184824184835%_)
                  (_%$%K184833184870%_)
                  (_%$%try-match184826184866%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx184648%_)
        (letrec ((_%satisfied?184650%_
                  (lambda (_%condition184751%_)
                    (let* ((_%$%e184752184767%_ _%condition184751%_)
                           (_%$%E184762184771%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e184752184767%_)))
                           (_%$%E184755184790%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184752184767%_)
                                  (let ((_%$%e184763184775%_
                                         (gx#syntax-e _%$%e184752184767%_)))
                                    (let ((_%$%hd184764184778%_
                                           (##car _%$%e184763184775%_))
                                          (_%$%tl184765184780%_
                                           (##cdr _%$%e184763184775%_)))
                                      (let* ((_%combinator184783%_
                                              _%$%hd184764184778%_)
                                             (_%body184785%_
                                              _%$%tl184765184780%_))
                                        (if (gx#stx-list? _%body184785%_)
                                            (let ((_%$e184787%_
                                                   (gx#stx-e
                                                    _%combinator184783%_)))
                                              (if (eq? 'not _%$e184787%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?184650%_
                                                        _%body184785%_))
                                                  (if (eq? 'and _%$e184787%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?184650%_
                                                       _%body184785%_)
                                                      (if (eq? 'or
                                                               _%$e184787%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?184650%_
                                                           _%body184785%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e184787%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body184785%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx184648%_
                       _%combinator184783%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E184762184771%_)))))
                                  (_%$%E184762184771%_))))
                           (_%$%E184754184812%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184752184767%_)
                                  (let ((_%$%e184756184794%_
                                         (gx#syntax-e _%$%e184752184767%_)))
                                    (let ((_%$%hd184757184797%_
                                           (##car _%$%e184756184794%_))
                                          (_%$%tl184758184799%_
                                           (##cdr _%$%e184756184794%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd184757184797%_)
                                               (gx#core-identifier=?
                                                _%$%hd184757184797%_
                                                'unquote))
                                          (if (gx#stx-pair?
                                               _%$%tl184758184799%_)
                                              (let ((_%$%e184759184802%_
                                                     (gx#syntax-e
                                                      _%$%tl184758184799%_)))
                                                (let ((_%$%hd184760184805%_
                                                       (##car _%$%e184759184802%_))
                                                      (_%$%tl184761184807%_
                                                       (##cdr _%$%e184759184802%_)))
                                                  (let ((_%expr184810%_
                                                         _%$%hd184760184805%_))
                                                    (if (gx#stx-null?
                                                         _%$%tl184761184807%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr184810%_)
                                                        (_%$%E184755184790%_)))))
                                              (_%$%E184755184790%_))
                                          (_%$%E184755184790%_))))
                                  (_%$%E184755184790%_))))
                           (_%$%E184753184818%_
                            (lambda ()
                              (let ((_%id184816%_ _%$%e184752184767%_))
                                (if (gx#identifier? _%id184816%_)
                                    (gx#core-bound-identifier?__%
                                     _%id184816%_
                                     gx#feature-binding?)
                                    (_%$%E184754184812%_))))))
                      (_%$%E184753184818%_))))
                 (_%loop184651%_
                  (lambda (_%rest184681%_)
                    (let* ((_%$%e184682184690%_ _%rest184681%_)
                           (_%$%E184688184694%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e184682184690%_)))
                           (_%$%E184684184698%_
                            (lambda ()
                              (if (gx#stx-null? _%$%e184682184690%_)
                                  '()
                                  (_%$%E184688184694%_))))
                           (_%$%E184683184747%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184682184690%_)
                                  (let ((_%$%e184685184702%_
                                         (gx#syntax-e _%$%e184682184690%_)))
                                    (let ((_%$%hd184686184705%_
                                           (##car _%$%e184685184702%_))
                                          (_%$%tl184687184707%_
                                           (##cdr _%$%e184685184702%_)))
                                      (let* ((_%hd184710%_
                                              _%$%hd184686184705%_)
                                             (_%rest184712%_
                                              _%$%tl184687184707%_)
                                             (_%$%e184713184720%_ _%hd184710%_)
                                             (_%$%E184715184724%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%$%e184713184720%_)))
                                             (_%$%E184714184743%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e184713184720%_)
                                                    (let ((_%$%e184716184728%_
                                                           (gx#syntax-e
                                                            _%$%e184713184720%_)))
                                                      (let ((_%$%hd184717184731%_
                                                             (##car _%$%e184716184728%_))
                                                            (_%$%tl184718184733%_
                                                             (##cdr _%$%e184716184728%_)))
                                                        (let* ((_%condition184736%_
                                                                _%$%hd184717184731%_)
                                                               (_%body184738%_
                                                                _%$%tl184718184733%_))
                                                          (if (gx#stx-eq?
                                                               _%condition184736%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest184712%_)
                          _%body184738%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx184648%_
                           _%hd184710%_))
                      (if (_%satisfied?184650%_ _%condition184736%_)
                          _%body184738%_
                          (_%loop184651%_ _%rest184712%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E184715184724%_)))))
                                        (_%$%E184714184743%_))))
                                  (_%$%E184684184698%_)))))
                      (_%$%E184683184747%_)))))
          (let* ((_%$%e184652184659%_ _%stx184648%_)
                 (_%$%E184654184663%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e184652184659%_)))
                 (_%$%E184653184677%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e184652184659%_)
                        (let ((_%$%e184655184667%_
                               (gx#syntax-e _%$%e184652184659%_)))
                          (let ((_%$%hd184656184670%_
                                 (##car _%$%e184655184667%_))
                                (_%$%tl184657184672%_
                                 (##cdr _%$%e184655184667%_)))
                            (let ((_%clauses184675%_ _%$%tl184657184672%_))
                              (if (gx#stx-list? _%clauses184675%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop184651%_ _%clauses184675%_))
                                  (_%$%E184654184663%_)))))
                        (_%$%E184654184663%_)))))
            (_%$%E184653184677%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx184591%_ _%rpath184592%_)
        (let* ((_%$%e184593184603%_ _%stx184591%_)
               (_%$%E184595184607%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184593184603%_)))
               (_%$%E184594184634%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184593184603%_)
                      (let ((_%$%e184596184611%_
                             (gx#syntax-e _%$%e184593184603%_)))
                        (let ((_%$%hd184597184614%_
                               (##car _%$%e184596184611%_))
                              (_%$%tl184598184616%_
                               (##cdr _%$%e184596184611%_)))
                          (if (gx#stx-pair? _%$%tl184598184616%_)
                              (let ((_%$%e184599184619%_
                                     (gx#syntax-e _%$%tl184598184616%_)))
                                (let ((_%$%hd184600184622%_
                                       (##car _%$%e184599184619%_))
                                      (_%$%tl184601184624%_
                                       (##cdr _%$%e184599184619%_)))
                                  (let ((_%path184627%_ _%$%hd184600184622%_))
                                    (if (gx#stx-null? _%$%tl184601184624%_)
                                        (if (gx#stx-string? _%path184627%_)
                                            (let ((_%rpath184632%_
                                                   (let ((_%$e184629%_
                                                          _%rpath184592%_))
                                                     (if _%$e184629%_
                                                         _%$e184629%_
                                                         (gx#core-resolve-path__%
                                                          _%path184627%_
                                                          (gx#stx-source
                                                           _%stx184591%_))))))
                                              (if (member _%rpath184632%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx184591%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath184632%_))
                                                    (gx#stx-source
                                                     _%stx184591%_)))))
                                            (_%$%E184595184607%_))
                                        (_%$%E184595184607%_)))))
                              (_%$%E184595184607%_))))
                      (_%$%E184595184607%_)))))
          (_%$%E184594184634%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx184641%_)
        (let ((_%rpath184643%_ '#f))
          (gx#core-expand-include%__% _%stx184641%_ _%rpath184643%_))))
    (define gx#core-expand-include%
      (lambda _g186966_
        (let ((_g186967_ (##length _g186966_)))
          (cond ((##fx= _g186967_ 1)
                 (apply gx#core-expand-include%__0 _g186966_))
                ((##fx= _g186967_ 2)
                 (apply gx#core-expand-include%__% _g186966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g186966_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K184557%_ _%stx184558%_ _%method184559%_)
        (if (procedure? _%K184557%_)
            (let ((_%$e184562%_ (gx#stx-source _%stx184558%_)))
              (if _%$e184562%_
                  (gx#stx-wrap-source (_%K184557%_ _%stx184558%_) _%$e184562%_)
                  (_%K184557%_ _%stx184558%_)))
            (let ((_%$e184570%_
                   (bound-method-ref _%K184557%_ _%method184559%_)))
              (if _%$e184570%_
                  (gx#core-apply-expander__%
                   _%$e184570%_
                   _%stx184558%_
                   _%method184559%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx184558%_
                   _%method184559%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K184581%_ _%stx184582%_)
        (let ((_%method184584%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K184581%_
           _%stx184582%_
           _%method184584%_))))
    (define gx#core-apply-expander
      (lambda _g186968_
        (let ((_g186969_ (##length _g186968_)))
          (cond ((##fx= _g186969_ 2)
                 (apply gx#core-apply-expander__0 _g186968_))
                ((##fx= _g186969_ 3)
                 (apply gx#core-apply-expander__% _g186968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g186968_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self184542%_ _%stx184543%_)
        (let ((_%self184546%_ _%self184542%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx184543%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self184385%_ _%stx184386%_)
        (let* ((_%self184389%_ _%self184385%_)
               (_%$%self184398184404%_ _%self184389%_)
               (_%$%E184400184407%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self184398184404%_
                         '((macro-expander K)))
                  '#!void))
               (_%$%K184401184412%_
                (lambda (_%K184410%_)
                  (gx#core-apply-expander__0 _%K184410%_ _%stx184386%_)))
               (_%$%e184402184415%_
                (##unchecked-structure-ref _%$%self184398184404%_ '1 '#f '#f))
               (_%K184418%_ _%$%e184402184415%_))
          (_%$%K184401184412%_ _%K184418%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self184228%_ _%stx184229%_)
        (let ((_%self184232%_ _%self184228%_))
          (if (gx#sealed-syntax? _%stx184229%_)
              _%stx184229%_
              (let* ((_%$%self184241184247%_ _%self184232%_)
                     (_%$%E184243184250%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%self184241184247%_
                               '((core-expander K)))
                        '#!void))
                     (_%$%K184244184255%_
                      (lambda (_%K184253%_)
                        (gx#core-apply-expander__0 _%K184253%_ _%stx184229%_)))
                     (_%$%e184245184258%_
                      (##unchecked-structure-ref
                       _%$%self184241184247%_
                       '1
                       '#f
                       '#f))
                     (_%K184261%_ _%$%e184245184258%_))
                (_%$%K184244184255%_ _%K184261%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self184078%_ _%stx184079%_ _%top?184080%_)
        (let ((_%self184083%_ _%self184078%_))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin
                (displayln '"@expand " (gx#syntax->datum _%stx184079%_))
                (force-output))
              '#!void)
          (if (_%top?184080%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self184083%_
               _%stx184079%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx184079%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self184097%_ _%stx184098%_)
        (let ((_%top?184100%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self184097%_
           _%stx184098%_
           _%top?184100%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g186970_
        (let ((_g186971_ (##length _g186970_)))
          (cond ((##fx= _g186971_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g186970_))
                ((##fx= _g186971_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g186970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g186970_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self183941%_ _%stx183942%_)
        (let ((_%self183945%_ _%self183941%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self183945%_
           _%stx183942%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self183756%_ _%stx183757%_)
        (let* ((_%self183760%_ _%self183756%_)
               (_%$%self183769183775%_ _%self183760%_)
               (_%$%E183771183778%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self183769183775%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%$%K183772183811%_
                (lambda (_%id183781%_)
                  (let* ((_%$%e183782183789%_ _%stx183757%_)
                         (_%$%E183784183793%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%$%e183782183789%_)))
                         (_%$%E183783183807%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e183782183789%_)
                                (let ((_%$%e183785183797%_
                                       (gx#syntax-e _%$%e183782183789%_)))
                                  (let ((_%$%hd183786183800%_
                                         (##car _%$%e183785183797%_))
                                        (_%$%tl183787183802%_
                                         (##cdr _%$%e183785183797%_)))
                                    (let ((_%body183805%_
                                           _%$%tl183787183802%_))
                                      (gx#core-cons
                                       _%id183781%_
                                       _%body183805%_))))
                                (_%$%E183784183793%_)))))
                    (_%$%E183783183807%_))))
               (_%$%e183773183814%_
                (##unchecked-structure-ref _%$%self183769183775%_ '1 '#f '#f))
               (_%id183817%_ _%$%e183773183814%_))
          (_%$%K183772183811%_ _%id183817%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self183583%_ _%stx183584%_ _%method183585%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx183584%_))
              (force-output))
            '#!void)
        (let* ((_%$%self183586183594%_ _%self183583%_)
               (_%$%E183588183597%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self183586183594%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%$%K183589183604%_
                (lambda (_%phi183600%_ _%ctx183601%_ _%K183602%_)
                  (gx#core-apply-user-macro
                   _%K183602%_
                   _%stx183584%_
                   _%ctx183601%_
                   _%phi183600%_
                   _%method183585%_))))
          (if (##structure-instance-of?
               _%$%self183586183594%_
               'gx#user-expander::t)
              (let* ((_%$%e183590183607%_
                      (##unchecked-structure-ref
                       _%$%self183586183594%_
                       '1
                       '#f
                       '#f))
                     (_%K183610%_ _%$%e183590183607%_)
                     (_%$%e183591183612%_
                      (##unchecked-structure-ref
                       _%$%self183586183594%_
                       '2
                       '#f
                       '#f))
                     (_%ctx183615%_ _%$%e183591183612%_)
                     (_%$%e183592183617%_
                      (##unchecked-structure-ref
                       _%$%self183586183594%_
                       '3
                       '#f
                       '#f))
                     (_%phi183620%_ _%$%e183592183617%_))
                (_%$%K183589183604%_ _%phi183620%_ _%ctx183615%_ _%K183610%_))
              (_%$%E183588183597%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self183625%_ _%stx183626%_)
        (let ((_%method183628%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self183625%_
           _%stx183626%_
           _%method183628%_))))
    (define gx#core-apply-user-expander
      (lambda _g186972_
        (let ((_g186973_ (##length _g186972_)))
          (cond ((##fx= _g186973_ 2)
                 (apply gx#core-apply-user-expander__0 _g186972_))
                ((##fx= _g186973_ 3)
                 (apply gx#core-apply-user-expander__% _g186972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g186972_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K183573%_
               _%stx183574%_
               _%ctx183575%_
               _%phi183576%_
               _%method183577%_)
        (let ((_%mark183579%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx183575%_
                _%phi183576%_
                _%stx183574%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K183573%_
               (gx#stx-apply-mark _%stx183574%_ _%mark183579%_)
               _%method183577%_)
              _%mark183579%_))
           gx#current-expander-marks
           (cons _%mark183579%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx183421%_ _%phi183422%_ _%ctx183423%_)
        (let _%lp183425%_ ((_%bind183427%_
                            (gx#core-resolve-identifier__%
                             _%stx183421%_
                             _%phi183422%_
                             _%ctx183423%_)))
          (if (##structure-direct-instance-of?
               _%bind183427%_
               'gx#import-binding::t)
              (_%lp183425%_
               (##unchecked-structure-ref _%bind183427%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind183427%_
                   'gx#alias-binding::t)
                  (_%lp183425%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind183427%_ '5 '#f '#f)
                    _%phi183422%_
                    _%ctx183423%_))
                  _%bind183427%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx183435%_)
        (let* ((_%phi183437%_ (gx#current-expander-phi))
               (_%ctx183439%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx183435%_
           _%phi183437%_
           _%ctx183439%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx183441%_ _%phi183442%_)
        (let ((_%ctx183444%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx183441%_
           _%phi183442%_
           _%ctx183444%_))))
    (define gx#resolve-identifier
      (lambda _g186974_
        (let ((_g186975_ (##length _g186974_)))
          (cond ((##fx= _g186975_ 1)
                 (apply gx#resolve-identifier__0 _g186974_))
                ((##fx= _g186975_ 2)
                 (apply gx#resolve-identifier__1 _g186974_))
                ((##fx= _g186975_ 3)
                 (apply gx#resolve-identifier__% _g186974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g186974_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx183376%_
               _%val183377%_
               _%rebind?183378%_
               _%phi183379%_
               _%ctx183380%_)
        (let ((_%rebind?183385%_
               (if (not _%rebind?183378%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?183378%_)
                       _%rebind?183378%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx183376%_)
           _%val183377%_
           _%rebind?183385%_
           _%phi183379%_
           _%ctx183380%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx183390%_ _%val183391%_)
        (let* ((_%rebind?183393%_ '#f)
               (_%phi183395%_ (gx#current-expander-phi))
               (_%ctx183397%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx183390%_
           _%val183391%_
           _%rebind?183393%_
           _%phi183395%_
           _%ctx183397%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx183399%_ _%val183400%_ _%rebind?183401%_)
        (let* ((_%phi183403%_ (gx#current-expander-phi))
               (_%ctx183405%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx183399%_
           _%val183400%_
           _%rebind?183401%_
           _%phi183403%_
           _%ctx183405%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx183407%_ _%val183408%_ _%rebind?183409%_ _%phi183410%_)
        (let ((_%ctx183412%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx183407%_
           _%val183408%_
           _%rebind?183409%_
           _%phi183410%_
           _%ctx183412%_))))
    (define gx#bind-identifier!
      (lambda _g186976_
        (let ((_g186977_ (##length _g186976_)))
          (cond ((##fx= _g186977_ 2) (apply gx#bind-identifier!__0 _g186976_))
                ((##fx= _g186977_ 3) (apply gx#bind-identifier!__1 _g186976_))
                ((##fx= _g186977_ 4) (apply gx#bind-identifier!__2 _g186976_))
                ((##fx= _g186977_ 5) (apply gx#bind-identifier!__% _g186976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g186976_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx183342%_ _%phi183343%_ _%ctx183344%_)
        (let _%lp183346%_ ((_%e183348%_ _%stx183342%_)
                           (_%marks183349%_ (gx#current-expander-marks)))
          (if (symbol? _%e183348%_)
              (gx#core-resolve-binding
               _%e183348%_
               _%phi183343%_
               _%phi183343%_
               _%ctx183344%_
               (reverse _%marks183349%_))
              (if (gx#identifier-quote? _%e183348%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e183348%_ '1 '#f '#f)
                   _%phi183343%_
                   '0
                   (##unchecked-structure-ref _%e183348%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e183348%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e183348%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e183348%_ '1 '#f '#f)
                       _%phi183343%_
                       _%phi183343%_
                       _%ctx183344%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e183348%_ '3 '#f '#f)
                        _%marks183349%_))
                      (if (##structure-direct-instance-of?
                           _%e183348%_
                           'gx#syntax-wrap::t)
                          (_%lp183346%_
                           (##unchecked-structure-ref _%e183348%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e183348%_ '3 '#f '#f)
                            _%marks183349%_))
                          (if (##structure-instance-of?
                               _%e183348%_
                               'gerbil#AST::t)
                              (_%lp183346%_
                               (##unchecked-structure-ref
                                _%e183348%_
                                '1
                                '#f
                                '#f)
                               _%marks183349%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx183342%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx183360%_)
        (let* ((_%phi183362%_ (gx#current-expander-phi))
               (_%ctx183364%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx183360%_
           _%phi183362%_
           _%ctx183364%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx183366%_ _%phi183367%_)
        (let ((_%ctx183369%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx183366%_
           _%phi183367%_
           _%ctx183369%_))))
    (define gx#core-resolve-identifier
      (lambda _g186978_
        (let ((_g186979_ (##length _g186978_)))
          (cond ((##fx= _g186979_ 1)
                 (apply gx#core-resolve-identifier__0 _g186978_))
                ((##fx= _g186979_ 2)
                 (apply gx#core-resolve-identifier__1 _g186978_))
                ((##fx= _g186979_ 3)
                 (apply gx#core-resolve-identifier__% _g186978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g186978_))))))
    (define gx#core-resolve-binding
      (lambda (_%id183253%_
               _%phi183254%_
               _%src-phi183255%_
               _%ctx183256%_
               _%marks183257%_)
        (letrec ((_%resolve183259%_
                  (lambda (_%ctx183326%_ _%src-phi183327%_ _%key183328%_)
                    (let _%lp183330%_ ((_%ctx183332%_
                                        (gx#core-context-shift
                                         _%ctx183326%_
                                         _%phi183254%_))
                                       (_%dphi183333%_
                                        (fx- _%phi183254%_ _%src-phi183327%_)))
                      (let ((_%$e183335%_
                             (gx#core-context-resolve
                              _%ctx183332%_
                              _%key183328%_)))
                        (if _%$e183335%_
                            _%$e183335%_
                            (if (fxzero? _%dphi183333%_)
                                '#f
                                (if (fxpositive? _%dphi183333%_)
                                    (_%lp183330%_
                                     (gx#core-context-shift _%ctx183332%_ '-1)
                                     (##fx- _%dphi183333%_ '1))
                                    (_%lp183330%_
                                     (gx#core-context-shift _%ctx183332%_ '1)
                                     (##fx+ _%dphi183333%_ '1))))))))))
          (let _%lp183261%_ ((_%ctx183263%_ _%ctx183256%_)
                             (_%src-phi183264%_ _%src-phi183255%_)
                             (_%rest183265%_ _%marks183257%_))
            (let* ((_%$%rest183266183274%_ _%rest183265%_)
                   (_%$%else183268183282%_
                    (lambda ()
                      (_%resolve183259%_
                       _%ctx183263%_
                       _%src-phi183264%_
                       _%id183253%_)))
                   (_%$%K183270183314%_
                    (lambda (_%rest183285%_ _%hd183286%_)
                      (let* ((_%$%hd183287183293%_ _%hd183286%_)
                             (_%$%E183289183296%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%hd183287183293%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%$%K183290183306%_
                              (lambda (_%subst183299%_)
                                (let ((_%$e183303%_
                                       (let ((_%key183301%_
                                              (if _%subst183299%_
                                                  (hash-get
                                                   _%subst183299%_
                                                   _%id183253%_)
                                                  '#f)))
                                         (if _%key183301%_
                                             (_%resolve183259%_
                                              _%ctx183263%_
                                              _%src-phi183264%_
                                              _%key183301%_)
                                             '#f))))
                                  (if _%$e183303%_
                                      _%$e183303%_
                                      (_%lp183261%_
                                       (##unchecked-structure-ref
                                        _%hd183286%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd183286%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest183285%_))))))
                        (if (##structure-instance-of?
                             _%$%hd183287183293%_
                             'gx#expander-mark::t)
                            (let* ((_%$%e183291183309%_
                                    (##unchecked-structure-ref
                                     _%$%hd183287183293%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst183312%_ _%$%e183291183309%_))
                              (_%$%K183290183306%_ _%subst183312%_))
                            (_%$%E183289183296%_))))))
              (if (pair? _%$%rest183266183274%_)
                  (let ((_%$%hd183271183317%_ (##car _%$%rest183266183274%_))
                        (_%$%tl183272183319%_ (##cdr _%$%rest183266183274%_)))
                    (let* ((_%hd183322%_ _%$%hd183271183317%_)
                           (_%rest183324%_ _%$%tl183272183319%_))
                      (_%$%K183270183314%_ _%rest183324%_ _%hd183322%_)))
                  (_%$%else183268183282%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key183124%_
               _%val183125%_
               _%rebind?183126%_
               _%phi183127%_
               _%ctx183128%_)
        (letrec ((_%update-binding183130%_
                  (lambda (_%xval183202%_)
                    (if (or (_%rebind?183126%_
                             _%ctx183128%_
                             _%xval183202%_
                             _%val183125%_)
                            (and (##structure-direct-instance-of?
                                  _%xval183202%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval183202%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val183125%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val183125%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval183202%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val183125%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val183125%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval183202%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val183125%_
                        (if (and (##structure-direct-instance-of?
                                  _%val183125%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val183125%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval183202%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val183125%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval183202%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval183202%_
                            (if (and (##structure-direct-instance-of?
                                      _%val183125%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval183202%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key183124%_
                                 (cons (##unchecked-structure-ref
                                        _%val183125%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val183125%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval183202%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval183202%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval183202%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval183202%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key183124%_
                                 _%val183125%_
                                 _%xval183202%_))))))
                 (_%gensubst183131%_
                  (lambda (_%subst183197%_ _%id183198%_)
                    (let ((_%eid183200%_
                           (gensym (if (uninterned-symbol? _%id183198%_)
                                       '%
                                       _%id183198%_))))
                      (hash-put! _%subst183197%_ _%id183198%_ _%eid183200%_)
                      _%eid183200%_)))
                 (_%subst!183132%_
                  (lambda (_%key183134%_)
                    (let* ((_%$%key183135183143%_ _%key183134%_)
                           (_%$%else183137183151%_ (lambda () _%key183134%_))
                           (_%$%K183139183185%_
                            (lambda (_%mark183154%_ _%id183155%_)
                              (let* ((_%$%mark183156183162%_ _%mark183154%_)
                                     (_%$%E183158183165%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark183156183162%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K183159183177%_
                                      (lambda (_%subst183168%_)
                                        (if (not _%subst183168%_)
                                            (let ((_%subst183171%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark183154%_
                                               _%subst183171%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst183131%_
                                               _%subst183171%_
                                               _%id183155%_))
                                            (let ((_%$e183173%_
                                                   (hash-get
                                                    _%subst183168%_
                                                    _%id183155%_)))
                                              (if _%$e183173%_
                                                  _%$e183173%_
                                                  (_%gensubst183131%_
                                                   _%subst183168%_
                                                   _%id183155%_)))))))
                                (if (##structure-instance-of?
                                     _%$%mark183156183162%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e183160183180%_
                                            (##unchecked-structure-ref
                                             _%$%mark183156183162%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst183183%_
                                            _%$%e183160183180%_))
                                      (_%$%K183159183177%_ _%subst183183%_))
                                    (_%$%E183158183165%_))))))
                      (if (pair? _%$%key183135183143%_)
                          (let ((_%$%hd183140183188%_
                                 (##car _%$%key183135183143%_))
                                (_%$%tl183141183190%_
                                 (##cdr _%$%key183135183143%_)))
                            (let* ((_%id183193%_ _%$%hd183140183188%_)
                                   (_%mark183195%_ _%$%tl183141183190%_))
                              (_%$%K183139183185%_
                               _%mark183195%_
                               _%id183193%_)))
                          (_%$%else183137183151%_))))))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin (displayln '"@bind " _%key183124%_) (force-output))
              '#!void)
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx183128%_ _%phi183127%_)
           (_%subst!183132%_ _%key183124%_)
           _%val183125%_
           _%update-binding183130%_))))
    (define gx#core-bind!__0
      (lambda (_%key183223%_ _%val183224%_)
        (let* ((_%rebind?183226%_ false)
               (_%phi183228%_ (gx#current-expander-phi))
               (_%ctx183230%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183223%_
           _%val183224%_
           _%rebind?183226%_
           _%phi183228%_
           _%ctx183230%_))))
    (define gx#core-bind!__1
      (lambda (_%key183232%_ _%val183233%_ _%rebind?183234%_)
        (let* ((_%phi183236%_ (gx#current-expander-phi))
               (_%ctx183238%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183232%_
           _%val183233%_
           _%rebind?183234%_
           _%phi183236%_
           _%ctx183238%_))))
    (define gx#core-bind!__2
      (lambda (_%key183240%_ _%val183241%_ _%rebind?183242%_ _%phi183243%_)
        (let ((_%ctx183245%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183240%_
           _%val183241%_
           _%rebind?183242%_
           _%phi183243%_
           _%ctx183245%_))))
    (define gx#core-bind!
      (lambda _g186980_
        (let ((_g186981_ (##length _g186980_)))
          (cond ((##fx= _g186981_ 2) (apply gx#core-bind!__0 _g186980_))
                ((##fx= _g186981_ 3) (apply gx#core-bind!__1 _g186980_))
                ((##fx= _g186981_ 4) (apply gx#core-bind!__2 _g186980_))
                ((##fx= _g186981_ 5) (apply gx#core-bind!__% _g186980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g186980_))))))
    (define gx#core-identifier-key
      (lambda (_%stx183055%_)
        (if (symbol? _%stx183055%_)
            (let* ((_%$%g183057183065%_ (gx#current-expander-marks))
                   (_%$%else183059183073%_ (lambda () _%stx183055%_))
                   (_%$%K183061183078%_
                    (lambda (_%hd183076%_) (cons _%stx183055%_ _%hd183076%_))))
              (if (pair? _%$%g183057183065%_)
                  (let* ((_%$%hd183062183081%_ (##car _%$%g183057183065%_))
                         (_%hd183084%_ _%$%hd183062183081%_))
                    (_%$%K183061183078%_ _%hd183084%_))
                  (_%$%else183059183073%_)))
            (if (gx#identifier? _%stx183055%_)
                (let* ((_%id183087%_ (gx#syntax-local-unwrap _%stx183055%_))
                       (_%eid183089%_ (gx#stx-e _%id183087%_))
                       (_%marks183091%_
                        (gx#stx-identifier-marks* _%id183087%_))
                       (_%$%marks183093183101%_ _%marks183091%_)
                       (_%$%else183095183109%_ (lambda () _%eid183089%_))
                       (_%$%K183097183114%_
                        (lambda (_%hd183112%_)
                          (cons _%eid183089%_ _%hd183112%_))))
                  (if (pair? _%$%marks183093183101%_)
                      (let* ((_%$%hd183098183117%_
                              (##car _%$%marks183093183101%_))
                             (_%hd183120%_ _%$%hd183098183117%_))
                        (_%$%K183097183114%_ _%hd183120%_))
                      (_%$%else183095183109%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx183055%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx182994%_ _%phi182995%_)
        (letrec ((_%make-phi182997%_
                  (lambda (_%super183053%_)
                    (let ((__obj186951
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj186951
                       (##gensym 'phi)
                       _%super183053%_)
                      __obj186951)))
                 (_%make-phi/up182998%_
                  (lambda (_%ctx183048%_ _%super183049%_)
                    (let ((_%ctx+1183051%_
                           (_%make-phi182997%_ _%super183049%_)))
                      (##unchecked-structure-set!
                       _%ctx183048%_
                       _%ctx+1183051%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1183051%_
                       _%ctx183048%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1183051%_)))
                 (_%make-phi/down182999%_
                  (lambda (_%ctx183043%_ _%super183044%_)
                    (let ((_%ctx-1183046%_
                           (_%make-phi182997%_ _%super183044%_)))
                      (##unchecked-structure-set!
                       _%ctx-1183046%_
                       _%ctx183043%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx183043%_
                       _%ctx-1183046%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1183046%_)))
                 (_%shift183000%_
                  (lambda (_%ctx183026%_
                           _%delta183027%_
                           _%make-delta-context183028%_
                           _%phi183029%_
                           _%K183030%_)
                    (let ((_%$e183032%_
                           (##unchecked-structure-ref
                            _%ctx183026%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e183032%_
                          (let* ((_%super183037%_
                                  (_%K183030%_ _%$e183032%_ _%delta183027%_))
                                 (_%ctx+d183039%_
                                  (_%make-delta-context183028%_
                                   _%ctx183026%_
                                   _%super183037%_)))
                            (_%K183030%_
                             _%ctx+d183039%_
                             (fx- _%phi183029%_ _%delta183027%_)))
                          (error '"Bad context" _%ctx183026%_))))))
          (let _%K183002%_ ((_%ctx183004%_ _%ctx182994%_)
                            (_%phi183005%_ _%phi182995%_))
            (if (fxzero? _%phi183005%_)
                _%ctx183004%_
                (if (##structure-instance-of? _%ctx183004%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi183005%_)
                        (let ((_%$e183009%_
                               (##unchecked-structure-ref
                                _%ctx183004%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e183009%_
                              (_%K183002%_
                               _%$e183009%_
                               (##fx- _%phi183005%_ '1))
                              (_%shift183000%_
                               _%ctx183004%_
                               '1
                               _%make-phi/up182998%_
                               _%phi183005%_
                               _%K183002%_)))
                        (let ((_%$e183017%_
                               (##unchecked-structure-ref
                                _%ctx183004%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e183017%_
                              (_%K183002%_
                               _%$e183017%_
                               (##fx+ _%phi183005%_ '1))
                              (_%shift183000%_
                               _%ctx183004%_
                               '-1
                               _%make-phi/down182999%_
                               _%phi183005%_
                               _%K183002%_))))
                    _%ctx183004%_))))))
    (define gx#core-context-get
      (lambda (_%ctx182991%_ _%key182992%_)
        (hash-get
         (##unchecked-structure-ref _%ctx182991%_ '2 '#f '#f)
         _%key182992%_)))
    (define gx#core-context-put!
      (lambda (_%ctx182987%_ _%key182988%_ _%val182989%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx182987%_ '2 '#f '#f)
         _%key182988%_
         _%val182989%_)
        _%val182989%_))
    (define gx#core-context-resolve
      (lambda (_%ctx182973%_ _%key182974%_)
        (let _%lp182976%_ ((_%ctx182978%_ _%ctx182973%_))
          (let ((_%$e182980%_
                 (gx#core-context-get _%ctx182978%_ _%key182974%_)))
            (if _%$e182980%_
                _%$e182980%_
                (let ((_%$e182983%_
                       (if (##structure-instance-of?
                            _%ctx182978%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx182978%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e182983%_ (_%lp182976%_ _%$e182983%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx182962%_ _%key182963%_ _%val182964%_ _%rebind182965%_)
        (let ((_%$e182967%_ (gx#core-context-get _%ctx182962%_ _%key182963%_)))
          (if _%$e182967%_
              (gx#core-context-put!
               _%ctx182962%_
               _%key182963%_
               (_%rebind182965%_ _%$e182967%_))
              (gx#core-context-put!
               _%ctx182962%_
               _%key182963%_
               _%val182964%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx182937%_ _%stop?182938%_)
        (let _%lp182940%_ ((_%ctx182942%_ _%ctx182937%_))
          (if (_%stop?182938%_ _%ctx182942%_)
              _%ctx182942%_
              (if (##structure-instance-of? _%ctx182942%_ 'gx#phi-context::t)
                  (_%lp182940%_
                   (##unchecked-structure-ref _%ctx182942%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx182951%_ (gx#current-expander-context))
               (_%stop?182953%_ gx#top-context?))
          (gx#core-context-top__% _%ctx182951%_ _%stop?182953%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx182955%_)
        (let ((_%stop?182957%_ gx#top-context?))
          (gx#core-context-top__% _%ctx182955%_ _%stop?182957%_))))
    (define gx#core-context-top
      (lambda _g186982_
        (let ((_g186983_ (##length _g186982_)))
          (cond ((##fx= _g186983_ 0) (apply gx#core-context-top__0 _g186982_))
                ((##fx= _g186983_ 1) (apply gx#core-context-top__1 _g186982_))
                ((##fx= _g186983_ 2) (apply gx#core-context-top__% _g186982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g186982_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx182922%_)
        (let _%lp182924%_ ((_%ctx182926%_ _%ctx182922%_))
          (if (##structure-instance-of? _%ctx182926%_ 'gx#phi-context::t)
              (_%lp182924%_
               (##unchecked-structure-ref _%ctx182926%_ '3 '#f '#f))
              _%ctx182926%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx182932%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx182932%_))))
    (define gx#core-context-root
      (lambda _g186984_
        (let ((_g186985_ (##length _g186984_)))
          (cond ((##fx= _g186985_ 0) (apply gx#core-context-root__0 _g186984_))
                ((##fx= _g186985_ 1) (apply gx#core-context-root__% _g186984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g186984_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx182904%_ . _%ignore182905%_)
        (let ((_%$e182907%_ (gx#current-expander-allow-rebind?)))
          (if _%$e182907%_
              _%$e182907%_
              (if (##structure-instance-of? _%ctx182904%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx182904%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx182904%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx182914%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx182914%_))))
    (define gx#core-context-rebind?
      (lambda _g186986_
        (let ((_g186987_ (##length _g186986_)))
          (cond ((##fx= _g186987_ 0)
                 (apply gx#core-context-rebind?__0 _g186986_))
                ((##fx= _g186987_ 1)
                 (apply gx#core-context-rebind?__% _g186986_))
                ((##fx>= _g186987_ 1)
                 (apply gx#core-context-rebind?__% _g186986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g186986_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx182887%_)
        (let ((_%$e182889%_ (gx#core-context-top__1 _%ctx182887%_)))
          (if _%$e182889%_
              (if (##structure-instance-of? _%$e182889%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e182889%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx182899%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx182899%_))))
    (define gx#core-context-namespace
      (lambda _g186988_
        (let ((_g186989_ (##length _g186988_)))
          (cond ((##fx= _g186989_ 0)
                 (apply gx#core-context-namespace__0 _g186988_))
                ((##fx= _g186989_ 1)
                 (apply gx#core-context-namespace__% _g186988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g186988_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind182873%_ _%is?182874%_)
        (if (##structure-direct-instance-of?
             _%bind182873%_
             'gx#syntax-binding::t)
            (_%is?182874%_
             (##unchecked-structure-ref _%bind182873%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind182879%_)
        (let ((_%is?182881%_ gx#expander?))
          (gx#expander-binding?__% _%bind182879%_ _%is?182881%_))))
    (define gx#expander-binding?
      (lambda _g186990_
        (let ((_g186991_ (##length _g186990_)))
          (cond ((##fx= _g186991_ 1) (apply gx#expander-binding?__0 _g186990_))
                ((##fx= _g186991_ 2) (apply gx#expander-binding?__% _g186990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g186990_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind182870%_)
        (gx#expander-binding?__% _%bind182870%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind182868%_)
        (gx#expander-binding?__% _%bind182868%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind182862%_)
        (letrec ((_%direct-special-form?182864%_
                  (lambda (_%obj182866%_)
                    (##structure-direct-instance-of?
                     _%obj182866%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind182862%_
           _%direct-special-form?182864%_))))
    (define gx#special-form-binding?
      (lambda (_%bind182860%_)
        (gx#expander-binding?__% _%bind182860%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind182851%_)
        (letrec ((_%feature?182853%_
                  (lambda (_%e182855%_)
                    (let ((_%$e182857%_
                           (##structure-instance-of?
                            _%e182855%_
                            'gx#feature-expander::t)))
                      (if _%$e182857%_
                          _%$e182857%_
                          (##structure-instance-of?
                           _%e182855%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind182851%_ _%feature?182853%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind182849%_)
        (gx#expander-binding?__% _%bind182849%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id182836%_ _%bound?182837%_)
        (if (gx#identifier? _%id182836%_)
            (_%bound?182837%_ (gx#resolve-identifier__0 _%id182836%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id182842%_)
        (let ((_%bound?182844%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id182842%_ _%bound?182844%_))))
    (define gx#core-bound-identifier?
      (lambda _g186992_
        (let ((_g186993_ (##length _g186992_)))
          (cond ((##fx= _g186993_ 1)
                 (apply gx#core-bound-identifier?__0 _g186992_))
                ((##fx= _g186993_ 2)
                 (apply gx#core-bound-identifier?__% _g186992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g186992_))))))
    (define gx#core-identifier=?
      (lambda (_%x182826%_ _%y182827%_)
        (letrec ((_%y=?182829%_
                  (lambda (_%xid182833%_)
                    ((if (list? _%y182827%_) memq eq?)
                     _%xid182833%_
                     _%y182827%_))))
          (let ((_%bind182831%_ (gx#resolve-identifier__0 _%x182826%_)))
            (if (##structure-instance-of? _%bind182831%_ 'gx#binding::t)
                (_%y=?182829%_
                 (##unchecked-structure-ref _%bind182831%_ '1 '#f '#f))
                (_%y=?182829%_ (gx#stx-e _%x182826%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e182824%_)
        (if (interned-symbol? _%e182824%_)
            (string-index__0 (symbol->string _%e182824%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx182777%_ _%src182778%_ _%ctx182779%_ _%marks182780%_)
        (if (##structure? _%stx182777%_)
            (let ((_%$e182782%_ (gx#sealed-syntax-unwrap _%stx182777%_)))
              (if _%$e182782%_
                  _%$e182782%_
                  (if (gx#identifier? _%stx182777%_)
                      (let ((_%id182786%_
                             (gx#stx-unwrap__% _%stx182777%_ _%marks182780%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id182786%_ '1 '#f '#f)
                         (let ((_%$e182788%_
                                (##unchecked-structure-ref
                                 _%id182786%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e182788%_ _%$e182788%_ _%src182778%_))
                         _%ctx182779%_
                         (##unchecked-structure-ref _%id182786%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx182777%_)
                       (let ((_%$e182792%_ (gx#stx-source _%stx182777%_)))
                         (if _%$e182792%_ _%$e182792%_ _%src182778%_))
                       _%ctx182779%_
                       (reverse _%marks182780%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx182777%_
             _%src182778%_
             _%ctx182779%_
             (reverse _%marks182780%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx182798%_)
        (let* ((_%src182800%_ '#f)
               (_%ctx182802%_ (gx#current-expander-context))
               (_%marks182804%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx182798%_
           _%src182800%_
           _%ctx182802%_
           _%marks182804%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx182806%_ _%src182807%_)
        (let* ((_%ctx182809%_ (gx#current-expander-context))
               (_%marks182811%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx182806%_
           _%src182807%_
           _%ctx182809%_
           _%marks182811%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx182813%_ _%src182814%_ _%ctx182815%_)
        (let ((_%marks182817%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx182813%_
           _%src182814%_
           _%ctx182815%_
           _%marks182817%_))))
    (define gx#core-quote-syntax
      (lambda _g186994_
        (let ((_g186995_ (##length _g186994_)))
          (cond ((##fx= _g186995_ 1) (apply gx#core-quote-syntax__0 _g186994_))
                ((##fx= _g186995_ 2) (apply gx#core-quote-syntax__1 _g186994_))
                ((##fx= _g186995_ 3) (apply gx#core-quote-syntax__2 _g186994_))
                ((##fx= _g186995_ 4) (apply gx#core-quote-syntax__% _g186994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g186994_))))))
    (define gx#core-cons
      (lambda (_%hd182773%_ _%tl182774%_)
        (cons (gx#core-quote-syntax__0 _%hd182773%_) _%tl182774%_)))
    (define gx#core-list
      (lambda (_%hd182770%_ . _%rest182771%_)
        (cons (gx#core-quote-syntax__0 _%hd182770%_) _%rest182771%_)))
    (define gx#core-cons*
      (lambda (_%hd182767%_ . _%rest182768%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd182767%_) _%rest182768%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path182736%_ _%rel182737%_)
        (let ((_%path182754%_ (gx#stx-e _%stx-path182736%_))
              (_%reldir182755%_
               (let _%lp182739%_ ((_%relsrc182741%_
                                   (let ((_%$e182751%_
                                          (gx#stx-source _%stx-path182736%_)))
                                     (if _%$e182751%_
                                         _%$e182751%_
                                         _%rel182737%_))))
                 (if (##structure-instance-of? _%relsrc182741%_ 'gerbil#AST::t)
                     (_%lp182739%_
                      (let ((_%$e182744%_ (gx#stx-source _%relsrc182741%_)))
                        (if _%$e182744%_
                            _%$e182744%_
                            (gx#stx-e _%relsrc182741%_))))
                     (if (source-location-path? _%relsrc182741%_)
                         (path-directory
                          (source-location-path _%relsrc182741%_))
                         (if (string? _%relsrc182741%_)
                             (path-directory _%relsrc182741%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path182754%_ (path-normalize _%reldir182755%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path182760%_)
        (let ((_%rel182762%_ '#f))
          (gx#core-resolve-path__% _%stx-path182760%_ _%rel182762%_))))
    (define gx#core-resolve-path
      (lambda _g186996_
        (let ((_g186997_ (##length _g186996_)))
          (cond ((##fx= _g186997_ 1) (apply gx#core-resolve-path__0 _g186996_))
                ((##fx= _g186997_ 2) (apply gx#core-resolve-path__% _g186996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g186996_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr182692%_ _%ctx182693%_)
        (let* ((_%$%repr182694182701%_ _%repr182692%_)
               (_%$%E182696182705%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%repr182694182701%_
                         '([phi . subs]))
                  '#!void))
               (_%$%K182697182713%_
                (lambda (_%subs182708%_ _%phi182709%_)
                  (let ((_%subst182711%_
                         (if (null? _%subs182708%_)
                             '#f
                             (list->hash-table-eq _%subs182708%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst182711%_
                     _%ctx182693%_
                     _%phi182709%_
                     '#f)))))
          (if (pair? _%$%repr182694182701%_)
              (let ((_%$%hd182698182716%_ (##car _%$%repr182694182701%_))
                    (_%$%tl182699182718%_ (##cdr _%$%repr182694182701%_)))
                (let* ((_%phi182721%_ _%$%hd182698182716%_)
                       (_%subs182723%_ _%$%tl182699182718%_))
                  (_%$%K182697182713%_ _%subs182723%_ _%phi182721%_)))
              (_%$%E182696182705%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr182728%_)
        (let ((_%ctx182730%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr182728%_ _%ctx182730%_))))
    (define gx#core-deserialize-mark
      (lambda _g186998_
        (let ((_g186999_ (##length _g186998_)))
          (cond ((##fx= _g186999_ 1)
                 (apply gx#core-deserialize-mark__0 _g186998_))
                ((##fx= _g186999_ 2)
                 (apply gx#core-deserialize-mark__% _g186998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g186998_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx182689%_)
        (gx#stx-rewrap _%stx182689%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx182687%_)
        (gx#stx-unwrap__% _%stx182687%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx182657%_)
        (let* ((_%$%g182658182666%_ (gx#current-expander-marks))
               (_%$%else182660182674%_ (lambda () _%stx182657%_))
               (_%$%K182662182679%_
                (lambda (_%hd182677%_)
                  (gx#stx-apply-mark _%stx182657%_ _%hd182677%_))))
          (if (pair? _%$%g182658182666%_)
              (let* ((_%$%hd182663182682%_ (##car _%$%g182658182666%_))
                     (_%hd182685%_ _%$%hd182663182682%_))
                (_%$%K182662182679%_ _%hd182685%_))
              (_%$%else182660182674%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym182655%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym182655%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx182640%_ _%E182641%_)
        (let ((_%bind182643%_ (gx#resolve-identifier__0 _%stx182640%_)))
          (if (##structure-direct-instance-of?
               _%bind182643%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind182643%_ '5 '#f '#f)
              (_%E182641%_ _%stx182640%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx182648%_)
        (let ((_%E182650%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx182648%_ _%E182650%_))))
    (define gx#syntax-local-e
      (lambda _g187000_
        (let ((_g187001_ (##length _g187000_)))
          (cond ((##fx= _g187001_ 1) (apply gx#syntax-local-e__0 _g187000_))
                ((##fx= _g187001_ 2) (apply gx#syntax-local-e__% _g187000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g187000_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx182624%_ _%E182625%_)
        (let ((_%e182627%_ (gx#syntax-local-e__% _%stx182624%_ _%E182625%_)))
          (if (##structure-instance-of? _%e182627%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e182627%_ '1 '#f '#f)
              _%e182627%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx182632%_)
        (let ((_%E182634%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx182632%_ _%E182634%_))))
    (define gx#syntax-local-value
      (lambda _g187002_
        (let ((_g187003_ (##length _g187002_)))
          (cond ((##fx= _g187003_ 1)
                 (apply gx#syntax-local-value__0 _g187002_))
                ((##fx= _g187003_ 2)
                 (apply gx#syntax-local-value__% _g187002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g187002_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx182621%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx182621%_)))))
