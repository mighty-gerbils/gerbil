(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712084995)
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
      (lambda _%$args117538%_
        (apply make-instance gx#expander-context::t _%$args117538%_)))
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
      (lambda _%$args117535%_
        (apply make-instance gx#root-context::t _%$args117535%_)))
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
      (lambda _%$args117532%_
        (apply make-instance gx#phi-context::t _%$args117532%_)))
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
      (lambda _%$args117529%_
        (apply make-instance gx#top-context::t _%$args117529%_)))
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
      (lambda _%$args117526%_
        (apply make-instance gx#module-context::t _%$args117526%_)))
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
      (lambda _%$args117523%_
        (apply make-instance gx#prelude-context::t _%$args117523%_)))
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
      (lambda _%$args117520%_
        (apply make-instance gx#local-context::t _%$args117520%_)))
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
      (lambda (_%self117493%_ _%id117494%_ _%super117495%_)
        (let ()
          (let ((_%self117498%_ _%self117493%_))
            (let ()
              (if (##fx< '3 (##structure-length _%self117498%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self117498%_
                     _%id117494%_
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117498%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117498%_
                     _%super117495%_
                     '3
                     '#f
                     '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self117498%_
                         '3
                         (##vector-length _%self117498%_))))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self117511%_ _%id117512%_)
        (let ((_%super117514%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self117511%_
           _%id117512%_
           _%super117514%_))))
    (define gx#phi-context:::init!
      (lambda _g117581_
        (let ((_g117580_ (##length _g117581_)))
          (cond ((##fx= _g117580_ 2)
                 (apply (lambda (_%self117511%_ _%id117512%_)
                          (gx#phi-context:::init!__0
                           _%self117511%_
                           _%id117512%_))
                        _g117581_))
                ((##fx= _g117580_ 3)
                 (apply (lambda (_%self117516%_ _%id117517%_ _%super117518%_)
                          (gx#phi-context:::init!__%
                           _%self117516%_
                           _%id117517%_
                           _%super117518%_))
                        _g117581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g117581_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117346%_ _%super117347%_)
        (let ()
          (let ((_%self117350%_ _%self117346%_))
            (let ()
              (if (##fx< '3 (##structure-length _%self117350%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self117350%_
                     (##gensym 'L)
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117350%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117350%_
                     _%super117347%_
                     '3
                     '#f
                     '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self117350%_
                         '3
                         (##vector-length _%self117350%_))))))))
    (define gx#local-context:::init!__0
      (lambda (_%self117363%_)
        (let ((_%super117365%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self117363%_ _%super117365%_))))
    (define gx#local-context:::init!
      (lambda _g117583_
        (let ((_g117582_ (##length _g117583_)))
          (cond ((##fx= _g117582_ 1)
                 (apply (lambda (_%self117363%_)
                          (gx#local-context:::init!__0 _%self117363%_))
                        _g117583_))
                ((##fx= _g117582_ 2)
                 (apply (lambda (_%self117367%_ _%super117368%_)
                          (gx#local-context:::init!__%
                           _%self117367%_
                           _%super117368%_))
                        _g117583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g117583_))))))
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
      (lambda _%$args117220%_
        (apply make-instance gx#binding::t _%$args117220%_)))
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
      (lambda _%$args117217%_
        (apply make-instance gx#runtime-binding::t _%$args117217%_)))
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
      (lambda _%$args117214%_
        (apply make-instance gx#local-binding::t _%$args117214%_)))
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
      (lambda _%$args117211%_
        (apply make-instance gx#top-binding::t _%$args117211%_)))
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
      (lambda _%$args117208%_
        (apply make-instance gx#module-binding::t _%$args117208%_)))
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
      (lambda _%$args117205%_
        (apply make-instance gx#extern-binding::t _%$args117205%_)))
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
      (lambda _%$args117202%_
        (apply make-instance gx#syntax-binding::t _%$args117202%_)))
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
      (lambda _%$args117199%_
        (apply make-instance gx#import-binding::t _%$args117199%_)))
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
      (lambda _%$args117196%_
        (apply make-instance gx#alias-binding::t _%$args117196%_)))
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
      (lambda _%$args117193%_
        (apply make-instance gx#expander::t _%$args117193%_)))
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
      (lambda _%$args117190%_
        (apply make-instance gx#core-expander::t _%$args117190%_)))
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
      (lambda _%$args117187%_
        (apply make-instance gx#expression-form::t _%$args117187%_)))
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
      (lambda _%$args117184%_
        (apply make-instance gx#special-form::t _%$args117184%_)))
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
      (lambda _%$args117181%_
        (apply make-instance gx#definition-form::t _%$args117181%_)))
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
      (lambda _%$args117178%_
        (apply make-instance gx#top-special-form::t _%$args117178%_)))
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
      (lambda _%$args117175%_
        (apply make-instance gx#module-special-form::t _%$args117175%_)))
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
      (lambda _%$args117172%_
        (apply make-instance gx#feature-expander::t _%$args117172%_)))
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
      (lambda _%$args117169%_
        (apply make-instance gx#private-feature-expander::t _%$args117169%_)))
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
      (lambda _%$args117166%_
        (apply make-instance gx#reserved-expander::t _%$args117166%_)))
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
      (lambda _%$args117163%_
        (apply make-instance gx#macro-expander::t _%$args117163%_)))
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
      (lambda _%$args117160%_
        (apply make-instance gx#rename-macro-expander::t _%$args117160%_)))
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
      (lambda _%$args117157%_
        (apply make-instance gx#user-expander::t _%$args117157%_)))
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
      (lambda _%$args117154%_
        (apply make-instance gx#expander-mark::t _%$args117154%_)))
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
      (lambda (_%ctx117138%_
               _%message117139%_
               _%stx117140%_
               .
               _%details117141%_)
        (let ((_%ctx117152%_
               (let ((_%$e117143%_ _%ctx117138%_))
                 (if _%$e117143%_
                     _%$e117143%_
                     (let ((_%$e117146%_ (gx#core-context-top__0)))
                       (if _%$e117146%_
                           ((lambda (_%ctx117149%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117149%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117146%_)
                           (let () '#f)))))))
          (raise (make-syntax-error
                  _%message117139%_
                  (cons _%stx117140%_ _%details117141%_)
                  _%ctx117152%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117125%_ _%expression?117126%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117125%_ _%expression?117126%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117131%_)
        (let ((_%expression?117133%_ '#f))
          (gx#eval-syntax__% _%stx117131%_ _%expression?117133%_))))
    (define gx#eval-syntax
      (lambda _g117585_
        (let ((_g117584_ (##length _g117585_)))
          (cond ((##fx= _g117584_ 1)
                 (apply (lambda (_%stx117131%_)
                          (gx#eval-syntax__0 _%stx117131%_))
                        _g117585_))
                ((##fx= _g117584_ 2)
                 (apply (lambda (_%stx117135%_ _%expression?117136%_)
                          (gx#eval-syntax__%
                           _%stx117135%_
                           _%expression?117136%_))
                        _g117585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g117585_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117122%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117122%_))))
    (define gx#core-expand__%
      (lambda (_%stx117109%_ _%expression?117110%_)
        (if _%expression?117110%_
            (gx#core-expand-expression _%stx117109%_)
            (gx#core-expand-top _%stx117109%_))))
    (define gx#core-expand__0
      (lambda (_%stx117115%_)
        (let ((_%expression?117117%_ '#f))
          (gx#core-expand__% _%stx117115%_ _%expression?117117%_))))
    (define gx#core-expand
      (lambda _g117587_
        (let ((_g117586_ (##length _g117587_)))
          (cond ((##fx= _g117586_ 1)
                 (apply (lambda (_%stx117115%_)
                          (gx#core-expand__0 _%stx117115%_))
                        _g117587_))
                ((##fx= _g117586_ 2)
                 (apply (lambda (_%stx117119%_ _%expression?117120%_)
                          (gx#core-expand__%
                           _%stx117119%_
                           _%expression?117120%_))
                        _g117587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g117587_))))))
    (define gx#core-expand-top
      (lambda (_%stx117076%_)
        (let* ((_%stx117078%_ (gx#core-expand*__0 _%stx117076%_))
               (_%e117079117086%_ _%stx117078%_)
               (_%E117081117090%_
                (lambda () (gx#core-expand-expression _%stx117078%_)))
               (_%E117080117104%_
                (lambda ()
                  (if (gx#stx-pair? _%e117079117086%_)
                      (let ((_%e117082117094%_
                             (gx#syntax-e _%e117079117086%_)))
                        (let ((_%hd117083117097%_ (##car _%e117082117094%_))
                              (_%tl117084117099%_ (##cdr _%e117082117094%_)))
                          (let ((_%form117102%_ _%hd117083117097%_))
                            (if (gx#core-bound-identifier?__0 _%form117102%_)
                                _%stx117078%_
                                (_%E117081117090%_)))))
                      (_%E117081117090%_)))))
          (_%E117080117104%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117008%_)
        (letrec ((_%sealed-expression?117010%_
                  (lambda (_%hd117046%_)
                    (if (gx#sealed-syntax? _%hd117046%_)
                        (let* ((_%e117047117054%_ _%hd117046%_)
                               (_%E117049117058%_ (lambda () '#f))
                               (_%E117048117072%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117047117054%_)
                                      (let ((_%e117050117062%_
                                             (gx#syntax-e _%e117047117054%_)))
                                        (let ((_%hd117051117065%_
                                               (##car _%e117050117062%_))
                                              (_%tl117052117067%_
                                               (##cdr _%e117050117062%_)))
                                          (let ((_%form117070%_
                                                 _%hd117051117065%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117070%_
                                                 gx#expression-form-binding?)
                                                (_%E117049117058%_)))))
                                      (_%E117049117058%_)))))
                          (_%E117048117072%_))
                        '#f)))
                 (_%illegal-expression117011%_
                  (lambda (_%hd117043%_ . _%_117044%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117008%_
                     _%hd117043%_)))
                 (_%expand-e117012%_
                  (lambda (_%form117035%_ _%hd117036%_)
                    (let ((_%bind117038%_
                           (if (##structure-instance-of?
                                _%form117035%_
                                'gx#binding::t)
                               _%form117035%_
                               (gx#resolve-identifier__0 _%form117035%_))))
                      (if (gx#core-expander-binding? _%bind117038%_)
                          (let ()
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _%bind117038%_
                              '4
                              '#f
                              '#f)
                             (gx#stx-wrap-source
                              _%hd117036%_
                              (gx#stx-source _%stx117008%_))))
                          (if (##structure-direct-instance-of?
                               _%bind117038%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-expand-expression
                                 (gx#core-apply-expander__0
                                  (##unchecked-structure-ref
                                   _%bind117038%_
                                   '4
                                   '#f
                                   '#f)
                                  (gx#stx-wrap-source
                                   _%hd117036%_
                                   (gx#stx-source _%stx117008%_)))))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; missing expander"
                                 _%stx117008%_
                                 _%form117035%_))))))))
          (let ((_%hd117014%_ (gx#core-expand-head _%stx117008%_)))
            (if (_%sealed-expression?117010%_ _%hd117014%_)
                (let () _%hd117014%_)
                (if (gx#stx-pair? _%hd117014%_)
                    (let ()
                      (let* ((_%form117018%_ (gx#stx-car _%hd117014%_))
                             (_%bind117020%_
                              (if (gx#identifier? _%form117018%_)
                                  (gx#resolve-identifier__0 _%form117018%_)
                                  '#f)))
                        (if (or (not _%bind117020%_)
                                (not (gx#core-expander-binding?
                                      _%bind117020%_)))
                            (let ()
                              (_%expand-e117012%_
                               '%%app
                               (cons '%%app _%hd117014%_)))
                            (if (eq? (##unchecked-structure-ref
                                      _%bind117020%_
                                      '1
                                      '#f
                                      '#f)
                                     '%#begin)
                                (let ()
                                  (gx#core-expand-block*
                                   _%hd117014%_
                                   _%illegal-expression117011%_))
                                (if (gx#expression-form-binding?
                                     _%bind117020%_)
                                    (let ()
                                      (_%expand-e117012%_
                                       _%bind117020%_
                                       _%hd117014%_))
                                    (if (gx#direct-special-form-binding?
                                         _%bind117020%_)
                                        (let ()
                                          (gx#core-expand-expression
                                           (_%expand-e117012%_
                                            _%bind117020%_
                                            _%hd117014%_)))
                                        (let ()
                                          (_%illegal-expression117011%_
                                           _%hd117014%_))))))))
                    (if (gx#core-bound-identifier?__0 _%hd117014%_)
                        (let () (_%illegal-expression117011%_ _%hd117014%_))
                        (if (gx#identifier? _%hd117014%_)
                            (let ()
                              (_%expand-e117012%_
                               '%%ref
                               (cons '%%ref (cons _%hd117014%_ '()))))
                            (if (gx#stx-datum? _%hd117014%_)
                                (let ()
                                  (_%expand-e117012%_
                                   '%#quote
                                   (cons '%#quote (cons _%hd117014%_ '()))))
                                (let ()
                                  (_%illegal-expression117011%_
                                   _%hd117014%_)))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117003%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117006%_ (gx#core-expand-expression _%stx117003%_)))
             (values _%stx117006%_ (gx#eval-syntax* _%stx117006%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx116984%_ _%stop?116985%_)
        (let _%lp116987%_ ((_%stx116989%_ _%stx116984%_))
          (if (_%stop?116985%_ _%stx116989%_)
              _%stx116989%_
              (let ((_%rstx116991%_ (gx#core-expand1 _%stx116989%_)))
                (if (eq? _%stx116989%_ _%rstx116991%_)
                    _%stx116989%_
                    (_%lp116987%_ _%rstx116991%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx116996%_)
        (let ((_%stop?116998%_ false))
          (gx#core-expand*__% _%stx116996%_ _%stop?116998%_))))
    (define gx#core-expand*
      (lambda _g117589_
        (let ((_g117588_ (##length _g117589_)))
          (cond ((##fx= _g117588_ 1)
                 (apply (lambda (_%stx116996%_)
                          (gx#core-expand*__0 _%stx116996%_))
                        _g117589_))
                ((##fx= _g117588_ 2)
                 (apply (lambda (_%stx117000%_ _%stop?117001%_)
                          (gx#core-expand*__% _%stx117000%_ _%stop?117001%_))
                        _g117589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g117589_))))))
    (define gx#core-expand1
      (lambda (_%stx116936%_)
        (letrec ((_%step116938%_
                  (lambda (_%hd116975%_)
                    (let ((_%bind116977%_
                           (gx#resolve-identifier__0 _%hd116975%_)))
                      (if (##structure-instance-of?
                           _%bind116977%_
                           'gx#runtime-binding::t)
                          (let () _%stx116936%_)
                          (if (##structure-direct-instance-of?
                               _%bind116977%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-apply-expander__0
                                 (##unchecked-structure-ref
                                  _%bind116977%_
                                  '4
                                  '#f
                                  '#f)
                                 _%stx116936%_))
                              (if (not _%bind116977%_)
                                  (let () _%stx116936%_)
                                  (let ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; no binding for head"
                                     _%stx116936%_)))))))))
          (let* ((_%e116939116947%_ _%stx116936%_)
                 (_%E116945116951%_ (lambda () _%stx116936%_))
                 (_%E116941116957%_
                  (lambda ()
                    (let ((_%hd116955%_ _%e116939116947%_))
                      (if (gx#identifier? _%hd116955%_)
                          (_%step116938%_ _%hd116955%_)
                          (_%E116945116951%_)))))
                 (_%E116940116971%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116939116947%_)
                        (let ((_%e116942116961%_
                               (gx#syntax-e _%e116939116947%_)))
                          (let ((_%hd116943116964%_ (##car _%e116942116961%_))
                                (_%tl116944116966%_ (##cdr _%e116942116961%_)))
                            (let ((_%hd116969%_ _%hd116943116964%_))
                              (if (gx#identifier? _%hd116969%_)
                                  (_%step116938%_ _%hd116969%_)
                                  (_%E116941116957%_)))))
                        (_%E116941116957%_)))))
            (_%E116940116971%_)))))
    (define gx#core-expand-head
      (lambda (_%stx116902%_)
        (letrec ((_%stop?116904%_
                  (lambda (_%stx116906%_)
                    (let* ((_%e116907116914%_ _%stx116906%_)
                           (_%E116909116918%_ (lambda () '#f))
                           (_%E116908116932%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116907116914%_)
                                  (let ((_%e116910116922%_
                                         (gx#syntax-e _%e116907116914%_)))
                                    (let ((_%hd116911116925%_
                                           (##car _%e116910116922%_))
                                          (_%tl116912116927%_
                                           (##cdr _%e116910116922%_)))
                                      (let ((_%hd116930%_ _%hd116911116925%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd116930%_)
                                            (_%E116909116918%_)))))
                                  (_%E116909116918%_)))))
                      (_%E116908116932%_)))))
          (gx#core-expand*__% _%stx116902%_ _%stop?116904%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx116708%_
               _%expand-special116709%_
               _%begin-form116710%_
               _%expand-e116711%_)
        (letrec ((_%expand-splice116713%_
                  (lambda (_%hd116876%_
                           _%body116877%_
                           _%rest116878%_
                           _%r116879%_)
                    (if (gx#stx-list? _%body116877%_)
                        (_%K116717%_
                         (gx#stx-foldr cons _%rest116878%_ _%body116877%_)
                         _%r116879%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx116708%_
                         _%hd116876%_))))
                 (_%expand-cond-expand116714%_
                  (lambda (_%hd116872%_ _%rest116873%_ _%r116874%_)
                    (_%K116717%_
                     (cons (gx#core-expand-cond-expand% _%hd116872%_)
                           _%rest116873%_)
                     _%r116874%_)))
                 (_%expand-include116715%_
                  (lambda (_%hd116821%_ _%rest116822%_ _%r116823%_)
                    (let* ((_%e116824116834%_ _%hd116821%_)
                           (_%E116826116838%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116824116834%_)))
                           (_%E116825116868%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116824116834%_)
                                  (let ((_%e116827116842%_
                                         (gx#syntax-e _%e116824116834%_)))
                                    (let ((_%hd116828116845%_
                                           (##car _%e116827116842%_))
                                          (_%tl116829116847%_
                                           (##cdr _%e116827116842%_)))
                                      (if (gx#stx-pair? _%tl116829116847%_)
                                          (let ((_%e116830116850%_
                                                 (gx#syntax-e
                                                  _%tl116829116847%_)))
                                            (let ((_%hd116831116853%_
                                                   (##car _%e116830116850%_))
                                                  (_%tl116832116855%_
                                                   (##cdr _%e116830116850%_)))
                                              (let ((_%path116858%_
                                                     _%hd116831116853%_))
                                                (if (gx#stx-null?
                                                     _%tl116832116855%_)
                                                    (if (gx#stx-string?
                                                         _%path116858%_)
                                                        (let* ((_%rpath116860%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path116858%_
                         (gx#stx-source _%hd116821%_)))
                       (_%block116862%_
                        (gx#core-expand-include%__%
                         _%hd116821%_
                         _%rpath116860%_))
                       (_%rbody116865%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block116862%_
                            _%expand-special116709%_
                            '#f
                            _%expand-e116711%_))
                         gx#current-expander-path
                         (cons _%rpath116860%_ (gx#current-expander-path)))))
                  (_%K116717%_
                   _%rest116822%_
                   (__foldr1 cons _%r116823%_ _%rbody116865%_)))
                (_%E116826116838%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E116826116838%_)))))
                                          (_%E116826116838%_))))
                                  (_%E116826116838%_)))))
                      (_%E116825116868%_))))
                 (_%expand-expression116716%_
                  (lambda (_%hd116817%_ _%rest116818%_ _%r116819%_)
                    (_%K116717%_
                     _%rest116818%_
                     (cons (_%expand-e116711%_ _%hd116817%_) _%r116819%_))))
                 (_%K116717%_
                  (lambda (_%rest116747%_ _%r116748%_)
                    (let* ((_%e116749116756%_ _%rest116747%_)
                           (_%E116751116760%_
                            (lambda ()
                              (if _%begin-form116710%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form116710%_
                                    (reverse _%r116748%_))
                                   (gx#stx-source _%stx116708%_))
                                  _%r116748%_)))
                           (_%E116750116813%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116749116756%_)
                                  (let ((_%e116752116764%_
                                         (gx#syntax-e _%e116749116756%_)))
                                    (let ((_%hd116753116767%_
                                           (##car _%e116752116764%_))
                                          (_%tl116754116769%_
                                           (##cdr _%e116752116764%_)))
                                      (let* ((_%hd116772%_ _%hd116753116767%_)
                                             (_%rest116774%_
                                              _%tl116754116769%_))
                                        (if '#t
                                            (let* ((_%hd116776%_
                                                    (gx#core-expand-head
                                                     _%hd116772%_))
                                                   (_%e116777116784%_
                                                    _%hd116776%_)
                                                   (_%E116779116788%_
                                                    (lambda ()
                                                      (_%expand-expression116716%_
                                                       _%hd116776%_
                                                       _%rest116774%_
                                                       _%r116748%_)))
                                                   (_%E116778116809%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116777116784%_)
                                                          (let ((_%e116780116792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116777116784%_)))
                    (let ((_%hd116781116795%_ (##car _%e116780116792%_))
                          (_%tl116782116797%_ (##cdr _%e116780116792%_)))
                      (let* ((_%form116800%_ _%hd116781116795%_)
                             (_%body116802%_ _%tl116782116797%_))
                        (if '#t
                            (let ((_%bind116804%_
                                   (if (gx#identifier? _%form116800%_)
                                       (gx#resolve-identifier__0
                                        _%form116800%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind116804%_)
                                  (let ((_%$e116806%_
                                         (##unchecked-structure-ref
                                          _%bind116804%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e116806%_)
                                        (_%expand-splice116713%_
                                         _%hd116776%_
                                         _%body116802%_
                                         _%rest116774%_
                                         _%r116748%_)
                                        (if (eq? '%#cond-expand _%$e116806%_)
                                            (_%expand-cond-expand116714%_
                                             _%hd116776%_
                                             _%rest116774%_
                                             _%r116748%_)
                                            (if (eq? '%#include _%$e116806%_)
                                                (_%expand-include116715%_
                                                 _%hd116776%_
                                                 _%rest116774%_
                                                 _%r116748%_)
                                                (_%expand-special116709%_
                                                 _%hd116776%_
                                                 _%K116717%_
                                                 _%rest116774%_
                                                 _%r116748%_)))))
                                  (_%expand-expression116716%_
                                   _%hd116776%_
                                   _%rest116774%_
                                   _%r116748%_)))
                            (_%E116779116788%_)))))
                  (_%E116779116788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116778116809%_))
                                            (_%E116751116760%_)))))
                                  (_%E116751116760%_)))))
                      (_%E116750116813%_)))))
          (let* ((_%e116718116725%_ _%stx116708%_)
                 (_%E116720116729%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116718116725%_)))
                 (_%E116719116743%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116718116725%_)
                        (let ((_%e116721116733%_
                               (gx#syntax-e _%e116718116725%_)))
                          (let ((_%hd116722116736%_ (##car _%e116721116733%_))
                                (_%tl116723116738%_ (##cdr _%e116721116733%_)))
                            (let ((_%body116741%_ _%tl116723116738%_))
                              (if (gx#stx-list? _%body116741%_)
                                  (_%K116717%_ _%body116741%_ '())
                                  (_%E116720116729%_)))))
                        (_%E116720116729%_)))))
            (_%E116719116743%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx116884%_ _%expand-special116885%_)
        (let* ((_%begin-form116887%_ '%#begin)
               (_%expand-e116889%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx116884%_
           _%expand-special116885%_
           _%begin-form116887%_
           _%expand-e116889%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx116891%_ _%expand-special116892%_ _%begin-form116893%_)
        (let ((_%expand-e116895%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx116891%_
           _%expand-special116892%_
           _%begin-form116893%_
           _%expand-e116895%_))))
    (define gx#core-expand-block
      (lambda _g117591_
        (let ((_g117590_ (##length _g117591_)))
          (cond ((##fx= _g117590_ 2)
                 (apply (lambda (_%stx116884%_ _%expand-special116885%_)
                          (gx#core-expand-block__0
                           _%stx116884%_
                           _%expand-special116885%_))
                        _g117591_))
                ((##fx= _g117590_ 3)
                 (apply (lambda (_%stx116891%_
                                 _%expand-special116892%_
                                 _%begin-form116893%_)
                          (gx#core-expand-block__1
                           _%stx116891%_
                           _%expand-special116892%_
                           _%begin-form116893%_))
                        _g117591_))
                ((##fx= _g117590_ 4)
                 (apply (lambda (_%stx116897%_
                                 _%expand-special116898%_
                                 _%begin-form116899%_
                                 _%expand-e116900%_)
                          (gx#core-expand-block__%
                           _%stx116897%_
                           _%expand-special116898%_
                           _%begin-form116899%_
                           _%expand-e116900%_))
                        _g117591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g117591_))))))
    (define gx#core-expand-block*
      (lambda (_%stx116656%_ _%expand-special116657%_)
        (let* ((_%g116658116669%_
                (gx#core-expand-block__1
                 _%stx116656%_
                 _%expand-special116657%_
                 '#f))
               (_%E116662116673%_
                (lambda ()
                  (error '"No clause matching"
                         _%g116658116669%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K116667116704%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx116656%_)))
                (_%K116664116690%_ (lambda (_%expr116688%_) _%expr116688%_))
                (_%K116663116679%_
                 (lambda (_%body116677%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body116677%_))
                    (gx#stx-source _%stx116656%_)))))
            (let ((_%try-match116660116700%_
                   (lambda ()
                     (if (##pair? _%g116658116669%_)
                         (let ((_%tl116666116695%_ (##cdr _%g116658116669%_))
                               (_%hd116665116693%_ (##car _%g116658116669%_)))
                           (if (##null? _%tl116666116695%_)
                               (let ((_%expr116698%_ _%hd116665116693%_))
                                 (_%K116664116690%_ _%expr116698%_))
                               (let ((_%body116682%_ _%g116658116669%_))
                                 (_%K116663116679%_ _%body116682%_))))
                         (let ((_%body116682%_ _%g116658116669%_))
                           (_%K116663116679%_ _%body116682%_))))))
              (if (##null? _%g116658116669%_)
                  (_%K116667116704%_)
                  (_%try-match116660116700%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx116481%_)
        (letrec ((_%satisfied?116483%_
                  (lambda (_%condition116584%_)
                    (let* ((_%e116585116600%_ _%condition116584%_)
                           (_%E116595116604%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116585116600%_)))
                           (_%E116588116623%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116585116600%_)
                                  (let ((_%e116596116608%_
                                         (gx#syntax-e _%e116585116600%_)))
                                    (let ((_%hd116597116611%_
                                           (##car _%e116596116608%_))
                                          (_%tl116598116613%_
                                           (##cdr _%e116596116608%_)))
                                      (let* ((_%combinator116616%_
                                              _%hd116597116611%_)
                                             (_%body116618%_
                                              _%tl116598116613%_))
                                        (if (gx#stx-list? _%body116618%_)
                                            (let ((_%$e116620%_
                                                   (gx#stx-e
                                                    _%combinator116616%_)))
                                              (if (eq? 'not _%$e116620%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?116483%_
                                                        _%body116618%_))
                                                  (if (eq? 'and _%$e116620%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?116483%_
                                                       _%body116618%_)
                                                      (if (eq? 'or
                                                               _%$e116620%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?116483%_
                                                           _%body116618%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e116620%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body116618%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx116481%_
                       _%combinator116616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E116595116604%_)))))
                                  (_%E116595116604%_))))
                           (_%E116587116646%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116585116600%_)
                                  (let ((_%e116589116627%_
                                         (gx#syntax-e _%e116585116600%_)))
                                    (let ((_%hd116590116630%_
                                           (##car _%e116589116627%_))
                                          (_%tl116591116632%_
                                           (##cdr _%e116589116627%_)))
                                      (if (and (gx#identifier?
                                                _%hd116590116630%_)
                                               (gx#core-identifier=?
                                                _%hd116590116630%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl116591116632%_)
                                              (let ((_%e116592116635%_
                                                     (gx#syntax-e
                                                      _%tl116591116632%_)))
                                                (let ((_%hd116593116638%_
                                                       (##car _%e116592116635%_))
                                                      (_%tl116594116640%_
                                                       (##cdr _%e116592116635%_)))
                                                  (let ((_%expr116643%_
                                                         _%hd116593116638%_))
                                                    (if (gx#stx-null?
                                                         _%tl116594116640%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr116643%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E116588116623%_))
                (_%E116588116623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116588116623%_))
                                          (_%E116588116623%_))))
                                  (_%E116588116623%_))))
                           (_%E116586116652%_
                            (lambda ()
                              (let ((_%id116650%_ _%e116585116600%_))
                                (if (gx#identifier? _%id116650%_)
                                    (gx#core-bound-identifier?__%
                                     _%id116650%_
                                     gx#feature-binding?)
                                    (_%E116587116646%_))))))
                      (_%E116586116652%_))))
                 (_%loop116484%_
                  (lambda (_%rest116514%_)
                    (let* ((_%e116515116523%_ _%rest116514%_)
                           (_%E116521116527%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116515116523%_)))
                           (_%E116517116531%_
                            (lambda ()
                              (if (gx#stx-null? _%e116515116523%_)
                                  (if '#t '() (_%E116521116527%_))
                                  (_%E116521116527%_))))
                           (_%E116516116580%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116515116523%_)
                                  (let ((_%e116518116535%_
                                         (gx#syntax-e _%e116515116523%_)))
                                    (let ((_%hd116519116538%_
                                           (##car _%e116518116535%_))
                                          (_%tl116520116540%_
                                           (##cdr _%e116518116535%_)))
                                      (let* ((_%hd116543%_ _%hd116519116538%_)
                                             (_%rest116545%_
                                              _%tl116520116540%_))
                                        (if '#t
                                            (let* ((_%e116546116553%_
                                                    _%hd116543%_)
                                                   (_%E116548116557%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e116546116553%_)))
                                                   (_%E116547116576%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116546116553%_)
                                                          (let ((_%e116549116561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116546116553%_)))
                    (let ((_%hd116550116564%_ (##car _%e116549116561%_))
                          (_%tl116551116566%_ (##cdr _%e116549116561%_)))
                      (let* ((_%condition116569%_ _%hd116550116564%_)
                             (_%body116571%_ _%tl116551116566%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition116569%_ 'else)
                                (let ()
                                  (if (gx#stx-null? _%rest116545%_)
                                      _%body116571%_
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; clauses after else"
                                       _%stx116481%_
                                       _%hd116543%_)))
                                (if (_%satisfied?116483%_ _%condition116569%_)
                                    (let () _%body116571%_)
                                    (let () (_%loop116484%_ _%rest116545%_))))
                            (_%E116548116557%_)))))
                  (_%E116548116557%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116547116576%_))
                                            (_%E116517116531%_)))))
                                  (_%E116517116531%_)))))
                      (_%E116516116580%_)))))
          (let* ((_%e116485116492%_ _%stx116481%_)
                 (_%E116487116496%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116485116492%_)))
                 (_%E116486116510%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116485116492%_)
                        (let ((_%e116488116500%_
                               (gx#syntax-e _%e116485116492%_)))
                          (let ((_%hd116489116503%_ (##car _%e116488116500%_))
                                (_%tl116490116505%_ (##cdr _%e116488116500%_)))
                            (let ((_%clauses116508%_ _%tl116490116505%_))
                              (if (gx#stx-list? _%clauses116508%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop116484%_ _%clauses116508%_))
                                  (_%E116487116496%_)))))
                        (_%E116487116496%_)))))
            (_%E116486116510%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx116424%_ _%rpath116425%_)
        (let* ((_%e116426116436%_ _%stx116424%_)
               (_%E116428116440%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e116426116436%_)))
               (_%E116427116467%_
                (lambda ()
                  (if (gx#stx-pair? _%e116426116436%_)
                      (let ((_%e116429116444%_
                             (gx#syntax-e _%e116426116436%_)))
                        (let ((_%hd116430116447%_ (##car _%e116429116444%_))
                              (_%tl116431116449%_ (##cdr _%e116429116444%_)))
                          (if (gx#stx-pair? _%tl116431116449%_)
                              (let ((_%e116432116452%_
                                     (gx#syntax-e _%tl116431116449%_)))
                                (let ((_%hd116433116455%_
                                       (##car _%e116432116452%_))
                                      (_%tl116434116457%_
                                       (##cdr _%e116432116452%_)))
                                  (let ((_%path116460%_ _%hd116433116455%_))
                                    (if (gx#stx-null? _%tl116434116457%_)
                                        (if (gx#stx-string? _%path116460%_)
                                            (let ((_%rpath116465%_
                                                   (let ((_%$e116462%_
                                                          _%rpath116425%_))
                                                     (if _%$e116462%_
                                                         _%$e116462%_
                                                         (gx#core-resolve-path__%
                                                          _%path116460%_
                                                          (gx#stx-source
                                                           _%stx116424%_))))))
                                              (if (member _%rpath116465%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx116424%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath116465%_))
                                                    (gx#stx-source
                                                     _%stx116424%_)))))
                                            (_%E116428116440%_))
                                        (_%E116428116440%_)))))
                              (_%E116428116440%_))))
                      (_%E116428116440%_)))))
          (_%E116427116467%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx116474%_)
        (let ((_%rpath116476%_ '#f))
          (gx#core-expand-include%__% _%stx116474%_ _%rpath116476%_))))
    (define gx#core-expand-include%
      (lambda _g117593_
        (let ((_g117592_ (##length _g117593_)))
          (cond ((##fx= _g117592_ 1)
                 (apply (lambda (_%stx116474%_)
                          (gx#core-expand-include%__0 _%stx116474%_))
                        _g117593_))
                ((##fx= _g117592_ 2)
                 (apply (lambda (_%stx116478%_ _%rpath116479%_)
                          (gx#core-expand-include%__%
                           _%stx116478%_
                           _%rpath116479%_))
                        _g117593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g117593_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K116390%_ _%stx116391%_ _%method116392%_)
        (if (procedure? _%K116390%_)
            (let ()
              (let ((_%$e116395%_ (gx#stx-source _%stx116391%_)))
                (if _%$e116395%_
                    ((lambda (_%g116397116399%_)
                       (gx#stx-wrap-source
                        (_%K116390%_ _%stx116391%_)
                        _%g116397116399%_))
                     _%$e116395%_)
                    (let () (_%K116390%_ _%stx116391%_)))))
            (let ((_%$e116403%_
                   (bound-method-ref _%K116390%_ _%method116392%_)))
              (if _%$e116403%_
                  ((lambda (_%g116405116407%_)
                     (gx#core-apply-expander__%
                      _%g116405116407%_
                      _%stx116391%_
                      _%method116392%_))
                   _%$e116403%_)
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; no expander method"
                     _%stx116391%_
                     _%method116392%_)))))))
    (define gx#core-apply-expander__0
      (lambda (_%K116414%_ _%stx116415%_)
        (let ((_%method116417%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K116414%_
           _%stx116415%_
           _%method116417%_))))
    (define gx#core-apply-expander
      (lambda _g117595_
        (let ((_g117594_ (##length _g117595_)))
          (cond ((##fx= _g117594_ 2)
                 (apply (lambda (_%K116414%_ _%stx116415%_)
                          (gx#core-apply-expander__0
                           _%K116414%_
                           _%stx116415%_))
                        _g117595_))
                ((##fx= _g117594_ 3)
                 (apply (lambda (_%K116419%_ _%stx116420%_ _%method116421%_)
                          (gx#core-apply-expander__%
                           _%K116419%_
                           _%stx116420%_
                           _%method116421%_))
                        _g117595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g117595_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116375%_ _%stx116376%_)
        (let ()
          (let ((_%self116379%_ _%self116375%_))
            (let ()
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; bottom method for apply-macro-expander"
               _%stx116376%_))))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116217%_ _%stx116218%_)
        (let ()
          (let ((_%self116221%_ _%self116217%_))
            (let ()
              (let* ((_%self116230116236%_ _%self116221%_)
                     (_%E116232116240%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116230116236%_
                               '((macro-expander K)))
                        '#!void))
                     (_%K116233116245%_
                      (lambda (_%K116243%_)
                        (gx#core-apply-expander__0
                         _%K116243%_
                         _%stx116218%_))))
                (if '#t
                    (let* ((_%e116234116248%_
                            (##unchecked-structure-ref
                             _%self116230116236%_
                             '1
                             '#f
                             '#f))
                           (_%K116251%_ _%e116234116248%_))
                      (_%K116233116245%_ _%K116251%_))
                    (_%E116232116240%_))))))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116059%_ _%stx116060%_)
        (let ()
          (let ((_%self116063%_ _%self116059%_))
            (let ()
              (if (gx#sealed-syntax? _%stx116060%_)
                  _%stx116060%_
                  (let* ((_%self116072116078%_ _%self116063%_)
                         (_%E116074116082%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%self116072116078%_
                                   '((core-expander K)))
                            '#!void))
                         (_%K116075116087%_
                          (lambda (_%K116085%_)
                            (gx#core-apply-expander__0
                             _%K116085%_
                             _%stx116060%_))))
                    (if '#t
                        (let* ((_%e116076116090%_
                                (##unchecked-structure-ref
                                 _%self116072116078%_
                                 '1
                                 '#f
                                 '#f))
                               (_%K116093%_ _%e116076116090%_))
                          (_%K116075116087%_ _%K116093%_))
                        (_%E116074116082%_)))))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self115910%_ _%stx115911%_ _%top?115912%_)
        (let ()
          (let ((_%self115915%_ _%self115910%_))
            (let ()
              (if (_%top?115912%_ (gx#current-expander-context))
                  (gx#core-expander::apply-macro-expander
                   _%self115915%_
                   _%stx115911%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal context"
                   _%stx115911%_)))))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self115928%_ _%stx115929%_)
        (let ((_%top?115931%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self115928%_
           _%stx115929%_
           _%top?115931%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g117597_
        (let ((_g117596_ (##length _g117597_)))
          (cond ((##fx= _g117596_ 2)
                 (apply (lambda (_%self115928%_ _%stx115929%_)
                          (gx#top-special-form::apply-macro-expander__0
                           _%self115928%_
                           _%stx115929%_))
                        _g117597_))
                ((##fx= _g117596_ 3)
                 (apply (lambda (_%self115933%_ _%stx115934%_ _%top?115935%_)
                          (gx#top-special-form::apply-macro-expander__%
                           _%self115933%_
                           _%stx115934%_
                           _%top?115935%_))
                        _g117597_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g117597_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self115773%_ _%stx115774%_)
        (let ()
          (let ((_%self115777%_ _%self115773%_))
            (let ()
              (gx#top-special-form::apply-macro-expander__%
               _%self115777%_
               _%stx115774%_
               gx#module-context?))))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self115587%_ _%stx115588%_)
        (let ()
          (let ((_%self115591%_ _%self115587%_))
            (let ()
              (let* ((_%self115600115606%_ _%self115591%_)
                     (_%E115602115610%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self115600115606%_
                               '((rename-macro-expander id)))
                        '#!void))
                     (_%K115603115643%_
                      (lambda (_%id115613%_)
                        (let* ((_%e115614115621%_ _%stx115588%_)
                               (_%E115616115625%_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e115614115621%_)))
                               (_%E115615115639%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e115614115621%_)
                                      (let ((_%e115617115629%_
                                             (gx#syntax-e _%e115614115621%_)))
                                        (let ((_%hd115618115632%_
                                               (##car _%e115617115629%_))
                                              (_%tl115619115634%_
                                               (##cdr _%e115617115629%_)))
                                          (let ((_%body115637%_
                                                 _%tl115619115634%_))
                                            (if '#t
                                                (gx#core-cons
                                                 _%id115613%_
                                                 _%body115637%_)
                                                (_%E115616115625%_)))))
                                      (_%E115616115625%_)))))
                          (_%E115615115639%_)))))
                (if '#t
                    (let* ((_%e115604115646%_
                            (##unchecked-structure-ref
                             _%self115600115606%_
                             '1
                             '#f
                             '#f))
                           (_%id115649%_ _%e115604115646%_))
                      (_%K115603115643%_ _%id115649%_))
                    (_%E115602115610%_))))))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self115413%_ _%stx115414%_ _%method115415%_)
        (let* ((_%self115416115424%_ _%self115413%_)
               (_%E115418115428%_
                (lambda ()
                  (error '"No clause matching"
                         _%self115416115424%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K115419115435%_
                (lambda (_%phi115431%_ _%ctx115432%_ _%K115433%_)
                  (gx#core-apply-user-macro
                   _%K115433%_
                   _%stx115414%_
                   _%ctx115432%_
                   _%phi115431%_
                   _%method115415%_))))
          (if (##structure-instance-of?
               _%self115416115424%_
               'gx#user-expander::t)
              (let* ((_%e115420115438%_
                      (##unchecked-structure-ref
                       _%self115416115424%_
                       '1
                       '#f
                       '#f))
                     (_%K115441%_ _%e115420115438%_)
                     (_%e115421115443%_
                      (##unchecked-structure-ref
                       _%self115416115424%_
                       '2
                       '#f
                       '#f))
                     (_%ctx115446%_ _%e115421115443%_)
                     (_%e115422115448%_
                      (##unchecked-structure-ref
                       _%self115416115424%_
                       '3
                       '#f
                       '#f))
                     (_%phi115451%_ _%e115422115448%_))
                (_%K115419115435%_ _%phi115451%_ _%ctx115446%_ _%K115441%_))
              (_%E115418115428%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self115456%_ _%stx115457%_)
        (let ((_%method115459%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self115456%_
           _%stx115457%_
           _%method115459%_))))
    (define gx#core-apply-user-expander
      (lambda _g117599_
        (let ((_g117598_ (##length _g117599_)))
          (cond ((##fx= _g117598_ 2)
                 (apply (lambda (_%self115456%_ _%stx115457%_)
                          (gx#core-apply-user-expander__0
                           _%self115456%_
                           _%stx115457%_))
                        _g117599_))
                ((##fx= _g117598_ 3)
                 (apply (lambda (_%self115461%_ _%stx115462%_ _%method115463%_)
                          (gx#core-apply-user-expander__%
                           _%self115461%_
                           _%stx115462%_
                           _%method115463%_))
                        _g117599_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g117599_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K115403%_
               _%stx115404%_
               _%ctx115405%_
               _%phi115406%_
               _%method115407%_)
        (let ((_%mark115409%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx115405%_
                _%phi115406%_
                _%stx115404%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K115403%_
               (gx#stx-apply-mark _%stx115404%_ _%mark115409%_)
               _%method115407%_)
              _%mark115409%_))
           gx#current-expander-marks
           (cons _%mark115409%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115251%_ _%phi115252%_ _%ctx115253%_)
        (let _%lp115255%_ ((_%bind115257%_
                            (gx#core-resolve-identifier__%
                             _%stx115251%_
                             _%phi115252%_
                             _%ctx115253%_)))
          (if (##structure-direct-instance-of?
               _%bind115257%_
               'gx#import-binding::t)
              (let ()
                (_%lp115255%_
                 (##unchecked-structure-ref _%bind115257%_ '4 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%bind115257%_
                   'gx#alias-binding::t)
                  (let ()
                    (_%lp115255%_
                     (gx#core-resolve-identifier__%
                      (##unchecked-structure-ref _%bind115257%_ '4 '#f '#f)
                      _%phi115252%_
                      _%ctx115253%_)))
                  (let () _%bind115257%_))))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115265%_)
        (let* ((_%phi115267%_ (gx#current-expander-phi))
               (_%ctx115269%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115265%_
           _%phi115267%_
           _%ctx115269%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115271%_ _%phi115272%_)
        (let ((_%ctx115274%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115271%_
           _%phi115272%_
           _%ctx115274%_))))
    (define gx#resolve-identifier
      (lambda _g117601_
        (let ((_g117600_ (##length _g117601_)))
          (cond ((##fx= _g117600_ 1)
                 (apply (lambda (_%stx115265%_)
                          (gx#resolve-identifier__0 _%stx115265%_))
                        _g117601_))
                ((##fx= _g117600_ 2)
                 (apply (lambda (_%stx115271%_ _%phi115272%_)
                          (gx#resolve-identifier__1
                           _%stx115271%_
                           _%phi115272%_))
                        _g117601_))
                ((##fx= _g117600_ 3)
                 (apply (lambda (_%stx115276%_ _%phi115277%_ _%ctx115278%_)
                          (gx#resolve-identifier__%
                           _%stx115276%_
                           _%phi115277%_
                           _%ctx115278%_))
                        _g117601_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g117601_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115206%_
               _%val115207%_
               _%rebind?115208%_
               _%phi115209%_
               _%ctx115210%_)
        (let ((_%rebind?115215%_
               (if (not _%rebind?115208%_)
                   (let () gx#core-context-rebind?)
                   (if (procedure? _%rebind?115208%_)
                       (let () _%rebind?115208%_)
                       (let () true)))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115206%_)
           _%val115207%_
           _%rebind?115215%_
           _%phi115209%_
           _%ctx115210%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115220%_ _%val115221%_)
        (let* ((_%rebind?115223%_ '#f)
               (_%phi115225%_ (gx#current-expander-phi))
               (_%ctx115227%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115220%_
           _%val115221%_
           _%rebind?115223%_
           _%phi115225%_
           _%ctx115227%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115229%_ _%val115230%_ _%rebind?115231%_)
        (let* ((_%phi115233%_ (gx#current-expander-phi))
               (_%ctx115235%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115229%_
           _%val115230%_
           _%rebind?115231%_
           _%phi115233%_
           _%ctx115235%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115237%_ _%val115238%_ _%rebind?115239%_ _%phi115240%_)
        (let ((_%ctx115242%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115237%_
           _%val115238%_
           _%rebind?115239%_
           _%phi115240%_
           _%ctx115242%_))))
    (define gx#bind-identifier!
      (lambda _g117603_
        (let ((_g117602_ (##length _g117603_)))
          (cond ((##fx= _g117602_ 2)
                 (apply (lambda (_%stx115220%_ _%val115221%_)
                          (gx#bind-identifier!__0 _%stx115220%_ _%val115221%_))
                        _g117603_))
                ((##fx= _g117602_ 3)
                 (apply (lambda (_%stx115229%_ _%val115230%_ _%rebind?115231%_)
                          (gx#bind-identifier!__1
                           _%stx115229%_
                           _%val115230%_
                           _%rebind?115231%_))
                        _g117603_))
                ((##fx= _g117602_ 4)
                 (apply (lambda (_%stx115237%_
                                 _%val115238%_
                                 _%rebind?115239%_
                                 _%phi115240%_)
                          (gx#bind-identifier!__2
                           _%stx115237%_
                           _%val115238%_
                           _%rebind?115239%_
                           _%phi115240%_))
                        _g117603_))
                ((##fx= _g117602_ 5)
                 (apply (lambda (_%stx115244%_
                                 _%val115245%_
                                 _%rebind?115246%_
                                 _%phi115247%_
                                 _%ctx115248%_)
                          (gx#bind-identifier!__%
                           _%stx115244%_
                           _%val115245%_
                           _%rebind?115246%_
                           _%phi115247%_
                           _%ctx115248%_))
                        _g117603_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g117603_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115172%_ _%phi115173%_ _%ctx115174%_)
        (let _%lp115176%_ ((_%e115178%_ _%stx115172%_)
                           (_%marks115179%_ (gx#current-expander-marks)))
          (if (symbol? _%e115178%_)
              (let ()
                (gx#core-resolve-binding
                 _%e115178%_
                 _%phi115173%_
                 _%phi115173%_
                 _%ctx115174%_
                 (reverse _%marks115179%_)))
              (if (gx#identifier-quote? _%e115178%_)
                  (let ()
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _%e115178%_ '1 '#f '#f)
                     _%phi115173%_
                     '0
                     (##unchecked-structure-ref _%e115178%_ '3 '#f '#f)
                     (##unchecked-structure-ref _%e115178%_ '4 '#f '#f)))
                  (if (##structure-direct-instance-of?
                       _%e115178%_
                       'gx#identifier-wrap::t)
                      (let ()
                        (gx#core-resolve-binding
                         (##unchecked-structure-ref _%e115178%_ '1 '#f '#f)
                         _%phi115173%_
                         _%phi115173%_
                         _%ctx115174%_
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e115178%_ '3 '#f '#f)
                          _%marks115179%_)))
                      (if (##structure-direct-instance-of?
                           _%e115178%_
                           'gx#syntax-wrap::t)
                          (let ()
                            (_%lp115176%_
                             (##unchecked-structure-ref _%e115178%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e115178%_
                               '3
                               '#f
                               '#f)
                              _%marks115179%_)))
                          (if (##structure-instance-of?
                               _%e115178%_
                               'gerbil#AST::t)
                              (let ()
                                (_%lp115176%_
                                 (##unchecked-structure-ref
                                  _%e115178%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115179%_))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad identifier"
                                 _%stx115172%_))))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115190%_)
        (let* ((_%phi115192%_ (gx#current-expander-phi))
               (_%ctx115194%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115190%_
           _%phi115192%_
           _%ctx115194%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115196%_ _%phi115197%_)
        (let ((_%ctx115199%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115196%_
           _%phi115197%_
           _%ctx115199%_))))
    (define gx#core-resolve-identifier
      (lambda _g117605_
        (let ((_g117604_ (##length _g117605_)))
          (cond ((##fx= _g117604_ 1)
                 (apply (lambda (_%stx115190%_)
                          (gx#core-resolve-identifier__0 _%stx115190%_))
                        _g117605_))
                ((##fx= _g117604_ 2)
                 (apply (lambda (_%stx115196%_ _%phi115197%_)
                          (gx#core-resolve-identifier__1
                           _%stx115196%_
                           _%phi115197%_))
                        _g117605_))
                ((##fx= _g117604_ 3)
                 (apply (lambda (_%stx115201%_ _%phi115202%_ _%ctx115203%_)
                          (gx#core-resolve-identifier__%
                           _%stx115201%_
                           _%phi115202%_
                           _%ctx115203%_))
                        _g117605_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g117605_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115082%_
               _%phi115083%_
               _%src-phi115084%_
               _%ctx115085%_
               _%marks115086%_)
        (letrec ((_%resolve115088%_
                  (lambda (_%ctx115156%_ _%src-phi115157%_ _%key115158%_)
                    (let _%lp115160%_ ((_%ctx115162%_
                                        (gx#core-context-shift
                                         _%ctx115156%_
                                         _%phi115083%_))
                                       (_%dphi115163%_
                                        (fx- _%phi115083%_ _%src-phi115157%_)))
                      (let ((_%$e115165%_
                             (gx#core-context-resolve
                              _%ctx115162%_
                              _%key115158%_)))
                        (if _%$e115165%_
                            (values _%$e115165%_)
                            (if (fxzero? _%dphi115163%_)
                                (let () '#f)
                                (if (fxpositive? _%dphi115163%_)
                                    (let ()
                                      (_%lp115160%_
                                       (gx#core-context-shift
                                        _%ctx115162%_
                                        '-1)
                                       (##fx- _%dphi115163%_ '1)))
                                    (let ()
                                      (_%lp115160%_
                                       (gx#core-context-shift _%ctx115162%_ '1)
                                       (##fx+ _%dphi115163%_ '1)))))))))))
          (let _%lp115090%_ ((_%ctx115092%_ _%ctx115085%_)
                             (_%src-phi115093%_ _%src-phi115084%_)
                             (_%rest115094%_ _%marks115086%_))
            (let* ((_%rest115095115103%_ _%rest115094%_)
                   (_%else115097115111%_
                    (lambda ()
                      (_%resolve115088%_
                       _%ctx115092%_
                       _%src-phi115093%_
                       _%id115082%_)))
                   (_%K115099115144%_
                    (lambda (_%rest115114%_ _%hd115115%_)
                      (let* ((_%hd115116115122%_ _%hd115115%_)
                             (_%E115118115126%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115116115122%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115119115136%_
                              (lambda (_%subst115129%_)
                                (let ((_%$e115133%_
                                       (let ((_%key115131%_
                                              (if _%subst115129%_
                                                  (hash-get
                                                   _%subst115129%_
                                                   _%id115082%_)
                                                  '#f)))
                                         (if _%key115131%_
                                             (_%resolve115088%_
                                              _%ctx115092%_
                                              _%src-phi115093%_
                                              _%key115131%_)
                                             '#f))))
                                  (if _%$e115133%_
                                      _%$e115133%_
                                      (_%lp115090%_
                                       (##unchecked-structure-ref
                                        _%hd115115%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115115%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115114%_))))))
                        (if (##structure-instance-of?
                             _%hd115116115122%_
                             'gx#expander-mark::t)
                            (let* ((_%e115120115139%_
                                    (##unchecked-structure-ref
                                     _%hd115116115122%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115142%_ _%e115120115139%_))
                              (_%K115119115136%_ _%subst115142%_))
                            (_%E115118115126%_))))))
              (if (##pair? _%rest115095115103%_)
                  (let ((_%hd115100115147%_ (##car _%rest115095115103%_))
                        (_%tl115101115149%_ (##cdr _%rest115095115103%_)))
                    (let* ((_%hd115152%_ _%hd115100115147%_)
                           (_%rest115154%_ _%tl115101115149%_))
                      (_%K115099115144%_ _%rest115154%_ _%hd115152%_)))
                  (_%else115097115111%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key114952%_
               _%val114953%_
               _%rebind?114954%_
               _%phi114955%_
               _%ctx114956%_)
        (letrec ((_%update-binding114958%_
                  (lambda (_%xval115031%_)
                    (if (or (_%rebind?114954%_
                             _%ctx114956%_
                             _%xval115031%_
                             _%val114953%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115031%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115031%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val114953%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val114953%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115031%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val114953%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val114953%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115031%_
                                       '1
                                       '#f
                                       '#f))))
                        (let () _%val114953%_)
                        (if (and (##structure-direct-instance-of?
                                  _%val114953%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val114953%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115031%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val114953%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115031%_
                                                '1
                                                '#f
                                                '#f)))))
                            (let () _%xval115031%_)
                            (if (and (##structure-direct-instance-of?
                                      _%val114953%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115031%_
                                      'gx#binding::t))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; import conflict"
                                   _%key114952%_
                                   (cons (##unchecked-structure-ref
                                          _%val114953%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (##structure-ref
                                                (##unchecked-structure-ref
                                                 _%val114953%_
                                                 '5
                                                 '#f
                                                 '#f)
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '()))
                                   (cons (##unchecked-structure-ref
                                          _%xval115031%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (if (##structure-direct-instance-of?
                                                    _%xval115031%_
                                                    'gx#import-binding::t)
                                                   (##structure-ref
                                                    (##unchecked-structure-ref
                                                     _%xval115031%_
                                                     '5
                                                     '#f
                                                     '#f)
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   _%xval115031%_)
                                               '()))))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; rebind conflict"
                                   _%key114952%_
                                   _%val114953%_
                                   _%xval115031%_)))))))
                 (_%gensubst114959%_
                  (lambda (_%subst115026%_ _%id115027%_)
                    (let ((_%eid115029%_
                           (gensym (if (uninterned-symbol? _%id115027%_)
                                       '%
                                       _%id115027%_))))
                      (hash-put! _%subst115026%_ _%id115027%_ _%eid115029%_)
                      _%eid115029%_)))
                 (_%subst!114960%_
                  (lambda (_%key114962%_)
                    (let* ((_%key114963114971%_ _%key114962%_)
                           (_%else114965114979%_ (lambda () _%key114962%_))
                           (_%K114967115014%_
                            (lambda (_%mark114982%_ _%id114983%_)
                              (let* ((_%mark114984114990%_ _%mark114982%_)
                                     (_%E114986114994%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark114984114990%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K114987115006%_
                                      (lambda (_%subst114997%_)
                                        (if (not _%subst114997%_)
                                            (let ()
                                              (let ((_%subst115000%_
                                                     (make-hash-table-eq)))
                                                (##unchecked-structure-set!
                                                 _%mark114982%_
                                                 _%subst115000%_
                                                 '1
                                                 '#f
                                                 '#f)
                                                (_%gensubst114959%_
                                                 _%subst115000%_
                                                 _%id114983%_)))
                                            (let ((_%$e115002%_
                                                   (hash-get
                                                    _%subst114997%_
                                                    _%id114983%_)))
                                              (if _%$e115002%_
                                                  (values _%$e115002%_)
                                                  (let ()
                                                    (_%gensubst114959%_
                                                     _%subst114997%_
                                                     _%id114983%_))))))))
                                (if (##structure-instance-of?
                                     _%mark114984114990%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e114988115009%_
                                            (##unchecked-structure-ref
                                             _%mark114984114990%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115012%_ _%e114988115009%_))
                                      (_%K114987115006%_ _%subst115012%_))
                                    (_%E114986114994%_))))))
                      (if (##pair? _%key114963114971%_)
                          (let ((_%hd114968115017%_
                                 (##car _%key114963114971%_))
                                (_%tl114969115019%_
                                 (##cdr _%key114963114971%_)))
                            (let* ((_%id115022%_ _%hd114968115017%_)
                                   (_%mark115024%_ _%tl114969115019%_))
                              (_%K114967115014%_ _%mark115024%_ _%id115022%_)))
                          (_%else114965114979%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx114956%_ _%phi114955%_)
           (_%subst!114960%_ _%key114952%_)
           _%val114953%_
           _%update-binding114958%_))))
    (define gx#core-bind!__0
      (lambda (_%key115052%_ _%val115053%_)
        (let* ((_%rebind?115055%_ false)
               (_%phi115057%_ (gx#current-expander-phi))
               (_%ctx115059%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115052%_
           _%val115053%_
           _%rebind?115055%_
           _%phi115057%_
           _%ctx115059%_))))
    (define gx#core-bind!__1
      (lambda (_%key115061%_ _%val115062%_ _%rebind?115063%_)
        (let* ((_%phi115065%_ (gx#current-expander-phi))
               (_%ctx115067%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115061%_
           _%val115062%_
           _%rebind?115063%_
           _%phi115065%_
           _%ctx115067%_))))
    (define gx#core-bind!__2
      (lambda (_%key115069%_ _%val115070%_ _%rebind?115071%_ _%phi115072%_)
        (let ((_%ctx115074%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115069%_
           _%val115070%_
           _%rebind?115071%_
           _%phi115072%_
           _%ctx115074%_))))
    (define gx#core-bind!
      (lambda _g117607_
        (let ((_g117606_ (##length _g117607_)))
          (cond ((##fx= _g117606_ 2)
                 (apply (lambda (_%key115052%_ _%val115053%_)
                          (gx#core-bind!__0 _%key115052%_ _%val115053%_))
                        _g117607_))
                ((##fx= _g117606_ 3)
                 (apply (lambda (_%key115061%_ _%val115062%_ _%rebind?115063%_)
                          (gx#core-bind!__1
                           _%key115061%_
                           _%val115062%_
                           _%rebind?115063%_))
                        _g117607_))
                ((##fx= _g117606_ 4)
                 (apply (lambda (_%key115069%_
                                 _%val115070%_
                                 _%rebind?115071%_
                                 _%phi115072%_)
                          (gx#core-bind!__2
                           _%key115069%_
                           _%val115070%_
                           _%rebind?115071%_
                           _%phi115072%_))
                        _g117607_))
                ((##fx= _g117606_ 5)
                 (apply (lambda (_%key115076%_
                                 _%val115077%_
                                 _%rebind?115078%_
                                 _%phi115079%_
                                 _%ctx115080%_)
                          (gx#core-bind!__%
                           _%key115076%_
                           _%val115077%_
                           _%rebind?115078%_
                           _%phi115079%_
                           _%ctx115080%_))
                        _g117607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g117607_))))))
    (define gx#core-identifier-key
      (lambda (_%stx114883%_)
        (if (symbol? _%stx114883%_)
            (let ()
              (let* ((_%g114885114893%_ (gx#current-expander-marks))
                     (_%else114887114901%_ (lambda () _%stx114883%_))
                     (_%K114889114906%_
                      (lambda (_%hd114904%_)
                        (cons _%stx114883%_ _%hd114904%_))))
                (if (##pair? _%g114885114893%_)
                    (let* ((_%hd114890114909%_ (##car _%g114885114893%_))
                           (_%hd114912%_ _%hd114890114909%_))
                      (_%K114889114906%_ _%hd114912%_))
                    (_%else114887114901%_))))
            (if (gx#identifier? _%stx114883%_)
                (let ()
                  (let* ((_%id114915%_ (gx#syntax-local-unwrap _%stx114883%_))
                         (_%eid114917%_ (gx#stx-e _%id114915%_))
                         (_%marks114919%_
                          (gx#stx-identifier-marks* _%id114915%_)))
                    (let* ((_%marks114921114929%_ _%marks114919%_)
                           (_%else114923114937%_ (lambda () _%eid114917%_))
                           (_%K114925114942%_
                            (lambda (_%hd114940%_)
                              (cons _%eid114917%_ _%hd114940%_))))
                      (if (##pair? _%marks114921114929%_)
                          (let* ((_%hd114926114945%_
                                  (##car _%marks114921114929%_))
                                 (_%hd114948%_ _%hd114926114945%_))
                            (_%K114925114942%_ _%hd114948%_))
                          (_%else114923114937%_)))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad identifier"
                   _%stx114883%_))))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx114822%_ _%phi114823%_)
        (letrec ((_%make-phi114825%_
                  (lambda (_%super114881%_)
                    (let ((__obj117579
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj117579
                       (##gensym 'phi)
                       _%super114881%_)
                      __obj117579)))
                 (_%make-phi/up114826%_
                  (lambda (_%ctx114876%_ _%super114877%_)
                    (let ((_%ctx+1114879%_
                           (_%make-phi114825%_ _%super114877%_)))
                      (##unchecked-structure-set!
                       _%ctx114876%_
                       _%ctx+1114879%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1114879%_
                       _%ctx114876%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1114879%_)))
                 (_%make-phi/down114827%_
                  (lambda (_%ctx114871%_ _%super114872%_)
                    (let ((_%ctx-1114874%_
                           (_%make-phi114825%_ _%super114872%_)))
                      (##unchecked-structure-set!
                       _%ctx-1114874%_
                       _%ctx114871%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx114871%_
                       _%ctx-1114874%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1114874%_)))
                 (_%shift114828%_
                  (lambda (_%ctx114854%_
                           _%delta114855%_
                           _%make-delta-context114856%_
                           _%phi114857%_
                           _%K114858%_)
                    (let ((_%$e114860%_
                           (##unchecked-structure-ref
                            _%ctx114854%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e114860%_
                          ((lambda (_%super114863%_)
                             (let* ((_%super114865%_
                                     (_%K114858%_
                                      _%super114863%_
                                      _%delta114855%_))
                                    (_%ctx+d114867%_
                                     (_%make-delta-context114856%_
                                      _%ctx114854%_
                                      _%super114865%_)))
                               (_%K114858%_
                                _%ctx+d114867%_
                                (fx- _%phi114857%_ _%delta114855%_))))
                           _%$e114860%_)
                          (let () (error '"Bad context" _%ctx114854%_)))))))
          (let _%K114830%_ ((_%ctx114832%_ _%ctx114822%_)
                            (_%phi114833%_ _%phi114823%_))
            (if (fxzero? _%phi114833%_)
                (let () _%ctx114832%_)
                (if (##structure-instance-of? _%ctx114832%_ 'gx#phi-context::t)
                    (let ()
                      (if (fxpositive? _%phi114833%_)
                          (let ((_%$e114837%_
                                 (##unchecked-structure-ref
                                  _%ctx114832%_
                                  '4
                                  '#f
                                  '#f)))
                            (if _%$e114837%_
                                ((lambda (_%g114839114841%_)
                                   (_%K114830%_
                                    _%g114839114841%_
                                    (##fx- _%phi114833%_ '1)))
                                 _%$e114837%_)
                                (let ()
                                  (_%shift114828%_
                                   _%ctx114832%_
                                   '1
                                   _%make-phi/up114826%_
                                   _%phi114833%_
                                   _%K114830%_))))
                          (let ((_%$e114845%_
                                 (##unchecked-structure-ref
                                  _%ctx114832%_
                                  '5
                                  '#f
                                  '#f)))
                            (if _%$e114845%_
                                ((lambda (_%g114847114849%_)
                                   (_%K114830%_
                                    _%g114847114849%_
                                    (##fx+ _%phi114833%_ '1)))
                                 _%$e114845%_)
                                (let ()
                                  (_%shift114828%_
                                   _%ctx114832%_
                                   '-1
                                   _%make-phi/down114827%_
                                   _%phi114833%_
                                   _%K114830%_))))))
                    (let () _%ctx114832%_)))))))
    (define gx#core-context-get
      (lambda (_%ctx114819%_ _%key114820%_)
        (hash-get
         (##unchecked-structure-ref _%ctx114819%_ '2 '#f '#f)
         _%key114820%_)))
    (define gx#core-context-put!
      (lambda (_%ctx114815%_ _%key114816%_ _%val114817%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx114815%_ '2 '#f '#f)
         _%key114816%_
         _%val114817%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx114801%_ _%key114802%_)
        (let _%lp114804%_ ((_%ctx114806%_ _%ctx114801%_))
          (let ((_%$e114808%_
                 (gx#core-context-get _%ctx114806%_ _%key114802%_)))
            (if _%$e114808%_
                (values _%$e114808%_)
                (let ((_%$e114811%_
                       (if (##structure-instance-of?
                            _%ctx114806%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx114806%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e114811%_
                      (_%lp114804%_ _%$e114811%_)
                      (let () '#f))))))))
    (define gx#core-context-bind!
      (lambda (_%ctx114790%_ _%key114791%_ _%val114792%_ _%rebind114793%_)
        (let ((_%$e114795%_ (gx#core-context-get _%ctx114790%_ _%key114791%_)))
          (if _%$e114795%_
              ((lambda (_%xval114798%_)
                 (gx#core-context-put!
                  _%ctx114790%_
                  _%key114791%_
                  (_%rebind114793%_ _%xval114798%_)))
               _%$e114795%_)
              (let ()
                (gx#core-context-put!
                 _%ctx114790%_
                 _%key114791%_
                 _%val114792%_))))))
    (define gx#core-context-top__%
      (lambda (_%ctx114765%_ _%stop?114766%_)
        (let _%lp114768%_ ((_%ctx114770%_ _%ctx114765%_))
          (if (_%stop?114766%_ _%ctx114770%_)
              (let () _%ctx114770%_)
              (if (##structure-instance-of? _%ctx114770%_ 'gx#phi-context::t)
                  (let ()
                    (_%lp114768%_
                     (##unchecked-structure-ref _%ctx114770%_ '3 '#f '#f)))
                  (let () '#f))))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx114779%_ (gx#current-expander-context))
               (_%stop?114781%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114779%_ _%stop?114781%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx114783%_)
        (let ((_%stop?114785%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114783%_ _%stop?114785%_))))
    (define gx#core-context-top
      (lambda _g117609_
        (let ((_g117608_ (##length _g117609_)))
          (cond ((##fx= _g117608_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g117609_))
                ((##fx= _g117608_ 1)
                 (apply (lambda (_%ctx114783%_)
                          (gx#core-context-top__1 _%ctx114783%_))
                        _g117609_))
                ((##fx= _g117608_ 2)
                 (apply (lambda (_%ctx114787%_ _%stop?114788%_)
                          (gx#core-context-top__%
                           _%ctx114787%_
                           _%stop?114788%_))
                        _g117609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g117609_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx114750%_)
        (let _%lp114752%_ ((_%ctx114754%_ _%ctx114750%_))
          (if (##structure-instance-of? _%ctx114754%_ 'gx#phi-context::t)
              (_%lp114752%_
               (##unchecked-structure-ref _%ctx114754%_ '3 '#f '#f))
              _%ctx114754%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx114760%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx114760%_))))
    (define gx#core-context-root
      (lambda _g117611_
        (let ((_g117610_ (##length _g117611_)))
          (cond ((##fx= _g117610_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g117611_))
                ((##fx= _g117610_ 1)
                 (apply (lambda (_%ctx114762%_)
                          (gx#core-context-root__% _%ctx114762%_))
                        _g117611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g117611_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx114732%_ . _%ignore114733%_)
        (let ((_%$e114735%_ (gx#current-expander-allow-rebind?)))
          (if _%$e114735%_
              _%$e114735%_
              (if (##structure-instance-of? _%ctx114732%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx114732%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx114732%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx114742%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx114742%_))))
    (define gx#core-context-rebind?
      (lambda _g117613_
        (let ((_g117612_ (##length _g117613_)))
          (cond ((##fx= _g117612_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g117613_))
                ((##fx= _g117612_ 1)
                 (apply (lambda (_%ctx114744%_)
                          (gx#core-context-rebind?__% _%ctx114744%_))
                        _g117613_))
                ((##fx>= _g117612_ 1)
                 (apply gx#core-context-rebind?__% _g117613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g117613_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx114715%_)
        (let ((_%$e114717%_ (gx#core-context-top__1 _%ctx114715%_)))
          (if _%$e114717%_
              ((lambda (_%ctx114720%_)
                 (if (##structure-instance-of?
                      _%ctx114720%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx114720%_ '6 '#f '#f)
                     '#f))
               _%$e114717%_)
              (let () '#f)))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx114727%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx114727%_))))
    (define gx#core-context-namespace
      (lambda _g117615_
        (let ((_g117614_ (##length _g117615_)))
          (cond ((##fx= _g117614_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g117615_))
                ((##fx= _g117614_ 1)
                 (apply (lambda (_%ctx114729%_)
                          (gx#core-context-namespace__% _%ctx114729%_))
                        _g117615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g117615_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind114701%_ _%is?114702%_)
        (if (##structure-direct-instance-of?
             _%bind114701%_
             'gx#syntax-binding::t)
            (_%is?114702%_
             (##unchecked-structure-ref _%bind114701%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind114707%_)
        (let ((_%is?114709%_ gx#expander?))
          (gx#expander-binding?__% _%bind114707%_ _%is?114709%_))))
    (define gx#expander-binding?
      (lambda _g117617_
        (let ((_g117616_ (##length _g117617_)))
          (cond ((##fx= _g117616_ 1)
                 (apply (lambda (_%bind114707%_)
                          (gx#expander-binding?__0 _%bind114707%_))
                        _g117617_))
                ((##fx= _g117616_ 2)
                 (apply (lambda (_%bind114711%_ _%is?114712%_)
                          (gx#expander-binding?__%
                           _%bind114711%_
                           _%is?114712%_))
                        _g117617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g117617_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind114698%_)
        (gx#expander-binding?__% _%bind114698%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind114696%_)
        (gx#expander-binding?__% _%bind114696%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind114690%_)
        (letrec ((_%direct-special-form?114692%_
                  (lambda (_%obj114694%_)
                    (##structure-direct-instance-of?
                     _%obj114694%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind114690%_
           _%direct-special-form?114692%_))))
    (define gx#special-form-binding?
      (lambda (_%bind114688%_)
        (gx#expander-binding?__% _%bind114688%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind114679%_)
        (letrec ((_%feature?114681%_
                  (lambda (_%e114683%_)
                    (let ((_%$e114685%_
                           (##structure-instance-of?
                            _%e114683%_
                            'gx#feature-expander::t)))
                      (if _%$e114685%_
                          _%$e114685%_
                          (##structure-instance-of?
                           _%e114683%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind114679%_ _%feature?114681%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind114677%_)
        (gx#expander-binding?__% _%bind114677%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id114664%_ _%bound?114665%_)
        (if (gx#identifier? _%id114664%_)
            (_%bound?114665%_ (gx#resolve-identifier__0 _%id114664%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id114670%_)
        (let ((_%bound?114672%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id114670%_ _%bound?114672%_))))
    (define gx#core-bound-identifier?
      (lambda _g117619_
        (let ((_g117618_ (##length _g117619_)))
          (cond ((##fx= _g117618_ 1)
                 (apply (lambda (_%id114670%_)
                          (gx#core-bound-identifier?__0 _%id114670%_))
                        _g117619_))
                ((##fx= _g117618_ 2)
                 (apply (lambda (_%id114674%_ _%bound?114675%_)
                          (gx#core-bound-identifier?__%
                           _%id114674%_
                           _%bound?114675%_))
                        _g117619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g117619_))))))
    (define gx#core-identifier=?
      (lambda (_%x114654%_ _%y114655%_)
        (letrec ((_%y=?114657%_
                  (lambda (_%xid114661%_)
                    ((if (list? _%y114655%_) memq eq?)
                     _%xid114661%_
                     _%y114655%_))))
          (let ((_%bind114659%_ (gx#resolve-identifier__0 _%x114654%_)))
            (if (##structure-instance-of? _%bind114659%_ 'gx#binding::t)
                (_%y=?114657%_
                 (##unchecked-structure-ref _%bind114659%_ '1 '#f '#f))
                (_%y=?114657%_ (gx#stx-e _%x114654%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e114652%_)
        (if (interned-symbol? _%e114652%_)
            (string-index__0 (symbol->string _%e114652%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx114605%_ _%src114606%_ _%ctx114607%_ _%marks114608%_)
        (if (##structure? _%stx114605%_)
            (let ((_%$e114610%_ (gx#sealed-syntax-unwrap _%stx114605%_)))
              (if _%$e114610%_
                  (values _%$e114610%_)
                  (if (gx#identifier? _%stx114605%_)
                      (let ()
                        (let ((_%id114614%_
                               (gx#stx-unwrap__%
                                _%stx114605%_
                                _%marks114608%_)))
                          (##structure
                           gx#syntax-quote::t
                           (##unchecked-structure-ref _%id114614%_ '1 '#f '#f)
                           (let ((_%$e114616%_
                                  (##unchecked-structure-ref
                                   _%id114614%_
                                   '2
                                   '#f
                                   '#f)))
                             (if _%$e114616%_ _%$e114616%_ _%src114606%_))
                           _%ctx114607%_
                           (##unchecked-structure-ref
                            _%id114614%_
                            '3
                            '#f
                            '#f))))
                      (let ()
                        (##structure
                         gx#syntax-quote::t
                         (gx#stx-e _%stx114605%_)
                         (let ((_%$e114620%_ (gx#stx-source _%stx114605%_)))
                           (if _%$e114620%_ _%$e114620%_ _%src114606%_))
                         _%ctx114607%_
                         (reverse _%marks114608%_))))))
            (##structure
             gx#syntax-quote::t
             _%stx114605%_
             _%src114606%_
             _%ctx114607%_
             (reverse _%marks114608%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx114626%_)
        (let* ((_%src114628%_ '#f)
               (_%ctx114630%_ (gx#current-expander-context))
               (_%marks114632%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114626%_
           _%src114628%_
           _%ctx114630%_
           _%marks114632%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx114634%_ _%src114635%_)
        (let* ((_%ctx114637%_ (gx#current-expander-context))
               (_%marks114639%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114634%_
           _%src114635%_
           _%ctx114637%_
           _%marks114639%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx114641%_ _%src114642%_ _%ctx114643%_)
        (let ((_%marks114645%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114641%_
           _%src114642%_
           _%ctx114643%_
           _%marks114645%_))))
    (define gx#core-quote-syntax
      (lambda _g117621_
        (let ((_g117620_ (##length _g117621_)))
          (cond ((##fx= _g117620_ 1)
                 (apply (lambda (_%stx114626%_)
                          (gx#core-quote-syntax__0 _%stx114626%_))
                        _g117621_))
                ((##fx= _g117620_ 2)
                 (apply (lambda (_%stx114634%_ _%src114635%_)
                          (gx#core-quote-syntax__1
                           _%stx114634%_
                           _%src114635%_))
                        _g117621_))
                ((##fx= _g117620_ 3)
                 (apply (lambda (_%stx114641%_ _%src114642%_ _%ctx114643%_)
                          (gx#core-quote-syntax__2
                           _%stx114641%_
                           _%src114642%_
                           _%ctx114643%_))
                        _g117621_))
                ((##fx= _g117620_ 4)
                 (apply (lambda (_%stx114647%_
                                 _%src114648%_
                                 _%ctx114649%_
                                 _%marks114650%_)
                          (gx#core-quote-syntax__%
                           _%stx114647%_
                           _%src114648%_
                           _%ctx114649%_
                           _%marks114650%_))
                        _g117621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g117621_))))))
    (define gx#core-cons
      (lambda (_%hd114601%_ _%tl114602%_)
        (cons (gx#core-quote-syntax__0 _%hd114601%_) _%tl114602%_)))
    (define gx#core-list
      (lambda (_%hd114598%_ . _%rest114599%_)
        (cons (gx#core-quote-syntax__0 _%hd114598%_) _%rest114599%_)))
    (define gx#core-cons*
      (lambda (_%hd114595%_ . _%rest114596%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd114595%_) _%rest114596%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path114564%_ _%rel114565%_)
        (let ((_%path114582%_ (gx#stx-e _%stx-path114564%_))
              (_%reldir114583%_
               (let _%lp114567%_ ((_%relsrc114569%_
                                   (let ((_%$e114579%_
                                          (gx#stx-source _%stx-path114564%_)))
                                     (if _%$e114579%_
                                         _%$e114579%_
                                         _%rel114565%_))))
                 (if (##structure-instance-of? _%relsrc114569%_ 'gerbil#AST::t)
                     (let ()
                       (_%lp114567%_
                        (let ((_%$e114572%_ (gx#stx-source _%relsrc114569%_)))
                          (if _%$e114572%_
                              _%$e114572%_
                              (gx#stx-e _%relsrc114569%_)))))
                     (if (source-location-path? _%relsrc114569%_)
                         (let ()
                           (path-directory
                            (source-location-path _%relsrc114569%_)))
                         (if (string? _%relsrc114569%_)
                             (let () (path-directory _%relsrc114569%_))
                             (if (not (null? (gx#current-expander-path)))
                                 (let ()
                                   (path-directory
                                    (car (gx#current-expander-path))))
                                 (let () (current-directory)))))))))
          (path-expand _%path114582%_ (path-normalize _%reldir114583%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path114588%_)
        (let ((_%rel114590%_ '#f))
          (gx#core-resolve-path__% _%stx-path114588%_ _%rel114590%_))))
    (define gx#core-resolve-path
      (lambda _g117623_
        (let ((_g117622_ (##length _g117623_)))
          (cond ((##fx= _g117622_ 1)
                 (apply (lambda (_%stx-path114588%_)
                          (gx#core-resolve-path__0 _%stx-path114588%_))
                        _g117623_))
                ((##fx= _g117622_ 2)
                 (apply (lambda (_%stx-path114592%_ _%rel114593%_)
                          (gx#core-resolve-path__%
                           _%stx-path114592%_
                           _%rel114593%_))
                        _g117623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g117623_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr114520%_ _%ctx114521%_)
        (let* ((_%repr114522114529%_ _%repr114520%_)
               (_%E114524114533%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr114522114529%_
                         '([phi . subs]))
                  '#!void))
               (_%K114525114541%_
                (lambda (_%subs114536%_ _%phi114537%_)
                  (let ((_%subst114539%_
                         (if (not (null? _%subs114536%_))
                             (list->hash-table-eq _%subs114536%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst114539%_
                     _%ctx114521%_
                     _%phi114537%_
                     '#f)))))
          (if (##pair? _%repr114522114529%_)
              (let ((_%hd114526114544%_ (##car _%repr114522114529%_))
                    (_%tl114527114546%_ (##cdr _%repr114522114529%_)))
                (let* ((_%phi114549%_ _%hd114526114544%_)
                       (_%subs114551%_ _%tl114527114546%_))
                  (_%K114525114541%_ _%subs114551%_ _%phi114549%_)))
              (_%E114524114533%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr114556%_)
        (let ((_%ctx114558%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr114556%_ _%ctx114558%_))))
    (define gx#core-deserialize-mark
      (lambda _g117625_
        (let ((_g117624_ (##length _g117625_)))
          (cond ((##fx= _g117624_ 1)
                 (apply (lambda (_%repr114556%_)
                          (gx#core-deserialize-mark__0 _%repr114556%_))
                        _g117625_))
                ((##fx= _g117624_ 2)
                 (apply (lambda (_%repr114560%_ _%ctx114561%_)
                          (gx#core-deserialize-mark__%
                           _%repr114560%_
                           _%ctx114561%_))
                        _g117625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g117625_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx114517%_)
        (gx#stx-rewrap _%stx114517%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx114515%_)
        (gx#stx-unwrap__% _%stx114515%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx114485%_)
        (let* ((_%g114486114494%_ (gx#current-expander-marks))
               (_%else114488114502%_ (lambda () _%stx114485%_))
               (_%K114490114507%_
                (lambda (_%hd114505%_)
                  (gx#stx-apply-mark _%stx114485%_ _%hd114505%_))))
          (if (##pair? _%g114486114494%_)
              (let* ((_%hd114491114510%_ (##car _%g114486114494%_))
                     (_%hd114513%_ _%hd114491114510%_))
                (_%K114490114507%_ _%hd114513%_))
              (_%else114488114502%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx114470%_ _%E114471%_)
        (let ((_%bind114473%_ (gx#resolve-identifier__0 _%stx114470%_)))
          (if (##structure-direct-instance-of?
               _%bind114473%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind114473%_ '4 '#f '#f)
              (_%E114471%_ _%stx114470%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx114478%_)
        (let ((_%E114480%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx114478%_ _%E114480%_))))
    (define gx#syntax-local-e
      (lambda _g117627_
        (let ((_g117626_ (##length _g117627_)))
          (cond ((##fx= _g117626_ 1)
                 (apply (lambda (_%stx114478%_)
                          (gx#syntax-local-e__0 _%stx114478%_))
                        _g117627_))
                ((##fx= _g117626_ 2)
                 (apply (lambda (_%stx114482%_ _%E114483%_)
                          (gx#syntax-local-e__% _%stx114482%_ _%E114483%_))
                        _g117627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g117627_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx114454%_ _%E114455%_)
        (let ((_%e114457%_ (gx#syntax-local-e__% _%stx114454%_ _%E114455%_)))
          (if (##structure-instance-of? _%e114457%_ 'gx#expander::t)
              (##structure-ref _%e114457%_ '1 gx#expander::t '#f)
              _%e114457%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx114462%_)
        (let ((_%E114464%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx114462%_ _%E114464%_))))
    (define gx#syntax-local-value
      (lambda _g117629_
        (let ((_g117628_ (##length _g117629_)))
          (cond ((##fx= _g117628_ 1)
                 (apply (lambda (_%stx114462%_)
                          (gx#syntax-local-value__0 _%stx114462%_))
                        _g117629_))
                ((##fx= _g117628_ 2)
                 (apply (lambda (_%stx114466%_ _%E114467%_)
                          (gx#syntax-local-value__% _%stx114466%_ _%E114467%_))
                        _g117629_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g117629_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx114451%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx114451%_)))))
