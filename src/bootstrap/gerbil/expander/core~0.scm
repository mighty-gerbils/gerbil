(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1713631266)
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
      (lambda _%$args121290%_
        (apply make-instance gx#expander-context::t _%$args121290%_)))
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
      (lambda _%$args121287%_
        (apply make-instance gx#root-context::t _%$args121287%_)))
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
      (lambda _%$args121284%_
        (apply make-instance gx#phi-context::t _%$args121284%_)))
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
      (lambda _%$args121281%_
        (apply make-instance gx#top-context::t _%$args121281%_)))
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
      (lambda _%$args121278%_
        (apply make-instance gx#module-context::t _%$args121278%_)))
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
      (lambda _%$args121275%_
        (apply make-instance gx#prelude-context::t _%$args121275%_)))
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
      (lambda _%$args121272%_
        (apply make-instance gx#local-context::t _%$args121272%_)))
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
      (lambda (_%self118178121243%_ _%id121245%_ _%super121246%_)
        (let* ((_%self121248%_ _%self118178121243%_)
               (_%self121250%_ _%self121248%_))
          (if (##fx< '3 (##structure-length _%self121250%_))
              (begin
                (##unchecked-structure-set!
                 _%self121250%_
                 _%id121245%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121250%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121250%_
                 _%super121246%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self121250%_
                     '3
                     (##vector-length _%self121250%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self118178121263%_ _%id121264%_)
        (let ((_%super121266%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self118178121263%_
           _%id121264%_
           _%super121266%_))))
    (define gx#phi-context:::init!
      (lambda _g121333_
        (let ((_g121332_ (##length _g121333_)))
          (cond ((##fx= _g121332_ 2)
                 (apply gx#phi-context:::init!__0 _g121333_))
                ((##fx= _g121332_ 3)
                 (apply gx#phi-context:::init!__% _g121333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g121333_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self118179121094%_ _%super121096%_)
        (let* ((_%self121098%_ _%self118179121094%_)
               (_%self121100%_ _%self121098%_))
          (if (##fx< '3 (##structure-length _%self121100%_))
              (begin
                (##unchecked-structure-set!
                 _%self121100%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121100%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121100%_
                 _%super121096%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self121100%_
                     '3
                     (##vector-length _%self121100%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self118179121113%_)
        (let ((_%super121115%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self118179121113%_ _%super121115%_))))
    (define gx#local-context:::init!
      (lambda _g121335_
        (let ((_g121334_ (##length _g121335_)))
          (cond ((##fx= _g121334_ 1)
                 (apply gx#local-context:::init!__0 _g121335_))
                ((##fx= _g121334_ 2)
                 (apply gx#local-context:::init!__% _g121335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g121335_))))))
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
      (lambda _%$args120968%_
        (apply make-instance gx#binding::t _%$args120968%_)))
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
      (lambda _%$args120965%_
        (apply make-instance gx#runtime-binding::t _%$args120965%_)))
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
      (lambda _%$args120962%_
        (apply make-instance gx#local-binding::t _%$args120962%_)))
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
      (lambda _%$args120959%_
        (apply make-instance gx#top-binding::t _%$args120959%_)))
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
      (lambda _%$args120956%_
        (apply make-instance gx#module-binding::t _%$args120956%_)))
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
      (lambda _%$args120953%_
        (apply make-instance gx#extern-binding::t _%$args120953%_)))
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
      (lambda _%$args120950%_
        (apply make-instance gx#syntax-binding::t _%$args120950%_)))
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
      (lambda _%$args120947%_
        (apply make-instance gx#import-binding::t _%$args120947%_)))
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
      (lambda _%$args120944%_
        (apply make-instance gx#alias-binding::t _%$args120944%_)))
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
      (lambda _%$args120941%_
        (apply make-instance gx#expander::t _%$args120941%_)))
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
      (lambda _%$args120938%_
        (apply make-instance gx#core-expander::t _%$args120938%_)))
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
      (lambda _%$args120935%_
        (apply make-instance gx#expression-form::t _%$args120935%_)))
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
      (lambda _%$args120932%_
        (apply make-instance gx#special-form::t _%$args120932%_)))
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
      (lambda _%$args120929%_
        (apply make-instance gx#definition-form::t _%$args120929%_)))
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
      (lambda _%$args120926%_
        (apply make-instance gx#top-special-form::t _%$args120926%_)))
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
      (lambda _%$args120923%_
        (apply make-instance gx#module-special-form::t _%$args120923%_)))
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
      (lambda _%$args120920%_
        (apply make-instance gx#feature-expander::t _%$args120920%_)))
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
      (lambda _%$args120917%_
        (apply make-instance gx#private-feature-expander::t _%$args120917%_)))
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
      (lambda _%$args120914%_
        (apply make-instance gx#reserved-expander::t _%$args120914%_)))
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
      (lambda _%$args120911%_
        (apply make-instance gx#macro-expander::t _%$args120911%_)))
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
      (lambda _%$args120908%_
        (apply make-instance gx#rename-macro-expander::t _%$args120908%_)))
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
      (lambda _%$args120905%_
        (apply make-instance gx#user-expander::t _%$args120905%_)))
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
      (lambda _%$args120902%_
        (apply make-instance gx#expander-mark::t _%$args120902%_)))
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
      (lambda (_%ctx120886%_
               _%message120887%_
               _%stx120888%_
               .
               _%details120889%_)
        (let ((_%ctx120900%_
               (let ((_%$e120891%_ _%ctx120886%_))
                 (if _%$e120891%_
                     _%$e120891%_
                     (let ((_%$e120894%_ (gx#core-context-top__0)))
                       (if _%$e120894%_
                           ((lambda (_%ctx120897%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx120897%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e120894%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message120887%_
                  (cons _%stx120888%_ _%details120889%_)
                  _%ctx120900%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx120873%_ _%expression?120874%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx120873%_ _%expression?120874%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx120879%_)
        (let ((_%expression?120881%_ '#f))
          (gx#eval-syntax__% _%stx120879%_ _%expression?120881%_))))
    (define gx#eval-syntax
      (lambda _g121337_
        (let ((_g121336_ (##length _g121337_)))
          (cond ((##fx= _g121336_ 1) (apply gx#eval-syntax__0 _g121337_))
                ((##fx= _g121336_ 2) (apply gx#eval-syntax__% _g121337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g121337_))))))
    (define gx#eval-syntax*
      (lambda (_%stx120870%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx120870%_))))
    (define gx#core-expand__%
      (lambda (_%stx120857%_ _%expression?120858%_)
        (if _%expression?120858%_
            (gx#core-expand-expression _%stx120857%_)
            (gx#core-expand-top _%stx120857%_))))
    (define gx#core-expand__0
      (lambda (_%stx120863%_)
        (let ((_%expression?120865%_ '#f))
          (gx#core-expand__% _%stx120863%_ _%expression?120865%_))))
    (define gx#core-expand
      (lambda _g121339_
        (let ((_g121338_ (##length _g121339_)))
          (cond ((##fx= _g121338_ 1) (apply gx#core-expand__0 _g121339_))
                ((##fx= _g121338_ 2) (apply gx#core-expand__% _g121339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g121339_))))))
    (define gx#core-expand-top
      (lambda (_%stx120824%_)
        (let* ((_%stx120826%_ (gx#core-expand*__0 _%stx120824%_))
               (_%e120827120834%_ _%stx120826%_)
               (_%E120829120838%_
                (lambda () (gx#core-expand-expression _%stx120826%_)))
               (_%E120828120852%_
                (lambda ()
                  (if (gx#stx-pair? _%e120827120834%_)
                      (let ((_%e120830120842%_
                             (gx#syntax-e _%e120827120834%_)))
                        (let ((_%hd120831120845%_ (##car _%e120830120842%_))
                              (_%tl120832120847%_ (##cdr _%e120830120842%_)))
                          (let ((_%form120850%_ _%hd120831120845%_))
                            (if (gx#core-bound-identifier?__0 _%form120850%_)
                                _%stx120826%_
                                (_%E120829120838%_)))))
                      (_%E120829120838%_)))))
          (_%E120828120852%_))))
    (define gx#core-expand-expression
      (lambda (_%stx120756%_)
        (letrec ((_%sealed-expression?120758%_
                  (lambda (_%hd120794%_)
                    (if (gx#sealed-syntax? _%hd120794%_)
                        (let* ((_%e120795120802%_ _%hd120794%_)
                               (_%E120797120806%_ (lambda () '#f))
                               (_%E120796120820%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e120795120802%_)
                                      (let ((_%e120798120810%_
                                             (gx#syntax-e _%e120795120802%_)))
                                        (let ((_%hd120799120813%_
                                               (##car _%e120798120810%_))
                                              (_%tl120800120815%_
                                               (##cdr _%e120798120810%_)))
                                          (let ((_%form120818%_
                                                 _%hd120799120813%_))
                                            (gx#core-bound-identifier?__%
                                             _%form120818%_
                                             gx#expression-form-binding?))))
                                      (_%E120797120806%_)))))
                          (_%E120796120820%_))
                        '#f)))
                 (_%illegal-expression120759%_
                  (lambda (_%hd120791%_ . _%_120792%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx120756%_
                     _%hd120791%_)))
                 (_%expand-e120760%_
                  (lambda (_%form120783%_ _%hd120784%_)
                    (let ((_%bind120786%_
                           (if (##structure-instance-of?
                                _%form120783%_
                                'gx#binding::t)
                               _%form120783%_
                               (gx#resolve-identifier__0 _%form120783%_))))
                      (if (gx#core-expander-binding? _%bind120786%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind120786%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd120784%_
                            (gx#stx-source _%stx120756%_)))
                          (if (##structure-direct-instance-of?
                               _%bind120786%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind120786%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd120784%_
                                 (gx#stx-source _%stx120756%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx120756%_
                               _%form120783%_)))))))
          (let ((_%hd120762%_ (gx#core-expand-head _%stx120756%_)))
            (if (_%sealed-expression?120758%_ _%hd120762%_)
                _%hd120762%_
                (if (gx#stx-pair? _%hd120762%_)
                    (let* ((_%form120766%_ (gx#stx-car _%hd120762%_))
                           (_%bind120768%_
                            (if (gx#identifier? _%form120766%_)
                                (gx#resolve-identifier__0 _%form120766%_)
                                '#f)))
                      (if (or (not _%bind120768%_)
                              (not (gx#core-expander-binding? _%bind120768%_)))
                          (_%expand-e120760%_
                           '%%app
                           (cons '%%app _%hd120762%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind120768%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd120762%_
                               _%illegal-expression120759%_)
                              (if (gx#expression-form-binding? _%bind120768%_)
                                  (_%expand-e120760%_
                                   _%bind120768%_
                                   _%hd120762%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind120768%_)
                                      (gx#core-expand-expression
                                       (_%expand-e120760%_
                                        _%bind120768%_
                                        _%hd120762%_))
                                      (_%illegal-expression120759%_
                                       _%hd120762%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd120762%_)
                        (_%illegal-expression120759%_ _%hd120762%_)
                        (if (gx#identifier? _%hd120762%_)
                            (_%expand-e120760%_
                             '%%ref
                             (cons '%%ref (cons _%hd120762%_ '())))
                            (if (gx#stx-datum? _%hd120762%_)
                                (_%expand-e120760%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd120762%_ '())))
                                (_%illegal-expression120759%_
                                 _%hd120762%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx120751%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx120754%_ (gx#core-expand-expression _%stx120751%_)))
             (values _%stx120754%_ (gx#eval-syntax* _%stx120754%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx120732%_ _%stop?120733%_)
        (let _%lp120735%_ ((_%stx120737%_ _%stx120732%_))
          (if (_%stop?120733%_ _%stx120737%_)
              _%stx120737%_
              (let ((_%rstx120739%_ (gx#core-expand1 _%stx120737%_)))
                (if (eq? _%stx120737%_ _%rstx120739%_)
                    _%stx120737%_
                    (_%lp120735%_ _%rstx120739%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx120744%_)
        (let ((_%stop?120746%_ false))
          (gx#core-expand*__% _%stx120744%_ _%stop?120746%_))))
    (define gx#core-expand*
      (lambda _g121341_
        (let ((_g121340_ (##length _g121341_)))
          (cond ((##fx= _g121340_ 1) (apply gx#core-expand*__0 _g121341_))
                ((##fx= _g121340_ 2) (apply gx#core-expand*__% _g121341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g121341_))))))
    (define gx#core-expand1
      (lambda (_%stx120684%_)
        (letrec ((_%step120686%_
                  (lambda (_%hd120723%_)
                    (let ((_%bind120725%_
                           (gx#resolve-identifier__0 _%hd120723%_)))
                      (if (##structure-instance-of?
                           _%bind120725%_
                           'gx#runtime-binding::t)
                          _%stx120684%_
                          (if (##structure-direct-instance-of?
                               _%bind120725%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind120725%_
                                '4
                                '#f
                                '#f)
                               _%stx120684%_)
                              (if (not _%bind120725%_)
                                  _%stx120684%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx120684%_))))))))
          (let* ((_%e120687120695%_ _%stx120684%_)
                 (_%E120693120699%_ (lambda () _%stx120684%_))
                 (_%E120689120705%_
                  (lambda ()
                    (let ((_%hd120703%_ _%e120687120695%_))
                      (if (gx#identifier? _%hd120703%_)
                          (_%step120686%_ _%hd120703%_)
                          (_%E120693120699%_)))))
                 (_%E120688120719%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120687120695%_)
                        (let ((_%e120690120709%_
                               (gx#syntax-e _%e120687120695%_)))
                          (let ((_%hd120691120712%_ (##car _%e120690120709%_))
                                (_%tl120692120714%_ (##cdr _%e120690120709%_)))
                            (let ((_%hd120717%_ _%hd120691120712%_))
                              (if (gx#identifier? _%hd120717%_)
                                  (_%step120686%_ _%hd120717%_)
                                  (_%E120689120705%_)))))
                        (_%E120689120705%_)))))
            (_%E120688120719%_)))))
    (define gx#core-expand-head
      (lambda (_%stx120650%_)
        (letrec ((_%stop?120652%_
                  (lambda (_%stx120654%_)
                    (let* ((_%e120655120662%_ _%stx120654%_)
                           (_%E120657120666%_ (lambda () '#f))
                           (_%E120656120680%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120655120662%_)
                                  (let ((_%e120658120670%_
                                         (gx#syntax-e _%e120655120662%_)))
                                    (let ((_%hd120659120673%_
                                           (##car _%e120658120670%_))
                                          (_%tl120660120675%_
                                           (##cdr _%e120658120670%_)))
                                      (let ((_%hd120678%_ _%hd120659120673%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd120678%_))))
                                  (_%E120657120666%_)))))
                      (_%E120656120680%_)))))
          (gx#core-expand*__% _%stx120650%_ _%stop?120652%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx120456%_
               _%expand-special120457%_
               _%begin-form120458%_
               _%expand-e120459%_)
        (letrec ((_%expand-splice120461%_
                  (lambda (_%hd120624%_
                           _%body120625%_
                           _%rest120626%_
                           _%r120627%_)
                    (if (gx#stx-list? _%body120625%_)
                        (_%K120465%_
                         (gx#stx-foldr cons _%rest120626%_ _%body120625%_)
                         _%r120627%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx120456%_
                         _%hd120624%_))))
                 (_%expand-cond-expand120462%_
                  (lambda (_%hd120620%_ _%rest120621%_ _%r120622%_)
                    (_%K120465%_
                     (cons (gx#core-expand-cond-expand% _%hd120620%_)
                           _%rest120621%_)
                     _%r120622%_)))
                 (_%expand-include120463%_
                  (lambda (_%hd120569%_ _%rest120570%_ _%r120571%_)
                    (let* ((_%e120572120582%_ _%hd120569%_)
                           (_%E120574120586%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120572120582%_)))
                           (_%E120573120616%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120572120582%_)
                                  (let ((_%e120575120590%_
                                         (gx#syntax-e _%e120572120582%_)))
                                    (let ((_%hd120576120593%_
                                           (##car _%e120575120590%_))
                                          (_%tl120577120595%_
                                           (##cdr _%e120575120590%_)))
                                      (if (gx#stx-pair? _%tl120577120595%_)
                                          (let ((_%e120578120598%_
                                                 (gx#syntax-e
                                                  _%tl120577120595%_)))
                                            (let ((_%hd120579120601%_
                                                   (##car _%e120578120598%_))
                                                  (_%tl120580120603%_
                                                   (##cdr _%e120578120598%_)))
                                              (let ((_%path120606%_
                                                     _%hd120579120601%_))
                                                (if (gx#stx-null?
                                                     _%tl120580120603%_)
                                                    (if (gx#stx-string?
                                                         _%path120606%_)
                                                        (let* ((_%rpath120608%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path120606%_
                         (gx#stx-source _%hd120569%_)))
                       (_%block120610%_
                        (gx#core-expand-include%__%
                         _%hd120569%_
                         _%rpath120608%_))
                       (_%rbody120613%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block120610%_
                            _%expand-special120457%_
                            '#f
                            _%expand-e120459%_))
                         gx#current-expander-path
                         (cons _%rpath120608%_ (gx#current-expander-path)))))
                  (_%K120465%_
                   _%rest120570%_
                   (__foldr1 cons _%r120571%_ _%rbody120613%_)))
                (_%E120574120586%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120574120586%_)))))
                                          (_%E120574120586%_))))
                                  (_%E120574120586%_)))))
                      (_%E120573120616%_))))
                 (_%expand-expression120464%_
                  (lambda (_%hd120565%_ _%rest120566%_ _%r120567%_)
                    (_%K120465%_
                     _%rest120566%_
                     (cons (_%expand-e120459%_ _%hd120565%_) _%r120567%_))))
                 (_%K120465%_
                  (lambda (_%rest120495%_ _%r120496%_)
                    (let* ((_%e120497120504%_ _%rest120495%_)
                           (_%E120499120508%_
                            (lambda ()
                              (if _%begin-form120458%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form120458%_
                                    (reverse _%r120496%_))
                                   (gx#stx-source _%stx120456%_))
                                  _%r120496%_)))
                           (_%E120498120561%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120497120504%_)
                                  (let ((_%e120500120512%_
                                         (gx#syntax-e _%e120497120504%_)))
                                    (let ((_%hd120501120515%_
                                           (##car _%e120500120512%_))
                                          (_%tl120502120517%_
                                           (##cdr _%e120500120512%_)))
                                      (let* ((_%hd120520%_ _%hd120501120515%_)
                                             (_%rest120522%_
                                              _%tl120502120517%_)
                                             (_%hd120524%_
                                              (gx#core-expand-head
                                               _%hd120520%_))
                                             (_%e120525120532%_ _%hd120524%_)
                                             (_%E120527120536%_
                                              (lambda ()
                                                (_%expand-expression120464%_
                                                 _%hd120524%_
                                                 _%rest120522%_
                                                 _%r120496%_)))
                                             (_%E120526120557%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e120525120532%_)
                                                    (let ((_%e120528120540%_
                                                           (gx#syntax-e
                                                            _%e120525120532%_)))
                                                      (let ((_%hd120529120543%_
                                                             (##car _%e120528120540%_))
                                                            (_%tl120530120545%_
                                                             (##cdr _%e120528120540%_)))
                                                        (let* ((_%form120548%_
                                                                _%hd120529120543%_)
                                                               (_%body120550%_
                                                                _%tl120530120545%_)
                                                               (_%bind120552%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form120548%_)
                            (gx#resolve-identifier__0 _%form120548%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind120552%_)
                      (let ((_%$e120554%_
                             (##unchecked-structure-ref
                              _%bind120552%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e120554%_)
                            (_%expand-splice120461%_
                             _%hd120524%_
                             _%body120550%_
                             _%rest120522%_
                             _%r120496%_)
                            (if (eq? '%#cond-expand _%$e120554%_)
                                (_%expand-cond-expand120462%_
                                 _%hd120524%_
                                 _%rest120522%_
                                 _%r120496%_)
                                (if (eq? '%#include _%$e120554%_)
                                    (_%expand-include120463%_
                                     _%hd120524%_
                                     _%rest120522%_
                                     _%r120496%_)
                                    (_%expand-special120457%_
                                     _%hd120524%_
                                     _%K120465%_
                                     _%rest120522%_
                                     _%r120496%_)))))
                      (_%expand-expression120464%_
                       _%hd120524%_
                       _%rest120522%_
                       _%r120496%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120527120536%_)))))
                                        (_%E120526120557%_))))
                                  (_%E120499120508%_)))))
                      (_%E120498120561%_)))))
          (let* ((_%e120466120473%_ _%stx120456%_)
                 (_%E120468120477%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120466120473%_)))
                 (_%E120467120491%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120466120473%_)
                        (let ((_%e120469120481%_
                               (gx#syntax-e _%e120466120473%_)))
                          (let ((_%hd120470120484%_ (##car _%e120469120481%_))
                                (_%tl120471120486%_ (##cdr _%e120469120481%_)))
                            (let ((_%body120489%_ _%tl120471120486%_))
                              (if (gx#stx-list? _%body120489%_)
                                  (_%K120465%_ _%body120489%_ '())
                                  (_%E120468120477%_)))))
                        (_%E120468120477%_)))))
            (_%E120467120491%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx120632%_ _%expand-special120633%_)
        (let* ((_%begin-form120635%_ '%#begin)
               (_%expand-e120637%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx120632%_
           _%expand-special120633%_
           _%begin-form120635%_
           _%expand-e120637%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx120639%_ _%expand-special120640%_ _%begin-form120641%_)
        (let ((_%expand-e120643%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx120639%_
           _%expand-special120640%_
           _%begin-form120641%_
           _%expand-e120643%_))))
    (define gx#core-expand-block
      (lambda _g121343_
        (let ((_g121342_ (##length _g121343_)))
          (cond ((##fx= _g121342_ 2) (apply gx#core-expand-block__0 _g121343_))
                ((##fx= _g121342_ 3) (apply gx#core-expand-block__1 _g121343_))
                ((##fx= _g121342_ 4) (apply gx#core-expand-block__% _g121343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g121343_))))))
    (define gx#core-expand-block*
      (lambda (_%stx120404%_ _%expand-special120405%_)
        (let* ((_%g120406120417%_
                (gx#core-expand-block__1
                 _%stx120404%_
                 _%expand-special120405%_
                 '#f))
               (_%E120410120421%_
                (lambda ()
                  (error '"No clause matching"
                         _%g120406120417%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K120415120452%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx120404%_)))
                (_%K120412120438%_ (lambda (_%expr120436%_) _%expr120436%_))
                (_%K120411120427%_
                 (lambda (_%body120425%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body120425%_))
                    (gx#stx-source _%stx120404%_)))))
            (let ((_%try-match120408120448%_
                   (lambda ()
                     (if (pair? _%g120406120417%_)
                         (let ((_%tl120414120443%_ (##cdr _%g120406120417%_))
                               (_%hd120413120441%_ (##car _%g120406120417%_)))
                           (if (null? _%tl120414120443%_)
                               (let ((_%expr120446%_ _%hd120413120441%_))
                                 (_%K120412120438%_ _%expr120446%_))
                               (let ((_%body120430%_ _%g120406120417%_))
                                 (_%K120411120427%_ _%body120430%_))))
                         (let ((_%body120430%_ _%g120406120417%_))
                           (_%K120411120427%_ _%body120430%_))))))
              (if (null? _%g120406120417%_)
                  (_%K120415120452%_)
                  (_%try-match120408120448%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx120229%_)
        (letrec ((_%satisfied?120231%_
                  (lambda (_%condition120332%_)
                    (let* ((_%e120333120348%_ _%condition120332%_)
                           (_%E120343120352%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120333120348%_)))
                           (_%E120336120371%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120333120348%_)
                                  (let ((_%e120344120356%_
                                         (gx#syntax-e _%e120333120348%_)))
                                    (let ((_%hd120345120359%_
                                           (##car _%e120344120356%_))
                                          (_%tl120346120361%_
                                           (##cdr _%e120344120356%_)))
                                      (let* ((_%combinator120364%_
                                              _%hd120345120359%_)
                                             (_%body120366%_
                                              _%tl120346120361%_))
                                        (if (gx#stx-list? _%body120366%_)
                                            (let ((_%$e120368%_
                                                   (gx#stx-e
                                                    _%combinator120364%_)))
                                              (if (eq? 'not _%$e120368%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?120231%_
                                                        _%body120366%_))
                                                  (if (eq? 'and _%$e120368%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?120231%_
                                                       _%body120366%_)
                                                      (if (eq? 'or
                                                               _%$e120368%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?120231%_
                                                           _%body120366%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e120368%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body120366%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx120229%_
                       _%combinator120364%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E120343120352%_)))))
                                  (_%E120343120352%_))))
                           (_%E120335120394%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120333120348%_)
                                  (let ((_%e120337120375%_
                                         (gx#syntax-e _%e120333120348%_)))
                                    (let ((_%hd120338120378%_
                                           (##car _%e120337120375%_))
                                          (_%tl120339120380%_
                                           (##cdr _%e120337120375%_)))
                                      (if (and (gx#identifier?
                                                _%hd120338120378%_)
                                               (gx#core-identifier=?
                                                _%hd120338120378%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl120339120380%_)
                                              (let ((_%e120340120383%_
                                                     (gx#syntax-e
                                                      _%tl120339120380%_)))
                                                (let ((_%hd120341120386%_
                                                       (##car _%e120340120383%_))
                                                      (_%tl120342120388%_
                                                       (##cdr _%e120340120383%_)))
                                                  (let ((_%expr120391%_
                                                         _%hd120341120386%_))
                                                    (if (gx#stx-null?
                                                         _%tl120342120388%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr120391%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E120336120371%_)))))
                                              (_%E120336120371%_))
                                          (_%E120336120371%_))))
                                  (_%E120336120371%_))))
                           (_%E120334120400%_
                            (lambda ()
                              (let ((_%id120398%_ _%e120333120348%_))
                                (if (gx#identifier? _%id120398%_)
                                    (gx#core-bound-identifier?__%
                                     _%id120398%_
                                     gx#feature-binding?)
                                    (_%E120335120394%_))))))
                      (_%E120334120400%_))))
                 (_%loop120232%_
                  (lambda (_%rest120262%_)
                    (let* ((_%e120263120271%_ _%rest120262%_)
                           (_%E120269120275%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120263120271%_)))
                           (_%E120265120279%_
                            (lambda ()
                              (if (gx#stx-null? _%e120263120271%_)
                                  '()
                                  (_%E120269120275%_))))
                           (_%E120264120328%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120263120271%_)
                                  (let ((_%e120266120283%_
                                         (gx#syntax-e _%e120263120271%_)))
                                    (let ((_%hd120267120286%_
                                           (##car _%e120266120283%_))
                                          (_%tl120268120288%_
                                           (##cdr _%e120266120283%_)))
                                      (let* ((_%hd120291%_ _%hd120267120286%_)
                                             (_%rest120293%_
                                              _%tl120268120288%_)
                                             (_%e120294120301%_ _%hd120291%_)
                                             (_%E120296120305%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e120294120301%_)))
                                             (_%E120295120324%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e120294120301%_)
                                                    (let ((_%e120297120309%_
                                                           (gx#syntax-e
                                                            _%e120294120301%_)))
                                                      (let ((_%hd120298120312%_
                                                             (##car _%e120297120309%_))
                                                            (_%tl120299120314%_
                                                             (##cdr _%e120297120309%_)))
                                                        (let* ((_%condition120317%_
                                                                _%hd120298120312%_)
                                                               (_%body120319%_
                                                                _%tl120299120314%_))
                                                          (if (gx#stx-eq?
                                                               _%condition120317%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest120293%_)
                          _%body120319%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx120229%_
                           _%hd120291%_))
                      (if (_%satisfied?120231%_ _%condition120317%_)
                          _%body120319%_
                          (_%loop120232%_ _%rest120293%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120296120305%_)))))
                                        (_%E120295120324%_))))
                                  (_%E120265120279%_)))))
                      (_%E120264120328%_)))))
          (let* ((_%e120233120240%_ _%stx120229%_)
                 (_%E120235120244%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120233120240%_)))
                 (_%E120234120258%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120233120240%_)
                        (let ((_%e120236120248%_
                               (gx#syntax-e _%e120233120240%_)))
                          (let ((_%hd120237120251%_ (##car _%e120236120248%_))
                                (_%tl120238120253%_ (##cdr _%e120236120248%_)))
                            (let ((_%clauses120256%_ _%tl120238120253%_))
                              (if (gx#stx-list? _%clauses120256%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop120232%_ _%clauses120256%_))
                                  (_%E120235120244%_)))))
                        (_%E120235120244%_)))))
            (_%E120234120258%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx120172%_ _%rpath120173%_)
        (let* ((_%e120174120184%_ _%stx120172%_)
               (_%E120176120188%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120174120184%_)))
               (_%E120175120215%_
                (lambda ()
                  (if (gx#stx-pair? _%e120174120184%_)
                      (let ((_%e120177120192%_
                             (gx#syntax-e _%e120174120184%_)))
                        (let ((_%hd120178120195%_ (##car _%e120177120192%_))
                              (_%tl120179120197%_ (##cdr _%e120177120192%_)))
                          (if (gx#stx-pair? _%tl120179120197%_)
                              (let ((_%e120180120200%_
                                     (gx#syntax-e _%tl120179120197%_)))
                                (let ((_%hd120181120203%_
                                       (##car _%e120180120200%_))
                                      (_%tl120182120205%_
                                       (##cdr _%e120180120200%_)))
                                  (let ((_%path120208%_ _%hd120181120203%_))
                                    (if (gx#stx-null? _%tl120182120205%_)
                                        (if (gx#stx-string? _%path120208%_)
                                            (let ((_%rpath120213%_
                                                   (let ((_%$e120210%_
                                                          _%rpath120173%_))
                                                     (if _%$e120210%_
                                                         _%$e120210%_
                                                         (gx#core-resolve-path__%
                                                          _%path120208%_
                                                          (gx#stx-source
                                                           _%stx120172%_))))))
                                              (if (member _%rpath120213%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx120172%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath120213%_))
                                                    (gx#stx-source
                                                     _%stx120172%_)))))
                                            (_%E120176120188%_))
                                        (_%E120176120188%_)))))
                              (_%E120176120188%_))))
                      (_%E120176120188%_)))))
          (_%E120175120215%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx120222%_)
        (let ((_%rpath120224%_ '#f))
          (gx#core-expand-include%__% _%stx120222%_ _%rpath120224%_))))
    (define gx#core-expand-include%
      (lambda _g121345_
        (let ((_g121344_ (##length _g121345_)))
          (cond ((##fx= _g121344_ 1)
                 (apply gx#core-expand-include%__0 _g121345_))
                ((##fx= _g121344_ 2)
                 (apply gx#core-expand-include%__% _g121345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g121345_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K120138%_ _%stx120139%_ _%method120140%_)
        (if (procedure? _%K120138%_)
            (let ((_%$e120143%_ (gx#stx-source _%stx120139%_)))
              (if _%$e120143%_
                  ((lambda (_%g120145120147%_)
                     (gx#stx-wrap-source
                      (_%K120138%_ _%stx120139%_)
                      _%g120145120147%_))
                   _%$e120143%_)
                  (_%K120138%_ _%stx120139%_)))
            (let ((_%$e120151%_
                   (bound-method-ref _%K120138%_ _%method120140%_)))
              (if _%$e120151%_
                  ((lambda (_%g120153120155%_)
                     (gx#core-apply-expander__%
                      _%g120153120155%_
                      _%stx120139%_
                      _%method120140%_))
                   _%$e120151%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx120139%_
                   _%method120140%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K120162%_ _%stx120163%_)
        (let ((_%method120165%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K120162%_
           _%stx120163%_
           _%method120165%_))))
    (define gx#core-apply-expander
      (lambda _g121347_
        (let ((_g121346_ (##length _g121347_)))
          (cond ((##fx= _g121346_ 2)
                 (apply gx#core-apply-expander__0 _g121347_))
                ((##fx= _g121346_ 3)
                 (apply gx#core-apply-expander__% _g121347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g121347_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self118180120121%_ _%stx120123%_)
        (let* ((_%self120125%_ _%self118180120121%_)
               (_%self120127%_ _%self120125%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx120123%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self118181119961%_ _%stx119963%_)
        (let* ((_%self119965%_ _%self118181119961%_)
               (_%self119967%_ _%self119965%_)
               (_%self119976119982%_ _%self119967%_)
               (_%E119978119986%_
                (lambda ()
                  (error '"No clause matching"
                         _%self119976119982%_
                         '((macro-expander K)))
                  '#!void))
               (_%K119979119991%_
                (lambda (_%K119989%_)
                  (gx#core-apply-expander__0 _%K119989%_ _%stx119963%_)))
               (_%e119980119994%_
                (##unchecked-structure-ref _%self119976119982%_ '1 '#f '#f))
               (_%K119997%_ _%e119980119994%_))
          (_%K119979119991%_ _%K119997%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self118182119801%_ _%stx119803%_)
        (let* ((_%self119805%_ _%self118182119801%_)
               (_%self119807%_ _%self119805%_))
          (if (gx#sealed-syntax? _%stx119803%_)
              _%stx119803%_
              (let* ((_%self119816119822%_ _%self119807%_)
                     (_%E119818119826%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self119816119822%_
                               '((core-expander K)))
                        '#!void))
                     (_%K119819119831%_
                      (lambda (_%K119829%_)
                        (gx#core-apply-expander__0 _%K119829%_ _%stx119803%_)))
                     (_%e119820119834%_
                      (##unchecked-structure-ref
                       _%self119816119822%_
                       '1
                       '#f
                       '#f))
                     (_%K119837%_ _%e119820119834%_))
                (_%K119819119831%_ _%K119837%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self118183119650%_ _%stx119652%_ _%top?119653%_)
        (let* ((_%self119655%_ _%self118183119650%_)
               (_%self119657%_ _%self119655%_))
          (if (_%top?119653%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self119657%_
               _%stx119652%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx119652%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self118183119670%_ _%stx119671%_)
        (let ((_%top?119673%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self118183119670%_
           _%stx119671%_
           _%top?119673%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g121349_
        (let ((_g121348_ (##length _g121349_)))
          (cond ((##fx= _g121348_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g121349_))
                ((##fx= _g121348_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g121349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g121349_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self118184119511%_ _%stx119513%_)
        (let* ((_%self119515%_ _%self118184119511%_)
               (_%self119517%_ _%self119515%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self119517%_
           _%stx119513%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self118185119323%_ _%stx119325%_)
        (let* ((_%self119327%_ _%self118185119323%_)
               (_%self119329%_ _%self119327%_)
               (_%self119338119344%_ _%self119329%_)
               (_%E119340119348%_
                (lambda ()
                  (error '"No clause matching"
                         _%self119338119344%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K119341119381%_
                (lambda (_%id119351%_)
                  (let* ((_%e119352119359%_ _%stx119325%_)
                         (_%E119354119363%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e119352119359%_)))
                         (_%E119353119377%_
                          (lambda ()
                            (if (gx#stx-pair? _%e119352119359%_)
                                (let ((_%e119355119367%_
                                       (gx#syntax-e _%e119352119359%_)))
                                  (let ((_%hd119356119370%_
                                         (##car _%e119355119367%_))
                                        (_%tl119357119372%_
                                         (##cdr _%e119355119367%_)))
                                    (let ((_%body119375%_ _%tl119357119372%_))
                                      (gx#core-cons
                                       _%id119351%_
                                       _%body119375%_))))
                                (_%E119354119363%_)))))
                    (_%E119353119377%_))))
               (_%e119342119384%_
                (##unchecked-structure-ref _%self119338119344%_ '1 '#f '#f))
               (_%id119387%_ _%e119342119384%_))
          (_%K119341119381%_ _%id119387%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self119149%_ _%stx119150%_ _%method119151%_)
        (let* ((_%self119152119160%_ _%self119149%_)
               (_%E119154119164%_
                (lambda ()
                  (error '"No clause matching"
                         _%self119152119160%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K119155119171%_
                (lambda (_%phi119167%_ _%ctx119168%_ _%K119169%_)
                  (gx#core-apply-user-macro
                   _%K119169%_
                   _%stx119150%_
                   _%ctx119168%_
                   _%phi119167%_
                   _%method119151%_))))
          (if (##structure-instance-of?
               _%self119152119160%_
               'gx#user-expander::t)
              (let* ((_%e119156119174%_
                      (##unchecked-structure-ref
                       _%self119152119160%_
                       '1
                       '#f
                       '#f))
                     (_%K119177%_ _%e119156119174%_)
                     (_%e119157119179%_
                      (##unchecked-structure-ref
                       _%self119152119160%_
                       '2
                       '#f
                       '#f))
                     (_%ctx119182%_ _%e119157119179%_)
                     (_%e119158119184%_
                      (##unchecked-structure-ref
                       _%self119152119160%_
                       '3
                       '#f
                       '#f))
                     (_%phi119187%_ _%e119158119184%_))
                (_%K119155119171%_ _%phi119187%_ _%ctx119182%_ _%K119177%_))
              (_%E119154119164%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self119192%_ _%stx119193%_)
        (let ((_%method119195%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self119192%_
           _%stx119193%_
           _%method119195%_))))
    (define gx#core-apply-user-expander
      (lambda _g121351_
        (let ((_g121350_ (##length _g121351_)))
          (cond ((##fx= _g121350_ 2)
                 (apply gx#core-apply-user-expander__0 _g121351_))
                ((##fx= _g121350_ 3)
                 (apply gx#core-apply-user-expander__% _g121351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g121351_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K119139%_
               _%stx119140%_
               _%ctx119141%_
               _%phi119142%_
               _%method119143%_)
        (let ((_%mark119145%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx119141%_
                _%phi119142%_
                _%stx119140%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K119139%_
               (gx#stx-apply-mark _%stx119140%_ _%mark119145%_)
               _%method119143%_)
              _%mark119145%_))
           gx#current-expander-marks
           (cons _%mark119145%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx118987%_ _%phi118988%_ _%ctx118989%_)
        (let _%lp118991%_ ((_%bind118993%_
                            (gx#core-resolve-identifier__%
                             _%stx118987%_
                             _%phi118988%_
                             _%ctx118989%_)))
          (if (##structure-direct-instance-of?
               _%bind118993%_
               'gx#import-binding::t)
              (_%lp118991%_
               (##unchecked-structure-ref _%bind118993%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind118993%_
                   'gx#alias-binding::t)
                  (_%lp118991%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind118993%_ '4 '#f '#f)
                    _%phi118988%_
                    _%ctx118989%_))
                  _%bind118993%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx119001%_)
        (let* ((_%phi119003%_ (gx#current-expander-phi))
               (_%ctx119005%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx119001%_
           _%phi119003%_
           _%ctx119005%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx119007%_ _%phi119008%_)
        (let ((_%ctx119010%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx119007%_
           _%phi119008%_
           _%ctx119010%_))))
    (define gx#resolve-identifier
      (lambda _g121353_
        (let ((_g121352_ (##length _g121353_)))
          (cond ((##fx= _g121352_ 1)
                 (apply gx#resolve-identifier__0 _g121353_))
                ((##fx= _g121352_ 2)
                 (apply gx#resolve-identifier__1 _g121353_))
                ((##fx= _g121352_ 3)
                 (apply gx#resolve-identifier__% _g121353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g121353_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx118942%_
               _%val118943%_
               _%rebind?118944%_
               _%phi118945%_
               _%ctx118946%_)
        (let ((_%rebind?118951%_
               (if (not _%rebind?118944%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?118944%_)
                       _%rebind?118944%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx118942%_)
           _%val118943%_
           _%rebind?118951%_
           _%phi118945%_
           _%ctx118946%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx118956%_ _%val118957%_)
        (let* ((_%rebind?118959%_ '#f)
               (_%phi118961%_ (gx#current-expander-phi))
               (_%ctx118963%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx118956%_
           _%val118957%_
           _%rebind?118959%_
           _%phi118961%_
           _%ctx118963%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx118965%_ _%val118966%_ _%rebind?118967%_)
        (let* ((_%phi118969%_ (gx#current-expander-phi))
               (_%ctx118971%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx118965%_
           _%val118966%_
           _%rebind?118967%_
           _%phi118969%_
           _%ctx118971%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx118973%_ _%val118974%_ _%rebind?118975%_ _%phi118976%_)
        (let ((_%ctx118978%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx118973%_
           _%val118974%_
           _%rebind?118975%_
           _%phi118976%_
           _%ctx118978%_))))
    (define gx#bind-identifier!
      (lambda _g121355_
        (let ((_g121354_ (##length _g121355_)))
          (cond ((##fx= _g121354_ 2) (apply gx#bind-identifier!__0 _g121355_))
                ((##fx= _g121354_ 3) (apply gx#bind-identifier!__1 _g121355_))
                ((##fx= _g121354_ 4) (apply gx#bind-identifier!__2 _g121355_))
                ((##fx= _g121354_ 5) (apply gx#bind-identifier!__% _g121355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g121355_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx118908%_ _%phi118909%_ _%ctx118910%_)
        (let _%lp118912%_ ((_%e118914%_ _%stx118908%_)
                           (_%marks118915%_ (gx#current-expander-marks)))
          (if (symbol? _%e118914%_)
              (gx#core-resolve-binding
               _%e118914%_
               _%phi118909%_
               _%phi118909%_
               _%ctx118910%_
               (reverse _%marks118915%_))
              (if (gx#identifier-quote? _%e118914%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e118914%_ '1 '#f '#f)
                   _%phi118909%_
                   '0
                   (##unchecked-structure-ref _%e118914%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e118914%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e118914%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e118914%_ '1 '#f '#f)
                       _%phi118909%_
                       _%phi118909%_
                       _%ctx118910%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e118914%_ '3 '#f '#f)
                        _%marks118915%_))
                      (if (##structure-direct-instance-of?
                           _%e118914%_
                           'gx#syntax-wrap::t)
                          (_%lp118912%_
                           (##unchecked-structure-ref _%e118914%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e118914%_ '3 '#f '#f)
                            _%marks118915%_))
                          (if (##structure-instance-of?
                               _%e118914%_
                               'gerbil#AST::t)
                              (_%lp118912%_
                               (##unchecked-structure-ref
                                _%e118914%_
                                '1
                                '#f
                                '#f)
                               _%marks118915%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx118908%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx118926%_)
        (let* ((_%phi118928%_ (gx#current-expander-phi))
               (_%ctx118930%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx118926%_
           _%phi118928%_
           _%ctx118930%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx118932%_ _%phi118933%_)
        (let ((_%ctx118935%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx118932%_
           _%phi118933%_
           _%ctx118935%_))))
    (define gx#core-resolve-identifier
      (lambda _g121357_
        (let ((_g121356_ (##length _g121357_)))
          (cond ((##fx= _g121356_ 1)
                 (apply gx#core-resolve-identifier__0 _g121357_))
                ((##fx= _g121356_ 2)
                 (apply gx#core-resolve-identifier__1 _g121357_))
                ((##fx= _g121356_ 3)
                 (apply gx#core-resolve-identifier__% _g121357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g121357_))))))
    (define gx#core-resolve-binding
      (lambda (_%id118818%_
               _%phi118819%_
               _%src-phi118820%_
               _%ctx118821%_
               _%marks118822%_)
        (letrec ((_%resolve118824%_
                  (lambda (_%ctx118892%_ _%src-phi118893%_ _%key118894%_)
                    (let _%lp118896%_ ((_%ctx118898%_
                                        (gx#core-context-shift
                                         _%ctx118892%_
                                         _%phi118819%_))
                                       (_%dphi118899%_
                                        (fx- _%phi118819%_ _%src-phi118893%_)))
                      (let ((_%$e118901%_
                             (gx#core-context-resolve
                              _%ctx118898%_
                              _%key118894%_)))
                        (if _%$e118901%_
                            _%$e118901%_
                            (if (fxzero? _%dphi118899%_)
                                '#f
                                (if (fxpositive? _%dphi118899%_)
                                    (_%lp118896%_
                                     (gx#core-context-shift _%ctx118898%_ '-1)
                                     (##fx- _%dphi118899%_ '1))
                                    (_%lp118896%_
                                     (gx#core-context-shift _%ctx118898%_ '1)
                                     (##fx+ _%dphi118899%_ '1))))))))))
          (let _%lp118826%_ ((_%ctx118828%_ _%ctx118821%_)
                             (_%src-phi118829%_ _%src-phi118820%_)
                             (_%rest118830%_ _%marks118822%_))
            (let* ((_%rest118831118839%_ _%rest118830%_)
                   (_%else118833118847%_
                    (lambda ()
                      (_%resolve118824%_
                       _%ctx118828%_
                       _%src-phi118829%_
                       _%id118818%_)))
                   (_%K118835118880%_
                    (lambda (_%rest118850%_ _%hd118851%_)
                      (let* ((_%hd118852118858%_ _%hd118851%_)
                             (_%E118854118862%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd118852118858%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K118855118872%_
                              (lambda (_%subst118865%_)
                                (let ((_%$e118869%_
                                       (let ((_%key118867%_
                                              (if _%subst118865%_
                                                  (hash-get
                                                   _%subst118865%_
                                                   _%id118818%_)
                                                  '#f)))
                                         (if _%key118867%_
                                             (_%resolve118824%_
                                              _%ctx118828%_
                                              _%src-phi118829%_
                                              _%key118867%_)
                                             '#f))))
                                  (if _%$e118869%_
                                      _%$e118869%_
                                      (_%lp118826%_
                                       (##unchecked-structure-ref
                                        _%hd118851%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd118851%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest118850%_))))))
                        (if (##structure-instance-of?
                             _%hd118852118858%_
                             'gx#expander-mark::t)
                            (let* ((_%e118856118875%_
                                    (##unchecked-structure-ref
                                     _%hd118852118858%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst118878%_ _%e118856118875%_))
                              (_%K118855118872%_ _%subst118878%_))
                            (_%E118854118862%_))))))
              (if (pair? _%rest118831118839%_)
                  (let ((_%hd118836118883%_ (##car _%rest118831118839%_))
                        (_%tl118837118885%_ (##cdr _%rest118831118839%_)))
                    (let* ((_%hd118888%_ _%hd118836118883%_)
                           (_%rest118890%_ _%tl118837118885%_))
                      (_%K118835118880%_ _%rest118890%_ _%hd118888%_)))
                  (_%else118833118847%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key118688%_
               _%val118689%_
               _%rebind?118690%_
               _%phi118691%_
               _%ctx118692%_)
        (letrec ((_%update-binding118694%_
                  (lambda (_%xval118767%_)
                    (if (or (_%rebind?118690%_
                             _%ctx118692%_
                             _%xval118767%_
                             _%val118689%_)
                            (and (##structure-direct-instance-of?
                                  _%xval118767%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval118767%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val118689%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val118689%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval118767%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val118689%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val118689%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval118767%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val118689%_
                        (if (and (##structure-direct-instance-of?
                                  _%val118689%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val118689%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval118767%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val118689%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval118767%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval118767%_
                            (if (and (##structure-direct-instance-of?
                                      _%val118689%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval118767%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key118688%_
                                 (cons (##unchecked-structure-ref
                                        _%val118689%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val118689%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval118767%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval118767%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval118767%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval118767%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key118688%_
                                 _%val118689%_
                                 _%xval118767%_))))))
                 (_%gensubst118695%_
                  (lambda (_%subst118762%_ _%id118763%_)
                    (let ((_%eid118765%_
                           (gensym (if (uninterned-symbol? _%id118763%_)
                                       '%
                                       _%id118763%_))))
                      (hash-put! _%subst118762%_ _%id118763%_ _%eid118765%_)
                      _%eid118765%_)))
                 (_%subst!118696%_
                  (lambda (_%key118698%_)
                    (let* ((_%key118699118707%_ _%key118698%_)
                           (_%else118701118715%_ (lambda () _%key118698%_))
                           (_%K118703118750%_
                            (lambda (_%mark118718%_ _%id118719%_)
                              (let* ((_%mark118720118726%_ _%mark118718%_)
                                     (_%E118722118730%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark118720118726%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K118723118742%_
                                      (lambda (_%subst118733%_)
                                        (if (not _%subst118733%_)
                                            (let ((_%subst118736%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark118718%_
                                               _%subst118736%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst118695%_
                                               _%subst118736%_
                                               _%id118719%_))
                                            (let ((_%$e118738%_
                                                   (hash-get
                                                    _%subst118733%_
                                                    _%id118719%_)))
                                              (if _%$e118738%_
                                                  _%$e118738%_
                                                  (_%gensubst118695%_
                                                   _%subst118733%_
                                                   _%id118719%_)))))))
                                (if (##structure-instance-of?
                                     _%mark118720118726%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e118724118745%_
                                            (##unchecked-structure-ref
                                             _%mark118720118726%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst118748%_ _%e118724118745%_))
                                      (_%K118723118742%_ _%subst118748%_))
                                    (_%E118722118730%_))))))
                      (if (pair? _%key118699118707%_)
                          (let ((_%hd118704118753%_
                                 (##car _%key118699118707%_))
                                (_%tl118705118755%_
                                 (##cdr _%key118699118707%_)))
                            (let* ((_%id118758%_ _%hd118704118753%_)
                                   (_%mark118760%_ _%tl118705118755%_))
                              (_%K118703118750%_ _%mark118760%_ _%id118758%_)))
                          (_%else118701118715%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx118692%_ _%phi118691%_)
           (_%subst!118696%_ _%key118688%_)
           _%val118689%_
           _%update-binding118694%_))))
    (define gx#core-bind!__0
      (lambda (_%key118788%_ _%val118789%_)
        (let* ((_%rebind?118791%_ false)
               (_%phi118793%_ (gx#current-expander-phi))
               (_%ctx118795%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key118788%_
           _%val118789%_
           _%rebind?118791%_
           _%phi118793%_
           _%ctx118795%_))))
    (define gx#core-bind!__1
      (lambda (_%key118797%_ _%val118798%_ _%rebind?118799%_)
        (let* ((_%phi118801%_ (gx#current-expander-phi))
               (_%ctx118803%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key118797%_
           _%val118798%_
           _%rebind?118799%_
           _%phi118801%_
           _%ctx118803%_))))
    (define gx#core-bind!__2
      (lambda (_%key118805%_ _%val118806%_ _%rebind?118807%_ _%phi118808%_)
        (let ((_%ctx118810%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key118805%_
           _%val118806%_
           _%rebind?118807%_
           _%phi118808%_
           _%ctx118810%_))))
    (define gx#core-bind!
      (lambda _g121359_
        (let ((_g121358_ (##length _g121359_)))
          (cond ((##fx= _g121358_ 2) (apply gx#core-bind!__0 _g121359_))
                ((##fx= _g121358_ 3) (apply gx#core-bind!__1 _g121359_))
                ((##fx= _g121358_ 4) (apply gx#core-bind!__2 _g121359_))
                ((##fx= _g121358_ 5) (apply gx#core-bind!__% _g121359_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g121359_))))))
    (define gx#core-identifier-key
      (lambda (_%stx118619%_)
        (if (symbol? _%stx118619%_)
            (let* ((_%g118621118629%_ (gx#current-expander-marks))
                   (_%else118623118637%_ (lambda () _%stx118619%_))
                   (_%K118625118642%_
                    (lambda (_%hd118640%_) (cons _%stx118619%_ _%hd118640%_))))
              (if (pair? _%g118621118629%_)
                  (let* ((_%hd118626118645%_ (##car _%g118621118629%_))
                         (_%hd118648%_ _%hd118626118645%_))
                    (_%K118625118642%_ _%hd118648%_))
                  (_%else118623118637%_)))
            (if (gx#identifier? _%stx118619%_)
                (let* ((_%id118651%_ (gx#syntax-local-unwrap _%stx118619%_))
                       (_%eid118653%_ (gx#stx-e _%id118651%_))
                       (_%marks118655%_
                        (gx#stx-identifier-marks* _%id118651%_))
                       (_%marks118657118665%_ _%marks118655%_)
                       (_%else118659118673%_ (lambda () _%eid118653%_))
                       (_%K118661118678%_
                        (lambda (_%hd118676%_)
                          (cons _%eid118653%_ _%hd118676%_))))
                  (if (pair? _%marks118657118665%_)
                      (let* ((_%hd118662118681%_ (##car _%marks118657118665%_))
                             (_%hd118684%_ _%hd118662118681%_))
                        (_%K118661118678%_ _%hd118684%_))
                      (_%else118659118673%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx118619%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx118558%_ _%phi118559%_)
        (letrec ((_%make-phi118561%_
                  (lambda (_%super118617%_)
                    (let ((__obj121331
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj121331
                       (##gensym 'phi)
                       _%super118617%_)
                      __obj121331)))
                 (_%make-phi/up118562%_
                  (lambda (_%ctx118612%_ _%super118613%_)
                    (let ((_%ctx+1118615%_
                           (_%make-phi118561%_ _%super118613%_)))
                      (##unchecked-structure-set!
                       _%ctx118612%_
                       _%ctx+1118615%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1118615%_
                       _%ctx118612%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1118615%_)))
                 (_%make-phi/down118563%_
                  (lambda (_%ctx118607%_ _%super118608%_)
                    (let ((_%ctx-1118610%_
                           (_%make-phi118561%_ _%super118608%_)))
                      (##unchecked-structure-set!
                       _%ctx-1118610%_
                       _%ctx118607%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx118607%_
                       _%ctx-1118610%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1118610%_)))
                 (_%shift118564%_
                  (lambda (_%ctx118590%_
                           _%delta118591%_
                           _%make-delta-context118592%_
                           _%phi118593%_
                           _%K118594%_)
                    (let ((_%$e118596%_
                           (##unchecked-structure-ref
                            _%ctx118590%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e118596%_
                          ((lambda (_%super118599%_)
                             (let* ((_%super118601%_
                                     (_%K118594%_
                                      _%super118599%_
                                      _%delta118591%_))
                                    (_%ctx+d118603%_
                                     (_%make-delta-context118592%_
                                      _%ctx118590%_
                                      _%super118601%_)))
                               (_%K118594%_
                                _%ctx+d118603%_
                                (fx- _%phi118593%_ _%delta118591%_))))
                           _%$e118596%_)
                          (error '"Bad context" _%ctx118590%_))))))
          (let _%K118566%_ ((_%ctx118568%_ _%ctx118558%_)
                            (_%phi118569%_ _%phi118559%_))
            (if (fxzero? _%phi118569%_)
                _%ctx118568%_
                (if (##structure-instance-of? _%ctx118568%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi118569%_)
                        (let ((_%$e118573%_
                               (##unchecked-structure-ref
                                _%ctx118568%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e118573%_
                              ((lambda (_%g118575118577%_)
                                 (_%K118566%_
                                  _%g118575118577%_
                                  (##fx- _%phi118569%_ '1)))
                               _%$e118573%_)
                              (_%shift118564%_
                               _%ctx118568%_
                               '1
                               _%make-phi/up118562%_
                               _%phi118569%_
                               _%K118566%_)))
                        (let ((_%$e118581%_
                               (##unchecked-structure-ref
                                _%ctx118568%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e118581%_
                              ((lambda (_%g118583118585%_)
                                 (_%K118566%_
                                  _%g118583118585%_
                                  (##fx+ _%phi118569%_ '1)))
                               _%$e118581%_)
                              (_%shift118564%_
                               _%ctx118568%_
                               '-1
                               _%make-phi/down118563%_
                               _%phi118569%_
                               _%K118566%_))))
                    _%ctx118568%_))))))
    (define gx#core-context-get
      (lambda (_%ctx118555%_ _%key118556%_)
        (hash-get
         (##unchecked-structure-ref _%ctx118555%_ '2 '#f '#f)
         _%key118556%_)))
    (define gx#core-context-put!
      (lambda (_%ctx118551%_ _%key118552%_ _%val118553%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx118551%_ '2 '#f '#f)
         _%key118552%_
         _%val118553%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx118537%_ _%key118538%_)
        (let _%lp118540%_ ((_%ctx118542%_ _%ctx118537%_))
          (let ((_%$e118544%_
                 (gx#core-context-get _%ctx118542%_ _%key118538%_)))
            (if _%$e118544%_
                _%$e118544%_
                (let ((_%$e118547%_
                       (if (##structure-instance-of?
                            _%ctx118542%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx118542%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e118547%_ (_%lp118540%_ _%$e118547%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx118526%_ _%key118527%_ _%val118528%_ _%rebind118529%_)
        (let ((_%$e118531%_ (gx#core-context-get _%ctx118526%_ _%key118527%_)))
          (if _%$e118531%_
              ((lambda (_%xval118534%_)
                 (gx#core-context-put!
                  _%ctx118526%_
                  _%key118527%_
                  (_%rebind118529%_ _%xval118534%_)))
               _%$e118531%_)
              (gx#core-context-put!
               _%ctx118526%_
               _%key118527%_
               _%val118528%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx118501%_ _%stop?118502%_)
        (let _%lp118504%_ ((_%ctx118506%_ _%ctx118501%_))
          (if (_%stop?118502%_ _%ctx118506%_)
              _%ctx118506%_
              (if (##structure-instance-of? _%ctx118506%_ 'gx#phi-context::t)
                  (_%lp118504%_
                   (##unchecked-structure-ref _%ctx118506%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx118515%_ (gx#current-expander-context))
               (_%stop?118517%_ gx#top-context?))
          (gx#core-context-top__% _%ctx118515%_ _%stop?118517%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx118519%_)
        (let ((_%stop?118521%_ gx#top-context?))
          (gx#core-context-top__% _%ctx118519%_ _%stop?118521%_))))
    (define gx#core-context-top
      (lambda _g121361_
        (let ((_g121360_ (##length _g121361_)))
          (cond ((##fx= _g121360_ 0) (apply gx#core-context-top__0 _g121361_))
                ((##fx= _g121360_ 1) (apply gx#core-context-top__1 _g121361_))
                ((##fx= _g121360_ 2) (apply gx#core-context-top__% _g121361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g121361_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx118486%_)
        (let _%lp118488%_ ((_%ctx118490%_ _%ctx118486%_))
          (if (##structure-instance-of? _%ctx118490%_ 'gx#phi-context::t)
              (_%lp118488%_
               (##unchecked-structure-ref _%ctx118490%_ '3 '#f '#f))
              _%ctx118490%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx118496%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx118496%_))))
    (define gx#core-context-root
      (lambda _g121363_
        (let ((_g121362_ (##length _g121363_)))
          (cond ((##fx= _g121362_ 0) (apply gx#core-context-root__0 _g121363_))
                ((##fx= _g121362_ 1) (apply gx#core-context-root__% _g121363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g121363_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx118468%_ . _%ignore118469%_)
        (let ((_%$e118471%_ (gx#current-expander-allow-rebind?)))
          (if _%$e118471%_
              _%$e118471%_
              (if (##structure-instance-of? _%ctx118468%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx118468%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx118468%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx118478%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx118478%_))))
    (define gx#core-context-rebind?
      (lambda _g121365_
        (let ((_g121364_ (##length _g121365_)))
          (cond ((##fx= _g121364_ 0)
                 (apply gx#core-context-rebind?__0 _g121365_))
                ((##fx= _g121364_ 1)
                 (apply gx#core-context-rebind?__% _g121365_))
                ((##fx>= _g121364_ 1)
                 (apply gx#core-context-rebind?__% _g121365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g121365_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx118451%_)
        (let ((_%$e118453%_ (gx#core-context-top__1 _%ctx118451%_)))
          (if _%$e118453%_
              ((lambda (_%ctx118456%_)
                 (if (##structure-instance-of?
                      _%ctx118456%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx118456%_ '6 '#f '#f)
                     '#f))
               _%$e118453%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx118463%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx118463%_))))
    (define gx#core-context-namespace
      (lambda _g121367_
        (let ((_g121366_ (##length _g121367_)))
          (cond ((##fx= _g121366_ 0)
                 (apply gx#core-context-namespace__0 _g121367_))
                ((##fx= _g121366_ 1)
                 (apply gx#core-context-namespace__% _g121367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g121367_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind118437%_ _%is?118438%_)
        (if (##structure-direct-instance-of?
             _%bind118437%_
             'gx#syntax-binding::t)
            (_%is?118438%_
             (##unchecked-structure-ref _%bind118437%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind118443%_)
        (let ((_%is?118445%_ gx#expander?))
          (gx#expander-binding?__% _%bind118443%_ _%is?118445%_))))
    (define gx#expander-binding?
      (lambda _g121369_
        (let ((_g121368_ (##length _g121369_)))
          (cond ((##fx= _g121368_ 1) (apply gx#expander-binding?__0 _g121369_))
                ((##fx= _g121368_ 2) (apply gx#expander-binding?__% _g121369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g121369_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind118434%_)
        (gx#expander-binding?__% _%bind118434%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind118432%_)
        (gx#expander-binding?__% _%bind118432%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind118426%_)
        (letrec ((_%direct-special-form?118428%_
                  (lambda (_%obj118430%_)
                    (##structure-direct-instance-of?
                     _%obj118430%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind118426%_
           _%direct-special-form?118428%_))))
    (define gx#special-form-binding?
      (lambda (_%bind118424%_)
        (gx#expander-binding?__% _%bind118424%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind118415%_)
        (letrec ((_%feature?118417%_
                  (lambda (_%e118419%_)
                    (let ((_%$e118421%_
                           (##structure-instance-of?
                            _%e118419%_
                            'gx#feature-expander::t)))
                      (if _%$e118421%_
                          _%$e118421%_
                          (##structure-instance-of?
                           _%e118419%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind118415%_ _%feature?118417%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind118413%_)
        (gx#expander-binding?__% _%bind118413%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id118400%_ _%bound?118401%_)
        (if (gx#identifier? _%id118400%_)
            (_%bound?118401%_ (gx#resolve-identifier__0 _%id118400%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id118406%_)
        (let ((_%bound?118408%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id118406%_ _%bound?118408%_))))
    (define gx#core-bound-identifier?
      (lambda _g121371_
        (let ((_g121370_ (##length _g121371_)))
          (cond ((##fx= _g121370_ 1)
                 (apply gx#core-bound-identifier?__0 _g121371_))
                ((##fx= _g121370_ 2)
                 (apply gx#core-bound-identifier?__% _g121371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g121371_))))))
    (define gx#core-identifier=?
      (lambda (_%x118390%_ _%y118391%_)
        (letrec ((_%y=?118393%_
                  (lambda (_%xid118397%_)
                    ((if (list? _%y118391%_) memq eq?)
                     _%xid118397%_
                     _%y118391%_))))
          (let ((_%bind118395%_ (gx#resolve-identifier__0 _%x118390%_)))
            (if (##structure-instance-of? _%bind118395%_ 'gx#binding::t)
                (_%y=?118393%_
                 (##unchecked-structure-ref _%bind118395%_ '1 '#f '#f))
                (_%y=?118393%_ (gx#stx-e _%x118390%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e118388%_)
        (if (interned-symbol? _%e118388%_)
            (string-index__0 (symbol->string _%e118388%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx118341%_ _%src118342%_ _%ctx118343%_ _%marks118344%_)
        (if (##structure? _%stx118341%_)
            (let ((_%$e118346%_ (gx#sealed-syntax-unwrap _%stx118341%_)))
              (if _%$e118346%_
                  _%$e118346%_
                  (if (gx#identifier? _%stx118341%_)
                      (let ((_%id118350%_
                             (gx#stx-unwrap__% _%stx118341%_ _%marks118344%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id118350%_ '1 '#f '#f)
                         (let ((_%$e118352%_
                                (##unchecked-structure-ref
                                 _%id118350%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e118352%_ _%$e118352%_ _%src118342%_))
                         _%ctx118343%_
                         (##unchecked-structure-ref _%id118350%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx118341%_)
                       (let ((_%$e118356%_ (gx#stx-source _%stx118341%_)))
                         (if _%$e118356%_ _%$e118356%_ _%src118342%_))
                       _%ctx118343%_
                       (reverse _%marks118344%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx118341%_
             _%src118342%_
             _%ctx118343%_
             (reverse _%marks118344%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx118362%_)
        (let* ((_%src118364%_ '#f)
               (_%ctx118366%_ (gx#current-expander-context))
               (_%marks118368%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118362%_
           _%src118364%_
           _%ctx118366%_
           _%marks118368%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx118370%_ _%src118371%_)
        (let* ((_%ctx118373%_ (gx#current-expander-context))
               (_%marks118375%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118370%_
           _%src118371%_
           _%ctx118373%_
           _%marks118375%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx118377%_ _%src118378%_ _%ctx118379%_)
        (let ((_%marks118381%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118377%_
           _%src118378%_
           _%ctx118379%_
           _%marks118381%_))))
    (define gx#core-quote-syntax
      (lambda _g121373_
        (let ((_g121372_ (##length _g121373_)))
          (cond ((##fx= _g121372_ 1) (apply gx#core-quote-syntax__0 _g121373_))
                ((##fx= _g121372_ 2) (apply gx#core-quote-syntax__1 _g121373_))
                ((##fx= _g121372_ 3) (apply gx#core-quote-syntax__2 _g121373_))
                ((##fx= _g121372_ 4) (apply gx#core-quote-syntax__% _g121373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g121373_))))))
    (define gx#core-cons
      (lambda (_%hd118337%_ _%tl118338%_)
        (cons (gx#core-quote-syntax__0 _%hd118337%_) _%tl118338%_)))
    (define gx#core-list
      (lambda (_%hd118334%_ . _%rest118335%_)
        (cons (gx#core-quote-syntax__0 _%hd118334%_) _%rest118335%_)))
    (define gx#core-cons*
      (lambda (_%hd118331%_ . _%rest118332%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd118331%_) _%rest118332%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path118300%_ _%rel118301%_)
        (let ((_%path118318%_ (gx#stx-e _%stx-path118300%_))
              (_%reldir118319%_
               (let _%lp118303%_ ((_%relsrc118305%_
                                   (let ((_%$e118315%_
                                          (gx#stx-source _%stx-path118300%_)))
                                     (if _%$e118315%_
                                         _%$e118315%_
                                         _%rel118301%_))))
                 (if (##structure-instance-of? _%relsrc118305%_ 'gerbil#AST::t)
                     (_%lp118303%_
                      (let ((_%$e118308%_ (gx#stx-source _%relsrc118305%_)))
                        (if _%$e118308%_
                            _%$e118308%_
                            (gx#stx-e _%relsrc118305%_))))
                     (if (source-location-path? _%relsrc118305%_)
                         (path-directory
                          (source-location-path _%relsrc118305%_))
                         (if (string? _%relsrc118305%_)
                             (path-directory _%relsrc118305%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path118318%_ (path-normalize _%reldir118319%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path118324%_)
        (let ((_%rel118326%_ '#f))
          (gx#core-resolve-path__% _%stx-path118324%_ _%rel118326%_))))
    (define gx#core-resolve-path
      (lambda _g121375_
        (let ((_g121374_ (##length _g121375_)))
          (cond ((##fx= _g121374_ 1) (apply gx#core-resolve-path__0 _g121375_))
                ((##fx= _g121374_ 2) (apply gx#core-resolve-path__% _g121375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g121375_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr118256%_ _%ctx118257%_)
        (let* ((_%repr118258118265%_ _%repr118256%_)
               (_%E118260118269%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr118258118265%_
                         '([phi . subs]))
                  '#!void))
               (_%K118261118277%_
                (lambda (_%subs118272%_ _%phi118273%_)
                  (let ((_%subst118275%_
                         (if (null? _%subs118272%_)
                             '#f
                             (list->hash-table-eq _%subs118272%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst118275%_
                     _%ctx118257%_
                     _%phi118273%_
                     '#f)))))
          (if (pair? _%repr118258118265%_)
              (let ((_%hd118262118280%_ (##car _%repr118258118265%_))
                    (_%tl118263118282%_ (##cdr _%repr118258118265%_)))
                (let* ((_%phi118285%_ _%hd118262118280%_)
                       (_%subs118287%_ _%tl118263118282%_))
                  (_%K118261118277%_ _%subs118287%_ _%phi118285%_)))
              (_%E118260118269%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr118292%_)
        (let ((_%ctx118294%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr118292%_ _%ctx118294%_))))
    (define gx#core-deserialize-mark
      (lambda _g121377_
        (let ((_g121376_ (##length _g121377_)))
          (cond ((##fx= _g121376_ 1)
                 (apply gx#core-deserialize-mark__0 _g121377_))
                ((##fx= _g121376_ 2)
                 (apply gx#core-deserialize-mark__% _g121377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g121377_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx118253%_)
        (gx#stx-rewrap _%stx118253%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx118251%_)
        (gx#stx-unwrap__% _%stx118251%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx118221%_)
        (let* ((_%g118222118230%_ (gx#current-expander-marks))
               (_%else118224118238%_ (lambda () _%stx118221%_))
               (_%K118226118243%_
                (lambda (_%hd118241%_)
                  (gx#stx-apply-mark _%stx118221%_ _%hd118241%_))))
          (if (pair? _%g118222118230%_)
              (let* ((_%hd118227118246%_ (##car _%g118222118230%_))
                     (_%hd118249%_ _%hd118227118246%_))
                (_%K118226118243%_ _%hd118249%_))
              (_%else118224118238%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx118206%_ _%E118207%_)
        (let ((_%bind118209%_ (gx#resolve-identifier__0 _%stx118206%_)))
          (if (##structure-direct-instance-of?
               _%bind118209%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind118209%_ '4 '#f '#f)
              (_%E118207%_ _%stx118206%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx118214%_)
        (let ((_%E118216%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx118214%_ _%E118216%_))))
    (define gx#syntax-local-e
      (lambda _g121379_
        (let ((_g121378_ (##length _g121379_)))
          (cond ((##fx= _g121378_ 1) (apply gx#syntax-local-e__0 _g121379_))
                ((##fx= _g121378_ 2) (apply gx#syntax-local-e__% _g121379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g121379_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx118190%_ _%E118191%_)
        (let ((_%e118193%_ (gx#syntax-local-e__% _%stx118190%_ _%E118191%_)))
          (if (##structure-instance-of? _%e118193%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e118193%_ '1 '#f '#f)
              _%e118193%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx118198%_)
        (let ((_%E118200%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx118198%_ _%E118200%_))))
    (define gx#syntax-local-value
      (lambda _g121381_
        (let ((_g121380_ (##length _g121381_)))
          (cond ((##fx= _g121380_ 1)
                 (apply gx#syntax-local-value__0 _g121381_))
                ((##fx= _g121380_ 2)
                 (apply gx#syntax-local-value__% _g121381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g121381_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx118187%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx118187%_)))))
