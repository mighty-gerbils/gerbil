(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712121898)
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
      (lambda _%$args117644%_
        (apply make-instance gx#expander-context::t _%$args117644%_)))
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
      (lambda _%$args117641%_
        (apply make-instance gx#root-context::t _%$args117641%_)))
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
      (lambda _%$args117638%_
        (apply make-instance gx#phi-context::t _%$args117638%_)))
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
      (lambda _%$args117635%_
        (apply make-instance gx#top-context::t _%$args117635%_)))
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
      (lambda _%$args117632%_
        (apply make-instance gx#module-context::t _%$args117632%_)))
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
      (lambda _%$args117629%_
        (apply make-instance gx#prelude-context::t _%$args117629%_)))
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
      (lambda _%$args117626%_
        (apply make-instance gx#local-context::t _%$args117626%_)))
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
      (lambda (_%self117599%_ _%id117600%_ _%super117601%_)
        (let ()
          (let ((_%self117604%_ _%self117599%_))
            (let ()
              (if (##fx< '3 (##structure-length _%self117604%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self117604%_
                     _%id117600%_
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117604%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117604%_
                     _%super117601%_
                     '3
                     '#f
                     '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self117604%_
                         '3
                         (##vector-length _%self117604%_))))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self117617%_ _%id117618%_)
        (let ((_%super117620%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self117617%_
           _%id117618%_
           _%super117620%_))))
    (define gx#phi-context:::init!
      (lambda _g117687_
        (let ((_g117686_ (##length _g117687_)))
          (cond ((##fx= _g117686_ 2)
                 (apply (lambda (_%self117617%_ _%id117618%_)
                          (gx#phi-context:::init!__0
                           _%self117617%_
                           _%id117618%_))
                        _g117687_))
                ((##fx= _g117686_ 3)
                 (apply (lambda (_%self117622%_ _%id117623%_ _%super117624%_)
                          (gx#phi-context:::init!__%
                           _%self117622%_
                           _%id117623%_
                           _%super117624%_))
                        _g117687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g117687_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117452%_ _%super117453%_)
        (let ()
          (let ((_%self117456%_ _%self117452%_))
            (let ()
              (if (##fx< '3 (##structure-length _%self117456%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self117456%_
                     (##gensym 'L)
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117456%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117456%_
                     _%super117453%_
                     '3
                     '#f
                     '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self117456%_
                         '3
                         (##vector-length _%self117456%_))))))))
    (define gx#local-context:::init!__0
      (lambda (_%self117469%_)
        (let ((_%super117471%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self117469%_ _%super117471%_))))
    (define gx#local-context:::init!
      (lambda _g117689_
        (let ((_g117688_ (##length _g117689_)))
          (cond ((##fx= _g117688_ 1)
                 (apply (lambda (_%self117469%_)
                          (gx#local-context:::init!__0 _%self117469%_))
                        _g117689_))
                ((##fx= _g117688_ 2)
                 (apply (lambda (_%self117473%_ _%super117474%_)
                          (gx#local-context:::init!__%
                           _%self117473%_
                           _%super117474%_))
                        _g117689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g117689_))))))
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
      (lambda _%$args117326%_
        (apply make-instance gx#binding::t _%$args117326%_)))
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
      (lambda _%$args117323%_
        (apply make-instance gx#runtime-binding::t _%$args117323%_)))
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
      (lambda _%$args117320%_
        (apply make-instance gx#local-binding::t _%$args117320%_)))
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
      (lambda _%$args117317%_
        (apply make-instance gx#top-binding::t _%$args117317%_)))
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
      (lambda _%$args117314%_
        (apply make-instance gx#module-binding::t _%$args117314%_)))
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
      (lambda _%$args117311%_
        (apply make-instance gx#extern-binding::t _%$args117311%_)))
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
      (lambda _%$args117308%_
        (apply make-instance gx#syntax-binding::t _%$args117308%_)))
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
      (lambda _%$args117305%_
        (apply make-instance gx#import-binding::t _%$args117305%_)))
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
      (lambda _%$args117302%_
        (apply make-instance gx#alias-binding::t _%$args117302%_)))
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
      (lambda _%$args117299%_
        (apply make-instance gx#expander::t _%$args117299%_)))
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
      (lambda _%$args117296%_
        (apply make-instance gx#core-expander::t _%$args117296%_)))
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
      (lambda _%$args117293%_
        (apply make-instance gx#expression-form::t _%$args117293%_)))
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
      (lambda _%$args117290%_
        (apply make-instance gx#special-form::t _%$args117290%_)))
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
      (lambda _%$args117287%_
        (apply make-instance gx#definition-form::t _%$args117287%_)))
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
      (lambda _%$args117284%_
        (apply make-instance gx#top-special-form::t _%$args117284%_)))
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
      (lambda _%$args117281%_
        (apply make-instance gx#module-special-form::t _%$args117281%_)))
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
      (lambda _%$args117278%_
        (apply make-instance gx#feature-expander::t _%$args117278%_)))
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
      (lambda _%$args117275%_
        (apply make-instance gx#private-feature-expander::t _%$args117275%_)))
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
      (lambda _%$args117272%_
        (apply make-instance gx#reserved-expander::t _%$args117272%_)))
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
      (lambda _%$args117269%_
        (apply make-instance gx#macro-expander::t _%$args117269%_)))
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
      (lambda _%$args117266%_
        (apply make-instance gx#rename-macro-expander::t _%$args117266%_)))
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
      (lambda _%$args117263%_
        (apply make-instance gx#user-expander::t _%$args117263%_)))
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
      (lambda _%$args117260%_
        (apply make-instance gx#expander-mark::t _%$args117260%_)))
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
      (lambda (_%ctx117244%_
               _%message117245%_
               _%stx117246%_
               .
               _%details117247%_)
        (let ((_%ctx117258%_
               (let ((_%$e117249%_ _%ctx117244%_))
                 (if _%$e117249%_
                     _%$e117249%_
                     (let ((_%$e117252%_ (gx#core-context-top__0)))
                       (if _%$e117252%_
                           ((lambda (_%ctx117255%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117255%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117252%_)
                           (let () '#f)))))))
          (raise (make-syntax-error
                  _%message117245%_
                  (cons _%stx117246%_ _%details117247%_)
                  _%ctx117258%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117231%_ _%expression?117232%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117231%_ _%expression?117232%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117237%_)
        (let ((_%expression?117239%_ '#f))
          (gx#eval-syntax__% _%stx117237%_ _%expression?117239%_))))
    (define gx#eval-syntax
      (lambda _g117691_
        (let ((_g117690_ (##length _g117691_)))
          (cond ((##fx= _g117690_ 1)
                 (apply (lambda (_%stx117237%_)
                          (gx#eval-syntax__0 _%stx117237%_))
                        _g117691_))
                ((##fx= _g117690_ 2)
                 (apply (lambda (_%stx117241%_ _%expression?117242%_)
                          (gx#eval-syntax__%
                           _%stx117241%_
                           _%expression?117242%_))
                        _g117691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g117691_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117228%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117228%_))))
    (define gx#core-expand__%
      (lambda (_%stx117215%_ _%expression?117216%_)
        (if _%expression?117216%_
            (gx#core-expand-expression _%stx117215%_)
            (gx#core-expand-top _%stx117215%_))))
    (define gx#core-expand__0
      (lambda (_%stx117221%_)
        (let ((_%expression?117223%_ '#f))
          (gx#core-expand__% _%stx117221%_ _%expression?117223%_))))
    (define gx#core-expand
      (lambda _g117693_
        (let ((_g117692_ (##length _g117693_)))
          (cond ((##fx= _g117692_ 1)
                 (apply (lambda (_%stx117221%_)
                          (gx#core-expand__0 _%stx117221%_))
                        _g117693_))
                ((##fx= _g117692_ 2)
                 (apply (lambda (_%stx117225%_ _%expression?117226%_)
                          (gx#core-expand__%
                           _%stx117225%_
                           _%expression?117226%_))
                        _g117693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g117693_))))))
    (define gx#core-expand-top
      (lambda (_%stx117182%_)
        (let* ((_%stx117184%_ (gx#core-expand*__0 _%stx117182%_))
               (_%e117185117192%_ _%stx117184%_)
               (_%E117187117196%_
                (lambda () (gx#core-expand-expression _%stx117184%_)))
               (_%E117186117210%_
                (lambda ()
                  (if (gx#stx-pair? _%e117185117192%_)
                      (let ((_%e117188117200%_
                             (gx#syntax-e _%e117185117192%_)))
                        (let ((_%hd117189117203%_ (##car _%e117188117200%_))
                              (_%tl117190117205%_ (##cdr _%e117188117200%_)))
                          (let ((_%form117208%_ _%hd117189117203%_))
                            (if (gx#core-bound-identifier?__0 _%form117208%_)
                                _%stx117184%_
                                (_%E117187117196%_)))))
                      (_%E117187117196%_)))))
          (_%E117186117210%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117114%_)
        (letrec ((_%sealed-expression?117116%_
                  (lambda (_%hd117152%_)
                    (if (gx#sealed-syntax? _%hd117152%_)
                        (let* ((_%e117153117160%_ _%hd117152%_)
                               (_%E117155117164%_ (lambda () '#f))
                               (_%E117154117178%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117153117160%_)
                                      (let ((_%e117156117168%_
                                             (gx#syntax-e _%e117153117160%_)))
                                        (let ((_%hd117157117171%_
                                               (##car _%e117156117168%_))
                                              (_%tl117158117173%_
                                               (##cdr _%e117156117168%_)))
                                          (let ((_%form117176%_
                                                 _%hd117157117171%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117176%_
                                                 gx#expression-form-binding?)
                                                (_%E117155117164%_)))))
                                      (_%E117155117164%_)))))
                          (_%E117154117178%_))
                        '#f)))
                 (_%illegal-expression117117%_
                  (lambda (_%hd117149%_ . _%_117150%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117114%_
                     _%hd117149%_)))
                 (_%expand-e117118%_
                  (lambda (_%form117141%_ _%hd117142%_)
                    (let ((_%bind117144%_
                           (if (##structure-instance-of?
                                _%form117141%_
                                'gx#binding::t)
                               _%form117141%_
                               (gx#resolve-identifier__0 _%form117141%_))))
                      (if (gx#core-expander-binding? _%bind117144%_)
                          (let ()
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _%bind117144%_
                              '4
                              '#f
                              '#f)
                             (gx#stx-wrap-source
                              _%hd117142%_
                              (gx#stx-source _%stx117114%_))))
                          (if (##structure-direct-instance-of?
                               _%bind117144%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-expand-expression
                                 (gx#core-apply-expander__0
                                  (##unchecked-structure-ref
                                   _%bind117144%_
                                   '4
                                   '#f
                                   '#f)
                                  (gx#stx-wrap-source
                                   _%hd117142%_
                                   (gx#stx-source _%stx117114%_)))))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; missing expander"
                                 _%stx117114%_
                                 _%form117141%_))))))))
          (let ((_%hd117120%_ (gx#core-expand-head _%stx117114%_)))
            (if (_%sealed-expression?117116%_ _%hd117120%_)
                (let () _%hd117120%_)
                (if (gx#stx-pair? _%hd117120%_)
                    (let ()
                      (let* ((_%form117124%_ (gx#stx-car _%hd117120%_))
                             (_%bind117126%_
                              (if (gx#identifier? _%form117124%_)
                                  (gx#resolve-identifier__0 _%form117124%_)
                                  '#f)))
                        (if (or (not _%bind117126%_)
                                (not (gx#core-expander-binding?
                                      _%bind117126%_)))
                            (let ()
                              (_%expand-e117118%_
                               '%%app
                               (cons '%%app _%hd117120%_)))
                            (if (eq? (##unchecked-structure-ref
                                      _%bind117126%_
                                      '1
                                      '#f
                                      '#f)
                                     '%#begin)
                                (let ()
                                  (gx#core-expand-block*
                                   _%hd117120%_
                                   _%illegal-expression117117%_))
                                (if (gx#expression-form-binding?
                                     _%bind117126%_)
                                    (let ()
                                      (_%expand-e117118%_
                                       _%bind117126%_
                                       _%hd117120%_))
                                    (if (gx#direct-special-form-binding?
                                         _%bind117126%_)
                                        (let ()
                                          (gx#core-expand-expression
                                           (_%expand-e117118%_
                                            _%bind117126%_
                                            _%hd117120%_)))
                                        (let ()
                                          (_%illegal-expression117117%_
                                           _%hd117120%_))))))))
                    (if (gx#core-bound-identifier?__0 _%hd117120%_)
                        (let () (_%illegal-expression117117%_ _%hd117120%_))
                        (if (gx#identifier? _%hd117120%_)
                            (let ()
                              (_%expand-e117118%_
                               '%%ref
                               (cons '%%ref (cons _%hd117120%_ '()))))
                            (if (gx#stx-datum? _%hd117120%_)
                                (let ()
                                  (_%expand-e117118%_
                                   '%#quote
                                   (cons '%#quote (cons _%hd117120%_ '()))))
                                (let ()
                                  (_%illegal-expression117117%_
                                   _%hd117120%_)))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117109%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117112%_ (gx#core-expand-expression _%stx117109%_)))
             (values _%stx117112%_ (gx#eval-syntax* _%stx117112%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx117090%_ _%stop?117091%_)
        (let _%lp117093%_ ((_%stx117095%_ _%stx117090%_))
          (if (_%stop?117091%_ _%stx117095%_)
              _%stx117095%_
              (let ((_%rstx117097%_ (gx#core-expand1 _%stx117095%_)))
                (if (eq? _%stx117095%_ _%rstx117097%_)
                    _%stx117095%_
                    (_%lp117093%_ _%rstx117097%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx117102%_)
        (let ((_%stop?117104%_ false))
          (gx#core-expand*__% _%stx117102%_ _%stop?117104%_))))
    (define gx#core-expand*
      (lambda _g117695_
        (let ((_g117694_ (##length _g117695_)))
          (cond ((##fx= _g117694_ 1)
                 (apply (lambda (_%stx117102%_)
                          (gx#core-expand*__0 _%stx117102%_))
                        _g117695_))
                ((##fx= _g117694_ 2)
                 (apply (lambda (_%stx117106%_ _%stop?117107%_)
                          (gx#core-expand*__% _%stx117106%_ _%stop?117107%_))
                        _g117695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g117695_))))))
    (define gx#core-expand1
      (lambda (_%stx117042%_)
        (letrec ((_%step117044%_
                  (lambda (_%hd117081%_)
                    (let ((_%bind117083%_
                           (gx#resolve-identifier__0 _%hd117081%_)))
                      (if (##structure-instance-of?
                           _%bind117083%_
                           'gx#runtime-binding::t)
                          (let () _%stx117042%_)
                          (if (##structure-direct-instance-of?
                               _%bind117083%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-apply-expander__0
                                 (##unchecked-structure-ref
                                  _%bind117083%_
                                  '4
                                  '#f
                                  '#f)
                                 _%stx117042%_))
                              (if (not _%bind117083%_)
                                  (let () _%stx117042%_)
                                  (let ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; no binding for head"
                                     _%stx117042%_)))))))))
          (let* ((_%e117045117053%_ _%stx117042%_)
                 (_%E117051117057%_ (lambda () _%stx117042%_))
                 (_%E117047117063%_
                  (lambda ()
                    (let ((_%hd117061%_ _%e117045117053%_))
                      (if (gx#identifier? _%hd117061%_)
                          (_%step117044%_ _%hd117061%_)
                          (_%E117051117057%_)))))
                 (_%E117046117077%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117045117053%_)
                        (let ((_%e117048117067%_
                               (gx#syntax-e _%e117045117053%_)))
                          (let ((_%hd117049117070%_ (##car _%e117048117067%_))
                                (_%tl117050117072%_ (##cdr _%e117048117067%_)))
                            (let ((_%hd117075%_ _%hd117049117070%_))
                              (if (gx#identifier? _%hd117075%_)
                                  (_%step117044%_ _%hd117075%_)
                                  (_%E117047117063%_)))))
                        (_%E117047117063%_)))))
            (_%E117046117077%_)))))
    (define gx#core-expand-head
      (lambda (_%stx117008%_)
        (letrec ((_%stop?117010%_
                  (lambda (_%stx117012%_)
                    (let* ((_%e117013117020%_ _%stx117012%_)
                           (_%E117015117024%_ (lambda () '#f))
                           (_%E117014117038%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117013117020%_)
                                  (let ((_%e117016117028%_
                                         (gx#syntax-e _%e117013117020%_)))
                                    (let ((_%hd117017117031%_
                                           (##car _%e117016117028%_))
                                          (_%tl117018117033%_
                                           (##cdr _%e117016117028%_)))
                                      (let ((_%hd117036%_ _%hd117017117031%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd117036%_)
                                            (_%E117015117024%_)))))
                                  (_%E117015117024%_)))))
                      (_%E117014117038%_)))))
          (gx#core-expand*__% _%stx117008%_ _%stop?117010%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx116814%_
               _%expand-special116815%_
               _%begin-form116816%_
               _%expand-e116817%_)
        (letrec ((_%expand-splice116819%_
                  (lambda (_%hd116982%_
                           _%body116983%_
                           _%rest116984%_
                           _%r116985%_)
                    (if (gx#stx-list? _%body116983%_)
                        (_%K116823%_
                         (gx#stx-foldr cons _%rest116984%_ _%body116983%_)
                         _%r116985%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx116814%_
                         _%hd116982%_))))
                 (_%expand-cond-expand116820%_
                  (lambda (_%hd116978%_ _%rest116979%_ _%r116980%_)
                    (_%K116823%_
                     (cons (gx#core-expand-cond-expand% _%hd116978%_)
                           _%rest116979%_)
                     _%r116980%_)))
                 (_%expand-include116821%_
                  (lambda (_%hd116927%_ _%rest116928%_ _%r116929%_)
                    (let* ((_%e116930116940%_ _%hd116927%_)
                           (_%E116932116944%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116930116940%_)))
                           (_%E116931116974%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116930116940%_)
                                  (let ((_%e116933116948%_
                                         (gx#syntax-e _%e116930116940%_)))
                                    (let ((_%hd116934116951%_
                                           (##car _%e116933116948%_))
                                          (_%tl116935116953%_
                                           (##cdr _%e116933116948%_)))
                                      (if (gx#stx-pair? _%tl116935116953%_)
                                          (let ((_%e116936116956%_
                                                 (gx#syntax-e
                                                  _%tl116935116953%_)))
                                            (let ((_%hd116937116959%_
                                                   (##car _%e116936116956%_))
                                                  (_%tl116938116961%_
                                                   (##cdr _%e116936116956%_)))
                                              (let ((_%path116964%_
                                                     _%hd116937116959%_))
                                                (if (gx#stx-null?
                                                     _%tl116938116961%_)
                                                    (if (gx#stx-string?
                                                         _%path116964%_)
                                                        (let* ((_%rpath116966%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path116964%_
                         (gx#stx-source _%hd116927%_)))
                       (_%block116968%_
                        (gx#core-expand-include%__%
                         _%hd116927%_
                         _%rpath116966%_))
                       (_%rbody116971%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block116968%_
                            _%expand-special116815%_
                            '#f
                            _%expand-e116817%_))
                         gx#current-expander-path
                         (cons _%rpath116966%_ (gx#current-expander-path)))))
                  (_%K116823%_
                   _%rest116928%_
                   (__foldr1 cons _%r116929%_ _%rbody116971%_)))
                (_%E116932116944%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E116932116944%_)))))
                                          (_%E116932116944%_))))
                                  (_%E116932116944%_)))))
                      (_%E116931116974%_))))
                 (_%expand-expression116822%_
                  (lambda (_%hd116923%_ _%rest116924%_ _%r116925%_)
                    (_%K116823%_
                     _%rest116924%_
                     (cons (_%expand-e116817%_ _%hd116923%_) _%r116925%_))))
                 (_%K116823%_
                  (lambda (_%rest116853%_ _%r116854%_)
                    (let* ((_%e116855116862%_ _%rest116853%_)
                           (_%E116857116866%_
                            (lambda ()
                              (if _%begin-form116816%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form116816%_
                                    (reverse _%r116854%_))
                                   (gx#stx-source _%stx116814%_))
                                  _%r116854%_)))
                           (_%E116856116919%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116855116862%_)
                                  (let ((_%e116858116870%_
                                         (gx#syntax-e _%e116855116862%_)))
                                    (let ((_%hd116859116873%_
                                           (##car _%e116858116870%_))
                                          (_%tl116860116875%_
                                           (##cdr _%e116858116870%_)))
                                      (let* ((_%hd116878%_ _%hd116859116873%_)
                                             (_%rest116880%_
                                              _%tl116860116875%_))
                                        (if '#t
                                            (let* ((_%hd116882%_
                                                    (gx#core-expand-head
                                                     _%hd116878%_))
                                                   (_%e116883116890%_
                                                    _%hd116882%_)
                                                   (_%E116885116894%_
                                                    (lambda ()
                                                      (_%expand-expression116822%_
                                                       _%hd116882%_
                                                       _%rest116880%_
                                                       _%r116854%_)))
                                                   (_%E116884116915%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116883116890%_)
                                                          (let ((_%e116886116898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116883116890%_)))
                    (let ((_%hd116887116901%_ (##car _%e116886116898%_))
                          (_%tl116888116903%_ (##cdr _%e116886116898%_)))
                      (let* ((_%form116906%_ _%hd116887116901%_)
                             (_%body116908%_ _%tl116888116903%_))
                        (if '#t
                            (let ((_%bind116910%_
                                   (if (gx#identifier? _%form116906%_)
                                       (gx#resolve-identifier__0
                                        _%form116906%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind116910%_)
                                  (let ((_%$e116912%_
                                         (##unchecked-structure-ref
                                          _%bind116910%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e116912%_)
                                        (_%expand-splice116819%_
                                         _%hd116882%_
                                         _%body116908%_
                                         _%rest116880%_
                                         _%r116854%_)
                                        (if (eq? '%#cond-expand _%$e116912%_)
                                            (_%expand-cond-expand116820%_
                                             _%hd116882%_
                                             _%rest116880%_
                                             _%r116854%_)
                                            (if (eq? '%#include _%$e116912%_)
                                                (_%expand-include116821%_
                                                 _%hd116882%_
                                                 _%rest116880%_
                                                 _%r116854%_)
                                                (_%expand-special116815%_
                                                 _%hd116882%_
                                                 _%K116823%_
                                                 _%rest116880%_
                                                 _%r116854%_)))))
                                  (_%expand-expression116822%_
                                   _%hd116882%_
                                   _%rest116880%_
                                   _%r116854%_)))
                            (_%E116885116894%_)))))
                  (_%E116885116894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116884116915%_))
                                            (_%E116857116866%_)))))
                                  (_%E116857116866%_)))))
                      (_%E116856116919%_)))))
          (let* ((_%e116824116831%_ _%stx116814%_)
                 (_%E116826116835%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116824116831%_)))
                 (_%E116825116849%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116824116831%_)
                        (let ((_%e116827116839%_
                               (gx#syntax-e _%e116824116831%_)))
                          (let ((_%hd116828116842%_ (##car _%e116827116839%_))
                                (_%tl116829116844%_ (##cdr _%e116827116839%_)))
                            (let ((_%body116847%_ _%tl116829116844%_))
                              (if (gx#stx-list? _%body116847%_)
                                  (_%K116823%_ _%body116847%_ '())
                                  (_%E116826116835%_)))))
                        (_%E116826116835%_)))))
            (_%E116825116849%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx116990%_ _%expand-special116991%_)
        (let* ((_%begin-form116993%_ '%#begin)
               (_%expand-e116995%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx116990%_
           _%expand-special116991%_
           _%begin-form116993%_
           _%expand-e116995%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx116997%_ _%expand-special116998%_ _%begin-form116999%_)
        (let ((_%expand-e117001%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx116997%_
           _%expand-special116998%_
           _%begin-form116999%_
           _%expand-e117001%_))))
    (define gx#core-expand-block
      (lambda _g117697_
        (let ((_g117696_ (##length _g117697_)))
          (cond ((##fx= _g117696_ 2)
                 (apply (lambda (_%stx116990%_ _%expand-special116991%_)
                          (gx#core-expand-block__0
                           _%stx116990%_
                           _%expand-special116991%_))
                        _g117697_))
                ((##fx= _g117696_ 3)
                 (apply (lambda (_%stx116997%_
                                 _%expand-special116998%_
                                 _%begin-form116999%_)
                          (gx#core-expand-block__1
                           _%stx116997%_
                           _%expand-special116998%_
                           _%begin-form116999%_))
                        _g117697_))
                ((##fx= _g117696_ 4)
                 (apply (lambda (_%stx117003%_
                                 _%expand-special117004%_
                                 _%begin-form117005%_
                                 _%expand-e117006%_)
                          (gx#core-expand-block__%
                           _%stx117003%_
                           _%expand-special117004%_
                           _%begin-form117005%_
                           _%expand-e117006%_))
                        _g117697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g117697_))))))
    (define gx#core-expand-block*
      (lambda (_%stx116762%_ _%expand-special116763%_)
        (let* ((_%g116764116775%_
                (gx#core-expand-block__1
                 _%stx116762%_
                 _%expand-special116763%_
                 '#f))
               (_%E116768116779%_
                (lambda ()
                  (error '"No clause matching"
                         _%g116764116775%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K116773116810%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx116762%_)))
                (_%K116770116796%_ (lambda (_%expr116794%_) _%expr116794%_))
                (_%K116769116785%_
                 (lambda (_%body116783%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body116783%_))
                    (gx#stx-source _%stx116762%_)))))
            (let ((_%try-match116766116806%_
                   (lambda ()
                     (if (##pair? _%g116764116775%_)
                         (let ((_%tl116772116801%_ (##cdr _%g116764116775%_))
                               (_%hd116771116799%_ (##car _%g116764116775%_)))
                           (if (##null? _%tl116772116801%_)
                               (let ((_%expr116804%_ _%hd116771116799%_))
                                 (_%K116770116796%_ _%expr116804%_))
                               (let ((_%body116788%_ _%g116764116775%_))
                                 (_%K116769116785%_ _%body116788%_))))
                         (let ((_%body116788%_ _%g116764116775%_))
                           (_%K116769116785%_ _%body116788%_))))))
              (if (##null? _%g116764116775%_)
                  (_%K116773116810%_)
                  (_%try-match116766116806%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx116587%_)
        (letrec ((_%satisfied?116589%_
                  (lambda (_%condition116690%_)
                    (let* ((_%e116691116706%_ _%condition116690%_)
                           (_%E116701116710%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116691116706%_)))
                           (_%E116694116729%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116691116706%_)
                                  (let ((_%e116702116714%_
                                         (gx#syntax-e _%e116691116706%_)))
                                    (let ((_%hd116703116717%_
                                           (##car _%e116702116714%_))
                                          (_%tl116704116719%_
                                           (##cdr _%e116702116714%_)))
                                      (let* ((_%combinator116722%_
                                              _%hd116703116717%_)
                                             (_%body116724%_
                                              _%tl116704116719%_))
                                        (if (gx#stx-list? _%body116724%_)
                                            (let ((_%$e116726%_
                                                   (gx#stx-e
                                                    _%combinator116722%_)))
                                              (if (eq? 'not _%$e116726%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?116589%_
                                                        _%body116724%_))
                                                  (if (eq? 'and _%$e116726%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?116589%_
                                                       _%body116724%_)
                                                      (if (eq? 'or
                                                               _%$e116726%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?116589%_
                                                           _%body116724%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e116726%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body116724%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx116587%_
                       _%combinator116722%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E116701116710%_)))))
                                  (_%E116701116710%_))))
                           (_%E116693116752%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116691116706%_)
                                  (let ((_%e116695116733%_
                                         (gx#syntax-e _%e116691116706%_)))
                                    (let ((_%hd116696116736%_
                                           (##car _%e116695116733%_))
                                          (_%tl116697116738%_
                                           (##cdr _%e116695116733%_)))
                                      (if (and (gx#identifier?
                                                _%hd116696116736%_)
                                               (gx#core-identifier=?
                                                _%hd116696116736%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl116697116738%_)
                                              (let ((_%e116698116741%_
                                                     (gx#syntax-e
                                                      _%tl116697116738%_)))
                                                (let ((_%hd116699116744%_
                                                       (##car _%e116698116741%_))
                                                      (_%tl116700116746%_
                                                       (##cdr _%e116698116741%_)))
                                                  (let ((_%expr116749%_
                                                         _%hd116699116744%_))
                                                    (if (gx#stx-null?
                                                         _%tl116700116746%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr116749%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E116694116729%_))
                (_%E116694116729%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116694116729%_))
                                          (_%E116694116729%_))))
                                  (_%E116694116729%_))))
                           (_%E116692116758%_
                            (lambda ()
                              (let ((_%id116756%_ _%e116691116706%_))
                                (if (gx#identifier? _%id116756%_)
                                    (gx#core-bound-identifier?__%
                                     _%id116756%_
                                     gx#feature-binding?)
                                    (_%E116693116752%_))))))
                      (_%E116692116758%_))))
                 (_%loop116590%_
                  (lambda (_%rest116620%_)
                    (let* ((_%e116621116629%_ _%rest116620%_)
                           (_%E116627116633%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116621116629%_)))
                           (_%E116623116637%_
                            (lambda ()
                              (if (gx#stx-null? _%e116621116629%_)
                                  (if '#t '() (_%E116627116633%_))
                                  (_%E116627116633%_))))
                           (_%E116622116686%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116621116629%_)
                                  (let ((_%e116624116641%_
                                         (gx#syntax-e _%e116621116629%_)))
                                    (let ((_%hd116625116644%_
                                           (##car _%e116624116641%_))
                                          (_%tl116626116646%_
                                           (##cdr _%e116624116641%_)))
                                      (let* ((_%hd116649%_ _%hd116625116644%_)
                                             (_%rest116651%_
                                              _%tl116626116646%_))
                                        (if '#t
                                            (let* ((_%e116652116659%_
                                                    _%hd116649%_)
                                                   (_%E116654116663%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e116652116659%_)))
                                                   (_%E116653116682%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116652116659%_)
                                                          (let ((_%e116655116667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116652116659%_)))
                    (let ((_%hd116656116670%_ (##car _%e116655116667%_))
                          (_%tl116657116672%_ (##cdr _%e116655116667%_)))
                      (let* ((_%condition116675%_ _%hd116656116670%_)
                             (_%body116677%_ _%tl116657116672%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition116675%_ 'else)
                                (let ()
                                  (if (gx#stx-null? _%rest116651%_)
                                      _%body116677%_
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; clauses after else"
                                       _%stx116587%_
                                       _%hd116649%_)))
                                (if (_%satisfied?116589%_ _%condition116675%_)
                                    (let () _%body116677%_)
                                    (let () (_%loop116590%_ _%rest116651%_))))
                            (_%E116654116663%_)))))
                  (_%E116654116663%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116653116682%_))
                                            (_%E116623116637%_)))))
                                  (_%E116623116637%_)))))
                      (_%E116622116686%_)))))
          (let* ((_%e116591116598%_ _%stx116587%_)
                 (_%E116593116602%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116591116598%_)))
                 (_%E116592116616%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116591116598%_)
                        (let ((_%e116594116606%_
                               (gx#syntax-e _%e116591116598%_)))
                          (let ((_%hd116595116609%_ (##car _%e116594116606%_))
                                (_%tl116596116611%_ (##cdr _%e116594116606%_)))
                            (let ((_%clauses116614%_ _%tl116596116611%_))
                              (if (gx#stx-list? _%clauses116614%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop116590%_ _%clauses116614%_))
                                  (_%E116593116602%_)))))
                        (_%E116593116602%_)))))
            (_%E116592116616%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx116530%_ _%rpath116531%_)
        (let* ((_%e116532116542%_ _%stx116530%_)
               (_%E116534116546%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e116532116542%_)))
               (_%E116533116573%_
                (lambda ()
                  (if (gx#stx-pair? _%e116532116542%_)
                      (let ((_%e116535116550%_
                             (gx#syntax-e _%e116532116542%_)))
                        (let ((_%hd116536116553%_ (##car _%e116535116550%_))
                              (_%tl116537116555%_ (##cdr _%e116535116550%_)))
                          (if (gx#stx-pair? _%tl116537116555%_)
                              (let ((_%e116538116558%_
                                     (gx#syntax-e _%tl116537116555%_)))
                                (let ((_%hd116539116561%_
                                       (##car _%e116538116558%_))
                                      (_%tl116540116563%_
                                       (##cdr _%e116538116558%_)))
                                  (let ((_%path116566%_ _%hd116539116561%_))
                                    (if (gx#stx-null? _%tl116540116563%_)
                                        (if (gx#stx-string? _%path116566%_)
                                            (let ((_%rpath116571%_
                                                   (let ((_%$e116568%_
                                                          _%rpath116531%_))
                                                     (if _%$e116568%_
                                                         _%$e116568%_
                                                         (gx#core-resolve-path__%
                                                          _%path116566%_
                                                          (gx#stx-source
                                                           _%stx116530%_))))))
                                              (if (member _%rpath116571%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx116530%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath116571%_))
                                                    (gx#stx-source
                                                     _%stx116530%_)))))
                                            (_%E116534116546%_))
                                        (_%E116534116546%_)))))
                              (_%E116534116546%_))))
                      (_%E116534116546%_)))))
          (_%E116533116573%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx116580%_)
        (let ((_%rpath116582%_ '#f))
          (gx#core-expand-include%__% _%stx116580%_ _%rpath116582%_))))
    (define gx#core-expand-include%
      (lambda _g117699_
        (let ((_g117698_ (##length _g117699_)))
          (cond ((##fx= _g117698_ 1)
                 (apply (lambda (_%stx116580%_)
                          (gx#core-expand-include%__0 _%stx116580%_))
                        _g117699_))
                ((##fx= _g117698_ 2)
                 (apply (lambda (_%stx116584%_ _%rpath116585%_)
                          (gx#core-expand-include%__%
                           _%stx116584%_
                           _%rpath116585%_))
                        _g117699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g117699_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K116496%_ _%stx116497%_ _%method116498%_)
        (if (procedure? _%K116496%_)
            (let ()
              (let ((_%$e116501%_ (gx#stx-source _%stx116497%_)))
                (if _%$e116501%_
                    ((lambda (_%g116503116505%_)
                       (gx#stx-wrap-source
                        (_%K116496%_ _%stx116497%_)
                        _%g116503116505%_))
                     _%$e116501%_)
                    (let () (_%K116496%_ _%stx116497%_)))))
            (let ((_%$e116509%_
                   (bound-method-ref _%K116496%_ _%method116498%_)))
              (if _%$e116509%_
                  ((lambda (_%g116511116513%_)
                     (gx#core-apply-expander__%
                      _%g116511116513%_
                      _%stx116497%_
                      _%method116498%_))
                   _%$e116509%_)
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; no expander method"
                     _%stx116497%_
                     _%method116498%_)))))))
    (define gx#core-apply-expander__0
      (lambda (_%K116520%_ _%stx116521%_)
        (let ((_%method116523%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K116520%_
           _%stx116521%_
           _%method116523%_))))
    (define gx#core-apply-expander
      (lambda _g117701_
        (let ((_g117700_ (##length _g117701_)))
          (cond ((##fx= _g117700_ 2)
                 (apply (lambda (_%K116520%_ _%stx116521%_)
                          (gx#core-apply-expander__0
                           _%K116520%_
                           _%stx116521%_))
                        _g117701_))
                ((##fx= _g117700_ 3)
                 (apply (lambda (_%K116525%_ _%stx116526%_ _%method116527%_)
                          (gx#core-apply-expander__%
                           _%K116525%_
                           _%stx116526%_
                           _%method116527%_))
                        _g117701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g117701_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116481%_ _%stx116482%_)
        (let ()
          (let ((_%self116485%_ _%self116481%_))
            (let ()
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; bottom method for apply-macro-expander"
               _%stx116482%_))))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116323%_ _%stx116324%_)
        (let ()
          (let ((_%self116327%_ _%self116323%_))
            (let ()
              (let* ((_%self116336116342%_ _%self116327%_)
                     (_%E116338116346%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116336116342%_
                               '((macro-expander K)))
                        '#!void))
                     (_%K116339116351%_
                      (lambda (_%K116349%_)
                        (gx#core-apply-expander__0
                         _%K116349%_
                         _%stx116324%_))))
                (if '#t
                    (let* ((_%e116340116354%_
                            (##unchecked-structure-ref
                             _%self116336116342%_
                             '1
                             '#f
                             '#f))
                           (_%K116357%_ _%e116340116354%_))
                      (_%K116339116351%_ _%K116357%_))
                    (_%E116338116346%_))))))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116165%_ _%stx116166%_)
        (let ()
          (let ((_%self116169%_ _%self116165%_))
            (let ()
              (if (gx#sealed-syntax? _%stx116166%_)
                  _%stx116166%_
                  (let* ((_%self116178116184%_ _%self116169%_)
                         (_%E116180116188%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%self116178116184%_
                                   '((core-expander K)))
                            '#!void))
                         (_%K116181116193%_
                          (lambda (_%K116191%_)
                            (gx#core-apply-expander__0
                             _%K116191%_
                             _%stx116166%_))))
                    (if '#t
                        (let* ((_%e116182116196%_
                                (##unchecked-structure-ref
                                 _%self116178116184%_
                                 '1
                                 '#f
                                 '#f))
                               (_%K116199%_ _%e116182116196%_))
                          (_%K116181116193%_ _%K116199%_))
                        (_%E116180116188%_)))))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116016%_ _%stx116017%_ _%top?116018%_)
        (let ()
          (let ((_%self116021%_ _%self116016%_))
            (let ()
              (if (_%top?116018%_ (gx#current-expander-context))
                  (gx#core-expander::apply-macro-expander
                   _%self116021%_
                   _%stx116017%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal context"
                   _%stx116017%_)))))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116034%_ _%stx116035%_)
        (let ((_%top?116037%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116034%_
           _%stx116035%_
           _%top?116037%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g117703_
        (let ((_g117702_ (##length _g117703_)))
          (cond ((##fx= _g117702_ 2)
                 (apply (lambda (_%self116034%_ _%stx116035%_)
                          (gx#top-special-form::apply-macro-expander__0
                           _%self116034%_
                           _%stx116035%_))
                        _g117703_))
                ((##fx= _g117702_ 3)
                 (apply (lambda (_%self116039%_ _%stx116040%_ _%top?116041%_)
                          (gx#top-special-form::apply-macro-expander__%
                           _%self116039%_
                           _%stx116040%_
                           _%top?116041%_))
                        _g117703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g117703_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self115879%_ _%stx115880%_)
        (let ()
          (let ((_%self115883%_ _%self115879%_))
            (let ()
              (gx#top-special-form::apply-macro-expander__%
               _%self115883%_
               _%stx115880%_
               gx#module-context?))))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self115693%_ _%stx115694%_)
        (let ()
          (let ((_%self115697%_ _%self115693%_))
            (let ()
              (let* ((_%self115706115712%_ _%self115697%_)
                     (_%E115708115716%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self115706115712%_
                               '((rename-macro-expander id)))
                        '#!void))
                     (_%K115709115749%_
                      (lambda (_%id115719%_)
                        (let* ((_%e115720115727%_ _%stx115694%_)
                               (_%E115722115731%_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e115720115727%_)))
                               (_%E115721115745%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e115720115727%_)
                                      (let ((_%e115723115735%_
                                             (gx#syntax-e _%e115720115727%_)))
                                        (let ((_%hd115724115738%_
                                               (##car _%e115723115735%_))
                                              (_%tl115725115740%_
                                               (##cdr _%e115723115735%_)))
                                          (let ((_%body115743%_
                                                 _%tl115725115740%_))
                                            (if '#t
                                                (gx#core-cons
                                                 _%id115719%_
                                                 _%body115743%_)
                                                (_%E115722115731%_)))))
                                      (_%E115722115731%_)))))
                          (_%E115721115745%_)))))
                (if '#t
                    (let* ((_%e115710115752%_
                            (##unchecked-structure-ref
                             _%self115706115712%_
                             '1
                             '#f
                             '#f))
                           (_%id115755%_ _%e115710115752%_))
                      (_%K115709115749%_ _%id115755%_))
                    (_%E115708115716%_))))))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self115519%_ _%stx115520%_ _%method115521%_)
        (let* ((_%self115522115530%_ _%self115519%_)
               (_%E115524115534%_
                (lambda ()
                  (error '"No clause matching"
                         _%self115522115530%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K115525115541%_
                (lambda (_%phi115537%_ _%ctx115538%_ _%K115539%_)
                  (gx#core-apply-user-macro
                   _%K115539%_
                   _%stx115520%_
                   _%ctx115538%_
                   _%phi115537%_
                   _%method115521%_))))
          (if (##structure-instance-of?
               _%self115522115530%_
               'gx#user-expander::t)
              (let* ((_%e115526115544%_
                      (##unchecked-structure-ref
                       _%self115522115530%_
                       '1
                       '#f
                       '#f))
                     (_%K115547%_ _%e115526115544%_)
                     (_%e115527115549%_
                      (##unchecked-structure-ref
                       _%self115522115530%_
                       '2
                       '#f
                       '#f))
                     (_%ctx115552%_ _%e115527115549%_)
                     (_%e115528115554%_
                      (##unchecked-structure-ref
                       _%self115522115530%_
                       '3
                       '#f
                       '#f))
                     (_%phi115557%_ _%e115528115554%_))
                (_%K115525115541%_ _%phi115557%_ _%ctx115552%_ _%K115547%_))
              (_%E115524115534%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self115562%_ _%stx115563%_)
        (let ((_%method115565%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self115562%_
           _%stx115563%_
           _%method115565%_))))
    (define gx#core-apply-user-expander
      (lambda _g117705_
        (let ((_g117704_ (##length _g117705_)))
          (cond ((##fx= _g117704_ 2)
                 (apply (lambda (_%self115562%_ _%stx115563%_)
                          (gx#core-apply-user-expander__0
                           _%self115562%_
                           _%stx115563%_))
                        _g117705_))
                ((##fx= _g117704_ 3)
                 (apply (lambda (_%self115567%_ _%stx115568%_ _%method115569%_)
                          (gx#core-apply-user-expander__%
                           _%self115567%_
                           _%stx115568%_
                           _%method115569%_))
                        _g117705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g117705_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K115509%_
               _%stx115510%_
               _%ctx115511%_
               _%phi115512%_
               _%method115513%_)
        (let ((_%mark115515%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx115511%_
                _%phi115512%_
                _%stx115510%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K115509%_
               (gx#stx-apply-mark _%stx115510%_ _%mark115515%_)
               _%method115513%_)
              _%mark115515%_))
           gx#current-expander-marks
           (cons _%mark115515%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115357%_ _%phi115358%_ _%ctx115359%_)
        (let _%lp115361%_ ((_%bind115363%_
                            (gx#core-resolve-identifier__%
                             _%stx115357%_
                             _%phi115358%_
                             _%ctx115359%_)))
          (if (##structure-direct-instance-of?
               _%bind115363%_
               'gx#import-binding::t)
              (let ()
                (_%lp115361%_
                 (##unchecked-structure-ref _%bind115363%_ '4 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%bind115363%_
                   'gx#alias-binding::t)
                  (let ()
                    (_%lp115361%_
                     (gx#core-resolve-identifier__%
                      (##unchecked-structure-ref _%bind115363%_ '4 '#f '#f)
                      _%phi115358%_
                      _%ctx115359%_)))
                  (let () _%bind115363%_))))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115371%_)
        (let* ((_%phi115373%_ (gx#current-expander-phi))
               (_%ctx115375%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115371%_
           _%phi115373%_
           _%ctx115375%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115377%_ _%phi115378%_)
        (let ((_%ctx115380%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115377%_
           _%phi115378%_
           _%ctx115380%_))))
    (define gx#resolve-identifier
      (lambda _g117707_
        (let ((_g117706_ (##length _g117707_)))
          (cond ((##fx= _g117706_ 1)
                 (apply (lambda (_%stx115371%_)
                          (gx#resolve-identifier__0 _%stx115371%_))
                        _g117707_))
                ((##fx= _g117706_ 2)
                 (apply (lambda (_%stx115377%_ _%phi115378%_)
                          (gx#resolve-identifier__1
                           _%stx115377%_
                           _%phi115378%_))
                        _g117707_))
                ((##fx= _g117706_ 3)
                 (apply (lambda (_%stx115382%_ _%phi115383%_ _%ctx115384%_)
                          (gx#resolve-identifier__%
                           _%stx115382%_
                           _%phi115383%_
                           _%ctx115384%_))
                        _g117707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g117707_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115312%_
               _%val115313%_
               _%rebind?115314%_
               _%phi115315%_
               _%ctx115316%_)
        (let ((_%rebind?115321%_
               (if (not _%rebind?115314%_)
                   (let () gx#core-context-rebind?)
                   (if (procedure? _%rebind?115314%_)
                       (let () _%rebind?115314%_)
                       (let () true)))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115312%_)
           _%val115313%_
           _%rebind?115321%_
           _%phi115315%_
           _%ctx115316%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115326%_ _%val115327%_)
        (let* ((_%rebind?115329%_ '#f)
               (_%phi115331%_ (gx#current-expander-phi))
               (_%ctx115333%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115326%_
           _%val115327%_
           _%rebind?115329%_
           _%phi115331%_
           _%ctx115333%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115335%_ _%val115336%_ _%rebind?115337%_)
        (let* ((_%phi115339%_ (gx#current-expander-phi))
               (_%ctx115341%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115335%_
           _%val115336%_
           _%rebind?115337%_
           _%phi115339%_
           _%ctx115341%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115343%_ _%val115344%_ _%rebind?115345%_ _%phi115346%_)
        (let ((_%ctx115348%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115343%_
           _%val115344%_
           _%rebind?115345%_
           _%phi115346%_
           _%ctx115348%_))))
    (define gx#bind-identifier!
      (lambda _g117709_
        (let ((_g117708_ (##length _g117709_)))
          (cond ((##fx= _g117708_ 2)
                 (apply (lambda (_%stx115326%_ _%val115327%_)
                          (gx#bind-identifier!__0 _%stx115326%_ _%val115327%_))
                        _g117709_))
                ((##fx= _g117708_ 3)
                 (apply (lambda (_%stx115335%_ _%val115336%_ _%rebind?115337%_)
                          (gx#bind-identifier!__1
                           _%stx115335%_
                           _%val115336%_
                           _%rebind?115337%_))
                        _g117709_))
                ((##fx= _g117708_ 4)
                 (apply (lambda (_%stx115343%_
                                 _%val115344%_
                                 _%rebind?115345%_
                                 _%phi115346%_)
                          (gx#bind-identifier!__2
                           _%stx115343%_
                           _%val115344%_
                           _%rebind?115345%_
                           _%phi115346%_))
                        _g117709_))
                ((##fx= _g117708_ 5)
                 (apply (lambda (_%stx115350%_
                                 _%val115351%_
                                 _%rebind?115352%_
                                 _%phi115353%_
                                 _%ctx115354%_)
                          (gx#bind-identifier!__%
                           _%stx115350%_
                           _%val115351%_
                           _%rebind?115352%_
                           _%phi115353%_
                           _%ctx115354%_))
                        _g117709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g117709_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115278%_ _%phi115279%_ _%ctx115280%_)
        (let _%lp115282%_ ((_%e115284%_ _%stx115278%_)
                           (_%marks115285%_ (gx#current-expander-marks)))
          (if (symbol? _%e115284%_)
              (let ()
                (gx#core-resolve-binding
                 _%e115284%_
                 _%phi115279%_
                 _%phi115279%_
                 _%ctx115280%_
                 (reverse _%marks115285%_)))
              (if (gx#identifier-quote? _%e115284%_)
                  (let ()
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _%e115284%_ '1 '#f '#f)
                     _%phi115279%_
                     '0
                     (##unchecked-structure-ref _%e115284%_ '3 '#f '#f)
                     (##unchecked-structure-ref _%e115284%_ '4 '#f '#f)))
                  (if (##structure-direct-instance-of?
                       _%e115284%_
                       'gx#identifier-wrap::t)
                      (let ()
                        (gx#core-resolve-binding
                         (##unchecked-structure-ref _%e115284%_ '1 '#f '#f)
                         _%phi115279%_
                         _%phi115279%_
                         _%ctx115280%_
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e115284%_ '3 '#f '#f)
                          _%marks115285%_)))
                      (if (##structure-direct-instance-of?
                           _%e115284%_
                           'gx#syntax-wrap::t)
                          (let ()
                            (_%lp115282%_
                             (##unchecked-structure-ref _%e115284%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e115284%_
                               '3
                               '#f
                               '#f)
                              _%marks115285%_)))
                          (if (##structure-instance-of?
                               _%e115284%_
                               'gerbil#AST::t)
                              (let ()
                                (_%lp115282%_
                                 (##unchecked-structure-ref
                                  _%e115284%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115285%_))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad identifier"
                                 _%stx115278%_))))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115296%_)
        (let* ((_%phi115298%_ (gx#current-expander-phi))
               (_%ctx115300%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115296%_
           _%phi115298%_
           _%ctx115300%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115302%_ _%phi115303%_)
        (let ((_%ctx115305%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115302%_
           _%phi115303%_
           _%ctx115305%_))))
    (define gx#core-resolve-identifier
      (lambda _g117711_
        (let ((_g117710_ (##length _g117711_)))
          (cond ((##fx= _g117710_ 1)
                 (apply (lambda (_%stx115296%_)
                          (gx#core-resolve-identifier__0 _%stx115296%_))
                        _g117711_))
                ((##fx= _g117710_ 2)
                 (apply (lambda (_%stx115302%_ _%phi115303%_)
                          (gx#core-resolve-identifier__1
                           _%stx115302%_
                           _%phi115303%_))
                        _g117711_))
                ((##fx= _g117710_ 3)
                 (apply (lambda (_%stx115307%_ _%phi115308%_ _%ctx115309%_)
                          (gx#core-resolve-identifier__%
                           _%stx115307%_
                           _%phi115308%_
                           _%ctx115309%_))
                        _g117711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g117711_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115188%_
               _%phi115189%_
               _%src-phi115190%_
               _%ctx115191%_
               _%marks115192%_)
        (letrec ((_%resolve115194%_
                  (lambda (_%ctx115262%_ _%src-phi115263%_ _%key115264%_)
                    (let _%lp115266%_ ((_%ctx115268%_
                                        (gx#core-context-shift
                                         _%ctx115262%_
                                         _%phi115189%_))
                                       (_%dphi115269%_
                                        (fx- _%phi115189%_ _%src-phi115263%_)))
                      (let ((_%$e115271%_
                             (gx#core-context-resolve
                              _%ctx115268%_
                              _%key115264%_)))
                        (if _%$e115271%_
                            (values _%$e115271%_)
                            (if (fxzero? _%dphi115269%_)
                                (let () '#f)
                                (if (fxpositive? _%dphi115269%_)
                                    (let ()
                                      (_%lp115266%_
                                       (gx#core-context-shift
                                        _%ctx115268%_
                                        '-1)
                                       (##fx- _%dphi115269%_ '1)))
                                    (let ()
                                      (_%lp115266%_
                                       (gx#core-context-shift _%ctx115268%_ '1)
                                       (##fx+ _%dphi115269%_ '1)))))))))))
          (let _%lp115196%_ ((_%ctx115198%_ _%ctx115191%_)
                             (_%src-phi115199%_ _%src-phi115190%_)
                             (_%rest115200%_ _%marks115192%_))
            (let* ((_%rest115201115209%_ _%rest115200%_)
                   (_%else115203115217%_
                    (lambda ()
                      (_%resolve115194%_
                       _%ctx115198%_
                       _%src-phi115199%_
                       _%id115188%_)))
                   (_%K115205115250%_
                    (lambda (_%rest115220%_ _%hd115221%_)
                      (let* ((_%hd115222115228%_ _%hd115221%_)
                             (_%E115224115232%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115222115228%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115225115242%_
                              (lambda (_%subst115235%_)
                                (let ((_%$e115239%_
                                       (let ((_%key115237%_
                                              (if _%subst115235%_
                                                  (hash-get
                                                   _%subst115235%_
                                                   _%id115188%_)
                                                  '#f)))
                                         (if _%key115237%_
                                             (_%resolve115194%_
                                              _%ctx115198%_
                                              _%src-phi115199%_
                                              _%key115237%_)
                                             '#f))))
                                  (if _%$e115239%_
                                      _%$e115239%_
                                      (_%lp115196%_
                                       (##unchecked-structure-ref
                                        _%hd115221%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115221%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115220%_))))))
                        (if (##structure-instance-of?
                             _%hd115222115228%_
                             'gx#expander-mark::t)
                            (let* ((_%e115226115245%_
                                    (##unchecked-structure-ref
                                     _%hd115222115228%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115248%_ _%e115226115245%_))
                              (_%K115225115242%_ _%subst115248%_))
                            (_%E115224115232%_))))))
              (if (##pair? _%rest115201115209%_)
                  (let ((_%hd115206115253%_ (##car _%rest115201115209%_))
                        (_%tl115207115255%_ (##cdr _%rest115201115209%_)))
                    (let* ((_%hd115258%_ _%hd115206115253%_)
                           (_%rest115260%_ _%tl115207115255%_))
                      (_%K115205115250%_ _%rest115260%_ _%hd115258%_)))
                  (_%else115203115217%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key115058%_
               _%val115059%_
               _%rebind?115060%_
               _%phi115061%_
               _%ctx115062%_)
        (letrec ((_%update-binding115064%_
                  (lambda (_%xval115137%_)
                    (if (or (_%rebind?115060%_
                             _%ctx115062%_
                             _%xval115137%_
                             _%val115059%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115137%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115137%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val115059%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val115059%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115137%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val115059%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val115059%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115137%_
                                       '1
                                       '#f
                                       '#f))))
                        (let () _%val115059%_)
                        (if (and (##structure-direct-instance-of?
                                  _%val115059%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val115059%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115137%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val115059%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115137%_
                                                '1
                                                '#f
                                                '#f)))))
                            (let () _%xval115137%_)
                            (if (and (##structure-direct-instance-of?
                                      _%val115059%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115137%_
                                      'gx#binding::t))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; import conflict"
                                   _%key115058%_
                                   (cons (##unchecked-structure-ref
                                          _%val115059%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (##structure-ref
                                                (##unchecked-structure-ref
                                                 _%val115059%_
                                                 '5
                                                 '#f
                                                 '#f)
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '()))
                                   (cons (##unchecked-structure-ref
                                          _%xval115137%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (if (##structure-direct-instance-of?
                                                    _%xval115137%_
                                                    'gx#import-binding::t)
                                                   (##structure-ref
                                                    (##unchecked-structure-ref
                                                     _%xval115137%_
                                                     '5
                                                     '#f
                                                     '#f)
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   _%xval115137%_)
                                               '()))))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; rebind conflict"
                                   _%key115058%_
                                   _%val115059%_
                                   _%xval115137%_)))))))
                 (_%gensubst115065%_
                  (lambda (_%subst115132%_ _%id115133%_)
                    (let ((_%eid115135%_
                           (gensym (if (uninterned-symbol? _%id115133%_)
                                       '%
                                       _%id115133%_))))
                      (hash-put! _%subst115132%_ _%id115133%_ _%eid115135%_)
                      _%eid115135%_)))
                 (_%subst!115066%_
                  (lambda (_%key115068%_)
                    (let* ((_%key115069115077%_ _%key115068%_)
                           (_%else115071115085%_ (lambda () _%key115068%_))
                           (_%K115073115120%_
                            (lambda (_%mark115088%_ _%id115089%_)
                              (let* ((_%mark115090115096%_ _%mark115088%_)
                                     (_%E115092115100%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark115090115096%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K115093115112%_
                                      (lambda (_%subst115103%_)
                                        (if (not _%subst115103%_)
                                            (let ()
                                              (let ((_%subst115106%_
                                                     (make-hash-table-eq)))
                                                (##unchecked-structure-set!
                                                 _%mark115088%_
                                                 _%subst115106%_
                                                 '1
                                                 '#f
                                                 '#f)
                                                (_%gensubst115065%_
                                                 _%subst115106%_
                                                 _%id115089%_)))
                                            (let ((_%$e115108%_
                                                   (hash-get
                                                    _%subst115103%_
                                                    _%id115089%_)))
                                              (if _%$e115108%_
                                                  (values _%$e115108%_)
                                                  (let ()
                                                    (_%gensubst115065%_
                                                     _%subst115103%_
                                                     _%id115089%_))))))))
                                (if (##structure-instance-of?
                                     _%mark115090115096%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e115094115115%_
                                            (##unchecked-structure-ref
                                             _%mark115090115096%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115118%_ _%e115094115115%_))
                                      (_%K115093115112%_ _%subst115118%_))
                                    (_%E115092115100%_))))))
                      (if (##pair? _%key115069115077%_)
                          (let ((_%hd115074115123%_
                                 (##car _%key115069115077%_))
                                (_%tl115075115125%_
                                 (##cdr _%key115069115077%_)))
                            (let* ((_%id115128%_ _%hd115074115123%_)
                                   (_%mark115130%_ _%tl115075115125%_))
                              (_%K115073115120%_ _%mark115130%_ _%id115128%_)))
                          (_%else115071115085%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx115062%_ _%phi115061%_)
           (_%subst!115066%_ _%key115058%_)
           _%val115059%_
           _%update-binding115064%_))))
    (define gx#core-bind!__0
      (lambda (_%key115158%_ _%val115159%_)
        (let* ((_%rebind?115161%_ false)
               (_%phi115163%_ (gx#current-expander-phi))
               (_%ctx115165%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115158%_
           _%val115159%_
           _%rebind?115161%_
           _%phi115163%_
           _%ctx115165%_))))
    (define gx#core-bind!__1
      (lambda (_%key115167%_ _%val115168%_ _%rebind?115169%_)
        (let* ((_%phi115171%_ (gx#current-expander-phi))
               (_%ctx115173%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115167%_
           _%val115168%_
           _%rebind?115169%_
           _%phi115171%_
           _%ctx115173%_))))
    (define gx#core-bind!__2
      (lambda (_%key115175%_ _%val115176%_ _%rebind?115177%_ _%phi115178%_)
        (let ((_%ctx115180%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115175%_
           _%val115176%_
           _%rebind?115177%_
           _%phi115178%_
           _%ctx115180%_))))
    (define gx#core-bind!
      (lambda _g117713_
        (let ((_g117712_ (##length _g117713_)))
          (cond ((##fx= _g117712_ 2)
                 (apply (lambda (_%key115158%_ _%val115159%_)
                          (gx#core-bind!__0 _%key115158%_ _%val115159%_))
                        _g117713_))
                ((##fx= _g117712_ 3)
                 (apply (lambda (_%key115167%_ _%val115168%_ _%rebind?115169%_)
                          (gx#core-bind!__1
                           _%key115167%_
                           _%val115168%_
                           _%rebind?115169%_))
                        _g117713_))
                ((##fx= _g117712_ 4)
                 (apply (lambda (_%key115175%_
                                 _%val115176%_
                                 _%rebind?115177%_
                                 _%phi115178%_)
                          (gx#core-bind!__2
                           _%key115175%_
                           _%val115176%_
                           _%rebind?115177%_
                           _%phi115178%_))
                        _g117713_))
                ((##fx= _g117712_ 5)
                 (apply (lambda (_%key115182%_
                                 _%val115183%_
                                 _%rebind?115184%_
                                 _%phi115185%_
                                 _%ctx115186%_)
                          (gx#core-bind!__%
                           _%key115182%_
                           _%val115183%_
                           _%rebind?115184%_
                           _%phi115185%_
                           _%ctx115186%_))
                        _g117713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g117713_))))))
    (define gx#core-identifier-key
      (lambda (_%stx114989%_)
        (if (symbol? _%stx114989%_)
            (let ()
              (let* ((_%g114991114999%_ (gx#current-expander-marks))
                     (_%else114993115007%_ (lambda () _%stx114989%_))
                     (_%K114995115012%_
                      (lambda (_%hd115010%_)
                        (cons _%stx114989%_ _%hd115010%_))))
                (if (##pair? _%g114991114999%_)
                    (let* ((_%hd114996115015%_ (##car _%g114991114999%_))
                           (_%hd115018%_ _%hd114996115015%_))
                      (_%K114995115012%_ _%hd115018%_))
                    (_%else114993115007%_))))
            (if (gx#identifier? _%stx114989%_)
                (let ()
                  (let* ((_%id115021%_ (gx#syntax-local-unwrap _%stx114989%_))
                         (_%eid115023%_ (gx#stx-e _%id115021%_))
                         (_%marks115025%_
                          (gx#stx-identifier-marks* _%id115021%_)))
                    (let* ((_%marks115027115035%_ _%marks115025%_)
                           (_%else115029115043%_ (lambda () _%eid115023%_))
                           (_%K115031115048%_
                            (lambda (_%hd115046%_)
                              (cons _%eid115023%_ _%hd115046%_))))
                      (if (##pair? _%marks115027115035%_)
                          (let* ((_%hd115032115051%_
                                  (##car _%marks115027115035%_))
                                 (_%hd115054%_ _%hd115032115051%_))
                            (_%K115031115048%_ _%hd115054%_))
                          (_%else115029115043%_)))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad identifier"
                   _%stx114989%_))))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx114928%_ _%phi114929%_)
        (letrec ((_%make-phi114931%_
                  (lambda (_%super114987%_)
                    (let ((__obj117685
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj117685
                       (##gensym 'phi)
                       _%super114987%_)
                      __obj117685)))
                 (_%make-phi/up114932%_
                  (lambda (_%ctx114982%_ _%super114983%_)
                    (let ((_%ctx+1114985%_
                           (_%make-phi114931%_ _%super114983%_)))
                      (##unchecked-structure-set!
                       _%ctx114982%_
                       _%ctx+1114985%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1114985%_
                       _%ctx114982%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1114985%_)))
                 (_%make-phi/down114933%_
                  (lambda (_%ctx114977%_ _%super114978%_)
                    (let ((_%ctx-1114980%_
                           (_%make-phi114931%_ _%super114978%_)))
                      (##unchecked-structure-set!
                       _%ctx-1114980%_
                       _%ctx114977%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx114977%_
                       _%ctx-1114980%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1114980%_)))
                 (_%shift114934%_
                  (lambda (_%ctx114960%_
                           _%delta114961%_
                           _%make-delta-context114962%_
                           _%phi114963%_
                           _%K114964%_)
                    (let ((_%$e114966%_
                           (##unchecked-structure-ref
                            _%ctx114960%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e114966%_
                          ((lambda (_%super114969%_)
                             (let* ((_%super114971%_
                                     (_%K114964%_
                                      _%super114969%_
                                      _%delta114961%_))
                                    (_%ctx+d114973%_
                                     (_%make-delta-context114962%_
                                      _%ctx114960%_
                                      _%super114971%_)))
                               (_%K114964%_
                                _%ctx+d114973%_
                                (fx- _%phi114963%_ _%delta114961%_))))
                           _%$e114966%_)
                          (let () (error '"Bad context" _%ctx114960%_)))))))
          (let _%K114936%_ ((_%ctx114938%_ _%ctx114928%_)
                            (_%phi114939%_ _%phi114929%_))
            (if (fxzero? _%phi114939%_)
                (let () _%ctx114938%_)
                (if (##structure-instance-of? _%ctx114938%_ 'gx#phi-context::t)
                    (let ()
                      (if (fxpositive? _%phi114939%_)
                          (let ((_%$e114943%_
                                 (##unchecked-structure-ref
                                  _%ctx114938%_
                                  '4
                                  '#f
                                  '#f)))
                            (if _%$e114943%_
                                ((lambda (_%g114945114947%_)
                                   (_%K114936%_
                                    _%g114945114947%_
                                    (##fx- _%phi114939%_ '1)))
                                 _%$e114943%_)
                                (let ()
                                  (_%shift114934%_
                                   _%ctx114938%_
                                   '1
                                   _%make-phi/up114932%_
                                   _%phi114939%_
                                   _%K114936%_))))
                          (let ((_%$e114951%_
                                 (##unchecked-structure-ref
                                  _%ctx114938%_
                                  '5
                                  '#f
                                  '#f)))
                            (if _%$e114951%_
                                ((lambda (_%g114953114955%_)
                                   (_%K114936%_
                                    _%g114953114955%_
                                    (##fx+ _%phi114939%_ '1)))
                                 _%$e114951%_)
                                (let ()
                                  (_%shift114934%_
                                   _%ctx114938%_
                                   '-1
                                   _%make-phi/down114933%_
                                   _%phi114939%_
                                   _%K114936%_))))))
                    (let () _%ctx114938%_)))))))
    (define gx#core-context-get
      (lambda (_%ctx114925%_ _%key114926%_)
        (hash-get
         (##unchecked-structure-ref _%ctx114925%_ '2 '#f '#f)
         _%key114926%_)))
    (define gx#core-context-put!
      (lambda (_%ctx114921%_ _%key114922%_ _%val114923%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx114921%_ '2 '#f '#f)
         _%key114922%_
         _%val114923%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx114907%_ _%key114908%_)
        (let _%lp114910%_ ((_%ctx114912%_ _%ctx114907%_))
          (let ((_%$e114914%_
                 (gx#core-context-get _%ctx114912%_ _%key114908%_)))
            (if _%$e114914%_
                (values _%$e114914%_)
                (let ((_%$e114917%_
                       (if (##structure-instance-of?
                            _%ctx114912%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx114912%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e114917%_
                      (_%lp114910%_ _%$e114917%_)
                      (let () '#f))))))))
    (define gx#core-context-bind!
      (lambda (_%ctx114896%_ _%key114897%_ _%val114898%_ _%rebind114899%_)
        (let ((_%$e114901%_ (gx#core-context-get _%ctx114896%_ _%key114897%_)))
          (if _%$e114901%_
              ((lambda (_%xval114904%_)
                 (gx#core-context-put!
                  _%ctx114896%_
                  _%key114897%_
                  (_%rebind114899%_ _%xval114904%_)))
               _%$e114901%_)
              (let ()
                (gx#core-context-put!
                 _%ctx114896%_
                 _%key114897%_
                 _%val114898%_))))))
    (define gx#core-context-top__%
      (lambda (_%ctx114871%_ _%stop?114872%_)
        (let _%lp114874%_ ((_%ctx114876%_ _%ctx114871%_))
          (if (_%stop?114872%_ _%ctx114876%_)
              (let () _%ctx114876%_)
              (if (##structure-instance-of? _%ctx114876%_ 'gx#phi-context::t)
                  (let ()
                    (_%lp114874%_
                     (##unchecked-structure-ref _%ctx114876%_ '3 '#f '#f)))
                  (let () '#f))))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx114885%_ (gx#current-expander-context))
               (_%stop?114887%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114885%_ _%stop?114887%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx114889%_)
        (let ((_%stop?114891%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114889%_ _%stop?114891%_))))
    (define gx#core-context-top
      (lambda _g117715_
        (let ((_g117714_ (##length _g117715_)))
          (cond ((##fx= _g117714_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g117715_))
                ((##fx= _g117714_ 1)
                 (apply (lambda (_%ctx114889%_)
                          (gx#core-context-top__1 _%ctx114889%_))
                        _g117715_))
                ((##fx= _g117714_ 2)
                 (apply (lambda (_%ctx114893%_ _%stop?114894%_)
                          (gx#core-context-top__%
                           _%ctx114893%_
                           _%stop?114894%_))
                        _g117715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g117715_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx114856%_)
        (let _%lp114858%_ ((_%ctx114860%_ _%ctx114856%_))
          (if (##structure-instance-of? _%ctx114860%_ 'gx#phi-context::t)
              (_%lp114858%_
               (##unchecked-structure-ref _%ctx114860%_ '3 '#f '#f))
              _%ctx114860%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx114866%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx114866%_))))
    (define gx#core-context-root
      (lambda _g117717_
        (let ((_g117716_ (##length _g117717_)))
          (cond ((##fx= _g117716_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g117717_))
                ((##fx= _g117716_ 1)
                 (apply (lambda (_%ctx114868%_)
                          (gx#core-context-root__% _%ctx114868%_))
                        _g117717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g117717_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx114838%_ . _%ignore114839%_)
        (let ((_%$e114841%_ (gx#current-expander-allow-rebind?)))
          (if _%$e114841%_
              _%$e114841%_
              (if (##structure-instance-of? _%ctx114838%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx114838%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx114838%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx114848%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx114848%_))))
    (define gx#core-context-rebind?
      (lambda _g117719_
        (let ((_g117718_ (##length _g117719_)))
          (cond ((##fx= _g117718_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g117719_))
                ((##fx= _g117718_ 1)
                 (apply (lambda (_%ctx114850%_)
                          (gx#core-context-rebind?__% _%ctx114850%_))
                        _g117719_))
                ((##fx>= _g117718_ 1)
                 (apply gx#core-context-rebind?__% _g117719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g117719_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx114821%_)
        (let ((_%$e114823%_ (gx#core-context-top__1 _%ctx114821%_)))
          (if _%$e114823%_
              ((lambda (_%ctx114826%_)
                 (if (##structure-instance-of?
                      _%ctx114826%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx114826%_ '6 '#f '#f)
                     '#f))
               _%$e114823%_)
              (let () '#f)))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx114833%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx114833%_))))
    (define gx#core-context-namespace
      (lambda _g117721_
        (let ((_g117720_ (##length _g117721_)))
          (cond ((##fx= _g117720_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g117721_))
                ((##fx= _g117720_ 1)
                 (apply (lambda (_%ctx114835%_)
                          (gx#core-context-namespace__% _%ctx114835%_))
                        _g117721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g117721_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind114807%_ _%is?114808%_)
        (if (##structure-direct-instance-of?
             _%bind114807%_
             'gx#syntax-binding::t)
            (_%is?114808%_
             (##unchecked-structure-ref _%bind114807%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind114813%_)
        (let ((_%is?114815%_ gx#expander?))
          (gx#expander-binding?__% _%bind114813%_ _%is?114815%_))))
    (define gx#expander-binding?
      (lambda _g117723_
        (let ((_g117722_ (##length _g117723_)))
          (cond ((##fx= _g117722_ 1)
                 (apply (lambda (_%bind114813%_)
                          (gx#expander-binding?__0 _%bind114813%_))
                        _g117723_))
                ((##fx= _g117722_ 2)
                 (apply (lambda (_%bind114817%_ _%is?114818%_)
                          (gx#expander-binding?__%
                           _%bind114817%_
                           _%is?114818%_))
                        _g117723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g117723_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind114804%_)
        (gx#expander-binding?__% _%bind114804%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind114802%_)
        (gx#expander-binding?__% _%bind114802%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind114796%_)
        (letrec ((_%direct-special-form?114798%_
                  (lambda (_%obj114800%_)
                    (##structure-direct-instance-of?
                     _%obj114800%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind114796%_
           _%direct-special-form?114798%_))))
    (define gx#special-form-binding?
      (lambda (_%bind114794%_)
        (gx#expander-binding?__% _%bind114794%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind114785%_)
        (letrec ((_%feature?114787%_
                  (lambda (_%e114789%_)
                    (let ((_%$e114791%_
                           (##structure-instance-of?
                            _%e114789%_
                            'gx#feature-expander::t)))
                      (if _%$e114791%_
                          _%$e114791%_
                          (##structure-instance-of?
                           _%e114789%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind114785%_ _%feature?114787%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind114783%_)
        (gx#expander-binding?__% _%bind114783%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id114770%_ _%bound?114771%_)
        (if (gx#identifier? _%id114770%_)
            (_%bound?114771%_ (gx#resolve-identifier__0 _%id114770%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id114776%_)
        (let ((_%bound?114778%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id114776%_ _%bound?114778%_))))
    (define gx#core-bound-identifier?
      (lambda _g117725_
        (let ((_g117724_ (##length _g117725_)))
          (cond ((##fx= _g117724_ 1)
                 (apply (lambda (_%id114776%_)
                          (gx#core-bound-identifier?__0 _%id114776%_))
                        _g117725_))
                ((##fx= _g117724_ 2)
                 (apply (lambda (_%id114780%_ _%bound?114781%_)
                          (gx#core-bound-identifier?__%
                           _%id114780%_
                           _%bound?114781%_))
                        _g117725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g117725_))))))
    (define gx#core-identifier=?
      (lambda (_%x114760%_ _%y114761%_)
        (letrec ((_%y=?114763%_
                  (lambda (_%xid114767%_)
                    ((if (list? _%y114761%_) memq eq?)
                     _%xid114767%_
                     _%y114761%_))))
          (let ((_%bind114765%_ (gx#resolve-identifier__0 _%x114760%_)))
            (if (##structure-instance-of? _%bind114765%_ 'gx#binding::t)
                (_%y=?114763%_
                 (##unchecked-structure-ref _%bind114765%_ '1 '#f '#f))
                (_%y=?114763%_ (gx#stx-e _%x114760%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e114758%_)
        (if (interned-symbol? _%e114758%_)
            (string-index__0 (symbol->string _%e114758%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx114711%_ _%src114712%_ _%ctx114713%_ _%marks114714%_)
        (if (##structure? _%stx114711%_)
            (let ((_%$e114716%_ (gx#sealed-syntax-unwrap _%stx114711%_)))
              (if _%$e114716%_
                  (values _%$e114716%_)
                  (if (gx#identifier? _%stx114711%_)
                      (let ()
                        (let ((_%id114720%_
                               (gx#stx-unwrap__%
                                _%stx114711%_
                                _%marks114714%_)))
                          (##structure
                           gx#syntax-quote::t
                           (##unchecked-structure-ref _%id114720%_ '1 '#f '#f)
                           (let ((_%$e114722%_
                                  (##unchecked-structure-ref
                                   _%id114720%_
                                   '2
                                   '#f
                                   '#f)))
                             (if _%$e114722%_ _%$e114722%_ _%src114712%_))
                           _%ctx114713%_
                           (##unchecked-structure-ref
                            _%id114720%_
                            '3
                            '#f
                            '#f))))
                      (let ()
                        (##structure
                         gx#syntax-quote::t
                         (gx#stx-e _%stx114711%_)
                         (let ((_%$e114726%_ (gx#stx-source _%stx114711%_)))
                           (if _%$e114726%_ _%$e114726%_ _%src114712%_))
                         _%ctx114713%_
                         (reverse _%marks114714%_))))))
            (##structure
             gx#syntax-quote::t
             _%stx114711%_
             _%src114712%_
             _%ctx114713%_
             (reverse _%marks114714%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx114732%_)
        (let* ((_%src114734%_ '#f)
               (_%ctx114736%_ (gx#current-expander-context))
               (_%marks114738%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114732%_
           _%src114734%_
           _%ctx114736%_
           _%marks114738%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx114740%_ _%src114741%_)
        (let* ((_%ctx114743%_ (gx#current-expander-context))
               (_%marks114745%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114740%_
           _%src114741%_
           _%ctx114743%_
           _%marks114745%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx114747%_ _%src114748%_ _%ctx114749%_)
        (let ((_%marks114751%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114747%_
           _%src114748%_
           _%ctx114749%_
           _%marks114751%_))))
    (define gx#core-quote-syntax
      (lambda _g117727_
        (let ((_g117726_ (##length _g117727_)))
          (cond ((##fx= _g117726_ 1)
                 (apply (lambda (_%stx114732%_)
                          (gx#core-quote-syntax__0 _%stx114732%_))
                        _g117727_))
                ((##fx= _g117726_ 2)
                 (apply (lambda (_%stx114740%_ _%src114741%_)
                          (gx#core-quote-syntax__1
                           _%stx114740%_
                           _%src114741%_))
                        _g117727_))
                ((##fx= _g117726_ 3)
                 (apply (lambda (_%stx114747%_ _%src114748%_ _%ctx114749%_)
                          (gx#core-quote-syntax__2
                           _%stx114747%_
                           _%src114748%_
                           _%ctx114749%_))
                        _g117727_))
                ((##fx= _g117726_ 4)
                 (apply (lambda (_%stx114753%_
                                 _%src114754%_
                                 _%ctx114755%_
                                 _%marks114756%_)
                          (gx#core-quote-syntax__%
                           _%stx114753%_
                           _%src114754%_
                           _%ctx114755%_
                           _%marks114756%_))
                        _g117727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g117727_))))))
    (define gx#core-cons
      (lambda (_%hd114707%_ _%tl114708%_)
        (cons (gx#core-quote-syntax__0 _%hd114707%_) _%tl114708%_)))
    (define gx#core-list
      (lambda (_%hd114704%_ . _%rest114705%_)
        (cons (gx#core-quote-syntax__0 _%hd114704%_) _%rest114705%_)))
    (define gx#core-cons*
      (lambda (_%hd114701%_ . _%rest114702%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd114701%_) _%rest114702%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path114670%_ _%rel114671%_)
        (let ((_%path114688%_ (gx#stx-e _%stx-path114670%_))
              (_%reldir114689%_
               (let _%lp114673%_ ((_%relsrc114675%_
                                   (let ((_%$e114685%_
                                          (gx#stx-source _%stx-path114670%_)))
                                     (if _%$e114685%_
                                         _%$e114685%_
                                         _%rel114671%_))))
                 (if (##structure-instance-of? _%relsrc114675%_ 'gerbil#AST::t)
                     (let ()
                       (_%lp114673%_
                        (let ((_%$e114678%_ (gx#stx-source _%relsrc114675%_)))
                          (if _%$e114678%_
                              _%$e114678%_
                              (gx#stx-e _%relsrc114675%_)))))
                     (if (source-location-path? _%relsrc114675%_)
                         (let ()
                           (path-directory
                            (source-location-path _%relsrc114675%_)))
                         (if (string? _%relsrc114675%_)
                             (let () (path-directory _%relsrc114675%_))
                             (if (not (null? (gx#current-expander-path)))
                                 (let ()
                                   (path-directory
                                    (car (gx#current-expander-path))))
                                 (let () (current-directory)))))))))
          (path-expand _%path114688%_ (path-normalize _%reldir114689%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path114694%_)
        (let ((_%rel114696%_ '#f))
          (gx#core-resolve-path__% _%stx-path114694%_ _%rel114696%_))))
    (define gx#core-resolve-path
      (lambda _g117729_
        (let ((_g117728_ (##length _g117729_)))
          (cond ((##fx= _g117728_ 1)
                 (apply (lambda (_%stx-path114694%_)
                          (gx#core-resolve-path__0 _%stx-path114694%_))
                        _g117729_))
                ((##fx= _g117728_ 2)
                 (apply (lambda (_%stx-path114698%_ _%rel114699%_)
                          (gx#core-resolve-path__%
                           _%stx-path114698%_
                           _%rel114699%_))
                        _g117729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g117729_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr114626%_ _%ctx114627%_)
        (let* ((_%repr114628114635%_ _%repr114626%_)
               (_%E114630114639%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr114628114635%_
                         '([phi . subs]))
                  '#!void))
               (_%K114631114647%_
                (lambda (_%subs114642%_ _%phi114643%_)
                  (let ((_%subst114645%_
                         (if (not (null? _%subs114642%_))
                             (list->hash-table-eq _%subs114642%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst114645%_
                     _%ctx114627%_
                     _%phi114643%_
                     '#f)))))
          (if (##pair? _%repr114628114635%_)
              (let ((_%hd114632114650%_ (##car _%repr114628114635%_))
                    (_%tl114633114652%_ (##cdr _%repr114628114635%_)))
                (let* ((_%phi114655%_ _%hd114632114650%_)
                       (_%subs114657%_ _%tl114633114652%_))
                  (_%K114631114647%_ _%subs114657%_ _%phi114655%_)))
              (_%E114630114639%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr114662%_)
        (let ((_%ctx114664%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr114662%_ _%ctx114664%_))))
    (define gx#core-deserialize-mark
      (lambda _g117731_
        (let ((_g117730_ (##length _g117731_)))
          (cond ((##fx= _g117730_ 1)
                 (apply (lambda (_%repr114662%_)
                          (gx#core-deserialize-mark__0 _%repr114662%_))
                        _g117731_))
                ((##fx= _g117730_ 2)
                 (apply (lambda (_%repr114666%_ _%ctx114667%_)
                          (gx#core-deserialize-mark__%
                           _%repr114666%_
                           _%ctx114667%_))
                        _g117731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g117731_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx114623%_)
        (gx#stx-rewrap _%stx114623%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx114621%_)
        (gx#stx-unwrap__% _%stx114621%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx114591%_)
        (let* ((_%g114592114600%_ (gx#current-expander-marks))
               (_%else114594114608%_ (lambda () _%stx114591%_))
               (_%K114596114613%_
                (lambda (_%hd114611%_)
                  (gx#stx-apply-mark _%stx114591%_ _%hd114611%_))))
          (if (##pair? _%g114592114600%_)
              (let* ((_%hd114597114616%_ (##car _%g114592114600%_))
                     (_%hd114619%_ _%hd114597114616%_))
                (_%K114596114613%_ _%hd114619%_))
              (_%else114594114608%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx114576%_ _%E114577%_)
        (let ((_%bind114579%_ (gx#resolve-identifier__0 _%stx114576%_)))
          (if (##structure-direct-instance-of?
               _%bind114579%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind114579%_ '4 '#f '#f)
              (_%E114577%_ _%stx114576%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx114584%_)
        (let ((_%E114586%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx114584%_ _%E114586%_))))
    (define gx#syntax-local-e
      (lambda _g117733_
        (let ((_g117732_ (##length _g117733_)))
          (cond ((##fx= _g117732_ 1)
                 (apply (lambda (_%stx114584%_)
                          (gx#syntax-local-e__0 _%stx114584%_))
                        _g117733_))
                ((##fx= _g117732_ 2)
                 (apply (lambda (_%stx114588%_ _%E114589%_)
                          (gx#syntax-local-e__% _%stx114588%_ _%E114589%_))
                        _g117733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g117733_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx114560%_ _%E114561%_)
        (let ((_%e114563%_ (gx#syntax-local-e__% _%stx114560%_ _%E114561%_)))
          (if (##structure-instance-of? _%e114563%_ 'gx#expander::t)
              (##structure-ref _%e114563%_ '1 gx#expander::t '#f)
              _%e114563%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx114568%_)
        (let ((_%E114570%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx114568%_ _%E114570%_))))
    (define gx#syntax-local-value
      (lambda _g117735_
        (let ((_g117734_ (##length _g117735_)))
          (cond ((##fx= _g117734_ 1)
                 (apply (lambda (_%stx114568%_)
                          (gx#syntax-local-value__0 _%stx114568%_))
                        _g117735_))
                ((##fx= _g117734_ 2)
                 (apply (lambda (_%stx114572%_ _%E114573%_)
                          (gx#syntax-local-value__% _%stx114572%_ _%E114573%_))
                        _g117735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g117735_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx114557%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx114557%_)))))
