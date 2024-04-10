(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712784665)
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
      (lambda _%$args118761%_
        (apply make-instance gx#expander-context::t _%$args118761%_)))
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
      (lambda _%$args118758%_
        (apply make-instance gx#root-context::t _%$args118758%_)))
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
      (lambda _%$args118755%_
        (apply make-instance gx#phi-context::t _%$args118755%_)))
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
      (lambda _%$args118752%_
        (apply make-instance gx#top-context::t _%$args118752%_)))
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
      (lambda _%$args118749%_
        (apply make-instance gx#module-context::t _%$args118749%_)))
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
      (lambda _%$args118746%_
        (apply make-instance gx#prelude-context::t _%$args118746%_)))
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
      (lambda _%$args118743%_
        (apply make-instance gx#local-context::t _%$args118743%_)))
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
      (lambda (_%self115649118714%_ _%id118716%_ _%super118717%_)
        (let* ((_%self118719%_ _%self115649118714%_)
               (_%self118721%_ _%self118719%_))
          (if (##fx< '3 (##structure-length _%self118721%_))
              (begin
                (##unchecked-structure-set!
                 _%self118721%_
                 _%id118716%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118721%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118721%_
                 _%super118717%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118721%_
                     '3
                     (##vector-length _%self118721%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self115649118734%_ _%id118735%_)
        (let ((_%super118737%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self115649118734%_
           _%id118735%_
           _%super118737%_))))
    (define gx#phi-context:::init!
      (lambda _g118804_
        (let ((_g118803_ (##length _g118804_)))
          (cond ((##fx= _g118803_ 2)
                 (apply gx#phi-context:::init!__0 _g118804_))
                ((##fx= _g118803_ 3)
                 (apply gx#phi-context:::init!__% _g118804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g118804_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self115650118565%_ _%super118567%_)
        (let* ((_%self118569%_ _%self115650118565%_)
               (_%self118571%_ _%self118569%_))
          (if (##fx< '3 (##structure-length _%self118571%_))
              (begin
                (##unchecked-structure-set!
                 _%self118571%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118571%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118571%_
                 _%super118567%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118571%_
                     '3
                     (##vector-length _%self118571%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self115650118584%_)
        (let ((_%super118586%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self115650118584%_ _%super118586%_))))
    (define gx#local-context:::init!
      (lambda _g118806_
        (let ((_g118805_ (##length _g118806_)))
          (cond ((##fx= _g118805_ 1)
                 (apply gx#local-context:::init!__0 _g118806_))
                ((##fx= _g118805_ 2)
                 (apply gx#local-context:::init!__% _g118806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g118806_))))))
    (__bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
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
      (lambda _%$args118439%_
        (apply make-instance gx#binding::t _%$args118439%_)))
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
      (lambda _%$args118436%_
        (apply make-instance gx#runtime-binding::t _%$args118436%_)))
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
      (lambda _%$args118433%_
        (apply make-instance gx#local-binding::t _%$args118433%_)))
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
      (lambda _%$args118430%_
        (apply make-instance gx#top-binding::t _%$args118430%_)))
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
      (lambda _%$args118427%_
        (apply make-instance gx#module-binding::t _%$args118427%_)))
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
      (lambda _%$args118424%_
        (apply make-instance gx#extern-binding::t _%$args118424%_)))
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
      (lambda _%$args118421%_
        (apply make-instance gx#syntax-binding::t _%$args118421%_)))
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
      (lambda _%$args118418%_
        (apply make-instance gx#import-binding::t _%$args118418%_)))
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
      (lambda _%$args118415%_
        (apply make-instance gx#alias-binding::t _%$args118415%_)))
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
      (lambda _%$args118412%_
        (apply make-instance gx#expander::t _%$args118412%_)))
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
      (lambda _%$args118409%_
        (apply make-instance gx#core-expander::t _%$args118409%_)))
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
      (lambda _%$args118406%_
        (apply make-instance gx#expression-form::t _%$args118406%_)))
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
      (lambda _%$args118403%_
        (apply make-instance gx#special-form::t _%$args118403%_)))
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
      (lambda _%$args118400%_
        (apply make-instance gx#definition-form::t _%$args118400%_)))
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
      (lambda _%$args118397%_
        (apply make-instance gx#top-special-form::t _%$args118397%_)))
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
      (lambda _%$args118394%_
        (apply make-instance gx#module-special-form::t _%$args118394%_)))
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
      (lambda _%$args118391%_
        (apply make-instance gx#feature-expander::t _%$args118391%_)))
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
      (lambda _%$args118388%_
        (apply make-instance gx#private-feature-expander::t _%$args118388%_)))
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
      (lambda _%$args118385%_
        (apply make-instance gx#reserved-expander::t _%$args118385%_)))
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
      (lambda _%$args118382%_
        (apply make-instance gx#macro-expander::t _%$args118382%_)))
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
      (lambda _%$args118379%_
        (apply make-instance gx#rename-macro-expander::t _%$args118379%_)))
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
      (lambda _%$args118376%_
        (apply make-instance gx#user-expander::t _%$args118376%_)))
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
      (lambda _%$args118373%_
        (apply make-instance gx#expander-mark::t _%$args118373%_)))
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
      (lambda (_%ctx118357%_
               _%message118358%_
               _%stx118359%_
               .
               _%details118360%_)
        (let ((_%ctx118371%_
               (let ((_%$e118362%_ _%ctx118357%_))
                 (if _%$e118362%_
                     _%$e118362%_
                     (let ((_%$e118365%_ (gx#core-context-top__0)))
                       (if _%$e118365%_
                           ((lambda (_%ctx118368%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx118368%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e118365%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message118358%_
                  (cons _%stx118359%_ _%details118360%_)
                  _%ctx118371%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx118344%_ _%expression?118345%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx118344%_ _%expression?118345%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx118350%_)
        (let ((_%expression?118352%_ '#f))
          (gx#eval-syntax__% _%stx118350%_ _%expression?118352%_))))
    (define gx#eval-syntax
      (lambda _g118808_
        (let ((_g118807_ (##length _g118808_)))
          (cond ((##fx= _g118807_ 1) (apply gx#eval-syntax__0 _g118808_))
                ((##fx= _g118807_ 2) (apply gx#eval-syntax__% _g118808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g118808_))))))
    (define gx#eval-syntax*
      (lambda (_%stx118341%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx118341%_))))
    (define gx#core-expand__%
      (lambda (_%stx118328%_ _%expression?118329%_)
        (if _%expression?118329%_
            (gx#core-expand-expression _%stx118328%_)
            (gx#core-expand-top _%stx118328%_))))
    (define gx#core-expand__0
      (lambda (_%stx118334%_)
        (let ((_%expression?118336%_ '#f))
          (gx#core-expand__% _%stx118334%_ _%expression?118336%_))))
    (define gx#core-expand
      (lambda _g118810_
        (let ((_g118809_ (##length _g118810_)))
          (cond ((##fx= _g118809_ 1) (apply gx#core-expand__0 _g118810_))
                ((##fx= _g118809_ 2) (apply gx#core-expand__% _g118810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g118810_))))))
    (define gx#core-expand-top
      (lambda (_%stx118295%_)
        (let* ((_%stx118297%_ (gx#core-expand*__0 _%stx118295%_))
               (_%e118298118305%_ _%stx118297%_)
               (_%E118300118309%_
                (lambda () (gx#core-expand-expression _%stx118297%_)))
               (_%E118299118323%_
                (lambda ()
                  (if (gx#stx-pair? _%e118298118305%_)
                      (let ((_%e118301118313%_
                             (gx#syntax-e _%e118298118305%_)))
                        (let ((_%hd118302118316%_ (##car _%e118301118313%_))
                              (_%tl118303118318%_ (##cdr _%e118301118313%_)))
                          (let ((_%form118321%_ _%hd118302118316%_))
                            (if (gx#core-bound-identifier?__0 _%form118321%_)
                                _%stx118297%_
                                (_%E118300118309%_)))))
                      (_%E118300118309%_)))))
          (_%E118299118323%_))))
    (define gx#core-expand-expression
      (lambda (_%stx118227%_)
        (letrec ((_%sealed-expression?118229%_
                  (lambda (_%hd118265%_)
                    (if (gx#sealed-syntax? _%hd118265%_)
                        (let* ((_%e118266118273%_ _%hd118265%_)
                               (_%E118268118277%_ (lambda () '#f))
                               (_%E118267118291%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e118266118273%_)
                                      (let ((_%e118269118281%_
                                             (gx#syntax-e _%e118266118273%_)))
                                        (let ((_%hd118270118284%_
                                               (##car _%e118269118281%_))
                                              (_%tl118271118286%_
                                               (##cdr _%e118269118281%_)))
                                          (let ((_%form118289%_
                                                 _%hd118270118284%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form118289%_
                                                 gx#expression-form-binding?)
                                                (_%E118268118277%_)))))
                                      (_%E118268118277%_)))))
                          (_%E118267118291%_))
                        '#f)))
                 (_%illegal-expression118230%_
                  (lambda (_%hd118262%_ . _%_118263%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx118227%_
                     _%hd118262%_)))
                 (_%expand-e118231%_
                  (lambda (_%form118254%_ _%hd118255%_)
                    (let ((_%bind118257%_
                           (if (##structure-instance-of?
                                _%form118254%_
                                'gx#binding::t)
                               _%form118254%_
                               (gx#resolve-identifier__0 _%form118254%_))))
                      (if (gx#core-expander-binding? _%bind118257%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind118257%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd118255%_
                            (gx#stx-source _%stx118227%_)))
                          (if (##structure-direct-instance-of?
                               _%bind118257%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind118257%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd118255%_
                                 (gx#stx-source _%stx118227%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx118227%_
                               _%form118254%_)))))))
          (let ((_%hd118233%_ (gx#core-expand-head _%stx118227%_)))
            (if (_%sealed-expression?118229%_ _%hd118233%_)
                _%hd118233%_
                (if (gx#stx-pair? _%hd118233%_)
                    (let* ((_%form118237%_ (gx#stx-car _%hd118233%_))
                           (_%bind118239%_
                            (if (gx#identifier? _%form118237%_)
                                (gx#resolve-identifier__0 _%form118237%_)
                                '#f)))
                      (if (or (not _%bind118239%_)
                              (not (gx#core-expander-binding? _%bind118239%_)))
                          (_%expand-e118231%_
                           '%%app
                           (cons '%%app _%hd118233%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind118239%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd118233%_
                               _%illegal-expression118230%_)
                              (if (gx#expression-form-binding? _%bind118239%_)
                                  (_%expand-e118231%_
                                   _%bind118239%_
                                   _%hd118233%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind118239%_)
                                      (gx#core-expand-expression
                                       (_%expand-e118231%_
                                        _%bind118239%_
                                        _%hd118233%_))
                                      (_%illegal-expression118230%_
                                       _%hd118233%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd118233%_)
                        (_%illegal-expression118230%_ _%hd118233%_)
                        (if (gx#identifier? _%hd118233%_)
                            (_%expand-e118231%_
                             '%%ref
                             (cons '%%ref (cons _%hd118233%_ '())))
                            (if (gx#stx-datum? _%hd118233%_)
                                (_%expand-e118231%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd118233%_ '())))
                                (_%illegal-expression118230%_
                                 _%hd118233%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx118222%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx118225%_ (gx#core-expand-expression _%stx118222%_)))
             (values _%stx118225%_ (gx#eval-syntax* _%stx118225%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx118203%_ _%stop?118204%_)
        (let _%lp118206%_ ((_%stx118208%_ _%stx118203%_))
          (if (_%stop?118204%_ _%stx118208%_)
              _%stx118208%_
              (let ((_%rstx118210%_ (gx#core-expand1 _%stx118208%_)))
                (if (eq? _%stx118208%_ _%rstx118210%_)
                    _%stx118208%_
                    (_%lp118206%_ _%rstx118210%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx118215%_)
        (let ((_%stop?118217%_ false))
          (gx#core-expand*__% _%stx118215%_ _%stop?118217%_))))
    (define gx#core-expand*
      (lambda _g118812_
        (let ((_g118811_ (##length _g118812_)))
          (cond ((##fx= _g118811_ 1) (apply gx#core-expand*__0 _g118812_))
                ((##fx= _g118811_ 2) (apply gx#core-expand*__% _g118812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g118812_))))))
    (define gx#core-expand1
      (lambda (_%stx118155%_)
        (letrec ((_%step118157%_
                  (lambda (_%hd118194%_)
                    (let ((_%bind118196%_
                           (gx#resolve-identifier__0 _%hd118194%_)))
                      (if (##structure-instance-of?
                           _%bind118196%_
                           'gx#runtime-binding::t)
                          _%stx118155%_
                          (if (##structure-direct-instance-of?
                               _%bind118196%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind118196%_
                                '4
                                '#f
                                '#f)
                               _%stx118155%_)
                              (if (not _%bind118196%_)
                                  _%stx118155%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx118155%_))))))))
          (let* ((_%e118158118166%_ _%stx118155%_)
                 (_%E118164118170%_ (lambda () _%stx118155%_))
                 (_%E118160118176%_
                  (lambda ()
                    (let ((_%hd118174%_ _%e118158118166%_))
                      (if (gx#identifier? _%hd118174%_)
                          (_%step118157%_ _%hd118174%_)
                          (_%E118164118170%_)))))
                 (_%E118159118190%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118158118166%_)
                        (let ((_%e118161118180%_
                               (gx#syntax-e _%e118158118166%_)))
                          (let ((_%hd118162118183%_ (##car _%e118161118180%_))
                                (_%tl118163118185%_ (##cdr _%e118161118180%_)))
                            (let ((_%hd118188%_ _%hd118162118183%_))
                              (if (gx#identifier? _%hd118188%_)
                                  (_%step118157%_ _%hd118188%_)
                                  (_%E118160118176%_)))))
                        (_%E118160118176%_)))))
            (_%E118159118190%_)))))
    (define gx#core-expand-head
      (lambda (_%stx118121%_)
        (letrec ((_%stop?118123%_
                  (lambda (_%stx118125%_)
                    (let* ((_%e118126118133%_ _%stx118125%_)
                           (_%E118128118137%_ (lambda () '#f))
                           (_%E118127118151%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118126118133%_)
                                  (let ((_%e118129118141%_
                                         (gx#syntax-e _%e118126118133%_)))
                                    (let ((_%hd118130118144%_
                                           (##car _%e118129118141%_))
                                          (_%tl118131118146%_
                                           (##cdr _%e118129118141%_)))
                                      (let ((_%hd118149%_ _%hd118130118144%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd118149%_)
                                            (_%E118128118137%_)))))
                                  (_%E118128118137%_)))))
                      (_%E118127118151%_)))))
          (gx#core-expand*__% _%stx118121%_ _%stop?118123%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx117927%_
               _%expand-special117928%_
               _%begin-form117929%_
               _%expand-e117930%_)
        (letrec ((_%expand-splice117932%_
                  (lambda (_%hd118095%_
                           _%body118096%_
                           _%rest118097%_
                           _%r118098%_)
                    (if (gx#stx-list? _%body118096%_)
                        (_%K117936%_
                         (gx#stx-foldr cons _%rest118097%_ _%body118096%_)
                         _%r118098%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx117927%_
                         _%hd118095%_))))
                 (_%expand-cond-expand117933%_
                  (lambda (_%hd118091%_ _%rest118092%_ _%r118093%_)
                    (_%K117936%_
                     (cons (gx#core-expand-cond-expand% _%hd118091%_)
                           _%rest118092%_)
                     _%r118093%_)))
                 (_%expand-include117934%_
                  (lambda (_%hd118040%_ _%rest118041%_ _%r118042%_)
                    (let* ((_%e118043118053%_ _%hd118040%_)
                           (_%E118045118057%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e118043118053%_)))
                           (_%E118044118087%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118043118053%_)
                                  (let ((_%e118046118061%_
                                         (gx#syntax-e _%e118043118053%_)))
                                    (let ((_%hd118047118064%_
                                           (##car _%e118046118061%_))
                                          (_%tl118048118066%_
                                           (##cdr _%e118046118061%_)))
                                      (if (gx#stx-pair? _%tl118048118066%_)
                                          (let ((_%e118049118069%_
                                                 (gx#syntax-e
                                                  _%tl118048118066%_)))
                                            (let ((_%hd118050118072%_
                                                   (##car _%e118049118069%_))
                                                  (_%tl118051118074%_
                                                   (##cdr _%e118049118069%_)))
                                              (let ((_%path118077%_
                                                     _%hd118050118072%_))
                                                (if (gx#stx-null?
                                                     _%tl118051118074%_)
                                                    (if (gx#stx-string?
                                                         _%path118077%_)
                                                        (let* ((_%rpath118079%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path118077%_
                         (gx#stx-source _%hd118040%_)))
                       (_%block118081%_
                        (gx#core-expand-include%__%
                         _%hd118040%_
                         _%rpath118079%_))
                       (_%rbody118084%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block118081%_
                            _%expand-special117928%_
                            '#f
                            _%expand-e117930%_))
                         gx#current-expander-path
                         (cons _%rpath118079%_ (gx#current-expander-path)))))
                  (_%K117936%_
                   _%rest118041%_
                   (__foldr1 cons _%r118042%_ _%rbody118084%_)))
                (_%E118045118057%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E118045118057%_)))))
                                          (_%E118045118057%_))))
                                  (_%E118045118057%_)))))
                      (_%E118044118087%_))))
                 (_%expand-expression117935%_
                  (lambda (_%hd118036%_ _%rest118037%_ _%r118038%_)
                    (_%K117936%_
                     _%rest118037%_
                     (cons (_%expand-e117930%_ _%hd118036%_) _%r118038%_))))
                 (_%K117936%_
                  (lambda (_%rest117966%_ _%r117967%_)
                    (let* ((_%e117968117975%_ _%rest117966%_)
                           (_%E117970117979%_
                            (lambda ()
                              (if _%begin-form117929%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form117929%_
                                    (reverse _%r117967%_))
                                   (gx#stx-source _%stx117927%_))
                                  _%r117967%_)))
                           (_%E117969118032%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117968117975%_)
                                  (let ((_%e117971117983%_
                                         (gx#syntax-e _%e117968117975%_)))
                                    (let ((_%hd117972117986%_
                                           (##car _%e117971117983%_))
                                          (_%tl117973117988%_
                                           (##cdr _%e117971117983%_)))
                                      (let* ((_%hd117991%_ _%hd117972117986%_)
                                             (_%rest117993%_
                                              _%tl117973117988%_))
                                        (if '#t
                                            (let* ((_%hd117995%_
                                                    (gx#core-expand-head
                                                     _%hd117991%_))
                                                   (_%e117996118003%_
                                                    _%hd117995%_)
                                                   (_%E117998118007%_
                                                    (lambda ()
                                                      (_%expand-expression117935%_
                                                       _%hd117995%_
                                                       _%rest117993%_
                                                       _%r117967%_)))
                                                   (_%E117997118028%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117996118003%_)
                                                          (let ((_%e117999118011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117996118003%_)))
                    (let ((_%hd118000118014%_ (##car _%e117999118011%_))
                          (_%tl118001118016%_ (##cdr _%e117999118011%_)))
                      (let* ((_%form118019%_ _%hd118000118014%_)
                             (_%body118021%_ _%tl118001118016%_))
                        (if '#t
                            (let ((_%bind118023%_
                                   (if (gx#identifier? _%form118019%_)
                                       (gx#resolve-identifier__0
                                        _%form118019%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind118023%_)
                                  (let ((_%$e118025%_
                                         (##unchecked-structure-ref
                                          _%bind118023%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e118025%_)
                                        (_%expand-splice117932%_
                                         _%hd117995%_
                                         _%body118021%_
                                         _%rest117993%_
                                         _%r117967%_)
                                        (if (eq? '%#cond-expand _%$e118025%_)
                                            (_%expand-cond-expand117933%_
                                             _%hd117995%_
                                             _%rest117993%_
                                             _%r117967%_)
                                            (if (eq? '%#include _%$e118025%_)
                                                (_%expand-include117934%_
                                                 _%hd117995%_
                                                 _%rest117993%_
                                                 _%r117967%_)
                                                (_%expand-special117928%_
                                                 _%hd117995%_
                                                 _%K117936%_
                                                 _%rest117993%_
                                                 _%r117967%_)))))
                                  (_%expand-expression117935%_
                                   _%hd117995%_
                                   _%rest117993%_
                                   _%r117967%_)))
                            (_%E117998118007%_)))))
                  (_%E117998118007%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117997118028%_))
                                            (_%E117970117979%_)))))
                                  (_%E117970117979%_)))))
                      (_%E117969118032%_)))))
          (let* ((_%e117937117944%_ _%stx117927%_)
                 (_%E117939117948%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117937117944%_)))
                 (_%E117938117962%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117937117944%_)
                        (let ((_%e117940117952%_
                               (gx#syntax-e _%e117937117944%_)))
                          (let ((_%hd117941117955%_ (##car _%e117940117952%_))
                                (_%tl117942117957%_ (##cdr _%e117940117952%_)))
                            (let ((_%body117960%_ _%tl117942117957%_))
                              (if (gx#stx-list? _%body117960%_)
                                  (_%K117936%_ _%body117960%_ '())
                                  (_%E117939117948%_)))))
                        (_%E117939117948%_)))))
            (_%E117938117962%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx118103%_ _%expand-special118104%_)
        (let* ((_%begin-form118106%_ '%#begin)
               (_%expand-e118108%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx118103%_
           _%expand-special118104%_
           _%begin-form118106%_
           _%expand-e118108%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx118110%_ _%expand-special118111%_ _%begin-form118112%_)
        (let ((_%expand-e118114%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx118110%_
           _%expand-special118111%_
           _%begin-form118112%_
           _%expand-e118114%_))))
    (define gx#core-expand-block
      (lambda _g118814_
        (let ((_g118813_ (##length _g118814_)))
          (cond ((##fx= _g118813_ 2) (apply gx#core-expand-block__0 _g118814_))
                ((##fx= _g118813_ 3) (apply gx#core-expand-block__1 _g118814_))
                ((##fx= _g118813_ 4) (apply gx#core-expand-block__% _g118814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g118814_))))))
    (define gx#core-expand-block*
      (lambda (_%stx117875%_ _%expand-special117876%_)
        (let* ((_%g117877117888%_
                (gx#core-expand-block__1
                 _%stx117875%_
                 _%expand-special117876%_
                 '#f))
               (_%E117881117892%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117877117888%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K117886117923%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx117875%_)))
                (_%K117883117909%_ (lambda (_%expr117907%_) _%expr117907%_))
                (_%K117882117898%_
                 (lambda (_%body117896%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body117896%_))
                    (gx#stx-source _%stx117875%_)))))
            (let ((_%try-match117879117919%_
                   (lambda ()
                     (if (##pair? _%g117877117888%_)
                         (let ((_%tl117885117914%_ (##cdr _%g117877117888%_))
                               (_%hd117884117912%_ (##car _%g117877117888%_)))
                           (if (##null? _%tl117885117914%_)
                               (let ((_%expr117917%_ _%hd117884117912%_))
                                 (_%K117883117909%_ _%expr117917%_))
                               (let ((_%body117901%_ _%g117877117888%_))
                                 (_%K117882117898%_ _%body117901%_))))
                         (let ((_%body117901%_ _%g117877117888%_))
                           (_%K117882117898%_ _%body117901%_))))))
              (if (##null? _%g117877117888%_)
                  (_%K117886117923%_)
                  (_%try-match117879117919%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx117700%_)
        (letrec ((_%satisfied?117702%_
                  (lambda (_%condition117803%_)
                    (let* ((_%e117804117819%_ _%condition117803%_)
                           (_%E117814117823%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117804117819%_)))
                           (_%E117807117842%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117804117819%_)
                                  (let ((_%e117815117827%_
                                         (gx#syntax-e _%e117804117819%_)))
                                    (let ((_%hd117816117830%_
                                           (##car _%e117815117827%_))
                                          (_%tl117817117832%_
                                           (##cdr _%e117815117827%_)))
                                      (let* ((_%combinator117835%_
                                              _%hd117816117830%_)
                                             (_%body117837%_
                                              _%tl117817117832%_))
                                        (if (gx#stx-list? _%body117837%_)
                                            (let ((_%$e117839%_
                                                   (gx#stx-e
                                                    _%combinator117835%_)))
                                              (if (eq? 'not _%$e117839%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?117702%_
                                                        _%body117837%_))
                                                  (if (eq? 'and _%$e117839%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?117702%_
                                                       _%body117837%_)
                                                      (if (eq? 'or
                                                               _%$e117839%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?117702%_
                                                           _%body117837%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e117839%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body117837%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx117700%_
                       _%combinator117835%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E117814117823%_)))))
                                  (_%E117814117823%_))))
                           (_%E117806117865%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117804117819%_)
                                  (let ((_%e117808117846%_
                                         (gx#syntax-e _%e117804117819%_)))
                                    (let ((_%hd117809117849%_
                                           (##car _%e117808117846%_))
                                          (_%tl117810117851%_
                                           (##cdr _%e117808117846%_)))
                                      (if (and (gx#identifier?
                                                _%hd117809117849%_)
                                               (gx#core-identifier=?
                                                _%hd117809117849%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl117810117851%_)
                                              (let ((_%e117811117854%_
                                                     (gx#syntax-e
                                                      _%tl117810117851%_)))
                                                (let ((_%hd117812117857%_
                                                       (##car _%e117811117854%_))
                                                      (_%tl117813117859%_
                                                       (##cdr _%e117811117854%_)))
                                                  (let ((_%expr117862%_
                                                         _%hd117812117857%_))
                                                    (if (gx#stx-null?
                                                         _%tl117813117859%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr117862%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E117807117842%_))
                (_%E117807117842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117807117842%_))
                                          (_%E117807117842%_))))
                                  (_%E117807117842%_))))
                           (_%E117805117871%_
                            (lambda ()
                              (let ((_%id117869%_ _%e117804117819%_))
                                (if (gx#identifier? _%id117869%_)
                                    (gx#core-bound-identifier?__%
                                     _%id117869%_
                                     gx#feature-binding?)
                                    (_%E117806117865%_))))))
                      (_%E117805117871%_))))
                 (_%loop117703%_
                  (lambda (_%rest117733%_)
                    (let* ((_%e117734117742%_ _%rest117733%_)
                           (_%E117740117746%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117734117742%_)))
                           (_%E117736117750%_
                            (lambda ()
                              (if (gx#stx-null? _%e117734117742%_)
                                  (if '#t '() (_%E117740117746%_))
                                  (_%E117740117746%_))))
                           (_%E117735117799%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117734117742%_)
                                  (let ((_%e117737117754%_
                                         (gx#syntax-e _%e117734117742%_)))
                                    (let ((_%hd117738117757%_
                                           (##car _%e117737117754%_))
                                          (_%tl117739117759%_
                                           (##cdr _%e117737117754%_)))
                                      (let* ((_%hd117762%_ _%hd117738117757%_)
                                             (_%rest117764%_
                                              _%tl117739117759%_))
                                        (if '#t
                                            (let* ((_%e117765117772%_
                                                    _%hd117762%_)
                                                   (_%E117767117776%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e117765117772%_)))
                                                   (_%E117766117795%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117765117772%_)
                                                          (let ((_%e117768117780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117765117772%_)))
                    (let ((_%hd117769117783%_ (##car _%e117768117780%_))
                          (_%tl117770117785%_ (##cdr _%e117768117780%_)))
                      (let* ((_%condition117788%_ _%hd117769117783%_)
                             (_%body117790%_ _%tl117770117785%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition117788%_ 'else)
                                (if (gx#stx-null? _%rest117764%_)
                                    _%body117790%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; clauses after else"
                                     _%stx117700%_
                                     _%hd117762%_))
                                (if (_%satisfied?117702%_ _%condition117788%_)
                                    _%body117790%_
                                    (_%loop117703%_ _%rest117764%_)))
                            (_%E117767117776%_)))))
                  (_%E117767117776%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117766117795%_))
                                            (_%E117736117750%_)))))
                                  (_%E117736117750%_)))))
                      (_%E117735117799%_)))))
          (let* ((_%e117704117711%_ _%stx117700%_)
                 (_%E117706117715%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117704117711%_)))
                 (_%E117705117729%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117704117711%_)
                        (let ((_%e117707117719%_
                               (gx#syntax-e _%e117704117711%_)))
                          (let ((_%hd117708117722%_ (##car _%e117707117719%_))
                                (_%tl117709117724%_ (##cdr _%e117707117719%_)))
                            (let ((_%clauses117727%_ _%tl117709117724%_))
                              (if (gx#stx-list? _%clauses117727%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop117703%_ _%clauses117727%_))
                                  (_%E117706117715%_)))))
                        (_%E117706117715%_)))))
            (_%E117705117729%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx117643%_ _%rpath117644%_)
        (let* ((_%e117645117655%_ _%stx117643%_)
               (_%E117647117659%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e117645117655%_)))
               (_%E117646117686%_
                (lambda ()
                  (if (gx#stx-pair? _%e117645117655%_)
                      (let ((_%e117648117663%_
                             (gx#syntax-e _%e117645117655%_)))
                        (let ((_%hd117649117666%_ (##car _%e117648117663%_))
                              (_%tl117650117668%_ (##cdr _%e117648117663%_)))
                          (if (gx#stx-pair? _%tl117650117668%_)
                              (let ((_%e117651117671%_
                                     (gx#syntax-e _%tl117650117668%_)))
                                (let ((_%hd117652117674%_
                                       (##car _%e117651117671%_))
                                      (_%tl117653117676%_
                                       (##cdr _%e117651117671%_)))
                                  (let ((_%path117679%_ _%hd117652117674%_))
                                    (if (gx#stx-null? _%tl117653117676%_)
                                        (if (gx#stx-string? _%path117679%_)
                                            (let ((_%rpath117684%_
                                                   (let ((_%$e117681%_
                                                          _%rpath117644%_))
                                                     (if _%$e117681%_
                                                         _%$e117681%_
                                                         (gx#core-resolve-path__%
                                                          _%path117679%_
                                                          (gx#stx-source
                                                           _%stx117643%_))))))
                                              (if (member _%rpath117684%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx117643%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath117684%_))
                                                    (gx#stx-source
                                                     _%stx117643%_)))))
                                            (_%E117647117659%_))
                                        (_%E117647117659%_)))))
                              (_%E117647117659%_))))
                      (_%E117647117659%_)))))
          (_%E117646117686%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx117693%_)
        (let ((_%rpath117695%_ '#f))
          (gx#core-expand-include%__% _%stx117693%_ _%rpath117695%_))))
    (define gx#core-expand-include%
      (lambda _g118816_
        (let ((_g118815_ (##length _g118816_)))
          (cond ((##fx= _g118815_ 1)
                 (apply gx#core-expand-include%__0 _g118816_))
                ((##fx= _g118815_ 2)
                 (apply gx#core-expand-include%__% _g118816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g118816_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K117609%_ _%stx117610%_ _%method117611%_)
        (if (procedure? _%K117609%_)
            (let ((_%$e117614%_ (gx#stx-source _%stx117610%_)))
              (if _%$e117614%_
                  ((lambda (_%g117616117618%_)
                     (gx#stx-wrap-source
                      (_%K117609%_ _%stx117610%_)
                      _%g117616117618%_))
                   _%$e117614%_)
                  (_%K117609%_ _%stx117610%_)))
            (let ((_%$e117622%_
                   (bound-method-ref _%K117609%_ _%method117611%_)))
              (if _%$e117622%_
                  ((lambda (_%g117624117626%_)
                     (gx#core-apply-expander__%
                      _%g117624117626%_
                      _%stx117610%_
                      _%method117611%_))
                   _%$e117622%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx117610%_
                   _%method117611%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K117633%_ _%stx117634%_)
        (let ((_%method117636%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K117633%_
           _%stx117634%_
           _%method117636%_))))
    (define gx#core-apply-expander
      (lambda _g118818_
        (let ((_g118817_ (##length _g118818_)))
          (cond ((##fx= _g118817_ 2)
                 (apply gx#core-apply-expander__0 _g118818_))
                ((##fx= _g118817_ 3)
                 (apply gx#core-apply-expander__% _g118818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g118818_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self115651117592%_ _%stx117594%_)
        (let* ((_%self117596%_ _%self115651117592%_)
               (_%self117598%_ _%self117596%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx117594%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self115652117432%_ _%stx117434%_)
        (let* ((_%self117436%_ _%self115652117432%_)
               (_%self117438%_ _%self117436%_)
               (_%self117447117453%_ _%self117438%_)
               (_%E117449117457%_
                (lambda ()
                  (error '"No clause matching"
                         _%self117447117453%_
                         '((macro-expander K)))
                  '#!void))
               (_%K117450117462%_
                (lambda (_%K117460%_)
                  (gx#core-apply-expander__0 _%K117460%_ _%stx117434%_))))
          (if '#t
              (let* ((_%e117451117465%_
                      (##unchecked-structure-ref
                       _%self117447117453%_
                       '1
                       '#f
                       '#f))
                     (_%K117468%_ _%e117451117465%_))
                (_%K117450117462%_ _%K117468%_))
              (_%E117449117457%_)))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self115653117272%_ _%stx117274%_)
        (let* ((_%self117276%_ _%self115653117272%_)
               (_%self117278%_ _%self117276%_))
          (if (gx#sealed-syntax? _%stx117274%_)
              _%stx117274%_
              (let* ((_%self117287117293%_ _%self117278%_)
                     (_%E117289117297%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self117287117293%_
                               '((core-expander K)))
                        '#!void))
                     (_%K117290117302%_
                      (lambda (_%K117300%_)
                        (gx#core-apply-expander__0
                         _%K117300%_
                         _%stx117274%_))))
                (if '#t
                    (let* ((_%e117291117305%_
                            (##unchecked-structure-ref
                             _%self117287117293%_
                             '1
                             '#f
                             '#f))
                           (_%K117308%_ _%e117291117305%_))
                      (_%K117290117302%_ _%K117308%_))
                    (_%E117289117297%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self115654117121%_ _%stx117123%_ _%top?117124%_)
        (let* ((_%self117126%_ _%self115654117121%_)
               (_%self117128%_ _%self117126%_))
          (if (_%top?117124%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self117128%_
               _%stx117123%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx117123%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self115654117141%_ _%stx117142%_)
        (let ((_%top?117144%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self115654117141%_
           _%stx117142%_
           _%top?117144%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g118820_
        (let ((_g118819_ (##length _g118820_)))
          (cond ((##fx= _g118819_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g118820_))
                ((##fx= _g118819_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g118820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g118820_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self115655116982%_ _%stx116984%_)
        (let* ((_%self116986%_ _%self115655116982%_)
               (_%self116988%_ _%self116986%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self116988%_
           _%stx116984%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self115656116794%_ _%stx116796%_)
        (let* ((_%self116798%_ _%self115656116794%_)
               (_%self116800%_ _%self116798%_)
               (_%self116809116815%_ _%self116800%_)
               (_%E116811116819%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116809116815%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K116812116852%_
                (lambda (_%id116822%_)
                  (let* ((_%e116823116830%_ _%stx116796%_)
                         (_%E116825116834%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e116823116830%_)))
                         (_%E116824116848%_
                          (lambda ()
                            (if (gx#stx-pair? _%e116823116830%_)
                                (let ((_%e116826116838%_
                                       (gx#syntax-e _%e116823116830%_)))
                                  (let ((_%hd116827116841%_
                                         (##car _%e116826116838%_))
                                        (_%tl116828116843%_
                                         (##cdr _%e116826116838%_)))
                                    (let ((_%body116846%_ _%tl116828116843%_))
                                      (if '#t
                                          (gx#core-cons
                                           _%id116822%_
                                           _%body116846%_)
                                          (_%E116825116834%_)))))
                                (_%E116825116834%_)))))
                    (_%E116824116848%_)))))
          (if '#t
              (let* ((_%e116813116855%_
                      (##unchecked-structure-ref
                       _%self116809116815%_
                       '1
                       '#f
                       '#f))
                     (_%id116858%_ _%e116813116855%_))
                (_%K116812116852%_ _%id116858%_))
              (_%E116811116819%_)))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self116620%_ _%stx116621%_ _%method116622%_)
        (let* ((_%self116623116631%_ _%self116620%_)
               (_%E116625116635%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116623116631%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K116626116642%_
                (lambda (_%phi116638%_ _%ctx116639%_ _%K116640%_)
                  (gx#core-apply-user-macro
                   _%K116640%_
                   _%stx116621%_
                   _%ctx116639%_
                   _%phi116638%_
                   _%method116622%_))))
          (if (##structure-instance-of?
               _%self116623116631%_
               'gx#user-expander::t)
              (let* ((_%e116627116645%_
                      (##unchecked-structure-ref
                       _%self116623116631%_
                       '1
                       '#f
                       '#f))
                     (_%K116648%_ _%e116627116645%_)
                     (_%e116628116650%_
                      (##unchecked-structure-ref
                       _%self116623116631%_
                       '2
                       '#f
                       '#f))
                     (_%ctx116653%_ _%e116628116650%_)
                     (_%e116629116655%_
                      (##unchecked-structure-ref
                       _%self116623116631%_
                       '3
                       '#f
                       '#f))
                     (_%phi116658%_ _%e116629116655%_))
                (_%K116626116642%_ _%phi116658%_ _%ctx116653%_ _%K116648%_))
              (_%E116625116635%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self116663%_ _%stx116664%_)
        (let ((_%method116666%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self116663%_
           _%stx116664%_
           _%method116666%_))))
    (define gx#core-apply-user-expander
      (lambda _g118822_
        (let ((_g118821_ (##length _g118822_)))
          (cond ((##fx= _g118821_ 2)
                 (apply gx#core-apply-user-expander__0 _g118822_))
                ((##fx= _g118821_ 3)
                 (apply gx#core-apply-user-expander__% _g118822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g118822_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K116610%_
               _%stx116611%_
               _%ctx116612%_
               _%phi116613%_
               _%method116614%_)
        (let ((_%mark116616%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx116612%_
                _%phi116613%_
                _%stx116611%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K116610%_
               (gx#stx-apply-mark _%stx116611%_ _%mark116616%_)
               _%method116614%_)
              _%mark116616%_))
           gx#current-expander-marks
           (cons _%mark116616%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx116458%_ _%phi116459%_ _%ctx116460%_)
        (let _%lp116462%_ ((_%bind116464%_
                            (gx#core-resolve-identifier__%
                             _%stx116458%_
                             _%phi116459%_
                             _%ctx116460%_)))
          (if (##structure-direct-instance-of?
               _%bind116464%_
               'gx#import-binding::t)
              (_%lp116462%_
               (##unchecked-structure-ref _%bind116464%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind116464%_
                   'gx#alias-binding::t)
                  (_%lp116462%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind116464%_ '4 '#f '#f)
                    _%phi116459%_
                    _%ctx116460%_))
                  _%bind116464%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx116472%_)
        (let* ((_%phi116474%_ (gx#current-expander-phi))
               (_%ctx116476%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx116472%_
           _%phi116474%_
           _%ctx116476%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx116478%_ _%phi116479%_)
        (let ((_%ctx116481%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx116478%_
           _%phi116479%_
           _%ctx116481%_))))
    (define gx#resolve-identifier
      (lambda _g118824_
        (let ((_g118823_ (##length _g118824_)))
          (cond ((##fx= _g118823_ 1)
                 (apply gx#resolve-identifier__0 _g118824_))
                ((##fx= _g118823_ 2)
                 (apply gx#resolve-identifier__1 _g118824_))
                ((##fx= _g118823_ 3)
                 (apply gx#resolve-identifier__% _g118824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g118824_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx116413%_
               _%val116414%_
               _%rebind?116415%_
               _%phi116416%_
               _%ctx116417%_)
        (let ((_%rebind?116422%_
               (if (not _%rebind?116415%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?116415%_)
                       _%rebind?116415%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx116413%_)
           _%val116414%_
           _%rebind?116422%_
           _%phi116416%_
           _%ctx116417%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx116427%_ _%val116428%_)
        (let* ((_%rebind?116430%_ '#f)
               (_%phi116432%_ (gx#current-expander-phi))
               (_%ctx116434%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx116427%_
           _%val116428%_
           _%rebind?116430%_
           _%phi116432%_
           _%ctx116434%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx116436%_ _%val116437%_ _%rebind?116438%_)
        (let* ((_%phi116440%_ (gx#current-expander-phi))
               (_%ctx116442%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx116436%_
           _%val116437%_
           _%rebind?116438%_
           _%phi116440%_
           _%ctx116442%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx116444%_ _%val116445%_ _%rebind?116446%_ _%phi116447%_)
        (let ((_%ctx116449%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx116444%_
           _%val116445%_
           _%rebind?116446%_
           _%phi116447%_
           _%ctx116449%_))))
    (define gx#bind-identifier!
      (lambda _g118826_
        (let ((_g118825_ (##length _g118826_)))
          (cond ((##fx= _g118825_ 2) (apply gx#bind-identifier!__0 _g118826_))
                ((##fx= _g118825_ 3) (apply gx#bind-identifier!__1 _g118826_))
                ((##fx= _g118825_ 4) (apply gx#bind-identifier!__2 _g118826_))
                ((##fx= _g118825_ 5) (apply gx#bind-identifier!__% _g118826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g118826_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx116379%_ _%phi116380%_ _%ctx116381%_)
        (let _%lp116383%_ ((_%e116385%_ _%stx116379%_)
                           (_%marks116386%_ (gx#current-expander-marks)))
          (if (symbol? _%e116385%_)
              (gx#core-resolve-binding
               _%e116385%_
               _%phi116380%_
               _%phi116380%_
               _%ctx116381%_
               (reverse _%marks116386%_))
              (if (gx#identifier-quote? _%e116385%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e116385%_ '1 '#f '#f)
                   _%phi116380%_
                   '0
                   (##unchecked-structure-ref _%e116385%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e116385%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e116385%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e116385%_ '1 '#f '#f)
                       _%phi116380%_
                       _%phi116380%_
                       _%ctx116381%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e116385%_ '3 '#f '#f)
                        _%marks116386%_))
                      (if (##structure-direct-instance-of?
                           _%e116385%_
                           'gx#syntax-wrap::t)
                          (_%lp116383%_
                           (##unchecked-structure-ref _%e116385%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e116385%_ '3 '#f '#f)
                            _%marks116386%_))
                          (if (##structure-instance-of?
                               _%e116385%_
                               'gerbil#AST::t)
                              (_%lp116383%_
                               (##unchecked-structure-ref
                                _%e116385%_
                                '1
                                '#f
                                '#f)
                               _%marks116386%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx116379%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx116397%_)
        (let* ((_%phi116399%_ (gx#current-expander-phi))
               (_%ctx116401%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx116397%_
           _%phi116399%_
           _%ctx116401%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx116403%_ _%phi116404%_)
        (let ((_%ctx116406%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx116403%_
           _%phi116404%_
           _%ctx116406%_))))
    (define gx#core-resolve-identifier
      (lambda _g118828_
        (let ((_g118827_ (##length _g118828_)))
          (cond ((##fx= _g118827_ 1)
                 (apply gx#core-resolve-identifier__0 _g118828_))
                ((##fx= _g118827_ 2)
                 (apply gx#core-resolve-identifier__1 _g118828_))
                ((##fx= _g118827_ 3)
                 (apply gx#core-resolve-identifier__% _g118828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g118828_))))))
    (define gx#core-resolve-binding
      (lambda (_%id116289%_
               _%phi116290%_
               _%src-phi116291%_
               _%ctx116292%_
               _%marks116293%_)
        (letrec ((_%resolve116295%_
                  (lambda (_%ctx116363%_ _%src-phi116364%_ _%key116365%_)
                    (let _%lp116367%_ ((_%ctx116369%_
                                        (gx#core-context-shift
                                         _%ctx116363%_
                                         _%phi116290%_))
                                       (_%dphi116370%_
                                        (fx- _%phi116290%_ _%src-phi116364%_)))
                      (let ((_%$e116372%_
                             (gx#core-context-resolve
                              _%ctx116369%_
                              _%key116365%_)))
                        (if _%$e116372%_
                            (values _%$e116372%_)
                            (if (fxzero? _%dphi116370%_)
                                '#f
                                (if (fxpositive? _%dphi116370%_)
                                    (_%lp116367%_
                                     (gx#core-context-shift _%ctx116369%_ '-1)
                                     (##fx- _%dphi116370%_ '1))
                                    (_%lp116367%_
                                     (gx#core-context-shift _%ctx116369%_ '1)
                                     (##fx+ _%dphi116370%_ '1))))))))))
          (let _%lp116297%_ ((_%ctx116299%_ _%ctx116292%_)
                             (_%src-phi116300%_ _%src-phi116291%_)
                             (_%rest116301%_ _%marks116293%_))
            (let* ((_%rest116302116310%_ _%rest116301%_)
                   (_%else116304116318%_
                    (lambda ()
                      (_%resolve116295%_
                       _%ctx116299%_
                       _%src-phi116300%_
                       _%id116289%_)))
                   (_%K116306116351%_
                    (lambda (_%rest116321%_ _%hd116322%_)
                      (let* ((_%hd116323116329%_ _%hd116322%_)
                             (_%E116325116333%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd116323116329%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K116326116343%_
                              (lambda (_%subst116336%_)
                                (let ((_%$e116340%_
                                       (let ((_%key116338%_
                                              (if _%subst116336%_
                                                  (hash-get
                                                   _%subst116336%_
                                                   _%id116289%_)
                                                  '#f)))
                                         (if _%key116338%_
                                             (_%resolve116295%_
                                              _%ctx116299%_
                                              _%src-phi116300%_
                                              _%key116338%_)
                                             '#f))))
                                  (if _%$e116340%_
                                      _%$e116340%_
                                      (_%lp116297%_
                                       (##unchecked-structure-ref
                                        _%hd116322%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd116322%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest116321%_))))))
                        (if (##structure-instance-of?
                             _%hd116323116329%_
                             'gx#expander-mark::t)
                            (let* ((_%e116327116346%_
                                    (##unchecked-structure-ref
                                     _%hd116323116329%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst116349%_ _%e116327116346%_))
                              (_%K116326116343%_ _%subst116349%_))
                            (_%E116325116333%_))))))
              (if (##pair? _%rest116302116310%_)
                  (let ((_%hd116307116354%_ (##car _%rest116302116310%_))
                        (_%tl116308116356%_ (##cdr _%rest116302116310%_)))
                    (let* ((_%hd116359%_ _%hd116307116354%_)
                           (_%rest116361%_ _%tl116308116356%_))
                      (_%K116306116351%_ _%rest116361%_ _%hd116359%_)))
                  (_%else116304116318%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key116159%_
               _%val116160%_
               _%rebind?116161%_
               _%phi116162%_
               _%ctx116163%_)
        (letrec ((_%update-binding116165%_
                  (lambda (_%xval116238%_)
                    (if (or (_%rebind?116161%_
                             _%ctx116163%_
                             _%xval116238%_
                             _%val116160%_)
                            (and (##structure-direct-instance-of?
                                  _%xval116238%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval116238%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val116160%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val116160%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval116238%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val116160%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val116160%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval116238%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val116160%_
                        (if (and (##structure-direct-instance-of?
                                  _%val116160%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val116160%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval116238%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val116160%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval116238%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval116238%_
                            (if (and (##structure-direct-instance-of?
                                      _%val116160%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval116238%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key116159%_
                                 (cons (##unchecked-structure-ref
                                        _%val116160%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val116160%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval116238%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval116238%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval116238%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval116238%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key116159%_
                                 _%val116160%_
                                 _%xval116238%_))))))
                 (_%gensubst116166%_
                  (lambda (_%subst116233%_ _%id116234%_)
                    (let ((_%eid116236%_
                           (gensym (if (uninterned-symbol? _%id116234%_)
                                       '%
                                       _%id116234%_))))
                      (hash-put! _%subst116233%_ _%id116234%_ _%eid116236%_)
                      _%eid116236%_)))
                 (_%subst!116167%_
                  (lambda (_%key116169%_)
                    (let* ((_%key116170116178%_ _%key116169%_)
                           (_%else116172116186%_ (lambda () _%key116169%_))
                           (_%K116174116221%_
                            (lambda (_%mark116189%_ _%id116190%_)
                              (let* ((_%mark116191116197%_ _%mark116189%_)
                                     (_%E116193116201%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark116191116197%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K116194116213%_
                                      (lambda (_%subst116204%_)
                                        (if (not _%subst116204%_)
                                            (let ((_%subst116207%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark116189%_
                                               _%subst116207%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst116166%_
                                               _%subst116207%_
                                               _%id116190%_))
                                            (let ((_%$e116209%_
                                                   (hash-get
                                                    _%subst116204%_
                                                    _%id116190%_)))
                                              (if _%$e116209%_
                                                  (values _%$e116209%_)
                                                  (_%gensubst116166%_
                                                   _%subst116204%_
                                                   _%id116190%_)))))))
                                (if (##structure-instance-of?
                                     _%mark116191116197%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e116195116216%_
                                            (##unchecked-structure-ref
                                             _%mark116191116197%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst116219%_ _%e116195116216%_))
                                      (_%K116194116213%_ _%subst116219%_))
                                    (_%E116193116201%_))))))
                      (if (##pair? _%key116170116178%_)
                          (let ((_%hd116175116224%_
                                 (##car _%key116170116178%_))
                                (_%tl116176116226%_
                                 (##cdr _%key116170116178%_)))
                            (let* ((_%id116229%_ _%hd116175116224%_)
                                   (_%mark116231%_ _%tl116176116226%_))
                              (_%K116174116221%_ _%mark116231%_ _%id116229%_)))
                          (_%else116172116186%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx116163%_ _%phi116162%_)
           (_%subst!116167%_ _%key116159%_)
           _%val116160%_
           _%update-binding116165%_))))
    (define gx#core-bind!__0
      (lambda (_%key116259%_ _%val116260%_)
        (let* ((_%rebind?116262%_ false)
               (_%phi116264%_ (gx#current-expander-phi))
               (_%ctx116266%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key116259%_
           _%val116260%_
           _%rebind?116262%_
           _%phi116264%_
           _%ctx116266%_))))
    (define gx#core-bind!__1
      (lambda (_%key116268%_ _%val116269%_ _%rebind?116270%_)
        (let* ((_%phi116272%_ (gx#current-expander-phi))
               (_%ctx116274%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key116268%_
           _%val116269%_
           _%rebind?116270%_
           _%phi116272%_
           _%ctx116274%_))))
    (define gx#core-bind!__2
      (lambda (_%key116276%_ _%val116277%_ _%rebind?116278%_ _%phi116279%_)
        (let ((_%ctx116281%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key116276%_
           _%val116277%_
           _%rebind?116278%_
           _%phi116279%_
           _%ctx116281%_))))
    (define gx#core-bind!
      (lambda _g118830_
        (let ((_g118829_ (##length _g118830_)))
          (cond ((##fx= _g118829_ 2) (apply gx#core-bind!__0 _g118830_))
                ((##fx= _g118829_ 3) (apply gx#core-bind!__1 _g118830_))
                ((##fx= _g118829_ 4) (apply gx#core-bind!__2 _g118830_))
                ((##fx= _g118829_ 5) (apply gx#core-bind!__% _g118830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g118830_))))))
    (define gx#core-identifier-key
      (lambda (_%stx116090%_)
        (if (symbol? _%stx116090%_)
            (let* ((_%g116092116100%_ (gx#current-expander-marks))
                   (_%else116094116108%_ (lambda () _%stx116090%_))
                   (_%K116096116113%_
                    (lambda (_%hd116111%_) (cons _%stx116090%_ _%hd116111%_))))
              (if (##pair? _%g116092116100%_)
                  (let* ((_%hd116097116116%_ (##car _%g116092116100%_))
                         (_%hd116119%_ _%hd116097116116%_))
                    (_%K116096116113%_ _%hd116119%_))
                  (_%else116094116108%_)))
            (if (gx#identifier? _%stx116090%_)
                (let* ((_%id116122%_ (gx#syntax-local-unwrap _%stx116090%_))
                       (_%eid116124%_ (gx#stx-e _%id116122%_))
                       (_%marks116126%_
                        (gx#stx-identifier-marks* _%id116122%_))
                       (_%marks116128116136%_ _%marks116126%_)
                       (_%else116130116144%_ (lambda () _%eid116124%_))
                       (_%K116132116149%_
                        (lambda (_%hd116147%_)
                          (cons _%eid116124%_ _%hd116147%_))))
                  (if (##pair? _%marks116128116136%_)
                      (let* ((_%hd116133116152%_ (##car _%marks116128116136%_))
                             (_%hd116155%_ _%hd116133116152%_))
                        (_%K116132116149%_ _%hd116155%_))
                      (_%else116130116144%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx116090%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx116029%_ _%phi116030%_)
        (letrec ((_%make-phi116032%_
                  (lambda (_%super116088%_)
                    (let ((__obj118802
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj118802
                       (##gensym 'phi)
                       _%super116088%_)
                      __obj118802)))
                 (_%make-phi/up116033%_
                  (lambda (_%ctx116083%_ _%super116084%_)
                    (let ((_%ctx+1116086%_
                           (_%make-phi116032%_ _%super116084%_)))
                      (##unchecked-structure-set!
                       _%ctx116083%_
                       _%ctx+1116086%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1116086%_
                       _%ctx116083%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1116086%_)))
                 (_%make-phi/down116034%_
                  (lambda (_%ctx116078%_ _%super116079%_)
                    (let ((_%ctx-1116081%_
                           (_%make-phi116032%_ _%super116079%_)))
                      (##unchecked-structure-set!
                       _%ctx-1116081%_
                       _%ctx116078%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx116078%_
                       _%ctx-1116081%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1116081%_)))
                 (_%shift116035%_
                  (lambda (_%ctx116061%_
                           _%delta116062%_
                           _%make-delta-context116063%_
                           _%phi116064%_
                           _%K116065%_)
                    (let ((_%$e116067%_
                           (##unchecked-structure-ref
                            _%ctx116061%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e116067%_
                          ((lambda (_%super116070%_)
                             (let* ((_%super116072%_
                                     (_%K116065%_
                                      _%super116070%_
                                      _%delta116062%_))
                                    (_%ctx+d116074%_
                                     (_%make-delta-context116063%_
                                      _%ctx116061%_
                                      _%super116072%_)))
                               (_%K116065%_
                                _%ctx+d116074%_
                                (fx- _%phi116064%_ _%delta116062%_))))
                           _%$e116067%_)
                          (error '"Bad context" _%ctx116061%_))))))
          (let _%K116037%_ ((_%ctx116039%_ _%ctx116029%_)
                            (_%phi116040%_ _%phi116030%_))
            (if (fxzero? _%phi116040%_)
                _%ctx116039%_
                (if (##structure-instance-of? _%ctx116039%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi116040%_)
                        (let ((_%$e116044%_
                               (##unchecked-structure-ref
                                _%ctx116039%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e116044%_
                              ((lambda (_%g116046116048%_)
                                 (_%K116037%_
                                  _%g116046116048%_
                                  (##fx- _%phi116040%_ '1)))
                               _%$e116044%_)
                              (_%shift116035%_
                               _%ctx116039%_
                               '1
                               _%make-phi/up116033%_
                               _%phi116040%_
                               _%K116037%_)))
                        (let ((_%$e116052%_
                               (##unchecked-structure-ref
                                _%ctx116039%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e116052%_
                              ((lambda (_%g116054116056%_)
                                 (_%K116037%_
                                  _%g116054116056%_
                                  (##fx+ _%phi116040%_ '1)))
                               _%$e116052%_)
                              (_%shift116035%_
                               _%ctx116039%_
                               '-1
                               _%make-phi/down116034%_
                               _%phi116040%_
                               _%K116037%_))))
                    _%ctx116039%_))))))
    (define gx#core-context-get
      (lambda (_%ctx116026%_ _%key116027%_)
        (hash-get
         (##unchecked-structure-ref _%ctx116026%_ '2 '#f '#f)
         _%key116027%_)))
    (define gx#core-context-put!
      (lambda (_%ctx116022%_ _%key116023%_ _%val116024%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx116022%_ '2 '#f '#f)
         _%key116023%_
         _%val116024%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx116008%_ _%key116009%_)
        (let _%lp116011%_ ((_%ctx116013%_ _%ctx116008%_))
          (let ((_%$e116015%_
                 (gx#core-context-get _%ctx116013%_ _%key116009%_)))
            (if _%$e116015%_
                (values _%$e116015%_)
                (let ((_%$e116018%_
                       (if (##structure-instance-of?
                            _%ctx116013%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx116013%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e116018%_ (_%lp116011%_ _%$e116018%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx115997%_ _%key115998%_ _%val115999%_ _%rebind116000%_)
        (let ((_%$e116002%_ (gx#core-context-get _%ctx115997%_ _%key115998%_)))
          (if _%$e116002%_
              ((lambda (_%xval116005%_)
                 (gx#core-context-put!
                  _%ctx115997%_
                  _%key115998%_
                  (_%rebind116000%_ _%xval116005%_)))
               _%$e116002%_)
              (gx#core-context-put!
               _%ctx115997%_
               _%key115998%_
               _%val115999%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx115972%_ _%stop?115973%_)
        (let _%lp115975%_ ((_%ctx115977%_ _%ctx115972%_))
          (if (_%stop?115973%_ _%ctx115977%_)
              _%ctx115977%_
              (if (##structure-instance-of? _%ctx115977%_ 'gx#phi-context::t)
                  (_%lp115975%_
                   (##unchecked-structure-ref _%ctx115977%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx115986%_ (gx#current-expander-context))
               (_%stop?115988%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115986%_ _%stop?115988%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx115990%_)
        (let ((_%stop?115992%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115990%_ _%stop?115992%_))))
    (define gx#core-context-top
      (lambda _g118832_
        (let ((_g118831_ (##length _g118832_)))
          (cond ((##fx= _g118831_ 0) (apply gx#core-context-top__0 _g118832_))
                ((##fx= _g118831_ 1) (apply gx#core-context-top__1 _g118832_))
                ((##fx= _g118831_ 2) (apply gx#core-context-top__% _g118832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g118832_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx115957%_)
        (let _%lp115959%_ ((_%ctx115961%_ _%ctx115957%_))
          (if (##structure-instance-of? _%ctx115961%_ 'gx#phi-context::t)
              (_%lp115959%_
               (##unchecked-structure-ref _%ctx115961%_ '3 '#f '#f))
              _%ctx115961%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx115967%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx115967%_))))
    (define gx#core-context-root
      (lambda _g118834_
        (let ((_g118833_ (##length _g118834_)))
          (cond ((##fx= _g118833_ 0) (apply gx#core-context-root__0 _g118834_))
                ((##fx= _g118833_ 1) (apply gx#core-context-root__% _g118834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g118834_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx115939%_ . _%ignore115940%_)
        (let ((_%$e115942%_ (gx#current-expander-allow-rebind?)))
          (if _%$e115942%_
              _%$e115942%_
              (if (##structure-instance-of? _%ctx115939%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx115939%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx115939%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx115949%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx115949%_))))
    (define gx#core-context-rebind?
      (lambda _g118836_
        (let ((_g118835_ (##length _g118836_)))
          (cond ((##fx= _g118835_ 0)
                 (apply gx#core-context-rebind?__0 _g118836_))
                ((##fx= _g118835_ 1)
                 (apply gx#core-context-rebind?__% _g118836_))
                ((##fx>= _g118835_ 1)
                 (apply gx#core-context-rebind?__% _g118836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g118836_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx115922%_)
        (let ((_%$e115924%_ (gx#core-context-top__1 _%ctx115922%_)))
          (if _%$e115924%_
              ((lambda (_%ctx115927%_)
                 (if (##structure-instance-of?
                      _%ctx115927%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx115927%_ '6 '#f '#f)
                     '#f))
               _%$e115924%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx115934%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx115934%_))))
    (define gx#core-context-namespace
      (lambda _g118838_
        (let ((_g118837_ (##length _g118838_)))
          (cond ((##fx= _g118837_ 0)
                 (apply gx#core-context-namespace__0 _g118838_))
                ((##fx= _g118837_ 1)
                 (apply gx#core-context-namespace__% _g118838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g118838_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind115908%_ _%is?115909%_)
        (if (##structure-direct-instance-of?
             _%bind115908%_
             'gx#syntax-binding::t)
            (_%is?115909%_
             (##unchecked-structure-ref _%bind115908%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind115914%_)
        (let ((_%is?115916%_ gx#expander?))
          (gx#expander-binding?__% _%bind115914%_ _%is?115916%_))))
    (define gx#expander-binding?
      (lambda _g118840_
        (let ((_g118839_ (##length _g118840_)))
          (cond ((##fx= _g118839_ 1) (apply gx#expander-binding?__0 _g118840_))
                ((##fx= _g118839_ 2) (apply gx#expander-binding?__% _g118840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g118840_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind115905%_)
        (gx#expander-binding?__% _%bind115905%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind115903%_)
        (gx#expander-binding?__% _%bind115903%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind115897%_)
        (letrec ((_%direct-special-form?115899%_
                  (lambda (_%obj115901%_)
                    (##structure-direct-instance-of?
                     _%obj115901%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind115897%_
           _%direct-special-form?115899%_))))
    (define gx#special-form-binding?
      (lambda (_%bind115895%_)
        (gx#expander-binding?__% _%bind115895%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind115886%_)
        (letrec ((_%feature?115888%_
                  (lambda (_%e115890%_)
                    (let ((_%$e115892%_
                           (##structure-instance-of?
                            _%e115890%_
                            'gx#feature-expander::t)))
                      (if _%$e115892%_
                          _%$e115892%_
                          (##structure-instance-of?
                           _%e115890%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind115886%_ _%feature?115888%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind115884%_)
        (gx#expander-binding?__% _%bind115884%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id115871%_ _%bound?115872%_)
        (if (gx#identifier? _%id115871%_)
            (_%bound?115872%_ (gx#resolve-identifier__0 _%id115871%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id115877%_)
        (let ((_%bound?115879%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id115877%_ _%bound?115879%_))))
    (define gx#core-bound-identifier?
      (lambda _g118842_
        (let ((_g118841_ (##length _g118842_)))
          (cond ((##fx= _g118841_ 1)
                 (apply gx#core-bound-identifier?__0 _g118842_))
                ((##fx= _g118841_ 2)
                 (apply gx#core-bound-identifier?__% _g118842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g118842_))))))
    (define gx#core-identifier=?
      (lambda (_%x115861%_ _%y115862%_)
        (letrec ((_%y=?115864%_
                  (lambda (_%xid115868%_)
                    ((if (list? _%y115862%_) memq eq?)
                     _%xid115868%_
                     _%y115862%_))))
          (let ((_%bind115866%_ (gx#resolve-identifier__0 _%x115861%_)))
            (if (##structure-instance-of? _%bind115866%_ 'gx#binding::t)
                (_%y=?115864%_
                 (##unchecked-structure-ref _%bind115866%_ '1 '#f '#f))
                (_%y=?115864%_ (gx#stx-e _%x115861%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e115859%_)
        (if (interned-symbol? _%e115859%_)
            (string-index__0 (symbol->string _%e115859%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx115812%_ _%src115813%_ _%ctx115814%_ _%marks115815%_)
        (if (##structure? _%stx115812%_)
            (let ((_%$e115817%_ (gx#sealed-syntax-unwrap _%stx115812%_)))
              (if _%$e115817%_
                  (values _%$e115817%_)
                  (if (gx#identifier? _%stx115812%_)
                      (let ((_%id115821%_
                             (gx#stx-unwrap__% _%stx115812%_ _%marks115815%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id115821%_ '1 '#f '#f)
                         (let ((_%$e115823%_
                                (##unchecked-structure-ref
                                 _%id115821%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e115823%_ _%$e115823%_ _%src115813%_))
                         _%ctx115814%_
                         (##unchecked-structure-ref _%id115821%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx115812%_)
                       (let ((_%$e115827%_ (gx#stx-source _%stx115812%_)))
                         (if _%$e115827%_ _%$e115827%_ _%src115813%_))
                       _%ctx115814%_
                       (reverse _%marks115815%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx115812%_
             _%src115813%_
             _%ctx115814%_
             (reverse _%marks115815%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx115833%_)
        (let* ((_%src115835%_ '#f)
               (_%ctx115837%_ (gx#current-expander-context))
               (_%marks115839%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115833%_
           _%src115835%_
           _%ctx115837%_
           _%marks115839%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx115841%_ _%src115842%_)
        (let* ((_%ctx115844%_ (gx#current-expander-context))
               (_%marks115846%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115841%_
           _%src115842%_
           _%ctx115844%_
           _%marks115846%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx115848%_ _%src115849%_ _%ctx115850%_)
        (let ((_%marks115852%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115848%_
           _%src115849%_
           _%ctx115850%_
           _%marks115852%_))))
    (define gx#core-quote-syntax
      (lambda _g118844_
        (let ((_g118843_ (##length _g118844_)))
          (cond ((##fx= _g118843_ 1) (apply gx#core-quote-syntax__0 _g118844_))
                ((##fx= _g118843_ 2) (apply gx#core-quote-syntax__1 _g118844_))
                ((##fx= _g118843_ 3) (apply gx#core-quote-syntax__2 _g118844_))
                ((##fx= _g118843_ 4) (apply gx#core-quote-syntax__% _g118844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g118844_))))))
    (define gx#core-cons
      (lambda (_%hd115808%_ _%tl115809%_)
        (cons (gx#core-quote-syntax__0 _%hd115808%_) _%tl115809%_)))
    (define gx#core-list
      (lambda (_%hd115805%_ . _%rest115806%_)
        (cons (gx#core-quote-syntax__0 _%hd115805%_) _%rest115806%_)))
    (define gx#core-cons*
      (lambda (_%hd115802%_ . _%rest115803%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd115802%_) _%rest115803%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path115771%_ _%rel115772%_)
        (let ((_%path115789%_ (gx#stx-e _%stx-path115771%_))
              (_%reldir115790%_
               (let _%lp115774%_ ((_%relsrc115776%_
                                   (let ((_%$e115786%_
                                          (gx#stx-source _%stx-path115771%_)))
                                     (if _%$e115786%_
                                         _%$e115786%_
                                         _%rel115772%_))))
                 (if (##structure-instance-of? _%relsrc115776%_ 'gerbil#AST::t)
                     (_%lp115774%_
                      (let ((_%$e115779%_ (gx#stx-source _%relsrc115776%_)))
                        (if _%$e115779%_
                            _%$e115779%_
                            (gx#stx-e _%relsrc115776%_))))
                     (if (source-location-path? _%relsrc115776%_)
                         (path-directory
                          (source-location-path _%relsrc115776%_))
                         (if (string? _%relsrc115776%_)
                             (path-directory _%relsrc115776%_)
                             (if (not (null? (gx#current-expander-path)))
                                 (path-directory
                                  (car (gx#current-expander-path)))
                                 (current-directory))))))))
          (path-expand _%path115789%_ (path-normalize _%reldir115790%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path115795%_)
        (let ((_%rel115797%_ '#f))
          (gx#core-resolve-path__% _%stx-path115795%_ _%rel115797%_))))
    (define gx#core-resolve-path
      (lambda _g118846_
        (let ((_g118845_ (##length _g118846_)))
          (cond ((##fx= _g118845_ 1) (apply gx#core-resolve-path__0 _g118846_))
                ((##fx= _g118845_ 2) (apply gx#core-resolve-path__% _g118846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g118846_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr115727%_ _%ctx115728%_)
        (let* ((_%repr115729115736%_ _%repr115727%_)
               (_%E115731115740%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr115729115736%_
                         '([phi . subs]))
                  '#!void))
               (_%K115732115748%_
                (lambda (_%subs115743%_ _%phi115744%_)
                  (let ((_%subst115746%_
                         (if (not (null? _%subs115743%_))
                             (list->hash-table-eq _%subs115743%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst115746%_
                     _%ctx115728%_
                     _%phi115744%_
                     '#f)))))
          (if (##pair? _%repr115729115736%_)
              (let ((_%hd115733115751%_ (##car _%repr115729115736%_))
                    (_%tl115734115753%_ (##cdr _%repr115729115736%_)))
                (let* ((_%phi115756%_ _%hd115733115751%_)
                       (_%subs115758%_ _%tl115734115753%_))
                  (_%K115732115748%_ _%subs115758%_ _%phi115756%_)))
              (_%E115731115740%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr115763%_)
        (let ((_%ctx115765%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr115763%_ _%ctx115765%_))))
    (define gx#core-deserialize-mark
      (lambda _g118848_
        (let ((_g118847_ (##length _g118848_)))
          (cond ((##fx= _g118847_ 1)
                 (apply gx#core-deserialize-mark__0 _g118848_))
                ((##fx= _g118847_ 2)
                 (apply gx#core-deserialize-mark__% _g118848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g118848_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx115724%_)
        (gx#stx-rewrap _%stx115724%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx115722%_)
        (gx#stx-unwrap__% _%stx115722%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx115692%_)
        (let* ((_%g115693115701%_ (gx#current-expander-marks))
               (_%else115695115709%_ (lambda () _%stx115692%_))
               (_%K115697115714%_
                (lambda (_%hd115712%_)
                  (gx#stx-apply-mark _%stx115692%_ _%hd115712%_))))
          (if (##pair? _%g115693115701%_)
              (let* ((_%hd115698115717%_ (##car _%g115693115701%_))
                     (_%hd115720%_ _%hd115698115717%_))
                (_%K115697115714%_ _%hd115720%_))
              (_%else115695115709%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx115677%_ _%E115678%_)
        (let ((_%bind115680%_ (gx#resolve-identifier__0 _%stx115677%_)))
          (if (##structure-direct-instance-of?
               _%bind115680%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind115680%_ '4 '#f '#f)
              (_%E115678%_ _%stx115677%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx115685%_)
        (let ((_%E115687%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx115685%_ _%E115687%_))))
    (define gx#syntax-local-e
      (lambda _g118850_
        (let ((_g118849_ (##length _g118850_)))
          (cond ((##fx= _g118849_ 1) (apply gx#syntax-local-e__0 _g118850_))
                ((##fx= _g118849_ 2) (apply gx#syntax-local-e__% _g118850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g118850_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx115661%_ _%E115662%_)
        (let ((_%e115664%_ (gx#syntax-local-e__% _%stx115661%_ _%E115662%_)))
          (if (##structure-instance-of? _%e115664%_ 'gx#expander::t)
              (##structure-ref _%e115664%_ '1 gx#expander::t '#f)
              _%e115664%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx115669%_)
        (let ((_%E115671%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx115669%_ _%E115671%_))))
    (define gx#syntax-local-value
      (lambda _g118852_
        (let ((_g118851_ (##length _g118852_)))
          (cond ((##fx= _g118851_ 1)
                 (apply gx#syntax-local-value__0 _g118852_))
                ((##fx= _g118851_ 2)
                 (apply gx#syntax-local-value__% _g118852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g118852_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx115658%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx115658%_)))))
