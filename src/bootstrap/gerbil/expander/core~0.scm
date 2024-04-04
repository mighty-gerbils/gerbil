(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712256087)
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
      (lambda _%$args118260%_
        (apply make-instance gx#expander-context::t _%$args118260%_)))
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
      (lambda _%$args118257%_
        (apply make-instance gx#root-context::t _%$args118257%_)))
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
      (lambda _%$args118254%_
        (apply make-instance gx#phi-context::t _%$args118254%_)))
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
      (lambda _%$args118251%_
        (apply make-instance gx#top-context::t _%$args118251%_)))
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
      (lambda _%$args118248%_
        (apply make-instance gx#module-context::t _%$args118248%_)))
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
      (lambda _%$args118245%_
        (apply make-instance gx#prelude-context::t _%$args118245%_)))
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
      (lambda _%$args118242%_
        (apply make-instance gx#local-context::t _%$args118242%_)))
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
      (lambda (_%self118215%_ _%id118216%_ _%super118217%_)
        (let ((_%self118220%_ _%self118215%_))
          (if (##fx< '3 (##structure-length _%self118220%_))
              (begin
                (##unchecked-structure-set!
                 _%self118220%_
                 _%id118216%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118220%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118220%_
                 _%super118217%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118220%_
                     '3
                     (##vector-length _%self118220%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self118233%_ _%id118234%_)
        (let ((_%super118236%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self118233%_
           _%id118234%_
           _%super118236%_))))
    (define gx#phi-context:::init!
      (lambda _g118303_
        (let ((_g118302_ (##length _g118303_)))
          (cond ((##fx= _g118302_ 2)
                 (apply (lambda (_%self118233%_ _%id118234%_)
                          (gx#phi-context:::init!__0
                           _%self118233%_
                           _%id118234%_))
                        _g118303_))
                ((##fx= _g118302_ 3)
                 (apply (lambda (_%self118238%_ _%id118239%_ _%super118240%_)
                          (gx#phi-context:::init!__%
                           _%self118238%_
                           _%id118239%_
                           _%super118240%_))
                        _g118303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g118303_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self118068%_ _%super118069%_)
        (let ((_%self118072%_ _%self118068%_))
          (if (##fx< '3 (##structure-length _%self118072%_))
              (begin
                (##unchecked-structure-set!
                 _%self118072%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118072%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self118072%_
                 _%super118069%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self118072%_
                     '3
                     (##vector-length _%self118072%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self118085%_)
        (let ((_%super118087%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self118085%_ _%super118087%_))))
    (define gx#local-context:::init!
      (lambda _g118305_
        (let ((_g118304_ (##length _g118305_)))
          (cond ((##fx= _g118304_ 1)
                 (apply (lambda (_%self118085%_)
                          (gx#local-context:::init!__0 _%self118085%_))
                        _g118305_))
                ((##fx= _g118304_ 2)
                 (apply (lambda (_%self118089%_ _%super118090%_)
                          (gx#local-context:::init!__%
                           _%self118089%_
                           _%super118090%_))
                        _g118305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g118305_))))))
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
      (lambda _%$args117942%_
        (apply make-instance gx#binding::t _%$args117942%_)))
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
      (lambda _%$args117939%_
        (apply make-instance gx#runtime-binding::t _%$args117939%_)))
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
      (lambda _%$args117936%_
        (apply make-instance gx#local-binding::t _%$args117936%_)))
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
      (lambda _%$args117933%_
        (apply make-instance gx#top-binding::t _%$args117933%_)))
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
      (lambda _%$args117930%_
        (apply make-instance gx#module-binding::t _%$args117930%_)))
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
      (lambda _%$args117927%_
        (apply make-instance gx#extern-binding::t _%$args117927%_)))
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
      (lambda _%$args117924%_
        (apply make-instance gx#syntax-binding::t _%$args117924%_)))
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
      (lambda _%$args117921%_
        (apply make-instance gx#import-binding::t _%$args117921%_)))
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
      (lambda _%$args117918%_
        (apply make-instance gx#alias-binding::t _%$args117918%_)))
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
      (lambda _%$args117915%_
        (apply make-instance gx#expander::t _%$args117915%_)))
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
      (lambda _%$args117912%_
        (apply make-instance gx#core-expander::t _%$args117912%_)))
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
      (lambda _%$args117909%_
        (apply make-instance gx#expression-form::t _%$args117909%_)))
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
      (lambda _%$args117906%_
        (apply make-instance gx#special-form::t _%$args117906%_)))
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
      (lambda _%$args117903%_
        (apply make-instance gx#definition-form::t _%$args117903%_)))
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
      (lambda _%$args117900%_
        (apply make-instance gx#top-special-form::t _%$args117900%_)))
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
      (lambda _%$args117897%_
        (apply make-instance gx#module-special-form::t _%$args117897%_)))
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
      (lambda _%$args117894%_
        (apply make-instance gx#feature-expander::t _%$args117894%_)))
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
      (lambda _%$args117891%_
        (apply make-instance gx#private-feature-expander::t _%$args117891%_)))
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
      (lambda _%$args117888%_
        (apply make-instance gx#reserved-expander::t _%$args117888%_)))
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
      (lambda _%$args117885%_
        (apply make-instance gx#macro-expander::t _%$args117885%_)))
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
      (lambda _%$args117882%_
        (apply make-instance gx#rename-macro-expander::t _%$args117882%_)))
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
      (lambda _%$args117879%_
        (apply make-instance gx#user-expander::t _%$args117879%_)))
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
      (lambda _%$args117876%_
        (apply make-instance gx#expander-mark::t _%$args117876%_)))
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
      (lambda (_%ctx117860%_
               _%message117861%_
               _%stx117862%_
               .
               _%details117863%_)
        (let ((_%ctx117874%_
               (let ((_%$e117865%_ _%ctx117860%_))
                 (if _%$e117865%_
                     _%$e117865%_
                     (let ((_%$e117868%_ (gx#core-context-top__0)))
                       (if _%$e117868%_
                           ((lambda (_%ctx117871%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117871%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117868%_)
                           (let () '#f)))))))
          (raise (make-syntax-error
                  _%message117861%_
                  (cons _%stx117862%_ _%details117863%_)
                  _%ctx117874%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117847%_ _%expression?117848%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117847%_ _%expression?117848%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117853%_)
        (let ((_%expression?117855%_ '#f))
          (gx#eval-syntax__% _%stx117853%_ _%expression?117855%_))))
    (define gx#eval-syntax
      (lambda _g118307_
        (let ((_g118306_ (##length _g118307_)))
          (cond ((##fx= _g118306_ 1)
                 (apply (lambda (_%stx117853%_)
                          (gx#eval-syntax__0 _%stx117853%_))
                        _g118307_))
                ((##fx= _g118306_ 2)
                 (apply (lambda (_%stx117857%_ _%expression?117858%_)
                          (gx#eval-syntax__%
                           _%stx117857%_
                           _%expression?117858%_))
                        _g118307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g118307_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117844%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117844%_))))
    (define gx#core-expand__%
      (lambda (_%stx117831%_ _%expression?117832%_)
        (if _%expression?117832%_
            (gx#core-expand-expression _%stx117831%_)
            (gx#core-expand-top _%stx117831%_))))
    (define gx#core-expand__0
      (lambda (_%stx117837%_)
        (let ((_%expression?117839%_ '#f))
          (gx#core-expand__% _%stx117837%_ _%expression?117839%_))))
    (define gx#core-expand
      (lambda _g118309_
        (let ((_g118308_ (##length _g118309_)))
          (cond ((##fx= _g118308_ 1)
                 (apply (lambda (_%stx117837%_)
                          (gx#core-expand__0 _%stx117837%_))
                        _g118309_))
                ((##fx= _g118308_ 2)
                 (apply (lambda (_%stx117841%_ _%expression?117842%_)
                          (gx#core-expand__%
                           _%stx117841%_
                           _%expression?117842%_))
                        _g118309_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g118309_))))))
    (define gx#core-expand-top
      (lambda (_%stx117798%_)
        (let* ((_%stx117800%_ (gx#core-expand*__0 _%stx117798%_))
               (_%e117801117808%_ _%stx117800%_)
               (_%E117803117812%_
                (lambda () (gx#core-expand-expression _%stx117800%_)))
               (_%E117802117826%_
                (lambda ()
                  (if (gx#stx-pair? _%e117801117808%_)
                      (let ((_%e117804117816%_
                             (gx#syntax-e _%e117801117808%_)))
                        (let ((_%hd117805117819%_ (##car _%e117804117816%_))
                              (_%tl117806117821%_ (##cdr _%e117804117816%_)))
                          (let ((_%form117824%_ _%hd117805117819%_))
                            (if (gx#core-bound-identifier?__0 _%form117824%_)
                                _%stx117800%_
                                (_%E117803117812%_)))))
                      (_%E117803117812%_)))))
          (_%E117802117826%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117730%_)
        (letrec ((_%sealed-expression?117732%_
                  (lambda (_%hd117768%_)
                    (if (gx#sealed-syntax? _%hd117768%_)
                        (let* ((_%e117769117776%_ _%hd117768%_)
                               (_%E117771117780%_ (lambda () '#f))
                               (_%E117770117794%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117769117776%_)
                                      (let ((_%e117772117784%_
                                             (gx#syntax-e _%e117769117776%_)))
                                        (let ((_%hd117773117787%_
                                               (##car _%e117772117784%_))
                                              (_%tl117774117789%_
                                               (##cdr _%e117772117784%_)))
                                          (let ((_%form117792%_
                                                 _%hd117773117787%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117792%_
                                                 gx#expression-form-binding?)
                                                (_%E117771117780%_)))))
                                      (_%E117771117780%_)))))
                          (_%E117770117794%_))
                        '#f)))
                 (_%illegal-expression117733%_
                  (lambda (_%hd117765%_ . _%_117766%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117730%_
                     _%hd117765%_)))
                 (_%expand-e117734%_
                  (lambda (_%form117757%_ _%hd117758%_)
                    (let ((_%bind117760%_
                           (if (##structure-instance-of?
                                _%form117757%_
                                'gx#binding::t)
                               _%form117757%_
                               (gx#resolve-identifier__0 _%form117757%_))))
                      (if (gx#core-expander-binding? _%bind117760%_)
                          (let ()
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _%bind117760%_
                              '4
                              '#f
                              '#f)
                             (gx#stx-wrap-source
                              _%hd117758%_
                              (gx#stx-source _%stx117730%_))))
                          (if (##structure-direct-instance-of?
                               _%bind117760%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-expand-expression
                                 (gx#core-apply-expander__0
                                  (##unchecked-structure-ref
                                   _%bind117760%_
                                   '4
                                   '#f
                                   '#f)
                                  (gx#stx-wrap-source
                                   _%hd117758%_
                                   (gx#stx-source _%stx117730%_)))))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; missing expander"
                                 _%stx117730%_
                                 _%form117757%_))))))))
          (let ((_%hd117736%_ (gx#core-expand-head _%stx117730%_)))
            (if (_%sealed-expression?117732%_ _%hd117736%_)
                (let () _%hd117736%_)
                (if (gx#stx-pair? _%hd117736%_)
                    (let ()
                      (let* ((_%form117740%_ (gx#stx-car _%hd117736%_))
                             (_%bind117742%_
                              (if (gx#identifier? _%form117740%_)
                                  (gx#resolve-identifier__0 _%form117740%_)
                                  '#f)))
                        (if (or (not _%bind117742%_)
                                (not (gx#core-expander-binding?
                                      _%bind117742%_)))
                            (let ()
                              (_%expand-e117734%_
                               '%%app
                               (cons '%%app _%hd117736%_)))
                            (if (eq? (##unchecked-structure-ref
                                      _%bind117742%_
                                      '1
                                      '#f
                                      '#f)
                                     '%#begin)
                                (let ()
                                  (gx#core-expand-block*
                                   _%hd117736%_
                                   _%illegal-expression117733%_))
                                (if (gx#expression-form-binding?
                                     _%bind117742%_)
                                    (let ()
                                      (_%expand-e117734%_
                                       _%bind117742%_
                                       _%hd117736%_))
                                    (if (gx#direct-special-form-binding?
                                         _%bind117742%_)
                                        (let ()
                                          (gx#core-expand-expression
                                           (_%expand-e117734%_
                                            _%bind117742%_
                                            _%hd117736%_)))
                                        (let ()
                                          (_%illegal-expression117733%_
                                           _%hd117736%_))))))))
                    (if (gx#core-bound-identifier?__0 _%hd117736%_)
                        (let () (_%illegal-expression117733%_ _%hd117736%_))
                        (if (gx#identifier? _%hd117736%_)
                            (let ()
                              (_%expand-e117734%_
                               '%%ref
                               (cons '%%ref (cons _%hd117736%_ '()))))
                            (if (gx#stx-datum? _%hd117736%_)
                                (let ()
                                  (_%expand-e117734%_
                                   '%#quote
                                   (cons '%#quote (cons _%hd117736%_ '()))))
                                (let ()
                                  (_%illegal-expression117733%_
                                   _%hd117736%_)))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117725%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117728%_ (gx#core-expand-expression _%stx117725%_)))
             (values _%stx117728%_ (gx#eval-syntax* _%stx117728%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx117706%_ _%stop?117707%_)
        (let _%lp117709%_ ((_%stx117711%_ _%stx117706%_))
          (if (_%stop?117707%_ _%stx117711%_)
              _%stx117711%_
              (let ((_%rstx117713%_ (gx#core-expand1 _%stx117711%_)))
                (if (eq? _%stx117711%_ _%rstx117713%_)
                    _%stx117711%_
                    (_%lp117709%_ _%rstx117713%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx117718%_)
        (let ((_%stop?117720%_ false))
          (gx#core-expand*__% _%stx117718%_ _%stop?117720%_))))
    (define gx#core-expand*
      (lambda _g118311_
        (let ((_g118310_ (##length _g118311_)))
          (cond ((##fx= _g118310_ 1)
                 (apply (lambda (_%stx117718%_)
                          (gx#core-expand*__0 _%stx117718%_))
                        _g118311_))
                ((##fx= _g118310_ 2)
                 (apply (lambda (_%stx117722%_ _%stop?117723%_)
                          (gx#core-expand*__% _%stx117722%_ _%stop?117723%_))
                        _g118311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g118311_))))))
    (define gx#core-expand1
      (lambda (_%stx117658%_)
        (letrec ((_%step117660%_
                  (lambda (_%hd117697%_)
                    (let ((_%bind117699%_
                           (gx#resolve-identifier__0 _%hd117697%_)))
                      (if (##structure-instance-of?
                           _%bind117699%_
                           'gx#runtime-binding::t)
                          (let () _%stx117658%_)
                          (if (##structure-direct-instance-of?
                               _%bind117699%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-apply-expander__0
                                 (##unchecked-structure-ref
                                  _%bind117699%_
                                  '4
                                  '#f
                                  '#f)
                                 _%stx117658%_))
                              (if (not _%bind117699%_)
                                  (let () _%stx117658%_)
                                  (let ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; no binding for head"
                                     _%stx117658%_)))))))))
          (let* ((_%e117661117669%_ _%stx117658%_)
                 (_%E117667117673%_ (lambda () _%stx117658%_))
                 (_%E117663117679%_
                  (lambda ()
                    (let ((_%hd117677%_ _%e117661117669%_))
                      (if (gx#identifier? _%hd117677%_)
                          (_%step117660%_ _%hd117677%_)
                          (_%E117667117673%_)))))
                 (_%E117662117693%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117661117669%_)
                        (let ((_%e117664117683%_
                               (gx#syntax-e _%e117661117669%_)))
                          (let ((_%hd117665117686%_ (##car _%e117664117683%_))
                                (_%tl117666117688%_ (##cdr _%e117664117683%_)))
                            (let ((_%hd117691%_ _%hd117665117686%_))
                              (if (gx#identifier? _%hd117691%_)
                                  (_%step117660%_ _%hd117691%_)
                                  (_%E117663117679%_)))))
                        (_%E117663117679%_)))))
            (_%E117662117693%_)))))
    (define gx#core-expand-head
      (lambda (_%stx117624%_)
        (letrec ((_%stop?117626%_
                  (lambda (_%stx117628%_)
                    (let* ((_%e117629117636%_ _%stx117628%_)
                           (_%E117631117640%_ (lambda () '#f))
                           (_%E117630117654%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117629117636%_)
                                  (let ((_%e117632117644%_
                                         (gx#syntax-e _%e117629117636%_)))
                                    (let ((_%hd117633117647%_
                                           (##car _%e117632117644%_))
                                          (_%tl117634117649%_
                                           (##cdr _%e117632117644%_)))
                                      (let ((_%hd117652%_ _%hd117633117647%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd117652%_)
                                            (_%E117631117640%_)))))
                                  (_%E117631117640%_)))))
                      (_%E117630117654%_)))))
          (gx#core-expand*__% _%stx117624%_ _%stop?117626%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx117430%_
               _%expand-special117431%_
               _%begin-form117432%_
               _%expand-e117433%_)
        (letrec ((_%expand-splice117435%_
                  (lambda (_%hd117598%_
                           _%body117599%_
                           _%rest117600%_
                           _%r117601%_)
                    (if (gx#stx-list? _%body117599%_)
                        (_%K117439%_
                         (gx#stx-foldr cons _%rest117600%_ _%body117599%_)
                         _%r117601%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx117430%_
                         _%hd117598%_))))
                 (_%expand-cond-expand117436%_
                  (lambda (_%hd117594%_ _%rest117595%_ _%r117596%_)
                    (_%K117439%_
                     (cons (gx#core-expand-cond-expand% _%hd117594%_)
                           _%rest117595%_)
                     _%r117596%_)))
                 (_%expand-include117437%_
                  (lambda (_%hd117543%_ _%rest117544%_ _%r117545%_)
                    (let* ((_%e117546117556%_ _%hd117543%_)
                           (_%E117548117560%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117546117556%_)))
                           (_%E117547117590%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117546117556%_)
                                  (let ((_%e117549117564%_
                                         (gx#syntax-e _%e117546117556%_)))
                                    (let ((_%hd117550117567%_
                                           (##car _%e117549117564%_))
                                          (_%tl117551117569%_
                                           (##cdr _%e117549117564%_)))
                                      (if (gx#stx-pair? _%tl117551117569%_)
                                          (let ((_%e117552117572%_
                                                 (gx#syntax-e
                                                  _%tl117551117569%_)))
                                            (let ((_%hd117553117575%_
                                                   (##car _%e117552117572%_))
                                                  (_%tl117554117577%_
                                                   (##cdr _%e117552117572%_)))
                                              (let ((_%path117580%_
                                                     _%hd117553117575%_))
                                                (if (gx#stx-null?
                                                     _%tl117554117577%_)
                                                    (if (gx#stx-string?
                                                         _%path117580%_)
                                                        (let* ((_%rpath117582%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path117580%_
                         (gx#stx-source _%hd117543%_)))
                       (_%block117584%_
                        (gx#core-expand-include%__%
                         _%hd117543%_
                         _%rpath117582%_))
                       (_%rbody117587%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block117584%_
                            _%expand-special117431%_
                            '#f
                            _%expand-e117433%_))
                         gx#current-expander-path
                         (cons _%rpath117582%_ (gx#current-expander-path)))))
                  (_%K117439%_
                   _%rest117544%_
                   (__foldr1 cons _%r117545%_ _%rbody117587%_)))
                (_%E117548117560%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E117548117560%_)))))
                                          (_%E117548117560%_))))
                                  (_%E117548117560%_)))))
                      (_%E117547117590%_))))
                 (_%expand-expression117438%_
                  (lambda (_%hd117539%_ _%rest117540%_ _%r117541%_)
                    (_%K117439%_
                     _%rest117540%_
                     (cons (_%expand-e117433%_ _%hd117539%_) _%r117541%_))))
                 (_%K117439%_
                  (lambda (_%rest117469%_ _%r117470%_)
                    (let* ((_%e117471117478%_ _%rest117469%_)
                           (_%E117473117482%_
                            (lambda ()
                              (if _%begin-form117432%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form117432%_
                                    (reverse _%r117470%_))
                                   (gx#stx-source _%stx117430%_))
                                  _%r117470%_)))
                           (_%E117472117535%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117471117478%_)
                                  (let ((_%e117474117486%_
                                         (gx#syntax-e _%e117471117478%_)))
                                    (let ((_%hd117475117489%_
                                           (##car _%e117474117486%_))
                                          (_%tl117476117491%_
                                           (##cdr _%e117474117486%_)))
                                      (let* ((_%hd117494%_ _%hd117475117489%_)
                                             (_%rest117496%_
                                              _%tl117476117491%_))
                                        (if '#t
                                            (let* ((_%hd117498%_
                                                    (gx#core-expand-head
                                                     _%hd117494%_))
                                                   (_%e117499117506%_
                                                    _%hd117498%_)
                                                   (_%E117501117510%_
                                                    (lambda ()
                                                      (_%expand-expression117438%_
                                                       _%hd117498%_
                                                       _%rest117496%_
                                                       _%r117470%_)))
                                                   (_%E117500117531%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117499117506%_)
                                                          (let ((_%e117502117514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117499117506%_)))
                    (let ((_%hd117503117517%_ (##car _%e117502117514%_))
                          (_%tl117504117519%_ (##cdr _%e117502117514%_)))
                      (let* ((_%form117522%_ _%hd117503117517%_)
                             (_%body117524%_ _%tl117504117519%_))
                        (if '#t
                            (let ((_%bind117526%_
                                   (if (gx#identifier? _%form117522%_)
                                       (gx#resolve-identifier__0
                                        _%form117522%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind117526%_)
                                  (let ((_%$e117528%_
                                         (##unchecked-structure-ref
                                          _%bind117526%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e117528%_)
                                        (_%expand-splice117435%_
                                         _%hd117498%_
                                         _%body117524%_
                                         _%rest117496%_
                                         _%r117470%_)
                                        (if (eq? '%#cond-expand _%$e117528%_)
                                            (_%expand-cond-expand117436%_
                                             _%hd117498%_
                                             _%rest117496%_
                                             _%r117470%_)
                                            (if (eq? '%#include _%$e117528%_)
                                                (_%expand-include117437%_
                                                 _%hd117498%_
                                                 _%rest117496%_
                                                 _%r117470%_)
                                                (_%expand-special117431%_
                                                 _%hd117498%_
                                                 _%K117439%_
                                                 _%rest117496%_
                                                 _%r117470%_)))))
                                  (_%expand-expression117438%_
                                   _%hd117498%_
                                   _%rest117496%_
                                   _%r117470%_)))
                            (_%E117501117510%_)))))
                  (_%E117501117510%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117500117531%_))
                                            (_%E117473117482%_)))))
                                  (_%E117473117482%_)))))
                      (_%E117472117535%_)))))
          (let* ((_%e117440117447%_ _%stx117430%_)
                 (_%E117442117451%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117440117447%_)))
                 (_%E117441117465%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117440117447%_)
                        (let ((_%e117443117455%_
                               (gx#syntax-e _%e117440117447%_)))
                          (let ((_%hd117444117458%_ (##car _%e117443117455%_))
                                (_%tl117445117460%_ (##cdr _%e117443117455%_)))
                            (let ((_%body117463%_ _%tl117445117460%_))
                              (if (gx#stx-list? _%body117463%_)
                                  (_%K117439%_ _%body117463%_ '())
                                  (_%E117442117451%_)))))
                        (_%E117442117451%_)))))
            (_%E117441117465%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx117606%_ _%expand-special117607%_)
        (let* ((_%begin-form117609%_ '%#begin)
               (_%expand-e117611%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117606%_
           _%expand-special117607%_
           _%begin-form117609%_
           _%expand-e117611%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx117613%_ _%expand-special117614%_ _%begin-form117615%_)
        (let ((_%expand-e117617%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117613%_
           _%expand-special117614%_
           _%begin-form117615%_
           _%expand-e117617%_))))
    (define gx#core-expand-block
      (lambda _g118313_
        (let ((_g118312_ (##length _g118313_)))
          (cond ((##fx= _g118312_ 2)
                 (apply (lambda (_%stx117606%_ _%expand-special117607%_)
                          (gx#core-expand-block__0
                           _%stx117606%_
                           _%expand-special117607%_))
                        _g118313_))
                ((##fx= _g118312_ 3)
                 (apply (lambda (_%stx117613%_
                                 _%expand-special117614%_
                                 _%begin-form117615%_)
                          (gx#core-expand-block__1
                           _%stx117613%_
                           _%expand-special117614%_
                           _%begin-form117615%_))
                        _g118313_))
                ((##fx= _g118312_ 4)
                 (apply (lambda (_%stx117619%_
                                 _%expand-special117620%_
                                 _%begin-form117621%_
                                 _%expand-e117622%_)
                          (gx#core-expand-block__%
                           _%stx117619%_
                           _%expand-special117620%_
                           _%begin-form117621%_
                           _%expand-e117622%_))
                        _g118313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g118313_))))))
    (define gx#core-expand-block*
      (lambda (_%stx117378%_ _%expand-special117379%_)
        (let* ((_%g117380117391%_
                (gx#core-expand-block__1
                 _%stx117378%_
                 _%expand-special117379%_
                 '#f))
               (_%E117384117395%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117380117391%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K117389117426%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx117378%_)))
                (_%K117386117412%_ (lambda (_%expr117410%_) _%expr117410%_))
                (_%K117385117401%_
                 (lambda (_%body117399%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body117399%_))
                    (gx#stx-source _%stx117378%_)))))
            (let ((_%try-match117382117422%_
                   (lambda ()
                     (if (##pair? _%g117380117391%_)
                         (let ((_%tl117388117417%_ (##cdr _%g117380117391%_))
                               (_%hd117387117415%_ (##car _%g117380117391%_)))
                           (if (##null? _%tl117388117417%_)
                               (let ((_%expr117420%_ _%hd117387117415%_))
                                 (_%K117386117412%_ _%expr117420%_))
                               (let ((_%body117404%_ _%g117380117391%_))
                                 (_%K117385117401%_ _%body117404%_))))
                         (let ((_%body117404%_ _%g117380117391%_))
                           (_%K117385117401%_ _%body117404%_))))))
              (if (##null? _%g117380117391%_)
                  (_%K117389117426%_)
                  (_%try-match117382117422%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx117203%_)
        (letrec ((_%satisfied?117205%_
                  (lambda (_%condition117306%_)
                    (let* ((_%e117307117322%_ _%condition117306%_)
                           (_%E117317117326%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117307117322%_)))
                           (_%E117310117345%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117307117322%_)
                                  (let ((_%e117318117330%_
                                         (gx#syntax-e _%e117307117322%_)))
                                    (let ((_%hd117319117333%_
                                           (##car _%e117318117330%_))
                                          (_%tl117320117335%_
                                           (##cdr _%e117318117330%_)))
                                      (let* ((_%combinator117338%_
                                              _%hd117319117333%_)
                                             (_%body117340%_
                                              _%tl117320117335%_))
                                        (if (gx#stx-list? _%body117340%_)
                                            (let ((_%$e117342%_
                                                   (gx#stx-e
                                                    _%combinator117338%_)))
                                              (if (eq? 'not _%$e117342%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?117205%_
                                                        _%body117340%_))
                                                  (if (eq? 'and _%$e117342%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?117205%_
                                                       _%body117340%_)
                                                      (if (eq? 'or
                                                               _%$e117342%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?117205%_
                                                           _%body117340%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e117342%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body117340%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx117203%_
                       _%combinator117338%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E117317117326%_)))))
                                  (_%E117317117326%_))))
                           (_%E117309117368%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117307117322%_)
                                  (let ((_%e117311117349%_
                                         (gx#syntax-e _%e117307117322%_)))
                                    (let ((_%hd117312117352%_
                                           (##car _%e117311117349%_))
                                          (_%tl117313117354%_
                                           (##cdr _%e117311117349%_)))
                                      (if (and (gx#identifier?
                                                _%hd117312117352%_)
                                               (gx#core-identifier=?
                                                _%hd117312117352%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl117313117354%_)
                                              (let ((_%e117314117357%_
                                                     (gx#syntax-e
                                                      _%tl117313117354%_)))
                                                (let ((_%hd117315117360%_
                                                       (##car _%e117314117357%_))
                                                      (_%tl117316117362%_
                                                       (##cdr _%e117314117357%_)))
                                                  (let ((_%expr117365%_
                                                         _%hd117315117360%_))
                                                    (if (gx#stx-null?
                                                         _%tl117316117362%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr117365%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E117310117345%_))
                (_%E117310117345%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117310117345%_))
                                          (_%E117310117345%_))))
                                  (_%E117310117345%_))))
                           (_%E117308117374%_
                            (lambda ()
                              (let ((_%id117372%_ _%e117307117322%_))
                                (if (gx#identifier? _%id117372%_)
                                    (gx#core-bound-identifier?__%
                                     _%id117372%_
                                     gx#feature-binding?)
                                    (_%E117309117368%_))))))
                      (_%E117308117374%_))))
                 (_%loop117206%_
                  (lambda (_%rest117236%_)
                    (let* ((_%e117237117245%_ _%rest117236%_)
                           (_%E117243117249%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117237117245%_)))
                           (_%E117239117253%_
                            (lambda ()
                              (if (gx#stx-null? _%e117237117245%_)
                                  (if '#t '() (_%E117243117249%_))
                                  (_%E117243117249%_))))
                           (_%E117238117302%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117237117245%_)
                                  (let ((_%e117240117257%_
                                         (gx#syntax-e _%e117237117245%_)))
                                    (let ((_%hd117241117260%_
                                           (##car _%e117240117257%_))
                                          (_%tl117242117262%_
                                           (##cdr _%e117240117257%_)))
                                      (let* ((_%hd117265%_ _%hd117241117260%_)
                                             (_%rest117267%_
                                              _%tl117242117262%_))
                                        (if '#t
                                            (let* ((_%e117268117275%_
                                                    _%hd117265%_)
                                                   (_%E117270117279%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e117268117275%_)))
                                                   (_%E117269117298%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e117268117275%_)
                                                          (let ((_%e117271117283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e117268117275%_)))
                    (let ((_%hd117272117286%_ (##car _%e117271117283%_))
                          (_%tl117273117288%_ (##cdr _%e117271117283%_)))
                      (let* ((_%condition117291%_ _%hd117272117286%_)
                             (_%body117293%_ _%tl117273117288%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition117291%_ 'else)
                                (let ()
                                  (if (gx#stx-null? _%rest117267%_)
                                      _%body117293%_
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; clauses after else"
                                       _%stx117203%_
                                       _%hd117265%_)))
                                (if (_%satisfied?117205%_ _%condition117291%_)
                                    (let () _%body117293%_)
                                    (let () (_%loop117206%_ _%rest117267%_))))
                            (_%E117270117279%_)))))
                  (_%E117270117279%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E117269117298%_))
                                            (_%E117239117253%_)))))
                                  (_%E117239117253%_)))))
                      (_%E117238117302%_)))))
          (let* ((_%e117207117214%_ _%stx117203%_)
                 (_%E117209117218%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e117207117214%_)))
                 (_%E117208117232%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117207117214%_)
                        (let ((_%e117210117222%_
                               (gx#syntax-e _%e117207117214%_)))
                          (let ((_%hd117211117225%_ (##car _%e117210117222%_))
                                (_%tl117212117227%_ (##cdr _%e117210117222%_)))
                            (let ((_%clauses117230%_ _%tl117212117227%_))
                              (if (gx#stx-list? _%clauses117230%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop117206%_ _%clauses117230%_))
                                  (_%E117209117218%_)))))
                        (_%E117209117218%_)))))
            (_%E117208117232%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx117146%_ _%rpath117147%_)
        (let* ((_%e117148117158%_ _%stx117146%_)
               (_%E117150117162%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e117148117158%_)))
               (_%E117149117189%_
                (lambda ()
                  (if (gx#stx-pair? _%e117148117158%_)
                      (let ((_%e117151117166%_
                             (gx#syntax-e _%e117148117158%_)))
                        (let ((_%hd117152117169%_ (##car _%e117151117166%_))
                              (_%tl117153117171%_ (##cdr _%e117151117166%_)))
                          (if (gx#stx-pair? _%tl117153117171%_)
                              (let ((_%e117154117174%_
                                     (gx#syntax-e _%tl117153117171%_)))
                                (let ((_%hd117155117177%_
                                       (##car _%e117154117174%_))
                                      (_%tl117156117179%_
                                       (##cdr _%e117154117174%_)))
                                  (let ((_%path117182%_ _%hd117155117177%_))
                                    (if (gx#stx-null? _%tl117156117179%_)
                                        (if (gx#stx-string? _%path117182%_)
                                            (let ((_%rpath117187%_
                                                   (let ((_%$e117184%_
                                                          _%rpath117147%_))
                                                     (if _%$e117184%_
                                                         _%$e117184%_
                                                         (gx#core-resolve-path__%
                                                          _%path117182%_
                                                          (gx#stx-source
                                                           _%stx117146%_))))))
                                              (if (member _%rpath117187%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx117146%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath117187%_))
                                                    (gx#stx-source
                                                     _%stx117146%_)))))
                                            (_%E117150117162%_))
                                        (_%E117150117162%_)))))
                              (_%E117150117162%_))))
                      (_%E117150117162%_)))))
          (_%E117149117189%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx117196%_)
        (let ((_%rpath117198%_ '#f))
          (gx#core-expand-include%__% _%stx117196%_ _%rpath117198%_))))
    (define gx#core-expand-include%
      (lambda _g118315_
        (let ((_g118314_ (##length _g118315_)))
          (cond ((##fx= _g118314_ 1)
                 (apply (lambda (_%stx117196%_)
                          (gx#core-expand-include%__0 _%stx117196%_))
                        _g118315_))
                ((##fx= _g118314_ 2)
                 (apply (lambda (_%stx117200%_ _%rpath117201%_)
                          (gx#core-expand-include%__%
                           _%stx117200%_
                           _%rpath117201%_))
                        _g118315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g118315_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K117112%_ _%stx117113%_ _%method117114%_)
        (if (procedure? _%K117112%_)
            (let ((_%$e117117%_ (gx#stx-source _%stx117113%_)))
              (if _%$e117117%_
                  ((lambda (_%g117119117121%_)
                     (gx#stx-wrap-source
                      (_%K117112%_ _%stx117113%_)
                      _%g117119117121%_))
                   _%$e117117%_)
                  (let () (_%K117112%_ _%stx117113%_))))
            (let ((_%$e117125%_
                   (bound-method-ref _%K117112%_ _%method117114%_)))
              (if _%$e117125%_
                  ((lambda (_%g117127117129%_)
                     (gx#core-apply-expander__%
                      _%g117127117129%_
                      _%stx117113%_
                      _%method117114%_))
                   _%$e117125%_)
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; no expander method"
                     _%stx117113%_
                     _%method117114%_)))))))
    (define gx#core-apply-expander__0
      (lambda (_%K117136%_ _%stx117137%_)
        (let ((_%method117139%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K117136%_
           _%stx117137%_
           _%method117139%_))))
    (define gx#core-apply-expander
      (lambda _g118317_
        (let ((_g118316_ (##length _g118317_)))
          (cond ((##fx= _g118316_ 2)
                 (apply (lambda (_%K117136%_ _%stx117137%_)
                          (gx#core-apply-expander__0
                           _%K117136%_
                           _%stx117137%_))
                        _g118317_))
                ((##fx= _g118316_ 3)
                 (apply (lambda (_%K117141%_ _%stx117142%_ _%method117143%_)
                          (gx#core-apply-expander__%
                           _%K117141%_
                           _%stx117142%_
                           _%method117143%_))
                        _g118317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g118317_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self117097%_ _%stx117098%_)
        (let ((_%self117101%_ _%self117097%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; bottom method for apply-macro-expander"
           _%stx117098%_))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116939%_ _%stx116940%_)
        (let ((_%self116943%_ _%self116939%_))
          (let* ((_%self116952116958%_ _%self116943%_)
                 (_%E116954116962%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116952116958%_
                           '((macro-expander K)))
                    '#!void))
                 (_%K116955116967%_
                  (lambda (_%K116965%_)
                    (gx#core-apply-expander__0 _%K116965%_ _%stx116940%_))))
            (if '#t
                (let* ((_%e116956116970%_
                        (##unchecked-structure-ref
                         _%self116952116958%_
                         '1
                         '#f
                         '#f))
                       (_%K116973%_ _%e116956116970%_))
                  (_%K116955116967%_ _%K116973%_))
                (_%E116954116962%_))))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116781%_ _%stx116782%_)
        (let ((_%self116785%_ _%self116781%_))
          (if (gx#sealed-syntax? _%stx116782%_)
              _%stx116782%_
              (let* ((_%self116794116800%_ _%self116785%_)
                     (_%E116796116804%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116794116800%_
                               '((core-expander K)))
                        '#!void))
                     (_%K116797116809%_
                      (lambda (_%K116807%_)
                        (gx#core-apply-expander__0
                         _%K116807%_
                         _%stx116782%_))))
                (if '#t
                    (let* ((_%e116798116812%_
                            (##unchecked-structure-ref
                             _%self116794116800%_
                             '1
                             '#f
                             '#f))
                           (_%K116815%_ _%e116798116812%_))
                      (_%K116797116809%_ _%K116815%_))
                    (_%E116796116804%_)))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116632%_ _%stx116633%_ _%top?116634%_)
        (let ((_%self116637%_ _%self116632%_))
          (if (_%top?116634%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self116637%_
               _%stx116633%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx116633%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116650%_ _%stx116651%_)
        (let ((_%top?116653%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116650%_
           _%stx116651%_
           _%top?116653%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g118319_
        (let ((_g118318_ (##length _g118319_)))
          (cond ((##fx= _g118318_ 2)
                 (apply (lambda (_%self116650%_ _%stx116651%_)
                          (gx#top-special-form::apply-macro-expander__0
                           _%self116650%_
                           _%stx116651%_))
                        _g118319_))
                ((##fx= _g118318_ 3)
                 (apply (lambda (_%self116655%_ _%stx116656%_ _%top?116657%_)
                          (gx#top-special-form::apply-macro-expander__%
                           _%self116655%_
                           _%stx116656%_
                           _%top?116657%_))
                        _g118319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g118319_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self116495%_ _%stx116496%_)
        (let ((_%self116499%_ _%self116495%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self116499%_
           _%stx116496%_
           gx#module-context?))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self116309%_ _%stx116310%_)
        (let ((_%self116313%_ _%self116309%_))
          (let* ((_%self116322116328%_ _%self116313%_)
                 (_%E116324116332%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self116322116328%_
                           '((rename-macro-expander id)))
                    '#!void))
                 (_%K116325116365%_
                  (lambda (_%id116335%_)
                    (let* ((_%e116336116343%_ _%stx116310%_)
                           (_%E116338116347%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116336116343%_)))
                           (_%E116337116361%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116336116343%_)
                                  (let ((_%e116339116351%_
                                         (gx#syntax-e _%e116336116343%_)))
                                    (let ((_%hd116340116354%_
                                           (##car _%e116339116351%_))
                                          (_%tl116341116356%_
                                           (##cdr _%e116339116351%_)))
                                      (let ((_%body116359%_
                                             _%tl116341116356%_))
                                        (if '#t
                                            (gx#core-cons
                                             _%id116335%_
                                             _%body116359%_)
                                            (_%E116338116347%_)))))
                                  (_%E116338116347%_)))))
                      (_%E116337116361%_)))))
            (if '#t
                (let* ((_%e116326116368%_
                        (##unchecked-structure-ref
                         _%self116322116328%_
                         '1
                         '#f
                         '#f))
                       (_%id116371%_ _%e116326116368%_))
                  (_%K116325116365%_ _%id116371%_))
                (_%E116324116332%_))))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self116135%_ _%stx116136%_ _%method116137%_)
        (let* ((_%self116138116146%_ _%self116135%_)
               (_%E116140116150%_
                (lambda ()
                  (error '"No clause matching"
                         _%self116138116146%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K116141116157%_
                (lambda (_%phi116153%_ _%ctx116154%_ _%K116155%_)
                  (gx#core-apply-user-macro
                   _%K116155%_
                   _%stx116136%_
                   _%ctx116154%_
                   _%phi116153%_
                   _%method116137%_))))
          (if (##structure-instance-of?
               _%self116138116146%_
               'gx#user-expander::t)
              (let* ((_%e116142116160%_
                      (##unchecked-structure-ref
                       _%self116138116146%_
                       '1
                       '#f
                       '#f))
                     (_%K116163%_ _%e116142116160%_)
                     (_%e116143116165%_
                      (##unchecked-structure-ref
                       _%self116138116146%_
                       '2
                       '#f
                       '#f))
                     (_%ctx116168%_ _%e116143116165%_)
                     (_%e116144116170%_
                      (##unchecked-structure-ref
                       _%self116138116146%_
                       '3
                       '#f
                       '#f))
                     (_%phi116173%_ _%e116144116170%_))
                (_%K116141116157%_ _%phi116173%_ _%ctx116168%_ _%K116163%_))
              (_%E116140116150%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self116178%_ _%stx116179%_)
        (let ((_%method116181%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self116178%_
           _%stx116179%_
           _%method116181%_))))
    (define gx#core-apply-user-expander
      (lambda _g118321_
        (let ((_g118320_ (##length _g118321_)))
          (cond ((##fx= _g118320_ 2)
                 (apply (lambda (_%self116178%_ _%stx116179%_)
                          (gx#core-apply-user-expander__0
                           _%self116178%_
                           _%stx116179%_))
                        _g118321_))
                ((##fx= _g118320_ 3)
                 (apply (lambda (_%self116183%_ _%stx116184%_ _%method116185%_)
                          (gx#core-apply-user-expander__%
                           _%self116183%_
                           _%stx116184%_
                           _%method116185%_))
                        _g118321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g118321_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K116125%_
               _%stx116126%_
               _%ctx116127%_
               _%phi116128%_
               _%method116129%_)
        (let ((_%mark116131%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx116127%_
                _%phi116128%_
                _%stx116126%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K116125%_
               (gx#stx-apply-mark _%stx116126%_ _%mark116131%_)
               _%method116129%_)
              _%mark116131%_))
           gx#current-expander-marks
           (cons _%mark116131%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115973%_ _%phi115974%_ _%ctx115975%_)
        (let _%lp115977%_ ((_%bind115979%_
                            (gx#core-resolve-identifier__%
                             _%stx115973%_
                             _%phi115974%_
                             _%ctx115975%_)))
          (if (##structure-direct-instance-of?
               _%bind115979%_
               'gx#import-binding::t)
              (let ()
                (_%lp115977%_
                 (##unchecked-structure-ref _%bind115979%_ '4 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%bind115979%_
                   'gx#alias-binding::t)
                  (let ()
                    (_%lp115977%_
                     (gx#core-resolve-identifier__%
                      (##unchecked-structure-ref _%bind115979%_ '4 '#f '#f)
                      _%phi115974%_
                      _%ctx115975%_)))
                  (let () _%bind115979%_))))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115987%_)
        (let* ((_%phi115989%_ (gx#current-expander-phi))
               (_%ctx115991%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115987%_
           _%phi115989%_
           _%ctx115991%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115993%_ _%phi115994%_)
        (let ((_%ctx115996%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115993%_
           _%phi115994%_
           _%ctx115996%_))))
    (define gx#resolve-identifier
      (lambda _g118323_
        (let ((_g118322_ (##length _g118323_)))
          (cond ((##fx= _g118322_ 1)
                 (apply (lambda (_%stx115987%_)
                          (gx#resolve-identifier__0 _%stx115987%_))
                        _g118323_))
                ((##fx= _g118322_ 2)
                 (apply (lambda (_%stx115993%_ _%phi115994%_)
                          (gx#resolve-identifier__1
                           _%stx115993%_
                           _%phi115994%_))
                        _g118323_))
                ((##fx= _g118322_ 3)
                 (apply (lambda (_%stx115998%_ _%phi115999%_ _%ctx116000%_)
                          (gx#resolve-identifier__%
                           _%stx115998%_
                           _%phi115999%_
                           _%ctx116000%_))
                        _g118323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g118323_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115928%_
               _%val115929%_
               _%rebind?115930%_
               _%phi115931%_
               _%ctx115932%_)
        (let ((_%rebind?115937%_
               (if (not _%rebind?115930%_)
                   (let () gx#core-context-rebind?)
                   (if (procedure? _%rebind?115930%_)
                       (let () _%rebind?115930%_)
                       (let () true)))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115928%_)
           _%val115929%_
           _%rebind?115937%_
           _%phi115931%_
           _%ctx115932%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115942%_ _%val115943%_)
        (let* ((_%rebind?115945%_ '#f)
               (_%phi115947%_ (gx#current-expander-phi))
               (_%ctx115949%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115942%_
           _%val115943%_
           _%rebind?115945%_
           _%phi115947%_
           _%ctx115949%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115951%_ _%val115952%_ _%rebind?115953%_)
        (let* ((_%phi115955%_ (gx#current-expander-phi))
               (_%ctx115957%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115951%_
           _%val115952%_
           _%rebind?115953%_
           _%phi115955%_
           _%ctx115957%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115959%_ _%val115960%_ _%rebind?115961%_ _%phi115962%_)
        (let ((_%ctx115964%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115959%_
           _%val115960%_
           _%rebind?115961%_
           _%phi115962%_
           _%ctx115964%_))))
    (define gx#bind-identifier!
      (lambda _g118325_
        (let ((_g118324_ (##length _g118325_)))
          (cond ((##fx= _g118324_ 2)
                 (apply (lambda (_%stx115942%_ _%val115943%_)
                          (gx#bind-identifier!__0 _%stx115942%_ _%val115943%_))
                        _g118325_))
                ((##fx= _g118324_ 3)
                 (apply (lambda (_%stx115951%_ _%val115952%_ _%rebind?115953%_)
                          (gx#bind-identifier!__1
                           _%stx115951%_
                           _%val115952%_
                           _%rebind?115953%_))
                        _g118325_))
                ((##fx= _g118324_ 4)
                 (apply (lambda (_%stx115959%_
                                 _%val115960%_
                                 _%rebind?115961%_
                                 _%phi115962%_)
                          (gx#bind-identifier!__2
                           _%stx115959%_
                           _%val115960%_
                           _%rebind?115961%_
                           _%phi115962%_))
                        _g118325_))
                ((##fx= _g118324_ 5)
                 (apply (lambda (_%stx115966%_
                                 _%val115967%_
                                 _%rebind?115968%_
                                 _%phi115969%_
                                 _%ctx115970%_)
                          (gx#bind-identifier!__%
                           _%stx115966%_
                           _%val115967%_
                           _%rebind?115968%_
                           _%phi115969%_
                           _%ctx115970%_))
                        _g118325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g118325_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115894%_ _%phi115895%_ _%ctx115896%_)
        (let _%lp115898%_ ((_%e115900%_ _%stx115894%_)
                           (_%marks115901%_ (gx#current-expander-marks)))
          (if (symbol? _%e115900%_)
              (let ()
                (gx#core-resolve-binding
                 _%e115900%_
                 _%phi115895%_
                 _%phi115895%_
                 _%ctx115896%_
                 (reverse _%marks115901%_)))
              (if (gx#identifier-quote? _%e115900%_)
                  (let ()
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _%e115900%_ '1 '#f '#f)
                     _%phi115895%_
                     '0
                     (##unchecked-structure-ref _%e115900%_ '3 '#f '#f)
                     (##unchecked-structure-ref _%e115900%_ '4 '#f '#f)))
                  (if (##structure-direct-instance-of?
                       _%e115900%_
                       'gx#identifier-wrap::t)
                      (let ()
                        (gx#core-resolve-binding
                         (##unchecked-structure-ref _%e115900%_ '1 '#f '#f)
                         _%phi115895%_
                         _%phi115895%_
                         _%ctx115896%_
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e115900%_ '3 '#f '#f)
                          _%marks115901%_)))
                      (if (##structure-direct-instance-of?
                           _%e115900%_
                           'gx#syntax-wrap::t)
                          (let ()
                            (_%lp115898%_
                             (##unchecked-structure-ref _%e115900%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e115900%_
                               '3
                               '#f
                               '#f)
                              _%marks115901%_)))
                          (if (##structure-instance-of?
                               _%e115900%_
                               'gerbil#AST::t)
                              (let ()
                                (_%lp115898%_
                                 (##unchecked-structure-ref
                                  _%e115900%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115901%_))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad identifier"
                                 _%stx115894%_))))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115912%_)
        (let* ((_%phi115914%_ (gx#current-expander-phi))
               (_%ctx115916%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115912%_
           _%phi115914%_
           _%ctx115916%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115918%_ _%phi115919%_)
        (let ((_%ctx115921%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115918%_
           _%phi115919%_
           _%ctx115921%_))))
    (define gx#core-resolve-identifier
      (lambda _g118327_
        (let ((_g118326_ (##length _g118327_)))
          (cond ((##fx= _g118326_ 1)
                 (apply (lambda (_%stx115912%_)
                          (gx#core-resolve-identifier__0 _%stx115912%_))
                        _g118327_))
                ((##fx= _g118326_ 2)
                 (apply (lambda (_%stx115918%_ _%phi115919%_)
                          (gx#core-resolve-identifier__1
                           _%stx115918%_
                           _%phi115919%_))
                        _g118327_))
                ((##fx= _g118326_ 3)
                 (apply (lambda (_%stx115923%_ _%phi115924%_ _%ctx115925%_)
                          (gx#core-resolve-identifier__%
                           _%stx115923%_
                           _%phi115924%_
                           _%ctx115925%_))
                        _g118327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g118327_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115804%_
               _%phi115805%_
               _%src-phi115806%_
               _%ctx115807%_
               _%marks115808%_)
        (letrec ((_%resolve115810%_
                  (lambda (_%ctx115878%_ _%src-phi115879%_ _%key115880%_)
                    (let _%lp115882%_ ((_%ctx115884%_
                                        (gx#core-context-shift
                                         _%ctx115878%_
                                         _%phi115805%_))
                                       (_%dphi115885%_
                                        (fx- _%phi115805%_ _%src-phi115879%_)))
                      (let ((_%$e115887%_
                             (gx#core-context-resolve
                              _%ctx115884%_
                              _%key115880%_)))
                        (if _%$e115887%_
                            (values _%$e115887%_)
                            (if (fxzero? _%dphi115885%_)
                                (let () '#f)
                                (if (fxpositive? _%dphi115885%_)
                                    (let ()
                                      (_%lp115882%_
                                       (gx#core-context-shift
                                        _%ctx115884%_
                                        '-1)
                                       (##fx- _%dphi115885%_ '1)))
                                    (let ()
                                      (_%lp115882%_
                                       (gx#core-context-shift _%ctx115884%_ '1)
                                       (##fx+ _%dphi115885%_ '1)))))))))))
          (let _%lp115812%_ ((_%ctx115814%_ _%ctx115807%_)
                             (_%src-phi115815%_ _%src-phi115806%_)
                             (_%rest115816%_ _%marks115808%_))
            (let* ((_%rest115817115825%_ _%rest115816%_)
                   (_%else115819115833%_
                    (lambda ()
                      (_%resolve115810%_
                       _%ctx115814%_
                       _%src-phi115815%_
                       _%id115804%_)))
                   (_%K115821115866%_
                    (lambda (_%rest115836%_ _%hd115837%_)
                      (let* ((_%hd115838115844%_ _%hd115837%_)
                             (_%E115840115848%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115838115844%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115841115858%_
                              (lambda (_%subst115851%_)
                                (let ((_%$e115855%_
                                       (let ((_%key115853%_
                                              (if _%subst115851%_
                                                  (hash-get
                                                   _%subst115851%_
                                                   _%id115804%_)
                                                  '#f)))
                                         (if _%key115853%_
                                             (_%resolve115810%_
                                              _%ctx115814%_
                                              _%src-phi115815%_
                                              _%key115853%_)
                                             '#f))))
                                  (if _%$e115855%_
                                      _%$e115855%_
                                      (_%lp115812%_
                                       (##unchecked-structure-ref
                                        _%hd115837%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115837%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115836%_))))))
                        (if (##structure-instance-of?
                             _%hd115838115844%_
                             'gx#expander-mark::t)
                            (let* ((_%e115842115861%_
                                    (##unchecked-structure-ref
                                     _%hd115838115844%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115864%_ _%e115842115861%_))
                              (_%K115841115858%_ _%subst115864%_))
                            (_%E115840115848%_))))))
              (if (##pair? _%rest115817115825%_)
                  (let ((_%hd115822115869%_ (##car _%rest115817115825%_))
                        (_%tl115823115871%_ (##cdr _%rest115817115825%_)))
                    (let* ((_%hd115874%_ _%hd115822115869%_)
                           (_%rest115876%_ _%tl115823115871%_))
                      (_%K115821115866%_ _%rest115876%_ _%hd115874%_)))
                  (_%else115819115833%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key115674%_
               _%val115675%_
               _%rebind?115676%_
               _%phi115677%_
               _%ctx115678%_)
        (letrec ((_%update-binding115680%_
                  (lambda (_%xval115753%_)
                    (if (or (_%rebind?115676%_
                             _%ctx115678%_
                             _%xval115753%_
                             _%val115675%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115753%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115753%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val115675%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val115675%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115753%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val115675%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val115675%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115753%_
                                       '1
                                       '#f
                                       '#f))))
                        (let () _%val115675%_)
                        (if (and (##structure-direct-instance-of?
                                  _%val115675%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val115675%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115753%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val115675%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115753%_
                                                '1
                                                '#f
                                                '#f)))))
                            (let () _%xval115753%_)
                            (if (and (##structure-direct-instance-of?
                                      _%val115675%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115753%_
                                      'gx#binding::t))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; import conflict"
                                   _%key115674%_
                                   (cons (##unchecked-structure-ref
                                          _%val115675%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (##structure-ref
                                                (##unchecked-structure-ref
                                                 _%val115675%_
                                                 '5
                                                 '#f
                                                 '#f)
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '()))
                                   (cons (##unchecked-structure-ref
                                          _%xval115753%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (if (##structure-direct-instance-of?
                                                    _%xval115753%_
                                                    'gx#import-binding::t)
                                                   (##structure-ref
                                                    (##unchecked-structure-ref
                                                     _%xval115753%_
                                                     '5
                                                     '#f
                                                     '#f)
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   _%xval115753%_)
                                               '()))))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; rebind conflict"
                                   _%key115674%_
                                   _%val115675%_
                                   _%xval115753%_)))))))
                 (_%gensubst115681%_
                  (lambda (_%subst115748%_ _%id115749%_)
                    (let ((_%eid115751%_
                           (gensym (if (uninterned-symbol? _%id115749%_)
                                       '%
                                       _%id115749%_))))
                      (hash-put! _%subst115748%_ _%id115749%_ _%eid115751%_)
                      _%eid115751%_)))
                 (_%subst!115682%_
                  (lambda (_%key115684%_)
                    (let* ((_%key115685115693%_ _%key115684%_)
                           (_%else115687115701%_ (lambda () _%key115684%_))
                           (_%K115689115736%_
                            (lambda (_%mark115704%_ _%id115705%_)
                              (let* ((_%mark115706115712%_ _%mark115704%_)
                                     (_%E115708115716%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark115706115712%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K115709115728%_
                                      (lambda (_%subst115719%_)
                                        (if (not _%subst115719%_)
                                            (let ((_%subst115722%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark115704%_
                                               _%subst115722%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst115681%_
                                               _%subst115722%_
                                               _%id115705%_))
                                            (let ((_%$e115724%_
                                                   (hash-get
                                                    _%subst115719%_
                                                    _%id115705%_)))
                                              (if _%$e115724%_
                                                  (values _%$e115724%_)
                                                  (let ()
                                                    (_%gensubst115681%_
                                                     _%subst115719%_
                                                     _%id115705%_))))))))
                                (if (##structure-instance-of?
                                     _%mark115706115712%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e115710115731%_
                                            (##unchecked-structure-ref
                                             _%mark115706115712%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115734%_ _%e115710115731%_))
                                      (_%K115709115728%_ _%subst115734%_))
                                    (_%E115708115716%_))))))
                      (if (##pair? _%key115685115693%_)
                          (let ((_%hd115690115739%_
                                 (##car _%key115685115693%_))
                                (_%tl115691115741%_
                                 (##cdr _%key115685115693%_)))
                            (let* ((_%id115744%_ _%hd115690115739%_)
                                   (_%mark115746%_ _%tl115691115741%_))
                              (_%K115689115736%_ _%mark115746%_ _%id115744%_)))
                          (_%else115687115701%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx115678%_ _%phi115677%_)
           (_%subst!115682%_ _%key115674%_)
           _%val115675%_
           _%update-binding115680%_))))
    (define gx#core-bind!__0
      (lambda (_%key115774%_ _%val115775%_)
        (let* ((_%rebind?115777%_ false)
               (_%phi115779%_ (gx#current-expander-phi))
               (_%ctx115781%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115774%_
           _%val115775%_
           _%rebind?115777%_
           _%phi115779%_
           _%ctx115781%_))))
    (define gx#core-bind!__1
      (lambda (_%key115783%_ _%val115784%_ _%rebind?115785%_)
        (let* ((_%phi115787%_ (gx#current-expander-phi))
               (_%ctx115789%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115783%_
           _%val115784%_
           _%rebind?115785%_
           _%phi115787%_
           _%ctx115789%_))))
    (define gx#core-bind!__2
      (lambda (_%key115791%_ _%val115792%_ _%rebind?115793%_ _%phi115794%_)
        (let ((_%ctx115796%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115791%_
           _%val115792%_
           _%rebind?115793%_
           _%phi115794%_
           _%ctx115796%_))))
    (define gx#core-bind!
      (lambda _g118329_
        (let ((_g118328_ (##length _g118329_)))
          (cond ((##fx= _g118328_ 2)
                 (apply (lambda (_%key115774%_ _%val115775%_)
                          (gx#core-bind!__0 _%key115774%_ _%val115775%_))
                        _g118329_))
                ((##fx= _g118328_ 3)
                 (apply (lambda (_%key115783%_ _%val115784%_ _%rebind?115785%_)
                          (gx#core-bind!__1
                           _%key115783%_
                           _%val115784%_
                           _%rebind?115785%_))
                        _g118329_))
                ((##fx= _g118328_ 4)
                 (apply (lambda (_%key115791%_
                                 _%val115792%_
                                 _%rebind?115793%_
                                 _%phi115794%_)
                          (gx#core-bind!__2
                           _%key115791%_
                           _%val115792%_
                           _%rebind?115793%_
                           _%phi115794%_))
                        _g118329_))
                ((##fx= _g118328_ 5)
                 (apply (lambda (_%key115798%_
                                 _%val115799%_
                                 _%rebind?115800%_
                                 _%phi115801%_
                                 _%ctx115802%_)
                          (gx#core-bind!__%
                           _%key115798%_
                           _%val115799%_
                           _%rebind?115800%_
                           _%phi115801%_
                           _%ctx115802%_))
                        _g118329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g118329_))))))
    (define gx#core-identifier-key
      (lambda (_%stx115605%_)
        (if (symbol? _%stx115605%_)
            (let ()
              (let* ((_%g115607115615%_ (gx#current-expander-marks))
                     (_%else115609115623%_ (lambda () _%stx115605%_))
                     (_%K115611115628%_
                      (lambda (_%hd115626%_)
                        (cons _%stx115605%_ _%hd115626%_))))
                (if (##pair? _%g115607115615%_)
                    (let* ((_%hd115612115631%_ (##car _%g115607115615%_))
                           (_%hd115634%_ _%hd115612115631%_))
                      (_%K115611115628%_ _%hd115634%_))
                    (_%else115609115623%_))))
            (if (gx#identifier? _%stx115605%_)
                (let ()
                  (let* ((_%id115637%_ (gx#syntax-local-unwrap _%stx115605%_))
                         (_%eid115639%_ (gx#stx-e _%id115637%_))
                         (_%marks115641%_
                          (gx#stx-identifier-marks* _%id115637%_)))
                    (let* ((_%marks115643115651%_ _%marks115641%_)
                           (_%else115645115659%_ (lambda () _%eid115639%_))
                           (_%K115647115664%_
                            (lambda (_%hd115662%_)
                              (cons _%eid115639%_ _%hd115662%_))))
                      (if (##pair? _%marks115643115651%_)
                          (let* ((_%hd115648115667%_
                                  (##car _%marks115643115651%_))
                                 (_%hd115670%_ _%hd115648115667%_))
                            (_%K115647115664%_ _%hd115670%_))
                          (_%else115645115659%_)))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad identifier"
                   _%stx115605%_))))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx115544%_ _%phi115545%_)
        (letrec ((_%make-phi115547%_
                  (lambda (_%super115603%_)
                    (let ((__obj118301
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj118301
                       (##gensym 'phi)
                       _%super115603%_)
                      __obj118301)))
                 (_%make-phi/up115548%_
                  (lambda (_%ctx115598%_ _%super115599%_)
                    (let ((_%ctx+1115601%_
                           (_%make-phi115547%_ _%super115599%_)))
                      (##unchecked-structure-set!
                       _%ctx115598%_
                       _%ctx+1115601%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1115601%_
                       _%ctx115598%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1115601%_)))
                 (_%make-phi/down115549%_
                  (lambda (_%ctx115593%_ _%super115594%_)
                    (let ((_%ctx-1115596%_
                           (_%make-phi115547%_ _%super115594%_)))
                      (##unchecked-structure-set!
                       _%ctx-1115596%_
                       _%ctx115593%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx115593%_
                       _%ctx-1115596%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1115596%_)))
                 (_%shift115550%_
                  (lambda (_%ctx115576%_
                           _%delta115577%_
                           _%make-delta-context115578%_
                           _%phi115579%_
                           _%K115580%_)
                    (let ((_%$e115582%_
                           (##unchecked-structure-ref
                            _%ctx115576%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e115582%_
                          ((lambda (_%super115585%_)
                             (let* ((_%super115587%_
                                     (_%K115580%_
                                      _%super115585%_
                                      _%delta115577%_))
                                    (_%ctx+d115589%_
                                     (_%make-delta-context115578%_
                                      _%ctx115576%_
                                      _%super115587%_)))
                               (_%K115580%_
                                _%ctx+d115589%_
                                (fx- _%phi115579%_ _%delta115577%_))))
                           _%$e115582%_)
                          (let () (error '"Bad context" _%ctx115576%_)))))))
          (let _%K115552%_ ((_%ctx115554%_ _%ctx115544%_)
                            (_%phi115555%_ _%phi115545%_))
            (if (fxzero? _%phi115555%_)
                (let () _%ctx115554%_)
                (if (##structure-instance-of? _%ctx115554%_ 'gx#phi-context::t)
                    (let ()
                      (if (fxpositive? _%phi115555%_)
                          (let ((_%$e115559%_
                                 (##unchecked-structure-ref
                                  _%ctx115554%_
                                  '4
                                  '#f
                                  '#f)))
                            (if _%$e115559%_
                                ((lambda (_%g115561115563%_)
                                   (_%K115552%_
                                    _%g115561115563%_
                                    (##fx- _%phi115555%_ '1)))
                                 _%$e115559%_)
                                (let ()
                                  (_%shift115550%_
                                   _%ctx115554%_
                                   '1
                                   _%make-phi/up115548%_
                                   _%phi115555%_
                                   _%K115552%_))))
                          (let ((_%$e115567%_
                                 (##unchecked-structure-ref
                                  _%ctx115554%_
                                  '5
                                  '#f
                                  '#f)))
                            (if _%$e115567%_
                                ((lambda (_%g115569115571%_)
                                   (_%K115552%_
                                    _%g115569115571%_
                                    (##fx+ _%phi115555%_ '1)))
                                 _%$e115567%_)
                                (let ()
                                  (_%shift115550%_
                                   _%ctx115554%_
                                   '-1
                                   _%make-phi/down115549%_
                                   _%phi115555%_
                                   _%K115552%_))))))
                    (let () _%ctx115554%_)))))))
    (define gx#core-context-get
      (lambda (_%ctx115541%_ _%key115542%_)
        (hash-get
         (##unchecked-structure-ref _%ctx115541%_ '2 '#f '#f)
         _%key115542%_)))
    (define gx#core-context-put!
      (lambda (_%ctx115537%_ _%key115538%_ _%val115539%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx115537%_ '2 '#f '#f)
         _%key115538%_
         _%val115539%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx115523%_ _%key115524%_)
        (let _%lp115526%_ ((_%ctx115528%_ _%ctx115523%_))
          (let ((_%$e115530%_
                 (gx#core-context-get _%ctx115528%_ _%key115524%_)))
            (if _%$e115530%_
                (values _%$e115530%_)
                (let ((_%$e115533%_
                       (if (##structure-instance-of?
                            _%ctx115528%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx115528%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e115533%_
                      (_%lp115526%_ _%$e115533%_)
                      (let () '#f))))))))
    (define gx#core-context-bind!
      (lambda (_%ctx115512%_ _%key115513%_ _%val115514%_ _%rebind115515%_)
        (let ((_%$e115517%_ (gx#core-context-get _%ctx115512%_ _%key115513%_)))
          (if _%$e115517%_
              ((lambda (_%xval115520%_)
                 (gx#core-context-put!
                  _%ctx115512%_
                  _%key115513%_
                  (_%rebind115515%_ _%xval115520%_)))
               _%$e115517%_)
              (let ()
                (gx#core-context-put!
                 _%ctx115512%_
                 _%key115513%_
                 _%val115514%_))))))
    (define gx#core-context-top__%
      (lambda (_%ctx115487%_ _%stop?115488%_)
        (let _%lp115490%_ ((_%ctx115492%_ _%ctx115487%_))
          (if (_%stop?115488%_ _%ctx115492%_)
              (let () _%ctx115492%_)
              (if (##structure-instance-of? _%ctx115492%_ 'gx#phi-context::t)
                  (let ()
                    (_%lp115490%_
                     (##unchecked-structure-ref _%ctx115492%_ '3 '#f '#f)))
                  (let () '#f))))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx115501%_ (gx#current-expander-context))
               (_%stop?115503%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115501%_ _%stop?115503%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx115505%_)
        (let ((_%stop?115507%_ gx#top-context?))
          (gx#core-context-top__% _%ctx115505%_ _%stop?115507%_))))
    (define gx#core-context-top
      (lambda _g118331_
        (let ((_g118330_ (##length _g118331_)))
          (cond ((##fx= _g118330_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g118331_))
                ((##fx= _g118330_ 1)
                 (apply (lambda (_%ctx115505%_)
                          (gx#core-context-top__1 _%ctx115505%_))
                        _g118331_))
                ((##fx= _g118330_ 2)
                 (apply (lambda (_%ctx115509%_ _%stop?115510%_)
                          (gx#core-context-top__%
                           _%ctx115509%_
                           _%stop?115510%_))
                        _g118331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g118331_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx115472%_)
        (let _%lp115474%_ ((_%ctx115476%_ _%ctx115472%_))
          (if (##structure-instance-of? _%ctx115476%_ 'gx#phi-context::t)
              (_%lp115474%_
               (##unchecked-structure-ref _%ctx115476%_ '3 '#f '#f))
              _%ctx115476%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx115482%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx115482%_))))
    (define gx#core-context-root
      (lambda _g118333_
        (let ((_g118332_ (##length _g118333_)))
          (cond ((##fx= _g118332_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g118333_))
                ((##fx= _g118332_ 1)
                 (apply (lambda (_%ctx115484%_)
                          (gx#core-context-root__% _%ctx115484%_))
                        _g118333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g118333_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx115454%_ . _%ignore115455%_)
        (let ((_%$e115457%_ (gx#current-expander-allow-rebind?)))
          (if _%$e115457%_
              _%$e115457%_
              (if (##structure-instance-of? _%ctx115454%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx115454%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx115454%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx115464%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx115464%_))))
    (define gx#core-context-rebind?
      (lambda _g118335_
        (let ((_g118334_ (##length _g118335_)))
          (cond ((##fx= _g118334_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g118335_))
                ((##fx= _g118334_ 1)
                 (apply (lambda (_%ctx115466%_)
                          (gx#core-context-rebind?__% _%ctx115466%_))
                        _g118335_))
                ((##fx>= _g118334_ 1)
                 (apply gx#core-context-rebind?__% _g118335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g118335_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx115437%_)
        (let ((_%$e115439%_ (gx#core-context-top__1 _%ctx115437%_)))
          (if _%$e115439%_
              ((lambda (_%ctx115442%_)
                 (if (##structure-instance-of?
                      _%ctx115442%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx115442%_ '6 '#f '#f)
                     '#f))
               _%$e115439%_)
              (let () '#f)))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx115449%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx115449%_))))
    (define gx#core-context-namespace
      (lambda _g118337_
        (let ((_g118336_ (##length _g118337_)))
          (cond ((##fx= _g118336_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g118337_))
                ((##fx= _g118336_ 1)
                 (apply (lambda (_%ctx115451%_)
                          (gx#core-context-namespace__% _%ctx115451%_))
                        _g118337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g118337_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind115423%_ _%is?115424%_)
        (if (##structure-direct-instance-of?
             _%bind115423%_
             'gx#syntax-binding::t)
            (_%is?115424%_
             (##unchecked-structure-ref _%bind115423%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind115429%_)
        (let ((_%is?115431%_ gx#expander?))
          (gx#expander-binding?__% _%bind115429%_ _%is?115431%_))))
    (define gx#expander-binding?
      (lambda _g118339_
        (let ((_g118338_ (##length _g118339_)))
          (cond ((##fx= _g118338_ 1)
                 (apply (lambda (_%bind115429%_)
                          (gx#expander-binding?__0 _%bind115429%_))
                        _g118339_))
                ((##fx= _g118338_ 2)
                 (apply (lambda (_%bind115433%_ _%is?115434%_)
                          (gx#expander-binding?__%
                           _%bind115433%_
                           _%is?115434%_))
                        _g118339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g118339_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind115420%_)
        (gx#expander-binding?__% _%bind115420%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind115418%_)
        (gx#expander-binding?__% _%bind115418%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind115412%_)
        (letrec ((_%direct-special-form?115414%_
                  (lambda (_%obj115416%_)
                    (##structure-direct-instance-of?
                     _%obj115416%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind115412%_
           _%direct-special-form?115414%_))))
    (define gx#special-form-binding?
      (lambda (_%bind115410%_)
        (gx#expander-binding?__% _%bind115410%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind115401%_)
        (letrec ((_%feature?115403%_
                  (lambda (_%e115405%_)
                    (let ((_%$e115407%_
                           (##structure-instance-of?
                            _%e115405%_
                            'gx#feature-expander::t)))
                      (if _%$e115407%_
                          _%$e115407%_
                          (##structure-instance-of?
                           _%e115405%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind115401%_ _%feature?115403%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind115399%_)
        (gx#expander-binding?__% _%bind115399%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id115386%_ _%bound?115387%_)
        (if (gx#identifier? _%id115386%_)
            (_%bound?115387%_ (gx#resolve-identifier__0 _%id115386%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id115392%_)
        (let ((_%bound?115394%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id115392%_ _%bound?115394%_))))
    (define gx#core-bound-identifier?
      (lambda _g118341_
        (let ((_g118340_ (##length _g118341_)))
          (cond ((##fx= _g118340_ 1)
                 (apply (lambda (_%id115392%_)
                          (gx#core-bound-identifier?__0 _%id115392%_))
                        _g118341_))
                ((##fx= _g118340_ 2)
                 (apply (lambda (_%id115396%_ _%bound?115397%_)
                          (gx#core-bound-identifier?__%
                           _%id115396%_
                           _%bound?115397%_))
                        _g118341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g118341_))))))
    (define gx#core-identifier=?
      (lambda (_%x115376%_ _%y115377%_)
        (letrec ((_%y=?115379%_
                  (lambda (_%xid115383%_)
                    ((if (list? _%y115377%_) memq eq?)
                     _%xid115383%_
                     _%y115377%_))))
          (let ((_%bind115381%_ (gx#resolve-identifier__0 _%x115376%_)))
            (if (##structure-instance-of? _%bind115381%_ 'gx#binding::t)
                (_%y=?115379%_
                 (##unchecked-structure-ref _%bind115381%_ '1 '#f '#f))
                (_%y=?115379%_ (gx#stx-e _%x115376%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e115374%_)
        (if (interned-symbol? _%e115374%_)
            (string-index__0 (symbol->string _%e115374%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx115327%_ _%src115328%_ _%ctx115329%_ _%marks115330%_)
        (if (##structure? _%stx115327%_)
            (let ((_%$e115332%_ (gx#sealed-syntax-unwrap _%stx115327%_)))
              (if _%$e115332%_
                  (values _%$e115332%_)
                  (if (gx#identifier? _%stx115327%_)
                      (let ((_%id115336%_
                             (gx#stx-unwrap__% _%stx115327%_ _%marks115330%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id115336%_ '1 '#f '#f)
                         (let ((_%$e115338%_
                                (##unchecked-structure-ref
                                 _%id115336%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e115338%_ _%$e115338%_ _%src115328%_))
                         _%ctx115329%_
                         (##unchecked-structure-ref _%id115336%_ '3 '#f '#f)))
                      (let ()
                        (##structure
                         gx#syntax-quote::t
                         (gx#stx-e _%stx115327%_)
                         (let ((_%$e115342%_ (gx#stx-source _%stx115327%_)))
                           (if _%$e115342%_ _%$e115342%_ _%src115328%_))
                         _%ctx115329%_
                         (reverse _%marks115330%_))))))
            (##structure
             gx#syntax-quote::t
             _%stx115327%_
             _%src115328%_
             _%ctx115329%_
             (reverse _%marks115330%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx115348%_)
        (let* ((_%src115350%_ '#f)
               (_%ctx115352%_ (gx#current-expander-context))
               (_%marks115354%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115348%_
           _%src115350%_
           _%ctx115352%_
           _%marks115354%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx115356%_ _%src115357%_)
        (let* ((_%ctx115359%_ (gx#current-expander-context))
               (_%marks115361%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115356%_
           _%src115357%_
           _%ctx115359%_
           _%marks115361%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx115363%_ _%src115364%_ _%ctx115365%_)
        (let ((_%marks115367%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx115363%_
           _%src115364%_
           _%ctx115365%_
           _%marks115367%_))))
    (define gx#core-quote-syntax
      (lambda _g118343_
        (let ((_g118342_ (##length _g118343_)))
          (cond ((##fx= _g118342_ 1)
                 (apply (lambda (_%stx115348%_)
                          (gx#core-quote-syntax__0 _%stx115348%_))
                        _g118343_))
                ((##fx= _g118342_ 2)
                 (apply (lambda (_%stx115356%_ _%src115357%_)
                          (gx#core-quote-syntax__1
                           _%stx115356%_
                           _%src115357%_))
                        _g118343_))
                ((##fx= _g118342_ 3)
                 (apply (lambda (_%stx115363%_ _%src115364%_ _%ctx115365%_)
                          (gx#core-quote-syntax__2
                           _%stx115363%_
                           _%src115364%_
                           _%ctx115365%_))
                        _g118343_))
                ((##fx= _g118342_ 4)
                 (apply (lambda (_%stx115369%_
                                 _%src115370%_
                                 _%ctx115371%_
                                 _%marks115372%_)
                          (gx#core-quote-syntax__%
                           _%stx115369%_
                           _%src115370%_
                           _%ctx115371%_
                           _%marks115372%_))
                        _g118343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g118343_))))))
    (define gx#core-cons
      (lambda (_%hd115323%_ _%tl115324%_)
        (cons (gx#core-quote-syntax__0 _%hd115323%_) _%tl115324%_)))
    (define gx#core-list
      (lambda (_%hd115320%_ . _%rest115321%_)
        (cons (gx#core-quote-syntax__0 _%hd115320%_) _%rest115321%_)))
    (define gx#core-cons*
      (lambda (_%hd115317%_ . _%rest115318%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd115317%_) _%rest115318%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path115286%_ _%rel115287%_)
        (let ((_%path115304%_ (gx#stx-e _%stx-path115286%_))
              (_%reldir115305%_
               (let _%lp115289%_ ((_%relsrc115291%_
                                   (let ((_%$e115301%_
                                          (gx#stx-source _%stx-path115286%_)))
                                     (if _%$e115301%_
                                         _%$e115301%_
                                         _%rel115287%_))))
                 (if (##structure-instance-of? _%relsrc115291%_ 'gerbil#AST::t)
                     (let ()
                       (_%lp115289%_
                        (let ((_%$e115294%_ (gx#stx-source _%relsrc115291%_)))
                          (if _%$e115294%_
                              _%$e115294%_
                              (gx#stx-e _%relsrc115291%_)))))
                     (if (source-location-path? _%relsrc115291%_)
                         (let ()
                           (path-directory
                            (source-location-path _%relsrc115291%_)))
                         (if (string? _%relsrc115291%_)
                             (let () (path-directory _%relsrc115291%_))
                             (if (not (null? (gx#current-expander-path)))
                                 (let ()
                                   (path-directory
                                    (car (gx#current-expander-path))))
                                 (let () (current-directory)))))))))
          (path-expand _%path115304%_ (path-normalize _%reldir115305%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path115310%_)
        (let ((_%rel115312%_ '#f))
          (gx#core-resolve-path__% _%stx-path115310%_ _%rel115312%_))))
    (define gx#core-resolve-path
      (lambda _g118345_
        (let ((_g118344_ (##length _g118345_)))
          (cond ((##fx= _g118344_ 1)
                 (apply (lambda (_%stx-path115310%_)
                          (gx#core-resolve-path__0 _%stx-path115310%_))
                        _g118345_))
                ((##fx= _g118344_ 2)
                 (apply (lambda (_%stx-path115314%_ _%rel115315%_)
                          (gx#core-resolve-path__%
                           _%stx-path115314%_
                           _%rel115315%_))
                        _g118345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g118345_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr115242%_ _%ctx115243%_)
        (let* ((_%repr115244115251%_ _%repr115242%_)
               (_%E115246115255%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr115244115251%_
                         '([phi . subs]))
                  '#!void))
               (_%K115247115263%_
                (lambda (_%subs115258%_ _%phi115259%_)
                  (let ((_%subst115261%_
                         (if (not (null? _%subs115258%_))
                             (list->hash-table-eq _%subs115258%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst115261%_
                     _%ctx115243%_
                     _%phi115259%_
                     '#f)))))
          (if (##pair? _%repr115244115251%_)
              (let ((_%hd115248115266%_ (##car _%repr115244115251%_))
                    (_%tl115249115268%_ (##cdr _%repr115244115251%_)))
                (let* ((_%phi115271%_ _%hd115248115266%_)
                       (_%subs115273%_ _%tl115249115268%_))
                  (_%K115247115263%_ _%subs115273%_ _%phi115271%_)))
              (_%E115246115255%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr115278%_)
        (let ((_%ctx115280%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr115278%_ _%ctx115280%_))))
    (define gx#core-deserialize-mark
      (lambda _g118347_
        (let ((_g118346_ (##length _g118347_)))
          (cond ((##fx= _g118346_ 1)
                 (apply (lambda (_%repr115278%_)
                          (gx#core-deserialize-mark__0 _%repr115278%_))
                        _g118347_))
                ((##fx= _g118346_ 2)
                 (apply (lambda (_%repr115282%_ _%ctx115283%_)
                          (gx#core-deserialize-mark__%
                           _%repr115282%_
                           _%ctx115283%_))
                        _g118347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g118347_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx115239%_)
        (gx#stx-rewrap _%stx115239%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx115237%_)
        (gx#stx-unwrap__% _%stx115237%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx115207%_)
        (let* ((_%g115208115216%_ (gx#current-expander-marks))
               (_%else115210115224%_ (lambda () _%stx115207%_))
               (_%K115212115229%_
                (lambda (_%hd115227%_)
                  (gx#stx-apply-mark _%stx115207%_ _%hd115227%_))))
          (if (##pair? _%g115208115216%_)
              (let* ((_%hd115213115232%_ (##car _%g115208115216%_))
                     (_%hd115235%_ _%hd115213115232%_))
                (_%K115212115229%_ _%hd115235%_))
              (_%else115210115224%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx115192%_ _%E115193%_)
        (let ((_%bind115195%_ (gx#resolve-identifier__0 _%stx115192%_)))
          (if (##structure-direct-instance-of?
               _%bind115195%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind115195%_ '4 '#f '#f)
              (_%E115193%_ _%stx115192%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx115200%_)
        (let ((_%E115202%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx115200%_ _%E115202%_))))
    (define gx#syntax-local-e
      (lambda _g118349_
        (let ((_g118348_ (##length _g118349_)))
          (cond ((##fx= _g118348_ 1)
                 (apply (lambda (_%stx115200%_)
                          (gx#syntax-local-e__0 _%stx115200%_))
                        _g118349_))
                ((##fx= _g118348_ 2)
                 (apply (lambda (_%stx115204%_ _%E115205%_)
                          (gx#syntax-local-e__% _%stx115204%_ _%E115205%_))
                        _g118349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g118349_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx115176%_ _%E115177%_)
        (let ((_%e115179%_ (gx#syntax-local-e__% _%stx115176%_ _%E115177%_)))
          (if (##structure-instance-of? _%e115179%_ 'gx#expander::t)
              (##structure-ref _%e115179%_ '1 gx#expander::t '#f)
              _%e115179%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx115184%_)
        (let ((_%E115186%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx115184%_ _%E115186%_))))
    (define gx#syntax-local-value
      (lambda _g118351_
        (let ((_g118350_ (##length _g118351_)))
          (cond ((##fx= _g118350_ 1)
                 (apply (lambda (_%stx115184%_)
                          (gx#syntax-local-value__0 _%stx115184%_))
                        _g118351_))
                ((##fx= _g118350_ 2)
                 (apply (lambda (_%stx115188%_ _%E115189%_)
                          (gx#syntax-local-value__% _%stx115188%_ _%E115189%_))
                        _g118351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g118351_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx115173%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx115173%_)))))
