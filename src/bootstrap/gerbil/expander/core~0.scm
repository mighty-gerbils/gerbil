(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712093476)
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
      (make-class-type
       'gx#expander-context::t
       'expander-context
       (list)
       '(id table)
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#expander-context?
      (__make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _%$args117733%_
        (apply make-instance gx#expander-context::t _%$args117733%_)))
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
      (make-class-type
       'gx#root-context::t
       'root-context
       (list gx#expander-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#root-context? (__make-class-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _%$args117730%_
        (apply make-instance gx#root-context::t _%$args117730%_)))
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
      (make-class-type
       'gx#phi-context::t
       'phi-context
       (list gx#expander-context::t)
       '(super up down)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#phi-context? (__make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _%$args117727%_
        (apply make-instance gx#phi-context::t _%$args117727%_)))
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
      (make-class-type
       'gx#top-context::t
       'top-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-context? (__make-class-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _%$args117724%_
        (apply make-instance gx#top-context::t _%$args117724%_)))
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
      (make-class-type
       'gx#module-context::t
       'module-context
       (list gx#top-context::t)
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-context? (__make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _%$args117721%_
        (apply make-instance gx#module-context::t _%$args117721%_)))
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
      (make-class-type
       'gx#prelude-context::t
       'prelude-context
       (list gx#top-context::t)
       '(path import e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#prelude-context? (__make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _%$args117718%_
        (apply make-instance gx#prelude-context::t _%$args117718%_)))
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
      (make-class-type
       'gx#local-context::t
       'local-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-context? (__make-class-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _%$args117715%_
        (apply make-instance gx#local-context::t _%$args117715%_)))
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
      (lambda (_%self117688%_ _%id117689%_ _%super117690%_)
        (let ()
          (let ((_%self117693%_ _%self117688%_))
            (let ()
              (if (##fx< '3 (##structure-length _%self117693%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self117693%_
                     _%id117689%_
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117693%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117693%_
                     _%super117690%_
                     '3
                     '#f
                     '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self117693%_
                         '3
                         (##vector-length _%self117693%_))))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self117706%_ _%id117707%_)
        (let ((_%super117709%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self117706%_
           _%id117707%_
           _%super117709%_))))
    (define gx#phi-context:::init!
      (lambda _g117776_
        (let ((_g117775_ (##length _g117776_)))
          (cond ((##fx= _g117775_ 2)
                 (apply (lambda (_%self117706%_ _%id117707%_)
                          (gx#phi-context:::init!__0
                           _%self117706%_
                           _%id117707%_))
                        _g117776_))
                ((##fx= _g117775_ 3)
                 (apply (lambda (_%self117711%_ _%id117712%_ _%super117713%_)
                          (gx#phi-context:::init!__%
                           _%self117711%_
                           _%id117712%_
                           _%super117713%_))
                        _g117776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g117776_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117541%_ _%super117542%_)
        (let ()
          (let ((_%self117545%_ _%self117541%_))
            (let ()
              (if (##fx< '3 (##structure-length _%self117545%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self117545%_
                     (##gensym 'L)
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117545%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117545%_
                     _%super117542%_
                     '3
                     '#f
                     '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self117545%_
                         '3
                         (##vector-length _%self117545%_))))))))
    (define gx#local-context:::init!__0
      (lambda (_%self117558%_)
        (let ((_%super117560%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self117558%_ _%super117560%_))))
    (define gx#local-context:::init!
      (lambda _g117778_
        (let ((_g117777_ (##length _g117778_)))
          (cond ((##fx= _g117777_ 1)
                 (apply (lambda (_%self117558%_)
                          (gx#local-context:::init!__0 _%self117558%_))
                        _g117778_))
                ((##fx= _g117777_ 2)
                 (apply (lambda (_%self117562%_ _%super117563%_)
                          (gx#local-context:::init!__%
                           _%self117562%_
                           _%super117563%_))
                        _g117778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g117778_))))))
    (__bind-method! gx#local-context::t ':init! gx#local-context:::init! '#f)
    (define gx#binding::t
      (make-class-type
       'gx#binding::t
       'binding
       (list)
       '(id key phi)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args117415%_
        (apply make-instance gx#binding::t _%$args117415%_)))
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
      (make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args117412%_
        (apply make-instance gx#runtime-binding::t _%$args117412%_)))
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
      (make-class-type
       'gx#local-binding::t
       'local-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args117409%_
        (apply make-instance gx#local-binding::t _%$args117409%_)))
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
      (make-class-type
       'gx#top-binding::t
       'top-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args117406%_
        (apply make-instance gx#top-binding::t _%$args117406%_)))
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
      (make-class-type
       'gx#module-binding::t
       'module-binding
       (list gx#top-binding::t)
       '(context)
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args117403%_
        (apply make-instance gx#module-binding::t _%$args117403%_)))
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
      (make-class-type
       'gx#extern-binding::t
       'extern-binding
       (list gx#top-binding::t)
       '()
       (cons (cons 'struct: '#t) '((transparent: . #t)))
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args117400%_
        (apply make-instance gx#extern-binding::t _%$args117400%_)))
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
      (make-class-type
       'gx#syntax-binding::t
       'syntax-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args117397%_
        (apply make-instance gx#syntax-binding::t _%$args117397%_)))
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
      (make-class-type
       'gx#import-binding::t
       'import-binding
       (list gx#binding::t)
       '(e context weak?)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args117394%_
        (apply make-instance gx#import-binding::t _%$args117394%_)))
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
      (make-class-type
       'gx#alias-binding::t
       'alias-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((transparent: . #t))))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args117391%_
        (apply make-instance gx#alias-binding::t _%$args117391%_)))
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
      (make-class-type
       'gx#expander::t
       'expander
       (list)
       '(e)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args117388%_
        (apply make-instance gx#expander::t _%$args117388%_)))
    (define gx#expander-e (__make-class-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (__make-class-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (__make-class-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (__make-class-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (make-class-type
       'gx#core-expander::t
       'core-expander
       (list gx#expander::t)
       '(id compile-top)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#core-expander? (__make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _%$args117385%_
        (apply make-instance gx#core-expander::t _%$args117385%_)))
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
      (make-class-type
       'gx#expression-form::t
       'expression-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (__make-class-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _%$args117382%_
        (apply make-instance gx#expression-form::t _%$args117382%_)))
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
      (make-class-type
       'gx#special-form::t
       'special-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (__make-class-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _%$args117379%_
        (apply make-instance gx#special-form::t _%$args117379%_)))
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
      (make-class-type
       'gx#definition-form::t
       'definition-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (__make-class-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _%$args117376%_
        (apply make-instance gx#definition-form::t _%$args117376%_)))
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
      (make-class-type
       'gx#top-special-form::t
       'top-special-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form?
      (__make-class-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _%$args117373%_
        (apply make-instance gx#top-special-form::t _%$args117373%_)))
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
      (make-class-type
       'gx#module-special-form::t
       'module-special-form
       (list gx#top-special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (__make-class-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _%$args117370%_
        (apply make-instance gx#module-special-form::t _%$args117370%_)))
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
      (make-class-type
       'gx#feature-expander::t
       'feature-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander?
      (__make-class-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _%$args117367%_
        (apply make-instance gx#feature-expander::t _%$args117367%_)))
    (define gx#feature-expander-e
      (__make-class-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (__make-class-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (__make-class-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (make-class-type
       'gx#private-feature-expander::t
       'private-feature-expander
       (list gx#feature-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (__make-class-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _%$args117364%_
        (apply make-instance gx#private-feature-expander::t _%$args117364%_)))
    (define gx#private-feature-expander-e
      (__make-class-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (__make-class-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (__make-class-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (make-class-type
       'gx#reserved-expander::t
       'reserved-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (__make-class-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _%$args117361%_
        (apply make-instance gx#reserved-expander::t _%$args117361%_)))
    (define gx#reserved-expander-e
      (__make-class-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (__make-class-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (__make-class-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (make-class-type
       'gx#macro-expander::t
       'macro-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (__make-class-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _%$args117358%_
        (apply make-instance gx#macro-expander::t _%$args117358%_)))
    (define gx#macro-expander-e
      (__make-class-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (__make-class-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (__make-class-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (make-class-type
       'gx#rename-macro-expander::t
       'rename-macro-expander
       (list gx#macro-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (__make-class-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _%$args117355%_
        (apply make-instance gx#rename-macro-expander::t _%$args117355%_)))
    (define gx#rename-macro-expander-e
      (__make-class-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (__make-class-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (__make-class-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (make-class-type
       'gx#user-expander::t
       'user-expander
       (list gx#macro-expander::t)
       '(context phi)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#user-expander? (__make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _%$args117352%_
        (apply make-instance gx#user-expander::t _%$args117352%_)))
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
      (make-class-type
       'gx#expander-mark::t
       'expander-mark
       (list)
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander-mark? (__make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _%$args117349%_
        (apply make-instance gx#expander-mark::t _%$args117349%_)))
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
      (lambda (_%ctx117333%_
               _%message117334%_
               _%stx117335%_
               .
               _%details117336%_)
        (let ((_%ctx117347%_
               (let ((_%$e117338%_ _%ctx117333%_))
                 (if _%$e117338%_
                     _%$e117338%_
                     (let ((_%$e117341%_ (gx#core-context-top__0)))
                       (if _%$e117341%_
                           ((lambda (_%ctx117344%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117344%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117341%_)
                           (let () '#f)))))))
          (raise (make-syntax-error
                  _%message117334%_
                  (cons _%stx117335%_ _%details117336%_)
                  _%ctx117347%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117320%_ _%expression?117321%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117320%_ _%expression?117321%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117326%_)
        (let ((_%expression?117328%_ '#f))
          (gx#eval-syntax__% _%stx117326%_ _%expression?117328%_))))
    (define gx#eval-syntax
      (lambda _g117780_
        (let ((_g117779_ (##length _g117780_)))
          (cond ((##fx= _g117779_ 1)
                 (apply (lambda (_%stx117326%_)
                          (gx#eval-syntax__0 _%stx117326%_))
                        _g117780_))
                ((##fx= _g117779_ 2)
                 (apply (lambda (_%stx117330%_ _%expression?117331%_)
                          (gx#eval-syntax__%
                           _%stx117330%_
                           _%expression?117331%_))
                        _g117780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g117780_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117317%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117317%_))))
    (define gx#core-expand__%
      (lambda (_%stx117304%_ _%expression?117305%_)
        (if _%expression?117305%_
            (gx#core-expand-expression _%stx117304%_)
            (gx#core-expand-top _%stx117304%_))))
    (define gx#core-expand__0
      (lambda (_%stx117310%_)
        (let ((_%expression?117312%_ '#f))
          (gx#core-expand__% _%stx117310%_ _%expression?117312%_))))
    (define gx#core-expand
      (lambda _g117782_
        (let ((_g117781_ (##length _g117782_)))
          (cond ((##fx= _g117781_ 1)
                 (apply (lambda (_%stx117310%_)
                          (gx#core-expand__0 _%stx117310%_))
                        _g117782_))
                ((##fx= _g117781_ 2)
                 (apply (lambda (_%stx117314%_ _%expression?117315%_)
                          (gx#core-expand__%
                           _%stx117314%_
                           _%expression?117315%_))
                        _g117782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g117782_))))))
    (define gx#core-expand-top
      (lambda (_%stx117271%_)
        (let* ((_%stx117273%_ (gx#core-expand*__0 _%stx117271%_))
               (_%e117274117281%_ _%stx117273%_)
               (_%E117276117285%_
                (lambda () (gx#core-expand-expression _%stx117273%_)))
               (_%E117275117299%_
                (lambda ()
                  (if (gx#stx-pair? _%e117274117281%_)
                      (let ((_%e117277117289%_
                             (gx#syntax-e _%e117274117281%_)))
                        (let ((_%hd117278117292%_ (##car _%e117277117289%_))
                              (_%tl117279117294%_ (##cdr _%e117277117289%_)))
                          (let ((_%form117297%_ _%hd117278117292%_))
                            (if (gx#core-bound-identifier?__0 _%form117297%_)
                                _%stx117273%_
                                (_%E117276117285%_)))))
                      (_%E117276117285%_)))))
          (_%E117275117299%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117203%_)
        (letrec ((_%sealed-expression?117205%_
                  (lambda (_%hd117241%_)
                    (if (gx#sealed-syntax? _%hd117241%_)
                        (let* ((_%e117242117249%_ _%hd117241%_)
                               (_%E117244117253%_ (lambda () '#f))
                               (_%E117243117267%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117242117249%_)
                                      (let ((_%e117245117257%_
                                             (gx#syntax-e _%e117242117249%_)))
                                        (let ((_%hd117246117260%_
                                               (##car _%e117245117257%_))
                                              (_%tl117247117262%_
                                               (##cdr _%e117245117257%_)))
                                          (let ((_%form117265%_
                                                 _%hd117246117260%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117265%_
                                                 gx#expression-form-binding?)
                                                (_%E117244117253%_)))))
                                      (_%E117244117253%_)))))
                          (_%E117243117267%_))
                        '#f)))
                 (_%illegal-expression117206%_
                  (lambda (_%hd117238%_ . _%_117239%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117203%_
                     _%hd117238%_)))
                 (_%expand-e117207%_
                  (lambda (_%form117230%_ _%hd117231%_)
                    (let ((_%bind117233%_
                           (if (##structure-instance-of?
                                _%form117230%_
                                'gx#binding::t)
                               _%form117230%_
                               (gx#resolve-identifier__0 _%form117230%_))))
                      (if (gx#core-expander-binding? _%bind117233%_)
                          (let ()
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _%bind117233%_
                              '4
                              '#f
                              '#f)
                             (gx#stx-wrap-source
                              _%hd117231%_
                              (gx#stx-source _%stx117203%_))))
                          (if (##structure-direct-instance-of?
                               _%bind117233%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-expand-expression
                                 (gx#core-apply-expander__0
                                  (##unchecked-structure-ref
                                   _%bind117233%_
                                   '4
                                   '#f
                                   '#f)
                                  (gx#stx-wrap-source
                                   _%hd117231%_
                                   (gx#stx-source _%stx117203%_)))))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; missing expander"
                                 _%stx117203%_
                                 _%form117230%_))))))))
          (let ((_%hd117209%_ (gx#core-expand-head _%stx117203%_)))
            (if (_%sealed-expression?117205%_ _%hd117209%_)
                (let () _%hd117209%_)
                (if (gx#stx-pair? _%hd117209%_)
                    (let ()
                      (let* ((_%form117213%_ (gx#stx-car _%hd117209%_))
                             (_%bind117215%_
                              (if (gx#identifier? _%form117213%_)
                                  (gx#resolve-identifier__0 _%form117213%_)
                                  '#f)))
                        (if (or (not _%bind117215%_)
                                (not (gx#core-expander-binding?
                                      _%bind117215%_)))
                            (let ()
                              (_%expand-e117207%_
                               '%%app
                               (cons '%%app _%hd117209%_)))
                            (if (eq? (##unchecked-structure-ref
                                      _%bind117215%_
                                      '1
                                      '#f
                                      '#f)
                                     '%#begin)
                                (let ()
                                  (gx#core-expand-block*
                                   _%hd117209%_
                                   _%illegal-expression117206%_))
                                (if (gx#expression-form-binding?
                                     _%bind117215%_)
                                    (let ()
                                      (_%expand-e117207%_
                                       _%bind117215%_
                                       _%hd117209%_))
                                    (if (gx#direct-special-form-binding?
                                         _%bind117215%_)
                                        (let ()
                                          (gx#core-expand-expression
                                           (_%expand-e117207%_
                                            _%bind117215%_
                                            _%hd117209%_)))
                                        (let ()
                                          (_%illegal-expression117206%_
                                           _%hd117209%_))))))))
                    (if (gx#core-bound-identifier?__0 _%hd117209%_)
                        (let () (_%illegal-expression117206%_ _%hd117209%_))
                        (if (gx#identifier? _%hd117209%_)
                            (let ()
                              (_%expand-e117207%_
                               '%%ref
                               (cons '%%ref (cons _%hd117209%_ '()))))
                            (if (gx#stx-datum? _%hd117209%_)
                                (let ()
                                  (_%expand-e117207%_
                                   '%#quote
                                   (cons '%#quote (cons _%hd117209%_ '()))))
                                (let ()
                                  (_%illegal-expression117206%_
                                   _%hd117209%_)))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117198%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117201%_ (gx#core-expand-expression _%stx117198%_)))
             (values _%stx117201%_ (gx#eval-syntax* _%stx117201%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx117179%_ _%stop?117180%_)
        (let _%lp117182%_ ((_%stx117184%_ _%stx117179%_))
          (if (_%stop?117180%_ _%stx117184%_)
              _%stx117184%_
              (let ((_%rstx117186%_ (gx#core-expand1 _%stx117184%_)))
                (if (eq? _%stx117184%_ _%rstx117186%_)
                    _%stx117184%_
                    (_%lp117182%_ _%rstx117186%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx117191%_)
        (let ((_%stop?117193%_ false))
          (gx#core-expand*__% _%stx117191%_ _%stop?117193%_))))
    (define gx#core-expand*
      (lambda _g117784_
        (let ((_g117783_ (##length _g117784_)))
          (cond ((##fx= _g117783_ 1)
                 (apply (lambda (_%stx117191%_)
                          (gx#core-expand*__0 _%stx117191%_))
                        _g117784_))
                ((##fx= _g117783_ 2)
                 (apply (lambda (_%stx117195%_ _%stop?117196%_)
                          (gx#core-expand*__% _%stx117195%_ _%stop?117196%_))
                        _g117784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g117784_))))))
    (define gx#core-expand1
      (lambda (_%stx117131%_)
        (letrec ((_%step117133%_
                  (lambda (_%hd117170%_)
                    (let ((_%bind117172%_
                           (gx#resolve-identifier__0 _%hd117170%_)))
                      (if (##structure-instance-of?
                           _%bind117172%_
                           'gx#runtime-binding::t)
                          (let () _%stx117131%_)
                          (if (##structure-direct-instance-of?
                               _%bind117172%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-apply-expander__0
                                 (##unchecked-structure-ref
                                  _%bind117172%_
                                  '4
                                  '#f
                                  '#f)
                                 _%stx117131%_))
                              (if (not _%bind117172%_)
                                  (let () _%stx117131%_)
                                  (let ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; no binding for head"
                                     _%stx117131%_)))))))))
          (let* ((_%e117134117142%_ _%stx117131%_)
                 (_%E117140117146%_ (lambda () _%stx117131%_))
                 (_%E117136117152%_
                  (lambda ()
                    (let ((_%hd117150%_ _%e117134117142%_))
                      (if (gx#identifier? _%hd117150%_)
                          (_%step117133%_ _%hd117150%_)
                          (_%E117140117146%_)))))
                 (_%E117135117166%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117134117142%_)
                        (let ((_%e117137117156%_
                               (gx#syntax-e _%e117134117142%_)))
                          (let ((_%hd117138117159%_ (##car _%e117137117156%_))
                                (_%tl117139117161%_ (##cdr _%e117137117156%_)))
                            (let ((_%hd117164%_ _%hd117138117159%_))
                              (if (gx#identifier? _%hd117164%_)
                                  (_%step117133%_ _%hd117164%_)
                                  (_%E117136117152%_)))))
                        (_%E117136117152%_)))))
            (_%E117135117166%_)))))
    (define gx#core-expand-head
      (lambda (_%stx117097%_)
        (letrec ((_%stop?117099%_
                  (lambda (_%stx117101%_)
                    (let* ((_%e117102117109%_ _%stx117101%_)
                           (_%E117104117113%_ (lambda () '#f))
                           (_%E117103117127%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117102117109%_)
                                  (let ((_%e117105117117%_
                                         (gx#syntax-e _%e117102117109%_)))
                                    (let ((_%hd117106117120%_
                                           (##car _%e117105117117%_))
                                          (_%tl117107117122%_
                                           (##cdr _%e117105117117%_)))
                                      (let ((_%hd117125%_ _%hd117106117120%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd117125%_)
                                            (_%E117104117113%_)))))
                                  (_%E117104117113%_)))))
                      (_%E117103117127%_)))))
          (gx#core-expand*__% _%stx117097%_ _%stop?117099%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx116903%_
               _%expand-special116904%_
               _%begin-form116905%_
               _%expand-e116906%_)
        (letrec ((_%expand-splice116908%_
                  (lambda (_%hd117071%_
                           _%body117072%_
                           _%rest117073%_
                           _%r117074%_)
                    (if (gx#stx-list? _%body117072%_)
                        (_%K116912%_
                         (gx#stx-foldr cons _%rest117073%_ _%body117072%_)
                         _%r117074%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx116903%_
                         _%hd117071%_))))
                 (_%expand-cond-expand116909%_
                  (lambda (_%hd117067%_ _%rest117068%_ _%r117069%_)
                    (_%K116912%_
                     (cons (gx#core-expand-cond-expand% _%hd117067%_)
                           _%rest117068%_)
                     _%r117069%_)))
                 (_%expand-include116910%_
                  (lambda (_%hd117016%_ _%rest117017%_ _%r117018%_)
                    (let* ((_%e117019117029%_ _%hd117016%_)
                           (_%E117021117033%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e117019117029%_)))
                           (_%E117020117063%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117019117029%_)
                                  (let ((_%e117022117037%_
                                         (gx#syntax-e _%e117019117029%_)))
                                    (let ((_%hd117023117040%_
                                           (##car _%e117022117037%_))
                                          (_%tl117024117042%_
                                           (##cdr _%e117022117037%_)))
                                      (if (gx#stx-pair? _%tl117024117042%_)
                                          (let ((_%e117025117045%_
                                                 (gx#syntax-e
                                                  _%tl117024117042%_)))
                                            (let ((_%hd117026117048%_
                                                   (##car _%e117025117045%_))
                                                  (_%tl117027117050%_
                                                   (##cdr _%e117025117045%_)))
                                              (let ((_%path117053%_
                                                     _%hd117026117048%_))
                                                (if (gx#stx-null?
                                                     _%tl117027117050%_)
                                                    (if (gx#stx-string?
                                                         _%path117053%_)
                                                        (let* ((_%rpath117055%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path117053%_
                         (gx#stx-source _%hd117016%_)))
                       (_%block117057%_
                        (gx#core-expand-include%__%
                         _%hd117016%_
                         _%rpath117055%_))
                       (_%rbody117060%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block117057%_
                            _%expand-special116904%_
                            '#f
                            _%expand-e116906%_))
                         gx#current-expander-path
                         (cons _%rpath117055%_ (gx#current-expander-path)))))
                  (_%K116912%_
                   _%rest117017%_
                   (__foldr1 cons _%r117018%_ _%rbody117060%_)))
                (_%E117021117033%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E117021117033%_)))))
                                          (_%E117021117033%_))))
                                  (_%E117021117033%_)))))
                      (_%E117020117063%_))))
                 (_%expand-expression116911%_
                  (lambda (_%hd117012%_ _%rest117013%_ _%r117014%_)
                    (_%K116912%_
                     _%rest117013%_
                     (cons (_%expand-e116906%_ _%hd117012%_) _%r117014%_))))
                 (_%K116912%_
                  (lambda (_%rest116942%_ _%r116943%_)
                    (let* ((_%e116944116951%_ _%rest116942%_)
                           (_%E116946116955%_
                            (lambda ()
                              (if _%begin-form116905%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form116905%_
                                    (reverse _%r116943%_))
                                   (gx#stx-source _%stx116903%_))
                                  _%r116943%_)))
                           (_%E116945117008%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116944116951%_)
                                  (let ((_%e116947116959%_
                                         (gx#syntax-e _%e116944116951%_)))
                                    (let ((_%hd116948116962%_
                                           (##car _%e116947116959%_))
                                          (_%tl116949116964%_
                                           (##cdr _%e116947116959%_)))
                                      (let* ((_%hd116967%_ _%hd116948116962%_)
                                             (_%rest116969%_
                                              _%tl116949116964%_))
                                        (if '#t
                                            (let* ((_%hd116971%_
                                                    (gx#core-expand-head
                                                     _%hd116967%_))
                                                   (_%e116972116979%_
                                                    _%hd116971%_)
                                                   (_%E116974116983%_
                                                    (lambda ()
                                                      (_%expand-expression116911%_
                                                       _%hd116971%_
                                                       _%rest116969%_
                                                       _%r116943%_)))
                                                   (_%E116973117004%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116972116979%_)
                                                          (let ((_%e116975116987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116972116979%_)))
                    (let ((_%hd116976116990%_ (##car _%e116975116987%_))
                          (_%tl116977116992%_ (##cdr _%e116975116987%_)))
                      (let* ((_%form116995%_ _%hd116976116990%_)
                             (_%body116997%_ _%tl116977116992%_))
                        (if '#t
                            (let ((_%bind116999%_
                                   (if (gx#identifier? _%form116995%_)
                                       (gx#resolve-identifier__0
                                        _%form116995%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind116999%_)
                                  (let ((_%$e117001%_
                                         (##unchecked-structure-ref
                                          _%bind116999%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e117001%_)
                                        (_%expand-splice116908%_
                                         _%hd116971%_
                                         _%body116997%_
                                         _%rest116969%_
                                         _%r116943%_)
                                        (if (eq? '%#cond-expand _%$e117001%_)
                                            (_%expand-cond-expand116909%_
                                             _%hd116971%_
                                             _%rest116969%_
                                             _%r116943%_)
                                            (if (eq? '%#include _%$e117001%_)
                                                (_%expand-include116910%_
                                                 _%hd116971%_
                                                 _%rest116969%_
                                                 _%r116943%_)
                                                (_%expand-special116904%_
                                                 _%hd116971%_
                                                 _%K116912%_
                                                 _%rest116969%_
                                                 _%r116943%_)))))
                                  (_%expand-expression116911%_
                                   _%hd116971%_
                                   _%rest116969%_
                                   _%r116943%_)))
                            (_%E116974116983%_)))))
                  (_%E116974116983%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116973117004%_))
                                            (_%E116946116955%_)))))
                                  (_%E116946116955%_)))))
                      (_%E116945117008%_)))))
          (let* ((_%e116913116920%_ _%stx116903%_)
                 (_%E116915116924%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116913116920%_)))
                 (_%E116914116938%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116913116920%_)
                        (let ((_%e116916116928%_
                               (gx#syntax-e _%e116913116920%_)))
                          (let ((_%hd116917116931%_ (##car _%e116916116928%_))
                                (_%tl116918116933%_ (##cdr _%e116916116928%_)))
                            (let ((_%body116936%_ _%tl116918116933%_))
                              (if (gx#stx-list? _%body116936%_)
                                  (_%K116912%_ _%body116936%_ '())
                                  (_%E116915116924%_)))))
                        (_%E116915116924%_)))))
            (_%E116914116938%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx117079%_ _%expand-special117080%_)
        (let* ((_%begin-form117082%_ '%#begin)
               (_%expand-e117084%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117079%_
           _%expand-special117080%_
           _%begin-form117082%_
           _%expand-e117084%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx117086%_ _%expand-special117087%_ _%begin-form117088%_)
        (let ((_%expand-e117090%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117086%_
           _%expand-special117087%_
           _%begin-form117088%_
           _%expand-e117090%_))))
    (define gx#core-expand-block
      (lambda _g117786_
        (let ((_g117785_ (##length _g117786_)))
          (cond ((##fx= _g117785_ 2)
                 (apply (lambda (_%stx117079%_ _%expand-special117080%_)
                          (gx#core-expand-block__0
                           _%stx117079%_
                           _%expand-special117080%_))
                        _g117786_))
                ((##fx= _g117785_ 3)
                 (apply (lambda (_%stx117086%_
                                 _%expand-special117087%_
                                 _%begin-form117088%_)
                          (gx#core-expand-block__1
                           _%stx117086%_
                           _%expand-special117087%_
                           _%begin-form117088%_))
                        _g117786_))
                ((##fx= _g117785_ 4)
                 (apply (lambda (_%stx117092%_
                                 _%expand-special117093%_
                                 _%begin-form117094%_
                                 _%expand-e117095%_)
                          (gx#core-expand-block__%
                           _%stx117092%_
                           _%expand-special117093%_
                           _%begin-form117094%_
                           _%expand-e117095%_))
                        _g117786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g117786_))))))
    (define gx#core-expand-block*
      (lambda (_%stx116851%_ _%expand-special116852%_)
        (let* ((_%g116853116864%_
                (gx#core-expand-block__1
                 _%stx116851%_
                 _%expand-special116852%_
                 '#f))
               (_%E116857116868%_
                (lambda ()
                  (error '"No clause matching"
                         _%g116853116864%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K116862116899%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx116851%_)))
                (_%K116859116885%_ (lambda (_%expr116883%_) _%expr116883%_))
                (_%K116858116874%_
                 (lambda (_%body116872%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body116872%_))
                    (gx#stx-source _%stx116851%_)))))
            (let ((_%try-match116855116895%_
                   (lambda ()
                     (if (##pair? _%g116853116864%_)
                         (let ((_%tl116861116890%_ (##cdr _%g116853116864%_))
                               (_%hd116860116888%_ (##car _%g116853116864%_)))
                           (if (##null? _%tl116861116890%_)
                               (let ((_%expr116893%_ _%hd116860116888%_))
                                 (_%K116859116885%_ _%expr116893%_))
                               (let ((_%body116877%_ _%g116853116864%_))
                                 (_%K116858116874%_ _%body116877%_))))
                         (let ((_%body116877%_ _%g116853116864%_))
                           (_%K116858116874%_ _%body116877%_))))))
              (if (##null? _%g116853116864%_)
                  (_%K116862116899%_)
                  (_%try-match116855116895%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx116676%_)
        (letrec ((_%satisfied?116678%_
                  (lambda (_%condition116779%_)
                    (let* ((_%e116780116795%_ _%condition116779%_)
                           (_%E116790116799%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116780116795%_)))
                           (_%E116783116818%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116780116795%_)
                                  (let ((_%e116791116803%_
                                         (gx#syntax-e _%e116780116795%_)))
                                    (let ((_%hd116792116806%_
                                           (##car _%e116791116803%_))
                                          (_%tl116793116808%_
                                           (##cdr _%e116791116803%_)))
                                      (let* ((_%combinator116811%_
                                              _%hd116792116806%_)
                                             (_%body116813%_
                                              _%tl116793116808%_))
                                        (if (gx#stx-list? _%body116813%_)
                                            (let ((_%$e116815%_
                                                   (gx#stx-e
                                                    _%combinator116811%_)))
                                              (if (eq? 'not _%$e116815%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?116678%_
                                                        _%body116813%_))
                                                  (if (eq? 'and _%$e116815%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?116678%_
                                                       _%body116813%_)
                                                      (if (eq? 'or
                                                               _%$e116815%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?116678%_
                                                           _%body116813%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e116815%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body116813%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx116676%_
                       _%combinator116811%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E116790116799%_)))))
                                  (_%E116790116799%_))))
                           (_%E116782116841%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116780116795%_)
                                  (let ((_%e116784116822%_
                                         (gx#syntax-e _%e116780116795%_)))
                                    (let ((_%hd116785116825%_
                                           (##car _%e116784116822%_))
                                          (_%tl116786116827%_
                                           (##cdr _%e116784116822%_)))
                                      (if (and (gx#identifier?
                                                _%hd116785116825%_)
                                               (gx#core-identifier=?
                                                _%hd116785116825%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl116786116827%_)
                                              (let ((_%e116787116830%_
                                                     (gx#syntax-e
                                                      _%tl116786116827%_)))
                                                (let ((_%hd116788116833%_
                                                       (##car _%e116787116830%_))
                                                      (_%tl116789116835%_
                                                       (##cdr _%e116787116830%_)))
                                                  (let ((_%expr116838%_
                                                         _%hd116788116833%_))
                                                    (if (gx#stx-null?
                                                         _%tl116789116835%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr116838%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E116783116818%_))
                (_%E116783116818%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116783116818%_))
                                          (_%E116783116818%_))))
                                  (_%E116783116818%_))))
                           (_%E116781116847%_
                            (lambda ()
                              (let ((_%id116845%_ _%e116780116795%_))
                                (if (gx#identifier? _%id116845%_)
                                    (gx#core-bound-identifier?__%
                                     _%id116845%_
                                     gx#feature-binding?)
                                    (_%E116782116841%_))))))
                      (_%E116781116847%_))))
                 (_%loop116679%_
                  (lambda (_%rest116709%_)
                    (let* ((_%e116710116718%_ _%rest116709%_)
                           (_%E116716116722%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116710116718%_)))
                           (_%E116712116726%_
                            (lambda ()
                              (if (gx#stx-null? _%e116710116718%_)
                                  (if '#t '() (_%E116716116722%_))
                                  (_%E116716116722%_))))
                           (_%E116711116775%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116710116718%_)
                                  (let ((_%e116713116730%_
                                         (gx#syntax-e _%e116710116718%_)))
                                    (let ((_%hd116714116733%_
                                           (##car _%e116713116730%_))
                                          (_%tl116715116735%_
                                           (##cdr _%e116713116730%_)))
                                      (let* ((_%hd116738%_ _%hd116714116733%_)
                                             (_%rest116740%_
                                              _%tl116715116735%_))
                                        (if '#t
                                            (let* ((_%e116741116748%_
                                                    _%hd116738%_)
                                                   (_%E116743116752%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e116741116748%_)))
                                                   (_%E116742116771%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116741116748%_)
                                                          (let ((_%e116744116756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116741116748%_)))
                    (let ((_%hd116745116759%_ (##car _%e116744116756%_))
                          (_%tl116746116761%_ (##cdr _%e116744116756%_)))
                      (let* ((_%condition116764%_ _%hd116745116759%_)
                             (_%body116766%_ _%tl116746116761%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition116764%_ 'else)
                                (let ()
                                  (if (gx#stx-null? _%rest116740%_)
                                      _%body116766%_
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; clauses after else"
                                       _%stx116676%_
                                       _%hd116738%_)))
                                (if (_%satisfied?116678%_ _%condition116764%_)
                                    (let () _%body116766%_)
                                    (let () (_%loop116679%_ _%rest116740%_))))
                            (_%E116743116752%_)))))
                  (_%E116743116752%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116742116771%_))
                                            (_%E116712116726%_)))))
                                  (_%E116712116726%_)))))
                      (_%E116711116775%_)))))
          (let* ((_%e116680116687%_ _%stx116676%_)
                 (_%E116682116691%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116680116687%_)))
                 (_%E116681116705%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116680116687%_)
                        (let ((_%e116683116695%_
                               (gx#syntax-e _%e116680116687%_)))
                          (let ((_%hd116684116698%_ (##car _%e116683116695%_))
                                (_%tl116685116700%_ (##cdr _%e116683116695%_)))
                            (let ((_%clauses116703%_ _%tl116685116700%_))
                              (if (gx#stx-list? _%clauses116703%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop116679%_ _%clauses116703%_))
                                  (_%E116682116691%_)))))
                        (_%E116682116691%_)))))
            (_%E116681116705%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx116619%_ _%rpath116620%_)
        (let* ((_%e116621116631%_ _%stx116619%_)
               (_%E116623116635%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e116621116631%_)))
               (_%E116622116662%_
                (lambda ()
                  (if (gx#stx-pair? _%e116621116631%_)
                      (let ((_%e116624116639%_
                             (gx#syntax-e _%e116621116631%_)))
                        (let ((_%hd116625116642%_ (##car _%e116624116639%_))
                              (_%tl116626116644%_ (##cdr _%e116624116639%_)))
                          (if (gx#stx-pair? _%tl116626116644%_)
                              (let ((_%e116627116647%_
                                     (gx#syntax-e _%tl116626116644%_)))
                                (let ((_%hd116628116650%_
                                       (##car _%e116627116647%_))
                                      (_%tl116629116652%_
                                       (##cdr _%e116627116647%_)))
                                  (let ((_%path116655%_ _%hd116628116650%_))
                                    (if (gx#stx-null? _%tl116629116652%_)
                                        (if (gx#stx-string? _%path116655%_)
                                            (let ((_%rpath116660%_
                                                   (let ((_%$e116657%_
                                                          _%rpath116620%_))
                                                     (if _%$e116657%_
                                                         _%$e116657%_
                                                         (gx#core-resolve-path__%
                                                          _%path116655%_
                                                          (gx#stx-source
                                                           _%stx116619%_))))))
                                              (if (member _%rpath116660%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx116619%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath116660%_))
                                                    (gx#stx-source
                                                     _%stx116619%_)))))
                                            (_%E116623116635%_))
                                        (_%E116623116635%_)))))
                              (_%E116623116635%_))))
                      (_%E116623116635%_)))))
          (_%E116622116662%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx116669%_)
        (let ((_%rpath116671%_ '#f))
          (gx#core-expand-include%__% _%stx116669%_ _%rpath116671%_))))
    (define gx#core-expand-include%
      (lambda _g117788_
        (let ((_g117787_ (##length _g117788_)))
          (cond ((##fx= _g117787_ 1)
                 (apply (lambda (_%stx116669%_)
                          (gx#core-expand-include%__0 _%stx116669%_))
                        _g117788_))
                ((##fx= _g117787_ 2)
                 (apply (lambda (_%stx116673%_ _%rpath116674%_)
                          (gx#core-expand-include%__%
                           _%stx116673%_
                           _%rpath116674%_))
                        _g117788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g117788_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K116585%_ _%stx116586%_ _%method116587%_)
        (if (procedure? _%K116585%_)
            (let ()
              (let ((_%$e116590%_ (gx#stx-source _%stx116586%_)))
                (if _%$e116590%_
                    ((lambda (_%g116592116594%_)
                       (gx#stx-wrap-source
                        (_%K116585%_ _%stx116586%_)
                        _%g116592116594%_))
                     _%$e116590%_)
                    (let () (_%K116585%_ _%stx116586%_)))))
            (let ((_%$e116598%_
                   (bound-method-ref _%K116585%_ _%method116587%_)))
              (if _%$e116598%_
                  ((lambda (_%g116600116602%_)
                     (gx#core-apply-expander__%
                      _%g116600116602%_
                      _%stx116586%_
                      _%method116587%_))
                   _%$e116598%_)
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; no expander method"
                     _%stx116586%_
                     _%method116587%_)))))))
    (define gx#core-apply-expander__0
      (lambda (_%K116609%_ _%stx116610%_)
        (let ((_%method116612%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K116609%_
           _%stx116610%_
           _%method116612%_))))
    (define gx#core-apply-expander
      (lambda _g117790_
        (let ((_g117789_ (##length _g117790_)))
          (cond ((##fx= _g117789_ 2)
                 (apply (lambda (_%K116609%_ _%stx116610%_)
                          (gx#core-apply-expander__0
                           _%K116609%_
                           _%stx116610%_))
                        _g117790_))
                ((##fx= _g117789_ 3)
                 (apply (lambda (_%K116614%_ _%stx116615%_ _%method116616%_)
                          (gx#core-apply-expander__%
                           _%K116614%_
                           _%stx116615%_
                           _%method116616%_))
                        _g117790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g117790_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116570%_ _%stx116571%_)
        (let ()
          (let ((_%self116574%_ _%self116570%_))
            (let ()
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; bottom method for apply-macro-expander"
               _%stx116571%_))))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116412%_ _%stx116413%_)
        (let ()
          (let ((_%self116416%_ _%self116412%_))
            (let ()
              (let* ((_%self116425116431%_ _%self116416%_)
                     (_%E116427116435%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116425116431%_
                               '((macro-expander K)))
                        '#!void))
                     (_%K116428116440%_
                      (lambda (_%K116438%_)
                        (gx#core-apply-expander__0
                         _%K116438%_
                         _%stx116413%_))))
                (if '#t
                    (let* ((_%e116429116443%_
                            (##unchecked-structure-ref
                             _%self116425116431%_
                             '1
                             '#f
                             '#f))
                           (_%K116446%_ _%e116429116443%_))
                      (_%K116428116440%_ _%K116446%_))
                    (_%E116427116435%_))))))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116254%_ _%stx116255%_)
        (let ()
          (let ((_%self116258%_ _%self116254%_))
            (let ()
              (if (gx#sealed-syntax? _%stx116255%_)
                  _%stx116255%_
                  (let* ((_%self116267116273%_ _%self116258%_)
                         (_%E116269116277%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%self116267116273%_
                                   '((core-expander K)))
                            '#!void))
                         (_%K116270116282%_
                          (lambda (_%K116280%_)
                            (gx#core-apply-expander__0
                             _%K116280%_
                             _%stx116255%_))))
                    (if '#t
                        (let* ((_%e116271116285%_
                                (##unchecked-structure-ref
                                 _%self116267116273%_
                                 '1
                                 '#f
                                 '#f))
                               (_%K116288%_ _%e116271116285%_))
                          (_%K116270116282%_ _%K116288%_))
                        (_%E116269116277%_)))))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116105%_ _%stx116106%_ _%top?116107%_)
        (let ()
          (let ((_%self116110%_ _%self116105%_))
            (let ()
              (if (_%top?116107%_ (gx#current-expander-context))
                  (gx#core-expander::apply-macro-expander
                   _%self116110%_
                   _%stx116106%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal context"
                   _%stx116106%_)))))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116123%_ _%stx116124%_)
        (let ((_%top?116126%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116123%_
           _%stx116124%_
           _%top?116126%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g117792_
        (let ((_g117791_ (##length _g117792_)))
          (cond ((##fx= _g117791_ 2)
                 (apply (lambda (_%self116123%_ _%stx116124%_)
                          (gx#top-special-form::apply-macro-expander__0
                           _%self116123%_
                           _%stx116124%_))
                        _g117792_))
                ((##fx= _g117791_ 3)
                 (apply (lambda (_%self116128%_ _%stx116129%_ _%top?116130%_)
                          (gx#top-special-form::apply-macro-expander__%
                           _%self116128%_
                           _%stx116129%_
                           _%top?116130%_))
                        _g117792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g117792_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self115968%_ _%stx115969%_)
        (let ()
          (let ((_%self115972%_ _%self115968%_))
            (let ()
              (gx#top-special-form::apply-macro-expander__%
               _%self115972%_
               _%stx115969%_
               gx#module-context?))))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self115782%_ _%stx115783%_)
        (let ()
          (let ((_%self115786%_ _%self115782%_))
            (let ()
              (let* ((_%self115795115801%_ _%self115786%_)
                     (_%E115797115805%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self115795115801%_
                               '((rename-macro-expander id)))
                        '#!void))
                     (_%K115798115838%_
                      (lambda (_%id115808%_)
                        (let* ((_%e115809115816%_ _%stx115783%_)
                               (_%E115811115820%_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e115809115816%_)))
                               (_%E115810115834%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e115809115816%_)
                                      (let ((_%e115812115824%_
                                             (gx#syntax-e _%e115809115816%_)))
                                        (let ((_%hd115813115827%_
                                               (##car _%e115812115824%_))
                                              (_%tl115814115829%_
                                               (##cdr _%e115812115824%_)))
                                          (let ((_%body115832%_
                                                 _%tl115814115829%_))
                                            (if '#t
                                                (gx#core-cons
                                                 _%id115808%_
                                                 _%body115832%_)
                                                (_%E115811115820%_)))))
                                      (_%E115811115820%_)))))
                          (_%E115810115834%_)))))
                (if '#t
                    (let* ((_%e115799115841%_
                            (##unchecked-structure-ref
                             _%self115795115801%_
                             '1
                             '#f
                             '#f))
                           (_%id115844%_ _%e115799115841%_))
                      (_%K115798115838%_ _%id115844%_))
                    (_%E115797115805%_))))))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self115608%_ _%stx115609%_ _%method115610%_)
        (let* ((_%self115611115619%_ _%self115608%_)
               (_%E115613115623%_
                (lambda ()
                  (error '"No clause matching"
                         _%self115611115619%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K115614115630%_
                (lambda (_%phi115626%_ _%ctx115627%_ _%K115628%_)
                  (gx#core-apply-user-macro
                   _%K115628%_
                   _%stx115609%_
                   _%ctx115627%_
                   _%phi115626%_
                   _%method115610%_))))
          (if (##structure-instance-of?
               _%self115611115619%_
               'gx#user-expander::t)
              (let* ((_%e115615115633%_
                      (##unchecked-structure-ref
                       _%self115611115619%_
                       '1
                       '#f
                       '#f))
                     (_%K115636%_ _%e115615115633%_)
                     (_%e115616115638%_
                      (##unchecked-structure-ref
                       _%self115611115619%_
                       '2
                       '#f
                       '#f))
                     (_%ctx115641%_ _%e115616115638%_)
                     (_%e115617115643%_
                      (##unchecked-structure-ref
                       _%self115611115619%_
                       '3
                       '#f
                       '#f))
                     (_%phi115646%_ _%e115617115643%_))
                (_%K115614115630%_ _%phi115646%_ _%ctx115641%_ _%K115636%_))
              (_%E115613115623%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self115651%_ _%stx115652%_)
        (let ((_%method115654%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self115651%_
           _%stx115652%_
           _%method115654%_))))
    (define gx#core-apply-user-expander
      (lambda _g117794_
        (let ((_g117793_ (##length _g117794_)))
          (cond ((##fx= _g117793_ 2)
                 (apply (lambda (_%self115651%_ _%stx115652%_)
                          (gx#core-apply-user-expander__0
                           _%self115651%_
                           _%stx115652%_))
                        _g117794_))
                ((##fx= _g117793_ 3)
                 (apply (lambda (_%self115656%_ _%stx115657%_ _%method115658%_)
                          (gx#core-apply-user-expander__%
                           _%self115656%_
                           _%stx115657%_
                           _%method115658%_))
                        _g117794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g117794_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K115598%_
               _%stx115599%_
               _%ctx115600%_
               _%phi115601%_
               _%method115602%_)
        (let ((_%mark115604%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx115600%_
                _%phi115601%_
                _%stx115599%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K115598%_
               (gx#stx-apply-mark _%stx115599%_ _%mark115604%_)
               _%method115602%_)
              _%mark115604%_))
           gx#current-expander-marks
           (cons _%mark115604%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115446%_ _%phi115447%_ _%ctx115448%_)
        (let _%lp115450%_ ((_%bind115452%_
                            (gx#core-resolve-identifier__%
                             _%stx115446%_
                             _%phi115447%_
                             _%ctx115448%_)))
          (if (##structure-direct-instance-of?
               _%bind115452%_
               'gx#import-binding::t)
              (let ()
                (_%lp115450%_
                 (##unchecked-structure-ref _%bind115452%_ '4 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%bind115452%_
                   'gx#alias-binding::t)
                  (let ()
                    (_%lp115450%_
                     (gx#core-resolve-identifier__%
                      (##unchecked-structure-ref _%bind115452%_ '4 '#f '#f)
                      _%phi115447%_
                      _%ctx115448%_)))
                  (let () _%bind115452%_))))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115460%_)
        (let* ((_%phi115462%_ (gx#current-expander-phi))
               (_%ctx115464%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115460%_
           _%phi115462%_
           _%ctx115464%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115466%_ _%phi115467%_)
        (let ((_%ctx115469%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115466%_
           _%phi115467%_
           _%ctx115469%_))))
    (define gx#resolve-identifier
      (lambda _g117796_
        (let ((_g117795_ (##length _g117796_)))
          (cond ((##fx= _g117795_ 1)
                 (apply (lambda (_%stx115460%_)
                          (gx#resolve-identifier__0 _%stx115460%_))
                        _g117796_))
                ((##fx= _g117795_ 2)
                 (apply (lambda (_%stx115466%_ _%phi115467%_)
                          (gx#resolve-identifier__1
                           _%stx115466%_
                           _%phi115467%_))
                        _g117796_))
                ((##fx= _g117795_ 3)
                 (apply (lambda (_%stx115471%_ _%phi115472%_ _%ctx115473%_)
                          (gx#resolve-identifier__%
                           _%stx115471%_
                           _%phi115472%_
                           _%ctx115473%_))
                        _g117796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g117796_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115401%_
               _%val115402%_
               _%rebind?115403%_
               _%phi115404%_
               _%ctx115405%_)
        (let ((_%rebind?115410%_
               (if (not _%rebind?115403%_)
                   (let () gx#core-context-rebind?)
                   (if (procedure? _%rebind?115403%_)
                       (let () _%rebind?115403%_)
                       (let () true)))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115401%_)
           _%val115402%_
           _%rebind?115410%_
           _%phi115404%_
           _%ctx115405%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115415%_ _%val115416%_)
        (let* ((_%rebind?115418%_ '#f)
               (_%phi115420%_ (gx#current-expander-phi))
               (_%ctx115422%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115415%_
           _%val115416%_
           _%rebind?115418%_
           _%phi115420%_
           _%ctx115422%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115424%_ _%val115425%_ _%rebind?115426%_)
        (let* ((_%phi115428%_ (gx#current-expander-phi))
               (_%ctx115430%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115424%_
           _%val115425%_
           _%rebind?115426%_
           _%phi115428%_
           _%ctx115430%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115432%_ _%val115433%_ _%rebind?115434%_ _%phi115435%_)
        (let ((_%ctx115437%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115432%_
           _%val115433%_
           _%rebind?115434%_
           _%phi115435%_
           _%ctx115437%_))))
    (define gx#bind-identifier!
      (lambda _g117798_
        (let ((_g117797_ (##length _g117798_)))
          (cond ((##fx= _g117797_ 2)
                 (apply (lambda (_%stx115415%_ _%val115416%_)
                          (gx#bind-identifier!__0 _%stx115415%_ _%val115416%_))
                        _g117798_))
                ((##fx= _g117797_ 3)
                 (apply (lambda (_%stx115424%_ _%val115425%_ _%rebind?115426%_)
                          (gx#bind-identifier!__1
                           _%stx115424%_
                           _%val115425%_
                           _%rebind?115426%_))
                        _g117798_))
                ((##fx= _g117797_ 4)
                 (apply (lambda (_%stx115432%_
                                 _%val115433%_
                                 _%rebind?115434%_
                                 _%phi115435%_)
                          (gx#bind-identifier!__2
                           _%stx115432%_
                           _%val115433%_
                           _%rebind?115434%_
                           _%phi115435%_))
                        _g117798_))
                ((##fx= _g117797_ 5)
                 (apply (lambda (_%stx115439%_
                                 _%val115440%_
                                 _%rebind?115441%_
                                 _%phi115442%_
                                 _%ctx115443%_)
                          (gx#bind-identifier!__%
                           _%stx115439%_
                           _%val115440%_
                           _%rebind?115441%_
                           _%phi115442%_
                           _%ctx115443%_))
                        _g117798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g117798_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115367%_ _%phi115368%_ _%ctx115369%_)
        (let _%lp115371%_ ((_%e115373%_ _%stx115367%_)
                           (_%marks115374%_ (gx#current-expander-marks)))
          (if (symbol? _%e115373%_)
              (let ()
                (gx#core-resolve-binding
                 _%e115373%_
                 _%phi115368%_
                 _%phi115368%_
                 _%ctx115369%_
                 (reverse _%marks115374%_)))
              (if (gx#identifier-quote? _%e115373%_)
                  (let ()
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _%e115373%_ '1 '#f '#f)
                     _%phi115368%_
                     '0
                     (##unchecked-structure-ref _%e115373%_ '3 '#f '#f)
                     (##unchecked-structure-ref _%e115373%_ '4 '#f '#f)))
                  (if (##structure-direct-instance-of?
                       _%e115373%_
                       'gx#identifier-wrap::t)
                      (let ()
                        (gx#core-resolve-binding
                         (##unchecked-structure-ref _%e115373%_ '1 '#f '#f)
                         _%phi115368%_
                         _%phi115368%_
                         _%ctx115369%_
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e115373%_ '3 '#f '#f)
                          _%marks115374%_)))
                      (if (##structure-direct-instance-of?
                           _%e115373%_
                           'gx#syntax-wrap::t)
                          (let ()
                            (_%lp115371%_
                             (##unchecked-structure-ref _%e115373%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e115373%_
                               '3
                               '#f
                               '#f)
                              _%marks115374%_)))
                          (if (##structure-instance-of?
                               _%e115373%_
                               'gerbil#AST::t)
                              (let ()
                                (_%lp115371%_
                                 (##unchecked-structure-ref
                                  _%e115373%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115374%_))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad identifier"
                                 _%stx115367%_))))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115385%_)
        (let* ((_%phi115387%_ (gx#current-expander-phi))
               (_%ctx115389%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115385%_
           _%phi115387%_
           _%ctx115389%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115391%_ _%phi115392%_)
        (let ((_%ctx115394%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115391%_
           _%phi115392%_
           _%ctx115394%_))))
    (define gx#core-resolve-identifier
      (lambda _g117800_
        (let ((_g117799_ (##length _g117800_)))
          (cond ((##fx= _g117799_ 1)
                 (apply (lambda (_%stx115385%_)
                          (gx#core-resolve-identifier__0 _%stx115385%_))
                        _g117800_))
                ((##fx= _g117799_ 2)
                 (apply (lambda (_%stx115391%_ _%phi115392%_)
                          (gx#core-resolve-identifier__1
                           _%stx115391%_
                           _%phi115392%_))
                        _g117800_))
                ((##fx= _g117799_ 3)
                 (apply (lambda (_%stx115396%_ _%phi115397%_ _%ctx115398%_)
                          (gx#core-resolve-identifier__%
                           _%stx115396%_
                           _%phi115397%_
                           _%ctx115398%_))
                        _g117800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g117800_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115277%_
               _%phi115278%_
               _%src-phi115279%_
               _%ctx115280%_
               _%marks115281%_)
        (letrec ((_%resolve115283%_
                  (lambda (_%ctx115351%_ _%src-phi115352%_ _%key115353%_)
                    (let _%lp115355%_ ((_%ctx115357%_
                                        (gx#core-context-shift
                                         _%ctx115351%_
                                         _%phi115278%_))
                                       (_%dphi115358%_
                                        (fx- _%phi115278%_ _%src-phi115352%_)))
                      (let ((_%$e115360%_
                             (gx#core-context-resolve
                              _%ctx115357%_
                              _%key115353%_)))
                        (if _%$e115360%_
                            (values _%$e115360%_)
                            (if (fxzero? _%dphi115358%_)
                                (let () '#f)
                                (if (fxpositive? _%dphi115358%_)
                                    (let ()
                                      (_%lp115355%_
                                       (gx#core-context-shift
                                        _%ctx115357%_
                                        '-1)
                                       (##fx- _%dphi115358%_ '1)))
                                    (let ()
                                      (_%lp115355%_
                                       (gx#core-context-shift _%ctx115357%_ '1)
                                       (##fx+ _%dphi115358%_ '1)))))))))))
          (let _%lp115285%_ ((_%ctx115287%_ _%ctx115280%_)
                             (_%src-phi115288%_ _%src-phi115279%_)
                             (_%rest115289%_ _%marks115281%_))
            (let* ((_%rest115290115298%_ _%rest115289%_)
                   (_%else115292115306%_
                    (lambda ()
                      (_%resolve115283%_
                       _%ctx115287%_
                       _%src-phi115288%_
                       _%id115277%_)))
                   (_%K115294115339%_
                    (lambda (_%rest115309%_ _%hd115310%_)
                      (let* ((_%hd115311115317%_ _%hd115310%_)
                             (_%E115313115321%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115311115317%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115314115331%_
                              (lambda (_%subst115324%_)
                                (let ((_%$e115328%_
                                       (let ((_%key115326%_
                                              (if _%subst115324%_
                                                  (hash-get
                                                   _%subst115324%_
                                                   _%id115277%_)
                                                  '#f)))
                                         (if _%key115326%_
                                             (_%resolve115283%_
                                              _%ctx115287%_
                                              _%src-phi115288%_
                                              _%key115326%_)
                                             '#f))))
                                  (if _%$e115328%_
                                      _%$e115328%_
                                      (_%lp115285%_
                                       (##unchecked-structure-ref
                                        _%hd115310%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115310%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115309%_))))))
                        (if (##structure-instance-of?
                             _%hd115311115317%_
                             'gx#expander-mark::t)
                            (let* ((_%e115315115334%_
                                    (##unchecked-structure-ref
                                     _%hd115311115317%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115337%_ _%e115315115334%_))
                              (_%K115314115331%_ _%subst115337%_))
                            (_%E115313115321%_))))))
              (if (##pair? _%rest115290115298%_)
                  (let ((_%hd115295115342%_ (##car _%rest115290115298%_))
                        (_%tl115296115344%_ (##cdr _%rest115290115298%_)))
                    (let* ((_%hd115347%_ _%hd115295115342%_)
                           (_%rest115349%_ _%tl115296115344%_))
                      (_%K115294115339%_ _%rest115349%_ _%hd115347%_)))
                  (_%else115292115306%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key115147%_
               _%val115148%_
               _%rebind?115149%_
               _%phi115150%_
               _%ctx115151%_)
        (letrec ((_%update-binding115153%_
                  (lambda (_%xval115226%_)
                    (if (or (_%rebind?115149%_
                             _%ctx115151%_
                             _%xval115226%_
                             _%val115148%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115226%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115226%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val115148%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val115148%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115226%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val115148%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val115148%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115226%_
                                       '1
                                       '#f
                                       '#f))))
                        (let () _%val115148%_)
                        (if (and (##structure-direct-instance-of?
                                  _%val115148%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val115148%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115226%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val115148%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115226%_
                                                '1
                                                '#f
                                                '#f)))))
                            (let () _%xval115226%_)
                            (if (and (##structure-direct-instance-of?
                                      _%val115148%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115226%_
                                      'gx#binding::t))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; import conflict"
                                   _%key115147%_
                                   (cons (##unchecked-structure-ref
                                          _%val115148%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (##structure-ref
                                                (##unchecked-structure-ref
                                                 _%val115148%_
                                                 '5
                                                 '#f
                                                 '#f)
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '()))
                                   (cons (##unchecked-structure-ref
                                          _%xval115226%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (if (##structure-direct-instance-of?
                                                    _%xval115226%_
                                                    'gx#import-binding::t)
                                                   (##structure-ref
                                                    (##unchecked-structure-ref
                                                     _%xval115226%_
                                                     '5
                                                     '#f
                                                     '#f)
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   _%xval115226%_)
                                               '()))))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; rebind conflict"
                                   _%key115147%_
                                   _%val115148%_
                                   _%xval115226%_)))))))
                 (_%gensubst115154%_
                  (lambda (_%subst115221%_ _%id115222%_)
                    (let ((_%eid115224%_
                           (gensym (if (uninterned-symbol? _%id115222%_)
                                       '%
                                       _%id115222%_))))
                      (hash-put! _%subst115221%_ _%id115222%_ _%eid115224%_)
                      _%eid115224%_)))
                 (_%subst!115155%_
                  (lambda (_%key115157%_)
                    (let* ((_%key115158115166%_ _%key115157%_)
                           (_%else115160115174%_ (lambda () _%key115157%_))
                           (_%K115162115209%_
                            (lambda (_%mark115177%_ _%id115178%_)
                              (let* ((_%mark115179115185%_ _%mark115177%_)
                                     (_%E115181115189%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark115179115185%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K115182115201%_
                                      (lambda (_%subst115192%_)
                                        (if (not _%subst115192%_)
                                            (let ()
                                              (let ((_%subst115195%_
                                                     (make-hash-table-eq)))
                                                (##unchecked-structure-set!
                                                 _%mark115177%_
                                                 _%subst115195%_
                                                 '1
                                                 '#f
                                                 '#f)
                                                (_%gensubst115154%_
                                                 _%subst115195%_
                                                 _%id115178%_)))
                                            (let ((_%$e115197%_
                                                   (hash-get
                                                    _%subst115192%_
                                                    _%id115178%_)))
                                              (if _%$e115197%_
                                                  (values _%$e115197%_)
                                                  (let ()
                                                    (_%gensubst115154%_
                                                     _%subst115192%_
                                                     _%id115178%_))))))))
                                (if (##structure-instance-of?
                                     _%mark115179115185%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e115183115204%_
                                            (##unchecked-structure-ref
                                             _%mark115179115185%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115207%_ _%e115183115204%_))
                                      (_%K115182115201%_ _%subst115207%_))
                                    (_%E115181115189%_))))))
                      (if (##pair? _%key115158115166%_)
                          (let ((_%hd115163115212%_
                                 (##car _%key115158115166%_))
                                (_%tl115164115214%_
                                 (##cdr _%key115158115166%_)))
                            (let* ((_%id115217%_ _%hd115163115212%_)
                                   (_%mark115219%_ _%tl115164115214%_))
                              (_%K115162115209%_ _%mark115219%_ _%id115217%_)))
                          (_%else115160115174%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx115151%_ _%phi115150%_)
           (_%subst!115155%_ _%key115147%_)
           _%val115148%_
           _%update-binding115153%_))))
    (define gx#core-bind!__0
      (lambda (_%key115247%_ _%val115248%_)
        (let* ((_%rebind?115250%_ false)
               (_%phi115252%_ (gx#current-expander-phi))
               (_%ctx115254%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115247%_
           _%val115248%_
           _%rebind?115250%_
           _%phi115252%_
           _%ctx115254%_))))
    (define gx#core-bind!__1
      (lambda (_%key115256%_ _%val115257%_ _%rebind?115258%_)
        (let* ((_%phi115260%_ (gx#current-expander-phi))
               (_%ctx115262%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115256%_
           _%val115257%_
           _%rebind?115258%_
           _%phi115260%_
           _%ctx115262%_))))
    (define gx#core-bind!__2
      (lambda (_%key115264%_ _%val115265%_ _%rebind?115266%_ _%phi115267%_)
        (let ((_%ctx115269%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115264%_
           _%val115265%_
           _%rebind?115266%_
           _%phi115267%_
           _%ctx115269%_))))
    (define gx#core-bind!
      (lambda _g117802_
        (let ((_g117801_ (##length _g117802_)))
          (cond ((##fx= _g117801_ 2)
                 (apply (lambda (_%key115247%_ _%val115248%_)
                          (gx#core-bind!__0 _%key115247%_ _%val115248%_))
                        _g117802_))
                ((##fx= _g117801_ 3)
                 (apply (lambda (_%key115256%_ _%val115257%_ _%rebind?115258%_)
                          (gx#core-bind!__1
                           _%key115256%_
                           _%val115257%_
                           _%rebind?115258%_))
                        _g117802_))
                ((##fx= _g117801_ 4)
                 (apply (lambda (_%key115264%_
                                 _%val115265%_
                                 _%rebind?115266%_
                                 _%phi115267%_)
                          (gx#core-bind!__2
                           _%key115264%_
                           _%val115265%_
                           _%rebind?115266%_
                           _%phi115267%_))
                        _g117802_))
                ((##fx= _g117801_ 5)
                 (apply (lambda (_%key115271%_
                                 _%val115272%_
                                 _%rebind?115273%_
                                 _%phi115274%_
                                 _%ctx115275%_)
                          (gx#core-bind!__%
                           _%key115271%_
                           _%val115272%_
                           _%rebind?115273%_
                           _%phi115274%_
                           _%ctx115275%_))
                        _g117802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g117802_))))))
    (define gx#core-identifier-key
      (lambda (_%stx115078%_)
        (if (symbol? _%stx115078%_)
            (let ()
              (let* ((_%g115080115088%_ (gx#current-expander-marks))
                     (_%else115082115096%_ (lambda () _%stx115078%_))
                     (_%K115084115101%_
                      (lambda (_%hd115099%_)
                        (cons _%stx115078%_ _%hd115099%_))))
                (if (##pair? _%g115080115088%_)
                    (let* ((_%hd115085115104%_ (##car _%g115080115088%_))
                           (_%hd115107%_ _%hd115085115104%_))
                      (_%K115084115101%_ _%hd115107%_))
                    (_%else115082115096%_))))
            (if (gx#identifier? _%stx115078%_)
                (let ()
                  (let* ((_%id115110%_ (gx#syntax-local-unwrap _%stx115078%_))
                         (_%eid115112%_ (gx#stx-e _%id115110%_))
                         (_%marks115114%_
                          (gx#stx-identifier-marks* _%id115110%_)))
                    (let* ((_%marks115116115124%_ _%marks115114%_)
                           (_%else115118115132%_ (lambda () _%eid115112%_))
                           (_%K115120115137%_
                            (lambda (_%hd115135%_)
                              (cons _%eid115112%_ _%hd115135%_))))
                      (if (##pair? _%marks115116115124%_)
                          (let* ((_%hd115121115140%_
                                  (##car _%marks115116115124%_))
                                 (_%hd115143%_ _%hd115121115140%_))
                            (_%K115120115137%_ _%hd115143%_))
                          (_%else115118115132%_)))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad identifier"
                   _%stx115078%_))))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx115017%_ _%phi115018%_)
        (letrec ((_%make-phi115020%_
                  (lambda (_%super115076%_)
                    (let ((__obj117774
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj117774
                       (##gensym 'phi)
                       _%super115076%_)
                      __obj117774)))
                 (_%make-phi/up115021%_
                  (lambda (_%ctx115071%_ _%super115072%_)
                    (let ((_%ctx+1115074%_
                           (_%make-phi115020%_ _%super115072%_)))
                      (##unchecked-structure-set!
                       _%ctx115071%_
                       _%ctx+1115074%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1115074%_
                       _%ctx115071%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1115074%_)))
                 (_%make-phi/down115022%_
                  (lambda (_%ctx115066%_ _%super115067%_)
                    (let ((_%ctx-1115069%_
                           (_%make-phi115020%_ _%super115067%_)))
                      (##unchecked-structure-set!
                       _%ctx-1115069%_
                       _%ctx115066%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx115066%_
                       _%ctx-1115069%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1115069%_)))
                 (_%shift115023%_
                  (lambda (_%ctx115049%_
                           _%delta115050%_
                           _%make-delta-context115051%_
                           _%phi115052%_
                           _%K115053%_)
                    (let ((_%$e115055%_
                           (##unchecked-structure-ref
                            _%ctx115049%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e115055%_
                          ((lambda (_%super115058%_)
                             (let* ((_%super115060%_
                                     (_%K115053%_
                                      _%super115058%_
                                      _%delta115050%_))
                                    (_%ctx+d115062%_
                                     (_%make-delta-context115051%_
                                      _%ctx115049%_
                                      _%super115060%_)))
                               (_%K115053%_
                                _%ctx+d115062%_
                                (fx- _%phi115052%_ _%delta115050%_))))
                           _%$e115055%_)
                          (let () (error '"Bad context" _%ctx115049%_)))))))
          (let _%K115025%_ ((_%ctx115027%_ _%ctx115017%_)
                            (_%phi115028%_ _%phi115018%_))
            (if (fxzero? _%phi115028%_)
                (let () _%ctx115027%_)
                (if (##structure-instance-of? _%ctx115027%_ 'gx#phi-context::t)
                    (let ()
                      (if (fxpositive? _%phi115028%_)
                          (let ((_%$e115032%_
                                 (##unchecked-structure-ref
                                  _%ctx115027%_
                                  '4
                                  '#f
                                  '#f)))
                            (if _%$e115032%_
                                ((lambda (_%g115034115036%_)
                                   (_%K115025%_
                                    _%g115034115036%_
                                    (##fx- _%phi115028%_ '1)))
                                 _%$e115032%_)
                                (let ()
                                  (_%shift115023%_
                                   _%ctx115027%_
                                   '1
                                   _%make-phi/up115021%_
                                   _%phi115028%_
                                   _%K115025%_))))
                          (let ((_%$e115040%_
                                 (##unchecked-structure-ref
                                  _%ctx115027%_
                                  '5
                                  '#f
                                  '#f)))
                            (if _%$e115040%_
                                ((lambda (_%g115042115044%_)
                                   (_%K115025%_
                                    _%g115042115044%_
                                    (##fx+ _%phi115028%_ '1)))
                                 _%$e115040%_)
                                (let ()
                                  (_%shift115023%_
                                   _%ctx115027%_
                                   '-1
                                   _%make-phi/down115022%_
                                   _%phi115028%_
                                   _%K115025%_))))))
                    (let () _%ctx115027%_)))))))
    (define gx#core-context-get
      (lambda (_%ctx115014%_ _%key115015%_)
        (hash-get
         (##unchecked-structure-ref _%ctx115014%_ '2 '#f '#f)
         _%key115015%_)))
    (define gx#core-context-put!
      (lambda (_%ctx115010%_ _%key115011%_ _%val115012%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx115010%_ '2 '#f '#f)
         _%key115011%_
         _%val115012%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx114996%_ _%key114997%_)
        (let _%lp114999%_ ((_%ctx115001%_ _%ctx114996%_))
          (let ((_%$e115003%_
                 (gx#core-context-get _%ctx115001%_ _%key114997%_)))
            (if _%$e115003%_
                (values _%$e115003%_)
                (let ((_%$e115006%_
                       (if (##structure-instance-of?
                            _%ctx115001%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx115001%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e115006%_
                      (_%lp114999%_ _%$e115006%_)
                      (let () '#f))))))))
    (define gx#core-context-bind!
      (lambda (_%ctx114985%_ _%key114986%_ _%val114987%_ _%rebind114988%_)
        (let ((_%$e114990%_ (gx#core-context-get _%ctx114985%_ _%key114986%_)))
          (if _%$e114990%_
              ((lambda (_%xval114993%_)
                 (gx#core-context-put!
                  _%ctx114985%_
                  _%key114986%_
                  (_%rebind114988%_ _%xval114993%_)))
               _%$e114990%_)
              (let ()
                (gx#core-context-put!
                 _%ctx114985%_
                 _%key114986%_
                 _%val114987%_))))))
    (define gx#core-context-top__%
      (lambda (_%ctx114960%_ _%stop?114961%_)
        (let _%lp114963%_ ((_%ctx114965%_ _%ctx114960%_))
          (if (_%stop?114961%_ _%ctx114965%_)
              (let () _%ctx114965%_)
              (if (##structure-instance-of? _%ctx114965%_ 'gx#phi-context::t)
                  (let ()
                    (_%lp114963%_
                     (##unchecked-structure-ref _%ctx114965%_ '3 '#f '#f)))
                  (let () '#f))))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx114974%_ (gx#current-expander-context))
               (_%stop?114976%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114974%_ _%stop?114976%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx114978%_)
        (let ((_%stop?114980%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114978%_ _%stop?114980%_))))
    (define gx#core-context-top
      (lambda _g117804_
        (let ((_g117803_ (##length _g117804_)))
          (cond ((##fx= _g117803_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g117804_))
                ((##fx= _g117803_ 1)
                 (apply (lambda (_%ctx114978%_)
                          (gx#core-context-top__1 _%ctx114978%_))
                        _g117804_))
                ((##fx= _g117803_ 2)
                 (apply (lambda (_%ctx114982%_ _%stop?114983%_)
                          (gx#core-context-top__%
                           _%ctx114982%_
                           _%stop?114983%_))
                        _g117804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g117804_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx114945%_)
        (let _%lp114947%_ ((_%ctx114949%_ _%ctx114945%_))
          (if (##structure-instance-of? _%ctx114949%_ 'gx#phi-context::t)
              (_%lp114947%_
               (##unchecked-structure-ref _%ctx114949%_ '3 '#f '#f))
              _%ctx114949%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx114955%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx114955%_))))
    (define gx#core-context-root
      (lambda _g117806_
        (let ((_g117805_ (##length _g117806_)))
          (cond ((##fx= _g117805_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g117806_))
                ((##fx= _g117805_ 1)
                 (apply (lambda (_%ctx114957%_)
                          (gx#core-context-root__% _%ctx114957%_))
                        _g117806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g117806_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx114927%_ . _%ignore114928%_)
        (let ((_%$e114930%_ (gx#current-expander-allow-rebind?)))
          (if _%$e114930%_
              _%$e114930%_
              (if (##structure-instance-of? _%ctx114927%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx114927%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx114927%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx114937%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx114937%_))))
    (define gx#core-context-rebind?
      (lambda _g117808_
        (let ((_g117807_ (##length _g117808_)))
          (cond ((##fx= _g117807_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g117808_))
                ((##fx= _g117807_ 1)
                 (apply (lambda (_%ctx114939%_)
                          (gx#core-context-rebind?__% _%ctx114939%_))
                        _g117808_))
                ((##fx>= _g117807_ 1)
                 (apply gx#core-context-rebind?__% _g117808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g117808_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx114910%_)
        (let ((_%$e114912%_ (gx#core-context-top__1 _%ctx114910%_)))
          (if _%$e114912%_
              ((lambda (_%ctx114915%_)
                 (if (##structure-instance-of?
                      _%ctx114915%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx114915%_ '6 '#f '#f)
                     '#f))
               _%$e114912%_)
              (let () '#f)))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx114922%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx114922%_))))
    (define gx#core-context-namespace
      (lambda _g117810_
        (let ((_g117809_ (##length _g117810_)))
          (cond ((##fx= _g117809_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g117810_))
                ((##fx= _g117809_ 1)
                 (apply (lambda (_%ctx114924%_)
                          (gx#core-context-namespace__% _%ctx114924%_))
                        _g117810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g117810_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind114896%_ _%is?114897%_)
        (if (##structure-direct-instance-of?
             _%bind114896%_
             'gx#syntax-binding::t)
            (_%is?114897%_
             (##unchecked-structure-ref _%bind114896%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind114902%_)
        (let ((_%is?114904%_ gx#expander?))
          (gx#expander-binding?__% _%bind114902%_ _%is?114904%_))))
    (define gx#expander-binding?
      (lambda _g117812_
        (let ((_g117811_ (##length _g117812_)))
          (cond ((##fx= _g117811_ 1)
                 (apply (lambda (_%bind114902%_)
                          (gx#expander-binding?__0 _%bind114902%_))
                        _g117812_))
                ((##fx= _g117811_ 2)
                 (apply (lambda (_%bind114906%_ _%is?114907%_)
                          (gx#expander-binding?__%
                           _%bind114906%_
                           _%is?114907%_))
                        _g117812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g117812_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind114893%_)
        (gx#expander-binding?__% _%bind114893%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind114891%_)
        (gx#expander-binding?__% _%bind114891%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind114885%_)
        (letrec ((_%direct-special-form?114887%_
                  (lambda (_%obj114889%_)
                    (##structure-direct-instance-of?
                     _%obj114889%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind114885%_
           _%direct-special-form?114887%_))))
    (define gx#special-form-binding?
      (lambda (_%bind114883%_)
        (gx#expander-binding?__% _%bind114883%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind114874%_)
        (letrec ((_%feature?114876%_
                  (lambda (_%e114878%_)
                    (let ((_%$e114880%_
                           (##structure-instance-of?
                            _%e114878%_
                            'gx#feature-expander::t)))
                      (if _%$e114880%_
                          _%$e114880%_
                          (##structure-instance-of?
                           _%e114878%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind114874%_ _%feature?114876%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind114872%_)
        (gx#expander-binding?__% _%bind114872%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id114859%_ _%bound?114860%_)
        (if (gx#identifier? _%id114859%_)
            (_%bound?114860%_ (gx#resolve-identifier__0 _%id114859%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id114865%_)
        (let ((_%bound?114867%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id114865%_ _%bound?114867%_))))
    (define gx#core-bound-identifier?
      (lambda _g117814_
        (let ((_g117813_ (##length _g117814_)))
          (cond ((##fx= _g117813_ 1)
                 (apply (lambda (_%id114865%_)
                          (gx#core-bound-identifier?__0 _%id114865%_))
                        _g117814_))
                ((##fx= _g117813_ 2)
                 (apply (lambda (_%id114869%_ _%bound?114870%_)
                          (gx#core-bound-identifier?__%
                           _%id114869%_
                           _%bound?114870%_))
                        _g117814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g117814_))))))
    (define gx#core-identifier=?
      (lambda (_%x114849%_ _%y114850%_)
        (letrec ((_%y=?114852%_
                  (lambda (_%xid114856%_)
                    ((if (list? _%y114850%_) memq eq?)
                     _%xid114856%_
                     _%y114850%_))))
          (let ((_%bind114854%_ (gx#resolve-identifier__0 _%x114849%_)))
            (if (##structure-instance-of? _%bind114854%_ 'gx#binding::t)
                (_%y=?114852%_
                 (##unchecked-structure-ref _%bind114854%_ '1 '#f '#f))
                (_%y=?114852%_ (gx#stx-e _%x114849%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e114847%_)
        (if (interned-symbol? _%e114847%_)
            (string-index__0 (symbol->string _%e114847%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx114800%_ _%src114801%_ _%ctx114802%_ _%marks114803%_)
        (if (##structure? _%stx114800%_)
            (let ((_%$e114805%_ (gx#sealed-syntax-unwrap _%stx114800%_)))
              (if _%$e114805%_
                  (values _%$e114805%_)
                  (if (gx#identifier? _%stx114800%_)
                      (let ()
                        (let ((_%id114809%_
                               (gx#stx-unwrap__%
                                _%stx114800%_
                                _%marks114803%_)))
                          (##structure
                           gx#syntax-quote::t
                           (##unchecked-structure-ref _%id114809%_ '1 '#f '#f)
                           (let ((_%$e114811%_
                                  (##unchecked-structure-ref
                                   _%id114809%_
                                   '2
                                   '#f
                                   '#f)))
                             (if _%$e114811%_ _%$e114811%_ _%src114801%_))
                           _%ctx114802%_
                           (##unchecked-structure-ref
                            _%id114809%_
                            '3
                            '#f
                            '#f))))
                      (let ()
                        (##structure
                         gx#syntax-quote::t
                         (gx#stx-e _%stx114800%_)
                         (let ((_%$e114815%_ (gx#stx-source _%stx114800%_)))
                           (if _%$e114815%_ _%$e114815%_ _%src114801%_))
                         _%ctx114802%_
                         (reverse _%marks114803%_))))))
            (##structure
             gx#syntax-quote::t
             _%stx114800%_
             _%src114801%_
             _%ctx114802%_
             (reverse _%marks114803%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx114821%_)
        (let* ((_%src114823%_ '#f)
               (_%ctx114825%_ (gx#current-expander-context))
               (_%marks114827%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114821%_
           _%src114823%_
           _%ctx114825%_
           _%marks114827%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx114829%_ _%src114830%_)
        (let* ((_%ctx114832%_ (gx#current-expander-context))
               (_%marks114834%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114829%_
           _%src114830%_
           _%ctx114832%_
           _%marks114834%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx114836%_ _%src114837%_ _%ctx114838%_)
        (let ((_%marks114840%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114836%_
           _%src114837%_
           _%ctx114838%_
           _%marks114840%_))))
    (define gx#core-quote-syntax
      (lambda _g117816_
        (let ((_g117815_ (##length _g117816_)))
          (cond ((##fx= _g117815_ 1)
                 (apply (lambda (_%stx114821%_)
                          (gx#core-quote-syntax__0 _%stx114821%_))
                        _g117816_))
                ((##fx= _g117815_ 2)
                 (apply (lambda (_%stx114829%_ _%src114830%_)
                          (gx#core-quote-syntax__1
                           _%stx114829%_
                           _%src114830%_))
                        _g117816_))
                ((##fx= _g117815_ 3)
                 (apply (lambda (_%stx114836%_ _%src114837%_ _%ctx114838%_)
                          (gx#core-quote-syntax__2
                           _%stx114836%_
                           _%src114837%_
                           _%ctx114838%_))
                        _g117816_))
                ((##fx= _g117815_ 4)
                 (apply (lambda (_%stx114842%_
                                 _%src114843%_
                                 _%ctx114844%_
                                 _%marks114845%_)
                          (gx#core-quote-syntax__%
                           _%stx114842%_
                           _%src114843%_
                           _%ctx114844%_
                           _%marks114845%_))
                        _g117816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g117816_))))))
    (define gx#core-cons
      (lambda (_%hd114796%_ _%tl114797%_)
        (cons (gx#core-quote-syntax__0 _%hd114796%_) _%tl114797%_)))
    (define gx#core-list
      (lambda (_%hd114793%_ . _%rest114794%_)
        (cons (gx#core-quote-syntax__0 _%hd114793%_) _%rest114794%_)))
    (define gx#core-cons*
      (lambda (_%hd114790%_ . _%rest114791%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd114790%_) _%rest114791%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path114759%_ _%rel114760%_)
        (let ((_%path114777%_ (gx#stx-e _%stx-path114759%_))
              (_%reldir114778%_
               (let _%lp114762%_ ((_%relsrc114764%_
                                   (let ((_%$e114774%_
                                          (gx#stx-source _%stx-path114759%_)))
                                     (if _%$e114774%_
                                         _%$e114774%_
                                         _%rel114760%_))))
                 (if (##structure-instance-of? _%relsrc114764%_ 'gerbil#AST::t)
                     (let ()
                       (_%lp114762%_
                        (let ((_%$e114767%_ (gx#stx-source _%relsrc114764%_)))
                          (if _%$e114767%_
                              _%$e114767%_
                              (gx#stx-e _%relsrc114764%_)))))
                     (if (source-location-path? _%relsrc114764%_)
                         (let ()
                           (path-directory
                            (source-location-path _%relsrc114764%_)))
                         (if (string? _%relsrc114764%_)
                             (let () (path-directory _%relsrc114764%_))
                             (if (not (null? (gx#current-expander-path)))
                                 (let ()
                                   (path-directory
                                    (car (gx#current-expander-path))))
                                 (let () (current-directory)))))))))
          (path-expand _%path114777%_ (path-normalize _%reldir114778%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path114783%_)
        (let ((_%rel114785%_ '#f))
          (gx#core-resolve-path__% _%stx-path114783%_ _%rel114785%_))))
    (define gx#core-resolve-path
      (lambda _g117818_
        (let ((_g117817_ (##length _g117818_)))
          (cond ((##fx= _g117817_ 1)
                 (apply (lambda (_%stx-path114783%_)
                          (gx#core-resolve-path__0 _%stx-path114783%_))
                        _g117818_))
                ((##fx= _g117817_ 2)
                 (apply (lambda (_%stx-path114787%_ _%rel114788%_)
                          (gx#core-resolve-path__%
                           _%stx-path114787%_
                           _%rel114788%_))
                        _g117818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g117818_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr114715%_ _%ctx114716%_)
        (let* ((_%repr114717114724%_ _%repr114715%_)
               (_%E114719114728%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr114717114724%_
                         '([phi . subs]))
                  '#!void))
               (_%K114720114736%_
                (lambda (_%subs114731%_ _%phi114732%_)
                  (let ((_%subst114734%_
                         (if (not (null? _%subs114731%_))
                             (list->hash-table-eq _%subs114731%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst114734%_
                     _%ctx114716%_
                     _%phi114732%_
                     '#f)))))
          (if (##pair? _%repr114717114724%_)
              (let ((_%hd114721114739%_ (##car _%repr114717114724%_))
                    (_%tl114722114741%_ (##cdr _%repr114717114724%_)))
                (let* ((_%phi114744%_ _%hd114721114739%_)
                       (_%subs114746%_ _%tl114722114741%_))
                  (_%K114720114736%_ _%subs114746%_ _%phi114744%_)))
              (_%E114719114728%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr114751%_)
        (let ((_%ctx114753%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr114751%_ _%ctx114753%_))))
    (define gx#core-deserialize-mark
      (lambda _g117820_
        (let ((_g117819_ (##length _g117820_)))
          (cond ((##fx= _g117819_ 1)
                 (apply (lambda (_%repr114751%_)
                          (gx#core-deserialize-mark__0 _%repr114751%_))
                        _g117820_))
                ((##fx= _g117819_ 2)
                 (apply (lambda (_%repr114755%_ _%ctx114756%_)
                          (gx#core-deserialize-mark__%
                           _%repr114755%_
                           _%ctx114756%_))
                        _g117820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g117820_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx114712%_)
        (gx#stx-rewrap _%stx114712%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx114710%_)
        (gx#stx-unwrap__% _%stx114710%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx114680%_)
        (let* ((_%g114681114689%_ (gx#current-expander-marks))
               (_%else114683114697%_ (lambda () _%stx114680%_))
               (_%K114685114702%_
                (lambda (_%hd114700%_)
                  (gx#stx-apply-mark _%stx114680%_ _%hd114700%_))))
          (if (##pair? _%g114681114689%_)
              (let* ((_%hd114686114705%_ (##car _%g114681114689%_))
                     (_%hd114708%_ _%hd114686114705%_))
                (_%K114685114702%_ _%hd114708%_))
              (_%else114683114697%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx114665%_ _%E114666%_)
        (let ((_%bind114668%_ (gx#resolve-identifier__0 _%stx114665%_)))
          (if (##structure-direct-instance-of?
               _%bind114668%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind114668%_ '4 '#f '#f)
              (_%E114666%_ _%stx114665%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx114673%_)
        (let ((_%E114675%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx114673%_ _%E114675%_))))
    (define gx#syntax-local-e
      (lambda _g117822_
        (let ((_g117821_ (##length _g117822_)))
          (cond ((##fx= _g117821_ 1)
                 (apply (lambda (_%stx114673%_)
                          (gx#syntax-local-e__0 _%stx114673%_))
                        _g117822_))
                ((##fx= _g117821_ 2)
                 (apply (lambda (_%stx114677%_ _%E114678%_)
                          (gx#syntax-local-e__% _%stx114677%_ _%E114678%_))
                        _g117822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g117822_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx114649%_ _%E114650%_)
        (let ((_%e114652%_ (gx#syntax-local-e__% _%stx114649%_ _%E114650%_)))
          (if (##structure-instance-of? _%e114652%_ 'gx#expander::t)
              (##structure-ref _%e114652%_ '1 gx#expander::t '#f)
              _%e114652%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx114657%_)
        (let ((_%E114659%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx114657%_ _%E114659%_))))
    (define gx#syntax-local-value
      (lambda _g117824_
        (let ((_g117823_ (##length _g117824_)))
          (cond ((##fx= _g117823_ 1)
                 (apply (lambda (_%stx114657%_)
                          (gx#syntax-local-value__0 _%stx114657%_))
                        _g117824_))
                ((##fx= _g117823_ 2)
                 (apply (lambda (_%stx114661%_ _%E114662%_)
                          (gx#syntax-local-value__% _%stx114661%_ _%E114662%_))
                        _g117824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g117824_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx114646%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx114646%_)))))
