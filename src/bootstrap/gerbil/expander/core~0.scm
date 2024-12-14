(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1734131746)
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
      (lambda _%$args121592%_
        (apply make-instance gx#expander-context::t _%$args121592%_)))
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
      (lambda _%$args121589%_
        (apply make-instance gx#root-context::t _%$args121589%_)))
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
      (lambda _%$args121586%_
        (apply make-instance gx#phi-context::t _%$args121586%_)))
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
      (lambda _%$args121583%_
        (apply make-instance gx#top-context::t _%$args121583%_)))
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
      (lambda _%$args121580%_
        (apply make-instance gx#module-context::t _%$args121580%_)))
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
      (lambda _%$args121577%_
        (apply make-instance gx#prelude-context::t _%$args121577%_)))
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
      (lambda _%$args121574%_
        (apply make-instance gx#local-context::t _%$args121574%_)))
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
      (lambda (_%self118480121545%_ _%id121547%_ _%super121548%_)
        (let* ((_%self121550%_ _%self118480121545%_)
               (_%self121552%_ _%self121550%_))
          (if (##fx< '3 (##structure-length _%self121552%_))
              (begin
                (##unchecked-structure-set!
                 _%self121552%_
                 _%id121547%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121552%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121552%_
                 _%super121548%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self121552%_
                     '3
                     (##vector-length _%self121552%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self118480121565%_ _%id121566%_)
        (let ((_%super121568%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self118480121565%_
           _%id121566%_
           _%super121568%_))))
    (define gx#phi-context:::init!
      (lambda _g121635_
        (let ((_g121634_ (##length _g121635_)))
          (cond ((##fx= _g121634_ 2)
                 (apply gx#phi-context:::init!__0 _g121635_))
                ((##fx= _g121634_ 3)
                 (apply gx#phi-context:::init!__% _g121635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g121635_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self118481121396%_ _%super121398%_)
        (let* ((_%self121400%_ _%self118481121396%_)
               (_%self121402%_ _%self121400%_))
          (if (##fx< '3 (##structure-length _%self121402%_))
              (begin
                (##unchecked-structure-set!
                 _%self121402%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121402%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self121402%_
                 _%super121398%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self121402%_
                     '3
                     (##vector-length _%self121402%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self118481121415%_)
        (let ((_%super121417%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self118481121415%_ _%super121417%_))))
    (define gx#local-context:::init!
      (lambda _g121637_
        (let ((_g121636_ (##length _g121637_)))
          (cond ((##fx= _g121636_ 1)
                 (apply gx#local-context:::init!__0 _g121637_))
                ((##fx= _g121636_ 2)
                 (apply gx#local-context:::init!__% _g121637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g121637_))))))
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
      (lambda _%$args121270%_
        (apply make-instance gx#binding::t _%$args121270%_)))
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
      (lambda _%$args121267%_
        (apply make-instance gx#runtime-binding::t _%$args121267%_)))
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
      (lambda _%$args121264%_
        (apply make-instance gx#local-binding::t _%$args121264%_)))
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
      (lambda _%$args121261%_
        (apply make-instance gx#top-binding::t _%$args121261%_)))
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
      (lambda _%$args121258%_
        (apply make-instance gx#module-binding::t _%$args121258%_)))
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
      (lambda _%$args121255%_
        (apply make-instance gx#extern-binding::t _%$args121255%_)))
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
      (lambda _%$args121252%_
        (apply make-instance gx#syntax-binding::t _%$args121252%_)))
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
      (lambda _%$args121249%_
        (apply make-instance gx#import-binding::t _%$args121249%_)))
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
      (lambda _%$args121246%_
        (apply make-instance gx#alias-binding::t _%$args121246%_)))
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
      (lambda _%$args121243%_
        (apply make-instance gx#expander::t _%$args121243%_)))
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
      (lambda _%$args121240%_
        (apply make-instance gx#core-expander::t _%$args121240%_)))
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
      (lambda _%$args121237%_
        (apply make-instance gx#expression-form::t _%$args121237%_)))
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
      (lambda _%$args121234%_
        (apply make-instance gx#special-form::t _%$args121234%_)))
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
      (lambda _%$args121231%_
        (apply make-instance gx#definition-form::t _%$args121231%_)))
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
      (lambda _%$args121228%_
        (apply make-instance gx#top-special-form::t _%$args121228%_)))
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
      (lambda _%$args121225%_
        (apply make-instance gx#module-special-form::t _%$args121225%_)))
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
      (lambda _%$args121222%_
        (apply make-instance gx#feature-expander::t _%$args121222%_)))
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
      (lambda _%$args121219%_
        (apply make-instance gx#private-feature-expander::t _%$args121219%_)))
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
      (lambda _%$args121216%_
        (apply make-instance gx#reserved-expander::t _%$args121216%_)))
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
      (lambda _%$args121213%_
        (apply make-instance gx#macro-expander::t _%$args121213%_)))
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
      (lambda _%$args121210%_
        (apply make-instance gx#rename-macro-expander::t _%$args121210%_)))
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
      (lambda _%$args121207%_
        (apply make-instance gx#user-expander::t _%$args121207%_)))
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
      (lambda _%$args121204%_
        (apply make-instance gx#expander-mark::t _%$args121204%_)))
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
      (lambda (_%ctx121188%_
               _%message121189%_
               _%stx121190%_
               .
               _%details121191%_)
        (let ((_%ctx121202%_
               (let ((_%$e121193%_ _%ctx121188%_))
                 (if _%$e121193%_
                     _%$e121193%_
                     (let ((_%$e121196%_ (gx#core-context-top__0)))
                       (if _%$e121196%_
                           ((lambda (_%ctx121199%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx121199%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e121196%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message121189%_
                  (cons _%stx121190%_ _%details121191%_)
                  _%ctx121202%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx121175%_ _%expression?121176%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx121175%_ _%expression?121176%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx121181%_)
        (let ((_%expression?121183%_ '#f))
          (gx#eval-syntax__% _%stx121181%_ _%expression?121183%_))))
    (define gx#eval-syntax
      (lambda _g121639_
        (let ((_g121638_ (##length _g121639_)))
          (cond ((##fx= _g121638_ 1) (apply gx#eval-syntax__0 _g121639_))
                ((##fx= _g121638_ 2) (apply gx#eval-syntax__% _g121639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g121639_))))))
    (define gx#eval-syntax*
      (lambda (_%stx121172%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx121172%_))))
    (define gx#core-expand__%
      (lambda (_%stx121159%_ _%expression?121160%_)
        (if _%expression?121160%_
            (gx#core-expand-expression _%stx121159%_)
            (gx#core-expand-top _%stx121159%_))))
    (define gx#core-expand__0
      (lambda (_%stx121165%_)
        (let ((_%expression?121167%_ '#f))
          (gx#core-expand__% _%stx121165%_ _%expression?121167%_))))
    (define gx#core-expand
      (lambda _g121641_
        (let ((_g121640_ (##length _g121641_)))
          (cond ((##fx= _g121640_ 1) (apply gx#core-expand__0 _g121641_))
                ((##fx= _g121640_ 2) (apply gx#core-expand__% _g121641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g121641_))))))
    (define gx#core-expand-top
      (lambda (_%stx121126%_)
        (let* ((_%stx121128%_ (gx#core-expand*__0 _%stx121126%_))
               (_%e121129121136%_ _%stx121128%_)
               (_%E121131121140%_
                (lambda () (gx#core-expand-expression _%stx121128%_)))
               (_%E121130121154%_
                (lambda ()
                  (if (gx#stx-pair? _%e121129121136%_)
                      (let ((_%e121132121144%_
                             (gx#syntax-e _%e121129121136%_)))
                        (let ((_%hd121133121147%_ (##car _%e121132121144%_))
                              (_%tl121134121149%_ (##cdr _%e121132121144%_)))
                          (let ((_%form121152%_ _%hd121133121147%_))
                            (if (gx#core-bound-identifier?__0 _%form121152%_)
                                _%stx121128%_
                                (_%E121131121140%_)))))
                      (_%E121131121140%_)))))
          (_%E121130121154%_))))
    (define gx#core-expand-expression
      (lambda (_%stx121058%_)
        (letrec ((_%sealed-expression?121060%_
                  (lambda (_%hd121096%_)
                    (if (gx#sealed-syntax? _%hd121096%_)
                        (let* ((_%e121097121104%_ _%hd121096%_)
                               (_%E121099121108%_ (lambda () '#f))
                               (_%E121098121122%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e121097121104%_)
                                      (let ((_%e121100121112%_
                                             (gx#syntax-e _%e121097121104%_)))
                                        (let ((_%hd121101121115%_
                                               (##car _%e121100121112%_))
                                              (_%tl121102121117%_
                                               (##cdr _%e121100121112%_)))
                                          (let ((_%form121120%_
                                                 _%hd121101121115%_))
                                            (gx#core-bound-identifier?__%
                                             _%form121120%_
                                             gx#expression-form-binding?))))
                                      (_%E121099121108%_)))))
                          (_%E121098121122%_))
                        '#f)))
                 (_%illegal-expression121061%_
                  (lambda (_%hd121093%_ . _%_121094%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx121058%_
                     _%hd121093%_)))
                 (_%expand-e121062%_
                  (lambda (_%form121085%_ _%hd121086%_)
                    (let ((_%bind121088%_
                           (if (##structure-instance-of?
                                _%form121085%_
                                'gx#binding::t)
                               _%form121085%_
                               (gx#resolve-identifier__0 _%form121085%_))))
                      (if (gx#core-expander-binding? _%bind121088%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind121088%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd121086%_
                            (gx#stx-source _%stx121058%_)))
                          (if (##structure-direct-instance-of?
                               _%bind121088%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind121088%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd121086%_
                                 (gx#stx-source _%stx121058%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx121058%_
                               _%form121085%_)))))))
          (let ((_%hd121064%_ (gx#core-expand-head _%stx121058%_)))
            (if (_%sealed-expression?121060%_ _%hd121064%_)
                _%hd121064%_
                (if (gx#stx-pair? _%hd121064%_)
                    (let* ((_%form121068%_ (gx#stx-car _%hd121064%_))
                           (_%bind121070%_
                            (if (gx#identifier? _%form121068%_)
                                (gx#resolve-identifier__0 _%form121068%_)
                                '#f)))
                      (if (or (not _%bind121070%_)
                              (not (gx#core-expander-binding? _%bind121070%_)))
                          (_%expand-e121062%_
                           '%%app
                           (cons '%%app _%hd121064%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind121070%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd121064%_
                               _%illegal-expression121061%_)
                              (if (gx#expression-form-binding? _%bind121070%_)
                                  (_%expand-e121062%_
                                   _%bind121070%_
                                   _%hd121064%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind121070%_)
                                      (gx#core-expand-expression
                                       (_%expand-e121062%_
                                        _%bind121070%_
                                        _%hd121064%_))
                                      (_%illegal-expression121061%_
                                       _%hd121064%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd121064%_)
                        (_%illegal-expression121061%_ _%hd121064%_)
                        (if (gx#identifier? _%hd121064%_)
                            (_%expand-e121062%_
                             '%%ref
                             (cons '%%ref (cons _%hd121064%_ '())))
                            (if (gx#stx-datum? _%hd121064%_)
                                (_%expand-e121062%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd121064%_ '())))
                                (_%illegal-expression121061%_
                                 _%hd121064%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx121053%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx121056%_ (gx#core-expand-expression _%stx121053%_)))
             (values _%stx121056%_ (gx#eval-syntax* _%stx121056%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx121034%_ _%stop?121035%_)
        (let _%lp121037%_ ((_%stx121039%_ _%stx121034%_))
          (if (_%stop?121035%_ _%stx121039%_)
              _%stx121039%_
              (let ((_%rstx121041%_ (gx#core-expand1 _%stx121039%_)))
                (if (eq? _%stx121039%_ _%rstx121041%_)
                    _%stx121039%_
                    (_%lp121037%_ _%rstx121041%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx121046%_)
        (let ((_%stop?121048%_ false))
          (gx#core-expand*__% _%stx121046%_ _%stop?121048%_))))
    (define gx#core-expand*
      (lambda _g121643_
        (let ((_g121642_ (##length _g121643_)))
          (cond ((##fx= _g121642_ 1) (apply gx#core-expand*__0 _g121643_))
                ((##fx= _g121642_ 2) (apply gx#core-expand*__% _g121643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g121643_))))))
    (define gx#core-expand1
      (lambda (_%stx120986%_)
        (letrec ((_%step120988%_
                  (lambda (_%hd121025%_)
                    (let ((_%bind121027%_
                           (gx#resolve-identifier__0 _%hd121025%_)))
                      (if (##structure-instance-of?
                           _%bind121027%_
                           'gx#runtime-binding::t)
                          _%stx120986%_
                          (if (##structure-direct-instance-of?
                               _%bind121027%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind121027%_
                                '4
                                '#f
                                '#f)
                               _%stx120986%_)
                              (if (not _%bind121027%_)
                                  _%stx120986%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx120986%_))))))))
          (let* ((_%e120989120997%_ _%stx120986%_)
                 (_%E120995121001%_ (lambda () _%stx120986%_))
                 (_%E120991121007%_
                  (lambda ()
                    (let ((_%hd121005%_ _%e120989120997%_))
                      (if (gx#identifier? _%hd121005%_)
                          (_%step120988%_ _%hd121005%_)
                          (_%E120995121001%_)))))
                 (_%E120990121021%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120989120997%_)
                        (let ((_%e120992121011%_
                               (gx#syntax-e _%e120989120997%_)))
                          (let ((_%hd120993121014%_ (##car _%e120992121011%_))
                                (_%tl120994121016%_ (##cdr _%e120992121011%_)))
                            (let ((_%hd121019%_ _%hd120993121014%_))
                              (if (gx#identifier? _%hd121019%_)
                                  (_%step120988%_ _%hd121019%_)
                                  (_%E120991121007%_)))))
                        (_%E120991121007%_)))))
            (_%E120990121021%_)))))
    (define gx#core-expand-head
      (lambda (_%stx120952%_)
        (letrec ((_%stop?120954%_
                  (lambda (_%stx120956%_)
                    (let* ((_%e120957120964%_ _%stx120956%_)
                           (_%E120959120968%_ (lambda () '#f))
                           (_%E120958120982%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120957120964%_)
                                  (let ((_%e120960120972%_
                                         (gx#syntax-e _%e120957120964%_)))
                                    (let ((_%hd120961120975%_
                                           (##car _%e120960120972%_))
                                          (_%tl120962120977%_
                                           (##cdr _%e120960120972%_)))
                                      (let ((_%hd120980%_ _%hd120961120975%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd120980%_))))
                                  (_%E120959120968%_)))))
                      (_%E120958120982%_)))))
          (gx#core-expand*__% _%stx120952%_ _%stop?120954%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx120758%_
               _%expand-special120759%_
               _%begin-form120760%_
               _%expand-e120761%_)
        (letrec ((_%expand-splice120763%_
                  (lambda (_%hd120926%_
                           _%body120927%_
                           _%rest120928%_
                           _%r120929%_)
                    (if (gx#stx-list? _%body120927%_)
                        (_%K120767%_
                         (gx#stx-foldr cons _%rest120928%_ _%body120927%_)
                         _%r120929%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx120758%_
                         _%hd120926%_))))
                 (_%expand-cond-expand120764%_
                  (lambda (_%hd120922%_ _%rest120923%_ _%r120924%_)
                    (_%K120767%_
                     (cons (gx#core-expand-cond-expand% _%hd120922%_)
                           _%rest120923%_)
                     _%r120924%_)))
                 (_%expand-include120765%_
                  (lambda (_%hd120871%_ _%rest120872%_ _%r120873%_)
                    (let* ((_%e120874120884%_ _%hd120871%_)
                           (_%E120876120888%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120874120884%_)))
                           (_%E120875120918%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120874120884%_)
                                  (let ((_%e120877120892%_
                                         (gx#syntax-e _%e120874120884%_)))
                                    (let ((_%hd120878120895%_
                                           (##car _%e120877120892%_))
                                          (_%tl120879120897%_
                                           (##cdr _%e120877120892%_)))
                                      (if (gx#stx-pair? _%tl120879120897%_)
                                          (let ((_%e120880120900%_
                                                 (gx#syntax-e
                                                  _%tl120879120897%_)))
                                            (let ((_%hd120881120903%_
                                                   (##car _%e120880120900%_))
                                                  (_%tl120882120905%_
                                                   (##cdr _%e120880120900%_)))
                                              (let ((_%path120908%_
                                                     _%hd120881120903%_))
                                                (if (gx#stx-null?
                                                     _%tl120882120905%_)
                                                    (if (gx#stx-string?
                                                         _%path120908%_)
                                                        (let* ((_%rpath120910%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path120908%_
                         (gx#stx-source _%hd120871%_)))
                       (_%block120912%_
                        (gx#core-expand-include%__%
                         _%hd120871%_
                         _%rpath120910%_))
                       (_%rbody120915%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block120912%_
                            _%expand-special120759%_
                            '#f
                            _%expand-e120761%_))
                         gx#current-expander-path
                         (cons _%rpath120910%_ (gx#current-expander-path)))))
                  (_%K120767%_
                   _%rest120872%_
                   (__foldr1 cons _%r120873%_ _%rbody120915%_)))
                (_%E120876120888%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120876120888%_)))))
                                          (_%E120876120888%_))))
                                  (_%E120876120888%_)))))
                      (_%E120875120918%_))))
                 (_%expand-expression120766%_
                  (lambda (_%hd120867%_ _%rest120868%_ _%r120869%_)
                    (_%K120767%_
                     _%rest120868%_
                     (cons (_%expand-e120761%_ _%hd120867%_) _%r120869%_))))
                 (_%K120767%_
                  (lambda (_%rest120797%_ _%r120798%_)
                    (let* ((_%e120799120806%_ _%rest120797%_)
                           (_%E120801120810%_
                            (lambda ()
                              (if _%begin-form120760%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form120760%_
                                    (reverse _%r120798%_))
                                   (gx#stx-source _%stx120758%_))
                                  _%r120798%_)))
                           (_%E120800120863%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120799120806%_)
                                  (let ((_%e120802120814%_
                                         (gx#syntax-e _%e120799120806%_)))
                                    (let ((_%hd120803120817%_
                                           (##car _%e120802120814%_))
                                          (_%tl120804120819%_
                                           (##cdr _%e120802120814%_)))
                                      (let* ((_%hd120822%_ _%hd120803120817%_)
                                             (_%rest120824%_
                                              _%tl120804120819%_)
                                             (_%hd120826%_
                                              (gx#core-expand-head
                                               _%hd120822%_))
                                             (_%e120827120834%_ _%hd120826%_)
                                             (_%E120829120838%_
                                              (lambda ()
                                                (_%expand-expression120766%_
                                                 _%hd120826%_
                                                 _%rest120824%_
                                                 _%r120798%_)))
                                             (_%E120828120859%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e120827120834%_)
                                                    (let ((_%e120830120842%_
                                                           (gx#syntax-e
                                                            _%e120827120834%_)))
                                                      (let ((_%hd120831120845%_
                                                             (##car _%e120830120842%_))
                                                            (_%tl120832120847%_
                                                             (##cdr _%e120830120842%_)))
                                                        (let* ((_%form120850%_
                                                                _%hd120831120845%_)
                                                               (_%body120852%_
                                                                _%tl120832120847%_)
                                                               (_%bind120854%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form120850%_)
                            (gx#resolve-identifier__0 _%form120850%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind120854%_)
                      (let ((_%$e120856%_
                             (##unchecked-structure-ref
                              _%bind120854%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e120856%_)
                            (_%expand-splice120763%_
                             _%hd120826%_
                             _%body120852%_
                             _%rest120824%_
                             _%r120798%_)
                            (if (eq? '%#cond-expand _%$e120856%_)
                                (_%expand-cond-expand120764%_
                                 _%hd120826%_
                                 _%rest120824%_
                                 _%r120798%_)
                                (if (eq? '%#include _%$e120856%_)
                                    (_%expand-include120765%_
                                     _%hd120826%_
                                     _%rest120824%_
                                     _%r120798%_)
                                    (_%expand-special120759%_
                                     _%hd120826%_
                                     _%K120767%_
                                     _%rest120824%_
                                     _%r120798%_)))))
                      (_%expand-expression120766%_
                       _%hd120826%_
                       _%rest120824%_
                       _%r120798%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120829120838%_)))))
                                        (_%E120828120859%_))))
                                  (_%E120801120810%_)))))
                      (_%E120800120863%_)))))
          (let* ((_%e120768120775%_ _%stx120758%_)
                 (_%E120770120779%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120768120775%_)))
                 (_%E120769120793%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120768120775%_)
                        (let ((_%e120771120783%_
                               (gx#syntax-e _%e120768120775%_)))
                          (let ((_%hd120772120786%_ (##car _%e120771120783%_))
                                (_%tl120773120788%_ (##cdr _%e120771120783%_)))
                            (let ((_%body120791%_ _%tl120773120788%_))
                              (if (gx#stx-list? _%body120791%_)
                                  (_%K120767%_ _%body120791%_ '())
                                  (_%E120770120779%_)))))
                        (_%E120770120779%_)))))
            (_%E120769120793%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx120934%_ _%expand-special120935%_)
        (let* ((_%begin-form120937%_ '%#begin)
               (_%expand-e120939%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx120934%_
           _%expand-special120935%_
           _%begin-form120937%_
           _%expand-e120939%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx120941%_ _%expand-special120942%_ _%begin-form120943%_)
        (let ((_%expand-e120945%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx120941%_
           _%expand-special120942%_
           _%begin-form120943%_
           _%expand-e120945%_))))
    (define gx#core-expand-block
      (lambda _g121645_
        (let ((_g121644_ (##length _g121645_)))
          (cond ((##fx= _g121644_ 2) (apply gx#core-expand-block__0 _g121645_))
                ((##fx= _g121644_ 3) (apply gx#core-expand-block__1 _g121645_))
                ((##fx= _g121644_ 4) (apply gx#core-expand-block__% _g121645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g121645_))))))
    (define gx#core-expand-block*
      (lambda (_%stx120706%_ _%expand-special120707%_)
        (let* ((_%g120708120719%_
                (gx#core-expand-block__1
                 _%stx120706%_
                 _%expand-special120707%_
                 '#f))
               (_%E120712120723%_
                (lambda ()
                  (error '"No clause matching"
                         _%g120708120719%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K120717120754%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx120706%_)))
                (_%K120714120740%_ (lambda (_%expr120738%_) _%expr120738%_))
                (_%K120713120729%_
                 (lambda (_%body120727%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body120727%_))
                    (gx#stx-source _%stx120706%_)))))
            (let ((_%try-match120710120750%_
                   (lambda ()
                     (if (pair? _%g120708120719%_)
                         (let ((_%tl120716120745%_ (##cdr _%g120708120719%_))
                               (_%hd120715120743%_ (##car _%g120708120719%_)))
                           (if (null? _%tl120716120745%_)
                               (let ((_%expr120748%_ _%hd120715120743%_))
                                 (_%K120714120740%_ _%expr120748%_))
                               (let ((_%body120732%_ _%g120708120719%_))
                                 (_%K120713120729%_ _%body120732%_))))
                         (let ((_%body120732%_ _%g120708120719%_))
                           (_%K120713120729%_ _%body120732%_))))))
              (if (null? _%g120708120719%_)
                  (_%K120717120754%_)
                  (_%try-match120710120750%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx120531%_)
        (letrec ((_%satisfied?120533%_
                  (lambda (_%condition120634%_)
                    (let* ((_%e120635120650%_ _%condition120634%_)
                           (_%E120645120654%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120635120650%_)))
                           (_%E120638120673%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120635120650%_)
                                  (let ((_%e120646120658%_
                                         (gx#syntax-e _%e120635120650%_)))
                                    (let ((_%hd120647120661%_
                                           (##car _%e120646120658%_))
                                          (_%tl120648120663%_
                                           (##cdr _%e120646120658%_)))
                                      (let* ((_%combinator120666%_
                                              _%hd120647120661%_)
                                             (_%body120668%_
                                              _%tl120648120663%_))
                                        (if (gx#stx-list? _%body120668%_)
                                            (let ((_%$e120670%_
                                                   (gx#stx-e
                                                    _%combinator120666%_)))
                                              (if (eq? 'not _%$e120670%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?120533%_
                                                        _%body120668%_))
                                                  (if (eq? 'and _%$e120670%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?120533%_
                                                       _%body120668%_)
                                                      (if (eq? 'or
                                                               _%$e120670%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?120533%_
                                                           _%body120668%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e120670%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body120668%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx120531%_
                       _%combinator120666%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E120645120654%_)))))
                                  (_%E120645120654%_))))
                           (_%E120637120696%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120635120650%_)
                                  (let ((_%e120639120677%_
                                         (gx#syntax-e _%e120635120650%_)))
                                    (let ((_%hd120640120680%_
                                           (##car _%e120639120677%_))
                                          (_%tl120641120682%_
                                           (##cdr _%e120639120677%_)))
                                      (if (and (gx#identifier?
                                                _%hd120640120680%_)
                                               (gx#core-identifier=?
                                                _%hd120640120680%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl120641120682%_)
                                              (let ((_%e120642120685%_
                                                     (gx#syntax-e
                                                      _%tl120641120682%_)))
                                                (let ((_%hd120643120688%_
                                                       (##car _%e120642120685%_))
                                                      (_%tl120644120690%_
                                                       (##cdr _%e120642120685%_)))
                                                  (let ((_%expr120693%_
                                                         _%hd120643120688%_))
                                                    (if (gx#stx-null?
                                                         _%tl120644120690%_)
                                                        (__call-with-parameters
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr120693%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E120638120673%_)))))
                                              (_%E120638120673%_))
                                          (_%E120638120673%_))))
                                  (_%E120638120673%_))))
                           (_%E120636120702%_
                            (lambda ()
                              (let ((_%id120700%_ _%e120635120650%_))
                                (if (gx#identifier? _%id120700%_)
                                    (gx#core-bound-identifier?__%
                                     _%id120700%_
                                     gx#feature-binding?)
                                    (_%E120637120696%_))))))
                      (_%E120636120702%_))))
                 (_%loop120534%_
                  (lambda (_%rest120564%_)
                    (let* ((_%e120565120573%_ _%rest120564%_)
                           (_%E120571120577%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120565120573%_)))
                           (_%E120567120581%_
                            (lambda ()
                              (if (gx#stx-null? _%e120565120573%_)
                                  '()
                                  (_%E120571120577%_))))
                           (_%E120566120630%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120565120573%_)
                                  (let ((_%e120568120585%_
                                         (gx#syntax-e _%e120565120573%_)))
                                    (let ((_%hd120569120588%_
                                           (##car _%e120568120585%_))
                                          (_%tl120570120590%_
                                           (##cdr _%e120568120585%_)))
                                      (let* ((_%hd120593%_ _%hd120569120588%_)
                                             (_%rest120595%_
                                              _%tl120570120590%_)
                                             (_%e120596120603%_ _%hd120593%_)
                                             (_%E120598120607%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e120596120603%_)))
                                             (_%E120597120626%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e120596120603%_)
                                                    (let ((_%e120599120611%_
                                                           (gx#syntax-e
                                                            _%e120596120603%_)))
                                                      (let ((_%hd120600120614%_
                                                             (##car _%e120599120611%_))
                                                            (_%tl120601120616%_
                                                             (##cdr _%e120599120611%_)))
                                                        (let* ((_%condition120619%_
                                                                _%hd120600120614%_)
                                                               (_%body120621%_
                                                                _%tl120601120616%_))
                                                          (if (gx#stx-eq?
                                                               _%condition120619%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest120595%_)
                          _%body120621%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx120531%_
                           _%hd120593%_))
                      (if (_%satisfied?120533%_ _%condition120619%_)
                          _%body120621%_
                          (_%loop120534%_ _%rest120595%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120598120607%_)))))
                                        (_%E120597120626%_))))
                                  (_%E120567120581%_)))))
                      (_%E120566120630%_)))))
          (let* ((_%e120535120542%_ _%stx120531%_)
                 (_%E120537120546%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120535120542%_)))
                 (_%E120536120560%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120535120542%_)
                        (let ((_%e120538120550%_
                               (gx#syntax-e _%e120535120542%_)))
                          (let ((_%hd120539120553%_ (##car _%e120538120550%_))
                                (_%tl120540120555%_ (##cdr _%e120538120550%_)))
                            (let ((_%clauses120558%_ _%tl120540120555%_))
                              (if (gx#stx-list? _%clauses120558%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop120534%_ _%clauses120558%_))
                                  (_%E120537120546%_)))))
                        (_%E120537120546%_)))))
            (_%E120536120560%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx120474%_ _%rpath120475%_)
        (let* ((_%e120476120486%_ _%stx120474%_)
               (_%E120478120490%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120476120486%_)))
               (_%E120477120517%_
                (lambda ()
                  (if (gx#stx-pair? _%e120476120486%_)
                      (let ((_%e120479120494%_
                             (gx#syntax-e _%e120476120486%_)))
                        (let ((_%hd120480120497%_ (##car _%e120479120494%_))
                              (_%tl120481120499%_ (##cdr _%e120479120494%_)))
                          (if (gx#stx-pair? _%tl120481120499%_)
                              (let ((_%e120482120502%_
                                     (gx#syntax-e _%tl120481120499%_)))
                                (let ((_%hd120483120505%_
                                       (##car _%e120482120502%_))
                                      (_%tl120484120507%_
                                       (##cdr _%e120482120502%_)))
                                  (let ((_%path120510%_ _%hd120483120505%_))
                                    (if (gx#stx-null? _%tl120484120507%_)
                                        (if (gx#stx-string? _%path120510%_)
                                            (let ((_%rpath120515%_
                                                   (let ((_%$e120512%_
                                                          _%rpath120475%_))
                                                     (if _%$e120512%_
                                                         _%$e120512%_
                                                         (gx#core-resolve-path__%
                                                          _%path120510%_
                                                          (gx#stx-source
                                                           _%stx120474%_))))))
                                              (if (member _%rpath120515%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx120474%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath120515%_))
                                                    (gx#stx-source
                                                     _%stx120474%_)))))
                                            (_%E120478120490%_))
                                        (_%E120478120490%_)))))
                              (_%E120478120490%_))))
                      (_%E120478120490%_)))))
          (_%E120477120517%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx120524%_)
        (let ((_%rpath120526%_ '#f))
          (gx#core-expand-include%__% _%stx120524%_ _%rpath120526%_))))
    (define gx#core-expand-include%
      (lambda _g121647_
        (let ((_g121646_ (##length _g121647_)))
          (cond ((##fx= _g121646_ 1)
                 (apply gx#core-expand-include%__0 _g121647_))
                ((##fx= _g121646_ 2)
                 (apply gx#core-expand-include%__% _g121647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g121647_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K120440%_ _%stx120441%_ _%method120442%_)
        (if (procedure? _%K120440%_)
            (let ((_%$e120445%_ (gx#stx-source _%stx120441%_)))
              (if _%$e120445%_
                  ((lambda (_%g120447120449%_)
                     (gx#stx-wrap-source
                      (_%K120440%_ _%stx120441%_)
                      _%g120447120449%_))
                   _%$e120445%_)
                  (_%K120440%_ _%stx120441%_)))
            (let ((_%$e120453%_
                   (bound-method-ref _%K120440%_ _%method120442%_)))
              (if _%$e120453%_
                  ((lambda (_%g120455120457%_)
                     (gx#core-apply-expander__%
                      _%g120455120457%_
                      _%stx120441%_
                      _%method120442%_))
                   _%$e120453%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx120441%_
                   _%method120442%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K120464%_ _%stx120465%_)
        (let ((_%method120467%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K120464%_
           _%stx120465%_
           _%method120467%_))))
    (define gx#core-apply-expander
      (lambda _g121649_
        (let ((_g121648_ (##length _g121649_)))
          (cond ((##fx= _g121648_ 2)
                 (apply gx#core-apply-expander__0 _g121649_))
                ((##fx= _g121648_ 3)
                 (apply gx#core-apply-expander__% _g121649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g121649_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self118482120423%_ _%stx120425%_)
        (let* ((_%self120427%_ _%self118482120423%_)
               (_%self120429%_ _%self120427%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx120425%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self118483120263%_ _%stx120265%_)
        (let* ((_%self120267%_ _%self118483120263%_)
               (_%self120269%_ _%self120267%_)
               (_%self120278120284%_ _%self120269%_)
               (_%E120280120288%_
                (lambda ()
                  (error '"No clause matching"
                         _%self120278120284%_
                         '((macro-expander K)))
                  '#!void))
               (_%K120281120293%_
                (lambda (_%K120291%_)
                  (gx#core-apply-expander__0 _%K120291%_ _%stx120265%_)))
               (_%e120282120296%_
                (##unchecked-structure-ref _%self120278120284%_ '1 '#f '#f))
               (_%K120299%_ _%e120282120296%_))
          (_%K120281120293%_ _%K120299%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self118484120103%_ _%stx120105%_)
        (let* ((_%self120107%_ _%self118484120103%_)
               (_%self120109%_ _%self120107%_))
          (if (gx#sealed-syntax? _%stx120105%_)
              _%stx120105%_
              (let* ((_%self120118120124%_ _%self120109%_)
                     (_%E120120120128%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self120118120124%_
                               '((core-expander K)))
                        '#!void))
                     (_%K120121120133%_
                      (lambda (_%K120131%_)
                        (gx#core-apply-expander__0 _%K120131%_ _%stx120105%_)))
                     (_%e120122120136%_
                      (##unchecked-structure-ref
                       _%self120118120124%_
                       '1
                       '#f
                       '#f))
                     (_%K120139%_ _%e120122120136%_))
                (_%K120121120133%_ _%K120139%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self118485119952%_ _%stx119954%_ _%top?119955%_)
        (let* ((_%self119957%_ _%self118485119952%_)
               (_%self119959%_ _%self119957%_))
          (if (_%top?119955%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self119959%_
               _%stx119954%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx119954%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self118485119972%_ _%stx119973%_)
        (let ((_%top?119975%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self118485119972%_
           _%stx119973%_
           _%top?119975%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g121651_
        (let ((_g121650_ (##length _g121651_)))
          (cond ((##fx= _g121650_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g121651_))
                ((##fx= _g121650_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g121651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g121651_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self118486119813%_ _%stx119815%_)
        (let* ((_%self119817%_ _%self118486119813%_)
               (_%self119819%_ _%self119817%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self119819%_
           _%stx119815%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self118487119625%_ _%stx119627%_)
        (let* ((_%self119629%_ _%self118487119625%_)
               (_%self119631%_ _%self119629%_)
               (_%self119640119646%_ _%self119631%_)
               (_%E119642119650%_
                (lambda ()
                  (error '"No clause matching"
                         _%self119640119646%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K119643119683%_
                (lambda (_%id119653%_)
                  (let* ((_%e119654119661%_ _%stx119627%_)
                         (_%E119656119665%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e119654119661%_)))
                         (_%E119655119679%_
                          (lambda ()
                            (if (gx#stx-pair? _%e119654119661%_)
                                (let ((_%e119657119669%_
                                       (gx#syntax-e _%e119654119661%_)))
                                  (let ((_%hd119658119672%_
                                         (##car _%e119657119669%_))
                                        (_%tl119659119674%_
                                         (##cdr _%e119657119669%_)))
                                    (let ((_%body119677%_ _%tl119659119674%_))
                                      (gx#core-cons
                                       _%id119653%_
                                       _%body119677%_))))
                                (_%E119656119665%_)))))
                    (_%E119655119679%_))))
               (_%e119644119686%_
                (##unchecked-structure-ref _%self119640119646%_ '1 '#f '#f))
               (_%id119689%_ _%e119644119686%_))
          (_%K119643119683%_ _%id119689%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self119451%_ _%stx119452%_ _%method119453%_)
        (let* ((_%self119454119462%_ _%self119451%_)
               (_%E119456119466%_
                (lambda ()
                  (error '"No clause matching"
                         _%self119454119462%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K119457119473%_
                (lambda (_%phi119469%_ _%ctx119470%_ _%K119471%_)
                  (gx#core-apply-user-macro
                   _%K119471%_
                   _%stx119452%_
                   _%ctx119470%_
                   _%phi119469%_
                   _%method119453%_))))
          (if (##structure-instance-of?
               _%self119454119462%_
               'gx#user-expander::t)
              (let* ((_%e119458119476%_
                      (##unchecked-structure-ref
                       _%self119454119462%_
                       '1
                       '#f
                       '#f))
                     (_%K119479%_ _%e119458119476%_)
                     (_%e119459119481%_
                      (##unchecked-structure-ref
                       _%self119454119462%_
                       '2
                       '#f
                       '#f))
                     (_%ctx119484%_ _%e119459119481%_)
                     (_%e119460119486%_
                      (##unchecked-structure-ref
                       _%self119454119462%_
                       '3
                       '#f
                       '#f))
                     (_%phi119489%_ _%e119460119486%_))
                (_%K119457119473%_ _%phi119489%_ _%ctx119484%_ _%K119479%_))
              (_%E119456119466%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self119494%_ _%stx119495%_)
        (let ((_%method119497%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self119494%_
           _%stx119495%_
           _%method119497%_))))
    (define gx#core-apply-user-expander
      (lambda _g121653_
        (let ((_g121652_ (##length _g121653_)))
          (cond ((##fx= _g121652_ 2)
                 (apply gx#core-apply-user-expander__0 _g121653_))
                ((##fx= _g121652_ 3)
                 (apply gx#core-apply-user-expander__% _g121653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g121653_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K119441%_
               _%stx119442%_
               _%ctx119443%_
               _%phi119444%_
               _%method119445%_)
        (let ((_%mark119447%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx119443%_
                _%phi119444%_
                _%stx119442%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K119441%_
               (gx#stx-apply-mark _%stx119442%_ _%mark119447%_)
               _%method119445%_)
              _%mark119447%_))
           gx#current-expander-marks
           (cons _%mark119447%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx119289%_ _%phi119290%_ _%ctx119291%_)
        (let _%lp119293%_ ((_%bind119295%_
                            (gx#core-resolve-identifier__%
                             _%stx119289%_
                             _%phi119290%_
                             _%ctx119291%_)))
          (if (##structure-direct-instance-of?
               _%bind119295%_
               'gx#import-binding::t)
              (_%lp119293%_
               (##unchecked-structure-ref _%bind119295%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind119295%_
                   'gx#alias-binding::t)
                  (_%lp119293%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind119295%_ '4 '#f '#f)
                    _%phi119290%_
                    _%ctx119291%_))
                  _%bind119295%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx119303%_)
        (let* ((_%phi119305%_ (gx#current-expander-phi))
               (_%ctx119307%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx119303%_
           _%phi119305%_
           _%ctx119307%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx119309%_ _%phi119310%_)
        (let ((_%ctx119312%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx119309%_
           _%phi119310%_
           _%ctx119312%_))))
    (define gx#resolve-identifier
      (lambda _g121655_
        (let ((_g121654_ (##length _g121655_)))
          (cond ((##fx= _g121654_ 1)
                 (apply gx#resolve-identifier__0 _g121655_))
                ((##fx= _g121654_ 2)
                 (apply gx#resolve-identifier__1 _g121655_))
                ((##fx= _g121654_ 3)
                 (apply gx#resolve-identifier__% _g121655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g121655_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx119244%_
               _%val119245%_
               _%rebind?119246%_
               _%phi119247%_
               _%ctx119248%_)
        (let ((_%rebind?119253%_
               (if (not _%rebind?119246%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?119246%_)
                       _%rebind?119246%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx119244%_)
           _%val119245%_
           _%rebind?119253%_
           _%phi119247%_
           _%ctx119248%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx119258%_ _%val119259%_)
        (let* ((_%rebind?119261%_ '#f)
               (_%phi119263%_ (gx#current-expander-phi))
               (_%ctx119265%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx119258%_
           _%val119259%_
           _%rebind?119261%_
           _%phi119263%_
           _%ctx119265%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx119267%_ _%val119268%_ _%rebind?119269%_)
        (let* ((_%phi119271%_ (gx#current-expander-phi))
               (_%ctx119273%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx119267%_
           _%val119268%_
           _%rebind?119269%_
           _%phi119271%_
           _%ctx119273%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx119275%_ _%val119276%_ _%rebind?119277%_ _%phi119278%_)
        (let ((_%ctx119280%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx119275%_
           _%val119276%_
           _%rebind?119277%_
           _%phi119278%_
           _%ctx119280%_))))
    (define gx#bind-identifier!
      (lambda _g121657_
        (let ((_g121656_ (##length _g121657_)))
          (cond ((##fx= _g121656_ 2) (apply gx#bind-identifier!__0 _g121657_))
                ((##fx= _g121656_ 3) (apply gx#bind-identifier!__1 _g121657_))
                ((##fx= _g121656_ 4) (apply gx#bind-identifier!__2 _g121657_))
                ((##fx= _g121656_ 5) (apply gx#bind-identifier!__% _g121657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g121657_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx119210%_ _%phi119211%_ _%ctx119212%_)
        (let _%lp119214%_ ((_%e119216%_ _%stx119210%_)
                           (_%marks119217%_ (gx#current-expander-marks)))
          (if (symbol? _%e119216%_)
              (gx#core-resolve-binding
               _%e119216%_
               _%phi119211%_
               _%phi119211%_
               _%ctx119212%_
               (reverse _%marks119217%_))
              (if (gx#identifier-quote? _%e119216%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e119216%_ '1 '#f '#f)
                   _%phi119211%_
                   '0
                   (##unchecked-structure-ref _%e119216%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e119216%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e119216%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e119216%_ '1 '#f '#f)
                       _%phi119211%_
                       _%phi119211%_
                       _%ctx119212%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e119216%_ '3 '#f '#f)
                        _%marks119217%_))
                      (if (##structure-direct-instance-of?
                           _%e119216%_
                           'gx#syntax-wrap::t)
                          (_%lp119214%_
                           (##unchecked-structure-ref _%e119216%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e119216%_ '3 '#f '#f)
                            _%marks119217%_))
                          (if (##structure-instance-of?
                               _%e119216%_
                               'gerbil#AST::t)
                              (_%lp119214%_
                               (##unchecked-structure-ref
                                _%e119216%_
                                '1
                                '#f
                                '#f)
                               _%marks119217%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx119210%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx119228%_)
        (let* ((_%phi119230%_ (gx#current-expander-phi))
               (_%ctx119232%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx119228%_
           _%phi119230%_
           _%ctx119232%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx119234%_ _%phi119235%_)
        (let ((_%ctx119237%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx119234%_
           _%phi119235%_
           _%ctx119237%_))))
    (define gx#core-resolve-identifier
      (lambda _g121659_
        (let ((_g121658_ (##length _g121659_)))
          (cond ((##fx= _g121658_ 1)
                 (apply gx#core-resolve-identifier__0 _g121659_))
                ((##fx= _g121658_ 2)
                 (apply gx#core-resolve-identifier__1 _g121659_))
                ((##fx= _g121658_ 3)
                 (apply gx#core-resolve-identifier__% _g121659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g121659_))))))
    (define gx#core-resolve-binding
      (lambda (_%id119120%_
               _%phi119121%_
               _%src-phi119122%_
               _%ctx119123%_
               _%marks119124%_)
        (letrec ((_%resolve119126%_
                  (lambda (_%ctx119194%_ _%src-phi119195%_ _%key119196%_)
                    (let _%lp119198%_ ((_%ctx119200%_
                                        (gx#core-context-shift
                                         _%ctx119194%_
                                         _%phi119121%_))
                                       (_%dphi119201%_
                                        (fx- _%phi119121%_ _%src-phi119195%_)))
                      (let ((_%$e119203%_
                             (gx#core-context-resolve
                              _%ctx119200%_
                              _%key119196%_)))
                        (if _%$e119203%_
                            _%$e119203%_
                            (if (fxzero? _%dphi119201%_)
                                '#f
                                (if (fxpositive? _%dphi119201%_)
                                    (_%lp119198%_
                                     (gx#core-context-shift _%ctx119200%_ '-1)
                                     (##fx- _%dphi119201%_ '1))
                                    (_%lp119198%_
                                     (gx#core-context-shift _%ctx119200%_ '1)
                                     (##fx+ _%dphi119201%_ '1))))))))))
          (let _%lp119128%_ ((_%ctx119130%_ _%ctx119123%_)
                             (_%src-phi119131%_ _%src-phi119122%_)
                             (_%rest119132%_ _%marks119124%_))
            (let* ((_%rest119133119141%_ _%rest119132%_)
                   (_%else119135119149%_
                    (lambda ()
                      (_%resolve119126%_
                       _%ctx119130%_
                       _%src-phi119131%_
                       _%id119120%_)))
                   (_%K119137119182%_
                    (lambda (_%rest119152%_ _%hd119153%_)
                      (let* ((_%hd119154119160%_ _%hd119153%_)
                             (_%E119156119164%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd119154119160%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K119157119174%_
                              (lambda (_%subst119167%_)
                                (let ((_%$e119171%_
                                       (let ((_%key119169%_
                                              (if _%subst119167%_
                                                  (hash-get
                                                   _%subst119167%_
                                                   _%id119120%_)
                                                  '#f)))
                                         (if _%key119169%_
                                             (_%resolve119126%_
                                              _%ctx119130%_
                                              _%src-phi119131%_
                                              _%key119169%_)
                                             '#f))))
                                  (if _%$e119171%_
                                      _%$e119171%_
                                      (_%lp119128%_
                                       (##unchecked-structure-ref
                                        _%hd119153%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd119153%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest119152%_))))))
                        (if (##structure-instance-of?
                             _%hd119154119160%_
                             'gx#expander-mark::t)
                            (let* ((_%e119158119177%_
                                    (##unchecked-structure-ref
                                     _%hd119154119160%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst119180%_ _%e119158119177%_))
                              (_%K119157119174%_ _%subst119180%_))
                            (_%E119156119164%_))))))
              (if (pair? _%rest119133119141%_)
                  (let ((_%hd119138119185%_ (##car _%rest119133119141%_))
                        (_%tl119139119187%_ (##cdr _%rest119133119141%_)))
                    (let* ((_%hd119190%_ _%hd119138119185%_)
                           (_%rest119192%_ _%tl119139119187%_))
                      (_%K119137119182%_ _%rest119192%_ _%hd119190%_)))
                  (_%else119135119149%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key118990%_
               _%val118991%_
               _%rebind?118992%_
               _%phi118993%_
               _%ctx118994%_)
        (letrec ((_%update-binding118996%_
                  (lambda (_%xval119069%_)
                    (if (or (_%rebind?118992%_
                             _%ctx118994%_
                             _%xval119069%_
                             _%val118991%_)
                            (and (##structure-direct-instance-of?
                                  _%xval119069%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval119069%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val118991%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val118991%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval119069%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val118991%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val118991%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval119069%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val118991%_
                        (if (and (##structure-direct-instance-of?
                                  _%val118991%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val118991%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval119069%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val118991%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval119069%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval119069%_
                            (if (and (##structure-direct-instance-of?
                                      _%val118991%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval119069%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key118990%_
                                 (cons (##unchecked-structure-ref
                                        _%val118991%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val118991%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval119069%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval119069%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval119069%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval119069%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key118990%_
                                 _%val118991%_
                                 _%xval119069%_))))))
                 (_%gensubst118997%_
                  (lambda (_%subst119064%_ _%id119065%_)
                    (let ((_%eid119067%_
                           (gensym (if (uninterned-symbol? _%id119065%_)
                                       '%
                                       _%id119065%_))))
                      (hash-put! _%subst119064%_ _%id119065%_ _%eid119067%_)
                      _%eid119067%_)))
                 (_%subst!118998%_
                  (lambda (_%key119000%_)
                    (let* ((_%key119001119009%_ _%key119000%_)
                           (_%else119003119017%_ (lambda () _%key119000%_))
                           (_%K119005119052%_
                            (lambda (_%mark119020%_ _%id119021%_)
                              (let* ((_%mark119022119028%_ _%mark119020%_)
                                     (_%E119024119032%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark119022119028%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K119025119044%_
                                      (lambda (_%subst119035%_)
                                        (if (not _%subst119035%_)
                                            (let ((_%subst119038%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark119020%_
                                               _%subst119038%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst118997%_
                                               _%subst119038%_
                                               _%id119021%_))
                                            (let ((_%$e119040%_
                                                   (hash-get
                                                    _%subst119035%_
                                                    _%id119021%_)))
                                              (if _%$e119040%_
                                                  _%$e119040%_
                                                  (_%gensubst118997%_
                                                   _%subst119035%_
                                                   _%id119021%_)))))))
                                (if (##structure-instance-of?
                                     _%mark119022119028%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e119026119047%_
                                            (##unchecked-structure-ref
                                             _%mark119022119028%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst119050%_ _%e119026119047%_))
                                      (_%K119025119044%_ _%subst119050%_))
                                    (_%E119024119032%_))))))
                      (if (pair? _%key119001119009%_)
                          (let ((_%hd119006119055%_
                                 (##car _%key119001119009%_))
                                (_%tl119007119057%_
                                 (##cdr _%key119001119009%_)))
                            (let* ((_%id119060%_ _%hd119006119055%_)
                                   (_%mark119062%_ _%tl119007119057%_))
                              (_%K119005119052%_ _%mark119062%_ _%id119060%_)))
                          (_%else119003119017%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx118994%_ _%phi118993%_)
           (_%subst!118998%_ _%key118990%_)
           _%val118991%_
           _%update-binding118996%_))))
    (define gx#core-bind!__0
      (lambda (_%key119090%_ _%val119091%_)
        (let* ((_%rebind?119093%_ false)
               (_%phi119095%_ (gx#current-expander-phi))
               (_%ctx119097%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119090%_
           _%val119091%_
           _%rebind?119093%_
           _%phi119095%_
           _%ctx119097%_))))
    (define gx#core-bind!__1
      (lambda (_%key119099%_ _%val119100%_ _%rebind?119101%_)
        (let* ((_%phi119103%_ (gx#current-expander-phi))
               (_%ctx119105%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119099%_
           _%val119100%_
           _%rebind?119101%_
           _%phi119103%_
           _%ctx119105%_))))
    (define gx#core-bind!__2
      (lambda (_%key119107%_ _%val119108%_ _%rebind?119109%_ _%phi119110%_)
        (let ((_%ctx119112%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key119107%_
           _%val119108%_
           _%rebind?119109%_
           _%phi119110%_
           _%ctx119112%_))))
    (define gx#core-bind!
      (lambda _g121661_
        (let ((_g121660_ (##length _g121661_)))
          (cond ((##fx= _g121660_ 2) (apply gx#core-bind!__0 _g121661_))
                ((##fx= _g121660_ 3) (apply gx#core-bind!__1 _g121661_))
                ((##fx= _g121660_ 4) (apply gx#core-bind!__2 _g121661_))
                ((##fx= _g121660_ 5) (apply gx#core-bind!__% _g121661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g121661_))))))
    (define gx#core-identifier-key
      (lambda (_%stx118921%_)
        (if (symbol? _%stx118921%_)
            (let* ((_%g118923118931%_ (gx#current-expander-marks))
                   (_%else118925118939%_ (lambda () _%stx118921%_))
                   (_%K118927118944%_
                    (lambda (_%hd118942%_) (cons _%stx118921%_ _%hd118942%_))))
              (if (pair? _%g118923118931%_)
                  (let* ((_%hd118928118947%_ (##car _%g118923118931%_))
                         (_%hd118950%_ _%hd118928118947%_))
                    (_%K118927118944%_ _%hd118950%_))
                  (_%else118925118939%_)))
            (if (gx#identifier? _%stx118921%_)
                (let* ((_%id118953%_ (gx#syntax-local-unwrap _%stx118921%_))
                       (_%eid118955%_ (gx#stx-e _%id118953%_))
                       (_%marks118957%_
                        (gx#stx-identifier-marks* _%id118953%_))
                       (_%marks118959118967%_ _%marks118957%_)
                       (_%else118961118975%_ (lambda () _%eid118955%_))
                       (_%K118963118980%_
                        (lambda (_%hd118978%_)
                          (cons _%eid118955%_ _%hd118978%_))))
                  (if (pair? _%marks118959118967%_)
                      (let* ((_%hd118964118983%_ (##car _%marks118959118967%_))
                             (_%hd118986%_ _%hd118964118983%_))
                        (_%K118963118980%_ _%hd118986%_))
                      (_%else118961118975%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx118921%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx118860%_ _%phi118861%_)
        (letrec ((_%make-phi118863%_
                  (lambda (_%super118919%_)
                    (let ((__obj121633
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj121633
                       (##gensym 'phi)
                       _%super118919%_)
                      __obj121633)))
                 (_%make-phi/up118864%_
                  (lambda (_%ctx118914%_ _%super118915%_)
                    (let ((_%ctx+1118917%_
                           (_%make-phi118863%_ _%super118915%_)))
                      (##unchecked-structure-set!
                       _%ctx118914%_
                       _%ctx+1118917%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1118917%_
                       _%ctx118914%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1118917%_)))
                 (_%make-phi/down118865%_
                  (lambda (_%ctx118909%_ _%super118910%_)
                    (let ((_%ctx-1118912%_
                           (_%make-phi118863%_ _%super118910%_)))
                      (##unchecked-structure-set!
                       _%ctx-1118912%_
                       _%ctx118909%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx118909%_
                       _%ctx-1118912%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1118912%_)))
                 (_%shift118866%_
                  (lambda (_%ctx118892%_
                           _%delta118893%_
                           _%make-delta-context118894%_
                           _%phi118895%_
                           _%K118896%_)
                    (let ((_%$e118898%_
                           (##unchecked-structure-ref
                            _%ctx118892%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e118898%_
                          ((lambda (_%super118901%_)
                             (let* ((_%super118903%_
                                     (_%K118896%_
                                      _%super118901%_
                                      _%delta118893%_))
                                    (_%ctx+d118905%_
                                     (_%make-delta-context118894%_
                                      _%ctx118892%_
                                      _%super118903%_)))
                               (_%K118896%_
                                _%ctx+d118905%_
                                (fx- _%phi118895%_ _%delta118893%_))))
                           _%$e118898%_)
                          (error '"Bad context" _%ctx118892%_))))))
          (let _%K118868%_ ((_%ctx118870%_ _%ctx118860%_)
                            (_%phi118871%_ _%phi118861%_))
            (if (fxzero? _%phi118871%_)
                _%ctx118870%_
                (if (##structure-instance-of? _%ctx118870%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi118871%_)
                        (let ((_%$e118875%_
                               (##unchecked-structure-ref
                                _%ctx118870%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e118875%_
                              ((lambda (_%g118877118879%_)
                                 (_%K118868%_
                                  _%g118877118879%_
                                  (##fx- _%phi118871%_ '1)))
                               _%$e118875%_)
                              (_%shift118866%_
                               _%ctx118870%_
                               '1
                               _%make-phi/up118864%_
                               _%phi118871%_
                               _%K118868%_)))
                        (let ((_%$e118883%_
                               (##unchecked-structure-ref
                                _%ctx118870%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e118883%_
                              ((lambda (_%g118885118887%_)
                                 (_%K118868%_
                                  _%g118885118887%_
                                  (##fx+ _%phi118871%_ '1)))
                               _%$e118883%_)
                              (_%shift118866%_
                               _%ctx118870%_
                               '-1
                               _%make-phi/down118865%_
                               _%phi118871%_
                               _%K118868%_))))
                    _%ctx118870%_))))))
    (define gx#core-context-get
      (lambda (_%ctx118857%_ _%key118858%_)
        (hash-get
         (##unchecked-structure-ref _%ctx118857%_ '2 '#f '#f)
         _%key118858%_)))
    (define gx#core-context-put!
      (lambda (_%ctx118853%_ _%key118854%_ _%val118855%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx118853%_ '2 '#f '#f)
         _%key118854%_
         _%val118855%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx118839%_ _%key118840%_)
        (let _%lp118842%_ ((_%ctx118844%_ _%ctx118839%_))
          (let ((_%$e118846%_
                 (gx#core-context-get _%ctx118844%_ _%key118840%_)))
            (if _%$e118846%_
                _%$e118846%_
                (let ((_%$e118849%_
                       (if (##structure-instance-of?
                            _%ctx118844%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx118844%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e118849%_ (_%lp118842%_ _%$e118849%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx118828%_ _%key118829%_ _%val118830%_ _%rebind118831%_)
        (let ((_%$e118833%_ (gx#core-context-get _%ctx118828%_ _%key118829%_)))
          (if _%$e118833%_
              ((lambda (_%xval118836%_)
                 (gx#core-context-put!
                  _%ctx118828%_
                  _%key118829%_
                  (_%rebind118831%_ _%xval118836%_)))
               _%$e118833%_)
              (gx#core-context-put!
               _%ctx118828%_
               _%key118829%_
               _%val118830%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx118803%_ _%stop?118804%_)
        (let _%lp118806%_ ((_%ctx118808%_ _%ctx118803%_))
          (if (_%stop?118804%_ _%ctx118808%_)
              _%ctx118808%_
              (if (##structure-instance-of? _%ctx118808%_ 'gx#phi-context::t)
                  (_%lp118806%_
                   (##unchecked-structure-ref _%ctx118808%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx118817%_ (gx#current-expander-context))
               (_%stop?118819%_ gx#top-context?))
          (gx#core-context-top__% _%ctx118817%_ _%stop?118819%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx118821%_)
        (let ((_%stop?118823%_ gx#top-context?))
          (gx#core-context-top__% _%ctx118821%_ _%stop?118823%_))))
    (define gx#core-context-top
      (lambda _g121663_
        (let ((_g121662_ (##length _g121663_)))
          (cond ((##fx= _g121662_ 0) (apply gx#core-context-top__0 _g121663_))
                ((##fx= _g121662_ 1) (apply gx#core-context-top__1 _g121663_))
                ((##fx= _g121662_ 2) (apply gx#core-context-top__% _g121663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g121663_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx118788%_)
        (let _%lp118790%_ ((_%ctx118792%_ _%ctx118788%_))
          (if (##structure-instance-of? _%ctx118792%_ 'gx#phi-context::t)
              (_%lp118790%_
               (##unchecked-structure-ref _%ctx118792%_ '3 '#f '#f))
              _%ctx118792%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx118798%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx118798%_))))
    (define gx#core-context-root
      (lambda _g121665_
        (let ((_g121664_ (##length _g121665_)))
          (cond ((##fx= _g121664_ 0) (apply gx#core-context-root__0 _g121665_))
                ((##fx= _g121664_ 1) (apply gx#core-context-root__% _g121665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g121665_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx118770%_ . _%ignore118771%_)
        (let ((_%$e118773%_ (gx#current-expander-allow-rebind?)))
          (if _%$e118773%_
              _%$e118773%_
              (if (##structure-instance-of? _%ctx118770%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx118770%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx118770%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx118780%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx118780%_))))
    (define gx#core-context-rebind?
      (lambda _g121667_
        (let ((_g121666_ (##length _g121667_)))
          (cond ((##fx= _g121666_ 0)
                 (apply gx#core-context-rebind?__0 _g121667_))
                ((##fx= _g121666_ 1)
                 (apply gx#core-context-rebind?__% _g121667_))
                ((##fx>= _g121666_ 1)
                 (apply gx#core-context-rebind?__% _g121667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g121667_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx118753%_)
        (let ((_%$e118755%_ (gx#core-context-top__1 _%ctx118753%_)))
          (if _%$e118755%_
              ((lambda (_%ctx118758%_)
                 (if (##structure-instance-of?
                      _%ctx118758%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx118758%_ '6 '#f '#f)
                     '#f))
               _%$e118755%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx118765%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx118765%_))))
    (define gx#core-context-namespace
      (lambda _g121669_
        (let ((_g121668_ (##length _g121669_)))
          (cond ((##fx= _g121668_ 0)
                 (apply gx#core-context-namespace__0 _g121669_))
                ((##fx= _g121668_ 1)
                 (apply gx#core-context-namespace__% _g121669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g121669_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind118739%_ _%is?118740%_)
        (if (##structure-direct-instance-of?
             _%bind118739%_
             'gx#syntax-binding::t)
            (_%is?118740%_
             (##unchecked-structure-ref _%bind118739%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind118745%_)
        (let ((_%is?118747%_ gx#expander?))
          (gx#expander-binding?__% _%bind118745%_ _%is?118747%_))))
    (define gx#expander-binding?
      (lambda _g121671_
        (let ((_g121670_ (##length _g121671_)))
          (cond ((##fx= _g121670_ 1) (apply gx#expander-binding?__0 _g121671_))
                ((##fx= _g121670_ 2) (apply gx#expander-binding?__% _g121671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g121671_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind118736%_)
        (gx#expander-binding?__% _%bind118736%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind118734%_)
        (gx#expander-binding?__% _%bind118734%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind118728%_)
        (letrec ((_%direct-special-form?118730%_
                  (lambda (_%obj118732%_)
                    (##structure-direct-instance-of?
                     _%obj118732%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind118728%_
           _%direct-special-form?118730%_))))
    (define gx#special-form-binding?
      (lambda (_%bind118726%_)
        (gx#expander-binding?__% _%bind118726%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind118717%_)
        (letrec ((_%feature?118719%_
                  (lambda (_%e118721%_)
                    (let ((_%$e118723%_
                           (##structure-instance-of?
                            _%e118721%_
                            'gx#feature-expander::t)))
                      (if _%$e118723%_
                          _%$e118723%_
                          (##structure-instance-of?
                           _%e118721%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind118717%_ _%feature?118719%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind118715%_)
        (gx#expander-binding?__% _%bind118715%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id118702%_ _%bound?118703%_)
        (if (gx#identifier? _%id118702%_)
            (_%bound?118703%_ (gx#resolve-identifier__0 _%id118702%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id118708%_)
        (let ((_%bound?118710%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id118708%_ _%bound?118710%_))))
    (define gx#core-bound-identifier?
      (lambda _g121673_
        (let ((_g121672_ (##length _g121673_)))
          (cond ((##fx= _g121672_ 1)
                 (apply gx#core-bound-identifier?__0 _g121673_))
                ((##fx= _g121672_ 2)
                 (apply gx#core-bound-identifier?__% _g121673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g121673_))))))
    (define gx#core-identifier=?
      (lambda (_%x118692%_ _%y118693%_)
        (letrec ((_%y=?118695%_
                  (lambda (_%xid118699%_)
                    ((if (list? _%y118693%_) memq eq?)
                     _%xid118699%_
                     _%y118693%_))))
          (let ((_%bind118697%_ (gx#resolve-identifier__0 _%x118692%_)))
            (if (##structure-instance-of? _%bind118697%_ 'gx#binding::t)
                (_%y=?118695%_
                 (##unchecked-structure-ref _%bind118697%_ '1 '#f '#f))
                (_%y=?118695%_ (gx#stx-e _%x118692%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e118690%_)
        (if (interned-symbol? _%e118690%_)
            (string-index__0 (symbol->string _%e118690%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx118643%_ _%src118644%_ _%ctx118645%_ _%marks118646%_)
        (if (##structure? _%stx118643%_)
            (let ((_%$e118648%_ (gx#sealed-syntax-unwrap _%stx118643%_)))
              (if _%$e118648%_
                  _%$e118648%_
                  (if (gx#identifier? _%stx118643%_)
                      (let ((_%id118652%_
                             (gx#stx-unwrap__% _%stx118643%_ _%marks118646%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id118652%_ '1 '#f '#f)
                         (let ((_%$e118654%_
                                (##unchecked-structure-ref
                                 _%id118652%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e118654%_ _%$e118654%_ _%src118644%_))
                         _%ctx118645%_
                         (##unchecked-structure-ref _%id118652%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx118643%_)
                       (let ((_%$e118658%_ (gx#stx-source _%stx118643%_)))
                         (if _%$e118658%_ _%$e118658%_ _%src118644%_))
                       _%ctx118645%_
                       (reverse _%marks118646%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx118643%_
             _%src118644%_
             _%ctx118645%_
             (reverse _%marks118646%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx118664%_)
        (let* ((_%src118666%_ '#f)
               (_%ctx118668%_ (gx#current-expander-context))
               (_%marks118670%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118664%_
           _%src118666%_
           _%ctx118668%_
           _%marks118670%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx118672%_ _%src118673%_)
        (let* ((_%ctx118675%_ (gx#current-expander-context))
               (_%marks118677%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118672%_
           _%src118673%_
           _%ctx118675%_
           _%marks118677%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx118679%_ _%src118680%_ _%ctx118681%_)
        (let ((_%marks118683%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx118679%_
           _%src118680%_
           _%ctx118681%_
           _%marks118683%_))))
    (define gx#core-quote-syntax
      (lambda _g121675_
        (let ((_g121674_ (##length _g121675_)))
          (cond ((##fx= _g121674_ 1) (apply gx#core-quote-syntax__0 _g121675_))
                ((##fx= _g121674_ 2) (apply gx#core-quote-syntax__1 _g121675_))
                ((##fx= _g121674_ 3) (apply gx#core-quote-syntax__2 _g121675_))
                ((##fx= _g121674_ 4) (apply gx#core-quote-syntax__% _g121675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g121675_))))))
    (define gx#core-cons
      (lambda (_%hd118639%_ _%tl118640%_)
        (cons (gx#core-quote-syntax__0 _%hd118639%_) _%tl118640%_)))
    (define gx#core-list
      (lambda (_%hd118636%_ . _%rest118637%_)
        (cons (gx#core-quote-syntax__0 _%hd118636%_) _%rest118637%_)))
    (define gx#core-cons*
      (lambda (_%hd118633%_ . _%rest118634%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd118633%_) _%rest118634%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path118602%_ _%rel118603%_)
        (let ((_%path118620%_ (gx#stx-e _%stx-path118602%_))
              (_%reldir118621%_
               (let _%lp118605%_ ((_%relsrc118607%_
                                   (let ((_%$e118617%_
                                          (gx#stx-source _%stx-path118602%_)))
                                     (if _%$e118617%_
                                         _%$e118617%_
                                         _%rel118603%_))))
                 (if (##structure-instance-of? _%relsrc118607%_ 'gerbil#AST::t)
                     (_%lp118605%_
                      (let ((_%$e118610%_ (gx#stx-source _%relsrc118607%_)))
                        (if _%$e118610%_
                            _%$e118610%_
                            (gx#stx-e _%relsrc118607%_))))
                     (if (source-location-path? _%relsrc118607%_)
                         (path-directory
                          (source-location-path _%relsrc118607%_))
                         (if (string? _%relsrc118607%_)
                             (path-directory _%relsrc118607%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path118620%_ (path-normalize _%reldir118621%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path118626%_)
        (let ((_%rel118628%_ '#f))
          (gx#core-resolve-path__% _%stx-path118626%_ _%rel118628%_))))
    (define gx#core-resolve-path
      (lambda _g121677_
        (let ((_g121676_ (##length _g121677_)))
          (cond ((##fx= _g121676_ 1) (apply gx#core-resolve-path__0 _g121677_))
                ((##fx= _g121676_ 2) (apply gx#core-resolve-path__% _g121677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g121677_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr118558%_ _%ctx118559%_)
        (let* ((_%repr118560118567%_ _%repr118558%_)
               (_%E118562118571%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr118560118567%_
                         '([phi . subs]))
                  '#!void))
               (_%K118563118579%_
                (lambda (_%subs118574%_ _%phi118575%_)
                  (let ((_%subst118577%_
                         (if (null? _%subs118574%_)
                             '#f
                             (list->hash-table-eq _%subs118574%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst118577%_
                     _%ctx118559%_
                     _%phi118575%_
                     '#f)))))
          (if (pair? _%repr118560118567%_)
              (let ((_%hd118564118582%_ (##car _%repr118560118567%_))
                    (_%tl118565118584%_ (##cdr _%repr118560118567%_)))
                (let* ((_%phi118587%_ _%hd118564118582%_)
                       (_%subs118589%_ _%tl118565118584%_))
                  (_%K118563118579%_ _%subs118589%_ _%phi118587%_)))
              (_%E118562118571%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr118594%_)
        (let ((_%ctx118596%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr118594%_ _%ctx118596%_))))
    (define gx#core-deserialize-mark
      (lambda _g121679_
        (let ((_g121678_ (##length _g121679_)))
          (cond ((##fx= _g121678_ 1)
                 (apply gx#core-deserialize-mark__0 _g121679_))
                ((##fx= _g121678_ 2)
                 (apply gx#core-deserialize-mark__% _g121679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g121679_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx118555%_)
        (gx#stx-rewrap _%stx118555%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx118553%_)
        (gx#stx-unwrap__% _%stx118553%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx118523%_)
        (let* ((_%g118524118532%_ (gx#current-expander-marks))
               (_%else118526118540%_ (lambda () _%stx118523%_))
               (_%K118528118545%_
                (lambda (_%hd118543%_)
                  (gx#stx-apply-mark _%stx118523%_ _%hd118543%_))))
          (if (pair? _%g118524118532%_)
              (let* ((_%hd118529118548%_ (##car _%g118524118532%_))
                     (_%hd118551%_ _%hd118529118548%_))
                (_%K118528118545%_ _%hd118551%_))
              (_%else118526118540%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx118508%_ _%E118509%_)
        (let ((_%bind118511%_ (gx#resolve-identifier__0 _%stx118508%_)))
          (if (##structure-direct-instance-of?
               _%bind118511%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind118511%_ '4 '#f '#f)
              (_%E118509%_ _%stx118508%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx118516%_)
        (let ((_%E118518%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx118516%_ _%E118518%_))))
    (define gx#syntax-local-e
      (lambda _g121681_
        (let ((_g121680_ (##length _g121681_)))
          (cond ((##fx= _g121680_ 1) (apply gx#syntax-local-e__0 _g121681_))
                ((##fx= _g121680_ 2) (apply gx#syntax-local-e__% _g121681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g121681_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx118492%_ _%E118493%_)
        (let ((_%e118495%_ (gx#syntax-local-e__% _%stx118492%_ _%E118493%_)))
          (if (##structure-instance-of? _%e118495%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e118495%_ '1 '#f '#f)
              _%e118495%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx118500%_)
        (let ((_%E118502%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx118500%_ _%E118502%_))))
    (define gx#syntax-local-value
      (lambda _g121683_
        (let ((_g121682_ (##length _g121683_)))
          (cond ((##fx= _g121682_ 1)
                 (apply gx#syntax-local-value__0 _g121683_))
                ((##fx= _g121682_ 2)
                 (apply gx#syntax-local-value__% _g121683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g121683_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx118489%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx118489%_)))))
