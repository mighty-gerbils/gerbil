(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1712124234)
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
      (lambda _%$args117679%_
        (apply make-instance gx#expander-context::t _%$args117679%_)))
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
      (lambda _%$args117676%_
        (apply make-instance gx#root-context::t _%$args117676%_)))
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
      (lambda _%$args117673%_
        (apply make-instance gx#phi-context::t _%$args117673%_)))
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
      (lambda _%$args117670%_
        (apply make-instance gx#top-context::t _%$args117670%_)))
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
      (lambda _%$args117667%_
        (apply make-instance gx#module-context::t _%$args117667%_)))
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
      (lambda _%$args117664%_
        (apply make-instance gx#prelude-context::t _%$args117664%_)))
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
      (lambda _%$args117661%_
        (apply make-instance gx#local-context::t _%$args117661%_)))
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
      (lambda (_%self117634%_ _%id117635%_ _%super117636%_)
        (let ()
          (let ((_%self117639%_ _%self117634%_))
            (let ()
              (if (##fx< '3 (##structure-length _%self117639%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self117639%_
                     _%id117635%_
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117639%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117639%_
                     _%super117636%_
                     '3
                     '#f
                     '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self117639%_
                         '3
                         (##vector-length _%self117639%_))))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self117652%_ _%id117653%_)
        (let ((_%super117655%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self117652%_
           _%id117653%_
           _%super117655%_))))
    (define gx#phi-context:::init!
      (lambda _g117722_
        (let ((_g117721_ (##length _g117722_)))
          (cond ((##fx= _g117721_ 2)
                 (apply (lambda (_%self117652%_ _%id117653%_)
                          (gx#phi-context:::init!__0
                           _%self117652%_
                           _%id117653%_))
                        _g117722_))
                ((##fx= _g117721_ 3)
                 (apply (lambda (_%self117657%_ _%id117658%_ _%super117659%_)
                          (gx#phi-context:::init!__%
                           _%self117657%_
                           _%id117658%_
                           _%super117659%_))
                        _g117722_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g117722_))))))
    (__bind-method! gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self117487%_ _%super117488%_)
        (let ()
          (let ((_%self117491%_ _%self117487%_))
            (let ()
              (if (##fx< '3 (##structure-length _%self117491%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self117491%_
                     (##gensym 'L)
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117491%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self117491%_
                     _%super117488%_
                     '3
                     '#f
                     '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self117491%_
                         '3
                         (##vector-length _%self117491%_))))))))
    (define gx#local-context:::init!__0
      (lambda (_%self117504%_)
        (let ((_%super117506%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self117504%_ _%super117506%_))))
    (define gx#local-context:::init!
      (lambda _g117724_
        (let ((_g117723_ (##length _g117724_)))
          (cond ((##fx= _g117723_ 1)
                 (apply (lambda (_%self117504%_)
                          (gx#local-context:::init!__0 _%self117504%_))
                        _g117724_))
                ((##fx= _g117723_ 2)
                 (apply (lambda (_%self117508%_ _%super117509%_)
                          (gx#local-context:::init!__%
                           _%self117508%_
                           _%super117509%_))
                        _g117724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g117724_))))))
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
      (lambda _%$args117361%_
        (apply make-instance gx#binding::t _%$args117361%_)))
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
      (lambda _%$args117358%_
        (apply make-instance gx#runtime-binding::t _%$args117358%_)))
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
      (lambda _%$args117355%_
        (apply make-instance gx#local-binding::t _%$args117355%_)))
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
      (lambda _%$args117352%_
        (apply make-instance gx#top-binding::t _%$args117352%_)))
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
      (lambda _%$args117349%_
        (apply make-instance gx#module-binding::t _%$args117349%_)))
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
      (lambda _%$args117346%_
        (apply make-instance gx#extern-binding::t _%$args117346%_)))
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
      (lambda _%$args117343%_
        (apply make-instance gx#syntax-binding::t _%$args117343%_)))
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
      (lambda _%$args117340%_
        (apply make-instance gx#import-binding::t _%$args117340%_)))
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
      (lambda _%$args117337%_
        (apply make-instance gx#alias-binding::t _%$args117337%_)))
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
      (lambda _%$args117334%_
        (apply make-instance gx#expander::t _%$args117334%_)))
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
      (lambda _%$args117331%_
        (apply make-instance gx#core-expander::t _%$args117331%_)))
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
      (lambda _%$args117328%_
        (apply make-instance gx#expression-form::t _%$args117328%_)))
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
      (lambda _%$args117325%_
        (apply make-instance gx#special-form::t _%$args117325%_)))
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
      (lambda _%$args117322%_
        (apply make-instance gx#definition-form::t _%$args117322%_)))
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
      (lambda _%$args117319%_
        (apply make-instance gx#top-special-form::t _%$args117319%_)))
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
      (lambda _%$args117316%_
        (apply make-instance gx#module-special-form::t _%$args117316%_)))
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
      (lambda _%$args117313%_
        (apply make-instance gx#feature-expander::t _%$args117313%_)))
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
      (lambda _%$args117310%_
        (apply make-instance gx#private-feature-expander::t _%$args117310%_)))
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
      (lambda _%$args117307%_
        (apply make-instance gx#reserved-expander::t _%$args117307%_)))
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
      (lambda _%$args117304%_
        (apply make-instance gx#macro-expander::t _%$args117304%_)))
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
      (lambda _%$args117301%_
        (apply make-instance gx#rename-macro-expander::t _%$args117301%_)))
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
      (lambda _%$args117298%_
        (apply make-instance gx#user-expander::t _%$args117298%_)))
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
      (lambda _%$args117295%_
        (apply make-instance gx#expander-mark::t _%$args117295%_)))
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
      (lambda (_%ctx117279%_
               _%message117280%_
               _%stx117281%_
               .
               _%details117282%_)
        (let ((_%ctx117293%_
               (let ((_%$e117284%_ _%ctx117279%_))
                 (if _%$e117284%_
                     _%$e117284%_
                     (let ((_%$e117287%_ (gx#core-context-top__0)))
                       (if _%$e117287%_
                           ((lambda (_%ctx117290%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx117290%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e117287%_)
                           (let () '#f)))))))
          (raise (make-syntax-error
                  _%message117280%_
                  (cons _%stx117281%_ _%details117282%_)
                  _%ctx117293%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx117266%_ _%expression?117267%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx117266%_ _%expression?117267%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx117272%_)
        (let ((_%expression?117274%_ '#f))
          (gx#eval-syntax__% _%stx117272%_ _%expression?117274%_))))
    (define gx#eval-syntax
      (lambda _g117726_
        (let ((_g117725_ (##length _g117726_)))
          (cond ((##fx= _g117725_ 1)
                 (apply (lambda (_%stx117272%_)
                          (gx#eval-syntax__0 _%stx117272%_))
                        _g117726_))
                ((##fx= _g117725_ 2)
                 (apply (lambda (_%stx117276%_ _%expression?117277%_)
                          (gx#eval-syntax__%
                           _%stx117276%_
                           _%expression?117277%_))
                        _g117726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g117726_))))))
    (define gx#eval-syntax*
      (lambda (_%stx117263%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx117263%_))))
    (define gx#core-expand__%
      (lambda (_%stx117250%_ _%expression?117251%_)
        (if _%expression?117251%_
            (gx#core-expand-expression _%stx117250%_)
            (gx#core-expand-top _%stx117250%_))))
    (define gx#core-expand__0
      (lambda (_%stx117256%_)
        (let ((_%expression?117258%_ '#f))
          (gx#core-expand__% _%stx117256%_ _%expression?117258%_))))
    (define gx#core-expand
      (lambda _g117728_
        (let ((_g117727_ (##length _g117728_)))
          (cond ((##fx= _g117727_ 1)
                 (apply (lambda (_%stx117256%_)
                          (gx#core-expand__0 _%stx117256%_))
                        _g117728_))
                ((##fx= _g117727_ 2)
                 (apply (lambda (_%stx117260%_ _%expression?117261%_)
                          (gx#core-expand__%
                           _%stx117260%_
                           _%expression?117261%_))
                        _g117728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g117728_))))))
    (define gx#core-expand-top
      (lambda (_%stx117217%_)
        (let* ((_%stx117219%_ (gx#core-expand*__0 _%stx117217%_))
               (_%e117220117227%_ _%stx117219%_)
               (_%E117222117231%_
                (lambda () (gx#core-expand-expression _%stx117219%_)))
               (_%E117221117245%_
                (lambda ()
                  (if (gx#stx-pair? _%e117220117227%_)
                      (let ((_%e117223117235%_
                             (gx#syntax-e _%e117220117227%_)))
                        (let ((_%hd117224117238%_ (##car _%e117223117235%_))
                              (_%tl117225117240%_ (##cdr _%e117223117235%_)))
                          (let ((_%form117243%_ _%hd117224117238%_))
                            (if (gx#core-bound-identifier?__0 _%form117243%_)
                                _%stx117219%_
                                (_%E117222117231%_)))))
                      (_%E117222117231%_)))))
          (_%E117221117245%_))))
    (define gx#core-expand-expression
      (lambda (_%stx117149%_)
        (letrec ((_%sealed-expression?117151%_
                  (lambda (_%hd117187%_)
                    (if (gx#sealed-syntax? _%hd117187%_)
                        (let* ((_%e117188117195%_ _%hd117187%_)
                               (_%E117190117199%_ (lambda () '#f))
                               (_%E117189117213%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e117188117195%_)
                                      (let ((_%e117191117203%_
                                             (gx#syntax-e _%e117188117195%_)))
                                        (let ((_%hd117192117206%_
                                               (##car _%e117191117203%_))
                                              (_%tl117193117208%_
                                               (##cdr _%e117191117203%_)))
                                          (let ((_%form117211%_
                                                 _%hd117192117206%_))
                                            (if '#t
                                                (gx#core-bound-identifier?__%
                                                 _%form117211%_
                                                 gx#expression-form-binding?)
                                                (_%E117190117199%_)))))
                                      (_%E117190117199%_)))))
                          (_%E117189117213%_))
                        '#f)))
                 (_%illegal-expression117152%_
                  (lambda (_%hd117184%_ . _%_117185%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx117149%_
                     _%hd117184%_)))
                 (_%expand-e117153%_
                  (lambda (_%form117176%_ _%hd117177%_)
                    (let ((_%bind117179%_
                           (if (##structure-instance-of?
                                _%form117176%_
                                'gx#binding::t)
                               _%form117176%_
                               (gx#resolve-identifier__0 _%form117176%_))))
                      (if (gx#core-expander-binding? _%bind117179%_)
                          (let ()
                            (gx#core-apply-expander__0
                             (##unchecked-structure-ref
                              _%bind117179%_
                              '4
                              '#f
                              '#f)
                             (gx#stx-wrap-source
                              _%hd117177%_
                              (gx#stx-source _%stx117149%_))))
                          (if (##structure-direct-instance-of?
                               _%bind117179%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-expand-expression
                                 (gx#core-apply-expander__0
                                  (##unchecked-structure-ref
                                   _%bind117179%_
                                   '4
                                   '#f
                                   '#f)
                                  (gx#stx-wrap-source
                                   _%hd117177%_
                                   (gx#stx-source _%stx117149%_)))))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; missing expander"
                                 _%stx117149%_
                                 _%form117176%_))))))))
          (let ((_%hd117155%_ (gx#core-expand-head _%stx117149%_)))
            (if (_%sealed-expression?117151%_ _%hd117155%_)
                (let () _%hd117155%_)
                (if (gx#stx-pair? _%hd117155%_)
                    (let ()
                      (let* ((_%form117159%_ (gx#stx-car _%hd117155%_))
                             (_%bind117161%_
                              (if (gx#identifier? _%form117159%_)
                                  (gx#resolve-identifier__0 _%form117159%_)
                                  '#f)))
                        (if (or (not _%bind117161%_)
                                (not (gx#core-expander-binding?
                                      _%bind117161%_)))
                            (let ()
                              (_%expand-e117153%_
                               '%%app
                               (cons '%%app _%hd117155%_)))
                            (if (eq? (##unchecked-structure-ref
                                      _%bind117161%_
                                      '1
                                      '#f
                                      '#f)
                                     '%#begin)
                                (let ()
                                  (gx#core-expand-block*
                                   _%hd117155%_
                                   _%illegal-expression117152%_))
                                (if (gx#expression-form-binding?
                                     _%bind117161%_)
                                    (let ()
                                      (_%expand-e117153%_
                                       _%bind117161%_
                                       _%hd117155%_))
                                    (if (gx#direct-special-form-binding?
                                         _%bind117161%_)
                                        (let ()
                                          (gx#core-expand-expression
                                           (_%expand-e117153%_
                                            _%bind117161%_
                                            _%hd117155%_)))
                                        (let ()
                                          (_%illegal-expression117152%_
                                           _%hd117155%_))))))))
                    (if (gx#core-bound-identifier?__0 _%hd117155%_)
                        (let () (_%illegal-expression117152%_ _%hd117155%_))
                        (if (gx#identifier? _%hd117155%_)
                            (let ()
                              (_%expand-e117153%_
                               '%%ref
                               (cons '%%ref (cons _%hd117155%_ '()))))
                            (if (gx#stx-datum? _%hd117155%_)
                                (let ()
                                  (_%expand-e117153%_
                                   '%#quote
                                   (cons '%#quote (cons _%hd117155%_ '()))))
                                (let ()
                                  (_%illegal-expression117152%_
                                   _%hd117155%_)))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx117144%_)
        (__call-with-parameters
         (lambda ()
           (let ((_%stx117147%_ (gx#core-expand-expression _%stx117144%_)))
             (values _%stx117147%_ (gx#eval-syntax* _%stx117147%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx117125%_ _%stop?117126%_)
        (let _%lp117128%_ ((_%stx117130%_ _%stx117125%_))
          (if (_%stop?117126%_ _%stx117130%_)
              _%stx117130%_
              (let ((_%rstx117132%_ (gx#core-expand1 _%stx117130%_)))
                (if (eq? _%stx117130%_ _%rstx117132%_)
                    _%stx117130%_
                    (_%lp117128%_ _%rstx117132%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx117137%_)
        (let ((_%stop?117139%_ false))
          (gx#core-expand*__% _%stx117137%_ _%stop?117139%_))))
    (define gx#core-expand*
      (lambda _g117730_
        (let ((_g117729_ (##length _g117730_)))
          (cond ((##fx= _g117729_ 1)
                 (apply (lambda (_%stx117137%_)
                          (gx#core-expand*__0 _%stx117137%_))
                        _g117730_))
                ((##fx= _g117729_ 2)
                 (apply (lambda (_%stx117141%_ _%stop?117142%_)
                          (gx#core-expand*__% _%stx117141%_ _%stop?117142%_))
                        _g117730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g117730_))))))
    (define gx#core-expand1
      (lambda (_%stx117077%_)
        (letrec ((_%step117079%_
                  (lambda (_%hd117116%_)
                    (let ((_%bind117118%_
                           (gx#resolve-identifier__0 _%hd117116%_)))
                      (if (##structure-instance-of?
                           _%bind117118%_
                           'gx#runtime-binding::t)
                          (let () _%stx117077%_)
                          (if (##structure-direct-instance-of?
                               _%bind117118%_
                               'gx#syntax-binding::t)
                              (let ()
                                (gx#core-apply-expander__0
                                 (##unchecked-structure-ref
                                  _%bind117118%_
                                  '4
                                  '#f
                                  '#f)
                                 _%stx117077%_))
                              (if (not _%bind117118%_)
                                  (let () _%stx117077%_)
                                  (let ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; no binding for head"
                                     _%stx117077%_)))))))))
          (let* ((_%e117080117088%_ _%stx117077%_)
                 (_%E117086117092%_ (lambda () _%stx117077%_))
                 (_%E117082117098%_
                  (lambda ()
                    (let ((_%hd117096%_ _%e117080117088%_))
                      (if (gx#identifier? _%hd117096%_)
                          (_%step117079%_ _%hd117096%_)
                          (_%E117086117092%_)))))
                 (_%E117081117112%_
                  (lambda ()
                    (if (gx#stx-pair? _%e117080117088%_)
                        (let ((_%e117083117102%_
                               (gx#syntax-e _%e117080117088%_)))
                          (let ((_%hd117084117105%_ (##car _%e117083117102%_))
                                (_%tl117085117107%_ (##cdr _%e117083117102%_)))
                            (let ((_%hd117110%_ _%hd117084117105%_))
                              (if (gx#identifier? _%hd117110%_)
                                  (_%step117079%_ _%hd117110%_)
                                  (_%E117082117098%_)))))
                        (_%E117082117098%_)))))
            (_%E117081117112%_)))))
    (define gx#core-expand-head
      (lambda (_%stx117043%_)
        (letrec ((_%stop?117045%_
                  (lambda (_%stx117047%_)
                    (let* ((_%e117048117055%_ _%stx117047%_)
                           (_%E117050117059%_ (lambda () '#f))
                           (_%E117049117073%_
                            (lambda ()
                              (if (gx#stx-pair? _%e117048117055%_)
                                  (let ((_%e117051117063%_
                                         (gx#syntax-e _%e117048117055%_)))
                                    (let ((_%hd117052117066%_
                                           (##car _%e117051117063%_))
                                          (_%tl117053117068%_
                                           (##cdr _%e117051117063%_)))
                                      (let ((_%hd117071%_ _%hd117052117066%_))
                                        (if '#t
                                            (gx#core-bound-identifier?__0
                                             _%hd117071%_)
                                            (_%E117050117059%_)))))
                                  (_%E117050117059%_)))))
                      (_%E117049117073%_)))))
          (gx#core-expand*__% _%stx117043%_ _%stop?117045%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx116849%_
               _%expand-special116850%_
               _%begin-form116851%_
               _%expand-e116852%_)
        (letrec ((_%expand-splice116854%_
                  (lambda (_%hd117017%_
                           _%body117018%_
                           _%rest117019%_
                           _%r117020%_)
                    (if (gx#stx-list? _%body117018%_)
                        (_%K116858%_
                         (gx#stx-foldr cons _%rest117019%_ _%body117018%_)
                         _%r117020%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx116849%_
                         _%hd117017%_))))
                 (_%expand-cond-expand116855%_
                  (lambda (_%hd117013%_ _%rest117014%_ _%r117015%_)
                    (_%K116858%_
                     (cons (gx#core-expand-cond-expand% _%hd117013%_)
                           _%rest117014%_)
                     _%r117015%_)))
                 (_%expand-include116856%_
                  (lambda (_%hd116962%_ _%rest116963%_ _%r116964%_)
                    (let* ((_%e116965116975%_ _%hd116962%_)
                           (_%E116967116979%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116965116975%_)))
                           (_%E116966117009%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116965116975%_)
                                  (let ((_%e116968116983%_
                                         (gx#syntax-e _%e116965116975%_)))
                                    (let ((_%hd116969116986%_
                                           (##car _%e116968116983%_))
                                          (_%tl116970116988%_
                                           (##cdr _%e116968116983%_)))
                                      (if (gx#stx-pair? _%tl116970116988%_)
                                          (let ((_%e116971116991%_
                                                 (gx#syntax-e
                                                  _%tl116970116988%_)))
                                            (let ((_%hd116972116994%_
                                                   (##car _%e116971116991%_))
                                                  (_%tl116973116996%_
                                                   (##cdr _%e116971116991%_)))
                                              (let ((_%path116999%_
                                                     _%hd116972116994%_))
                                                (if (gx#stx-null?
                                                     _%tl116973116996%_)
                                                    (if (gx#stx-string?
                                                         _%path116999%_)
                                                        (let* ((_%rpath117001%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path116999%_
                         (gx#stx-source _%hd116962%_)))
                       (_%block117003%_
                        (gx#core-expand-include%__%
                         _%hd116962%_
                         _%rpath117001%_))
                       (_%rbody117006%_
                        (__call-with-parameters
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block117003%_
                            _%expand-special116850%_
                            '#f
                            _%expand-e116852%_))
                         gx#current-expander-path
                         (cons _%rpath117001%_ (gx#current-expander-path)))))
                  (_%K116858%_
                   _%rest116963%_
                   (__foldr1 cons _%r116964%_ _%rbody117006%_)))
                (_%E116967116979%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E116967116979%_)))))
                                          (_%E116967116979%_))))
                                  (_%E116967116979%_)))))
                      (_%E116966117009%_))))
                 (_%expand-expression116857%_
                  (lambda (_%hd116958%_ _%rest116959%_ _%r116960%_)
                    (_%K116858%_
                     _%rest116959%_
                     (cons (_%expand-e116852%_ _%hd116958%_) _%r116960%_))))
                 (_%K116858%_
                  (lambda (_%rest116888%_ _%r116889%_)
                    (let* ((_%e116890116897%_ _%rest116888%_)
                           (_%E116892116901%_
                            (lambda ()
                              (if _%begin-form116851%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form116851%_
                                    (reverse _%r116889%_))
                                   (gx#stx-source _%stx116849%_))
                                  _%r116889%_)))
                           (_%E116891116954%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116890116897%_)
                                  (let ((_%e116893116905%_
                                         (gx#syntax-e _%e116890116897%_)))
                                    (let ((_%hd116894116908%_
                                           (##car _%e116893116905%_))
                                          (_%tl116895116910%_
                                           (##cdr _%e116893116905%_)))
                                      (let* ((_%hd116913%_ _%hd116894116908%_)
                                             (_%rest116915%_
                                              _%tl116895116910%_))
                                        (if '#t
                                            (let* ((_%hd116917%_
                                                    (gx#core-expand-head
                                                     _%hd116913%_))
                                                   (_%e116918116925%_
                                                    _%hd116917%_)
                                                   (_%E116920116929%_
                                                    (lambda ()
                                                      (_%expand-expression116857%_
                                                       _%hd116917%_
                                                       _%rest116915%_
                                                       _%r116889%_)))
                                                   (_%E116919116950%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116918116925%_)
                                                          (let ((_%e116921116933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116918116925%_)))
                    (let ((_%hd116922116936%_ (##car _%e116921116933%_))
                          (_%tl116923116938%_ (##cdr _%e116921116933%_)))
                      (let* ((_%form116941%_ _%hd116922116936%_)
                             (_%body116943%_ _%tl116923116938%_))
                        (if '#t
                            (let ((_%bind116945%_
                                   (if (gx#identifier? _%form116941%_)
                                       (gx#resolve-identifier__0
                                        _%form116941%_)
                                       '#f)))
                              (if (gx#special-form-binding? _%bind116945%_)
                                  (let ((_%$e116947%_
                                         (##unchecked-structure-ref
                                          _%bind116945%_
                                          '1
                                          '#f
                                          '#f)))
                                    (if (eq? '%#begin _%$e116947%_)
                                        (_%expand-splice116854%_
                                         _%hd116917%_
                                         _%body116943%_
                                         _%rest116915%_
                                         _%r116889%_)
                                        (if (eq? '%#cond-expand _%$e116947%_)
                                            (_%expand-cond-expand116855%_
                                             _%hd116917%_
                                             _%rest116915%_
                                             _%r116889%_)
                                            (if (eq? '%#include _%$e116947%_)
                                                (_%expand-include116856%_
                                                 _%hd116917%_
                                                 _%rest116915%_
                                                 _%r116889%_)
                                                (_%expand-special116850%_
                                                 _%hd116917%_
                                                 _%K116858%_
                                                 _%rest116915%_
                                                 _%r116889%_)))))
                                  (_%expand-expression116857%_
                                   _%hd116917%_
                                   _%rest116915%_
                                   _%r116889%_)))
                            (_%E116920116929%_)))))
                  (_%E116920116929%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116919116950%_))
                                            (_%E116892116901%_)))))
                                  (_%E116892116901%_)))))
                      (_%E116891116954%_)))))
          (let* ((_%e116859116866%_ _%stx116849%_)
                 (_%E116861116870%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116859116866%_)))
                 (_%E116860116884%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116859116866%_)
                        (let ((_%e116862116874%_
                               (gx#syntax-e _%e116859116866%_)))
                          (let ((_%hd116863116877%_ (##car _%e116862116874%_))
                                (_%tl116864116879%_ (##cdr _%e116862116874%_)))
                            (let ((_%body116882%_ _%tl116864116879%_))
                              (if (gx#stx-list? _%body116882%_)
                                  (_%K116858%_ _%body116882%_ '())
                                  (_%E116861116870%_)))))
                        (_%E116861116870%_)))))
            (_%E116860116884%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx117025%_ _%expand-special117026%_)
        (let* ((_%begin-form117028%_ '%#begin)
               (_%expand-e117030%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117025%_
           _%expand-special117026%_
           _%begin-form117028%_
           _%expand-e117030%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx117032%_ _%expand-special117033%_ _%begin-form117034%_)
        (let ((_%expand-e117036%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx117032%_
           _%expand-special117033%_
           _%begin-form117034%_
           _%expand-e117036%_))))
    (define gx#core-expand-block
      (lambda _g117732_
        (let ((_g117731_ (##length _g117732_)))
          (cond ((##fx= _g117731_ 2)
                 (apply (lambda (_%stx117025%_ _%expand-special117026%_)
                          (gx#core-expand-block__0
                           _%stx117025%_
                           _%expand-special117026%_))
                        _g117732_))
                ((##fx= _g117731_ 3)
                 (apply (lambda (_%stx117032%_
                                 _%expand-special117033%_
                                 _%begin-form117034%_)
                          (gx#core-expand-block__1
                           _%stx117032%_
                           _%expand-special117033%_
                           _%begin-form117034%_))
                        _g117732_))
                ((##fx= _g117731_ 4)
                 (apply (lambda (_%stx117038%_
                                 _%expand-special117039%_
                                 _%begin-form117040%_
                                 _%expand-e117041%_)
                          (gx#core-expand-block__%
                           _%stx117038%_
                           _%expand-special117039%_
                           _%begin-form117040%_
                           _%expand-e117041%_))
                        _g117732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g117732_))))))
    (define gx#core-expand-block*
      (lambda (_%stx116797%_ _%expand-special116798%_)
        (let* ((_%g116799116810%_
                (gx#core-expand-block__1
                 _%stx116797%_
                 _%expand-special116798%_
                 '#f))
               (_%E116803116814%_
                (lambda ()
                  (error '"No clause matching"
                         _%g116799116810%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K116808116845%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx116797%_)))
                (_%K116805116831%_ (lambda (_%expr116829%_) _%expr116829%_))
                (_%K116804116820%_
                 (lambda (_%body116818%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body116818%_))
                    (gx#stx-source _%stx116797%_)))))
            (let ((_%try-match116801116841%_
                   (lambda ()
                     (if (##pair? _%g116799116810%_)
                         (let ((_%tl116807116836%_ (##cdr _%g116799116810%_))
                               (_%hd116806116834%_ (##car _%g116799116810%_)))
                           (if (##null? _%tl116807116836%_)
                               (let ((_%expr116839%_ _%hd116806116834%_))
                                 (_%K116805116831%_ _%expr116839%_))
                               (let ((_%body116823%_ _%g116799116810%_))
                                 (_%K116804116820%_ _%body116823%_))))
                         (let ((_%body116823%_ _%g116799116810%_))
                           (_%K116804116820%_ _%body116823%_))))))
              (if (##null? _%g116799116810%_)
                  (_%K116808116845%_)
                  (_%try-match116801116841%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx116622%_)
        (letrec ((_%satisfied?116624%_
                  (lambda (_%condition116725%_)
                    (let* ((_%e116726116741%_ _%condition116725%_)
                           (_%E116736116745%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116726116741%_)))
                           (_%E116729116764%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116726116741%_)
                                  (let ((_%e116737116749%_
                                         (gx#syntax-e _%e116726116741%_)))
                                    (let ((_%hd116738116752%_
                                           (##car _%e116737116749%_))
                                          (_%tl116739116754%_
                                           (##cdr _%e116737116749%_)))
                                      (let* ((_%combinator116757%_
                                              _%hd116738116752%_)
                                             (_%body116759%_
                                              _%tl116739116754%_))
                                        (if (gx#stx-list? _%body116759%_)
                                            (let ((_%$e116761%_
                                                   (gx#stx-e
                                                    _%combinator116757%_)))
                                              (if (eq? 'not _%$e116761%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?116624%_
                                                        _%body116759%_))
                                                  (if (eq? 'and _%$e116761%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?116624%_
                                                       _%body116759%_)
                                                      (if (eq? 'or
                                                               _%$e116761%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?116624%_
                                                           _%body116759%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e116761%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body116759%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx116622%_
                       _%combinator116757%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E116736116745%_)))))
                                  (_%E116736116745%_))))
                           (_%E116728116787%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116726116741%_)
                                  (let ((_%e116730116768%_
                                         (gx#syntax-e _%e116726116741%_)))
                                    (let ((_%hd116731116771%_
                                           (##car _%e116730116768%_))
                                          (_%tl116732116773%_
                                           (##cdr _%e116730116768%_)))
                                      (if (and (gx#identifier?
                                                _%hd116731116771%_)
                                               (gx#core-identifier=?
                                                _%hd116731116771%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl116732116773%_)
                                              (let ((_%e116733116776%_
                                                     (gx#syntax-e
                                                      _%tl116732116773%_)))
                                                (let ((_%hd116734116779%_
                                                       (##car _%e116733116776%_))
                                                      (_%tl116735116781%_
                                                       (##cdr _%e116733116776%_)))
                                                  (let ((_%expr116784%_
                                                         _%hd116734116779%_))
                                                    (if (gx#stx-null?
                                                         _%tl116735116781%_)
                                                        (if '#t
                                                            (__call-with-parameters
                                                             (lambda ()
                                                               (gx#eval-syntax__0
                                                                _%expr116784%_))
                                                             gx#current-expander-phi
                                                             (##fx+ (gx#current-expander-phi)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1))
                    (_%E116729116764%_))
                (_%E116729116764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116729116764%_))
                                          (_%E116729116764%_))))
                                  (_%E116729116764%_))))
                           (_%E116727116793%_
                            (lambda ()
                              (let ((_%id116791%_ _%e116726116741%_))
                                (if (gx#identifier? _%id116791%_)
                                    (gx#core-bound-identifier?__%
                                     _%id116791%_
                                     gx#feature-binding?)
                                    (_%E116728116787%_))))))
                      (_%E116727116793%_))))
                 (_%loop116625%_
                  (lambda (_%rest116655%_)
                    (let* ((_%e116656116664%_ _%rest116655%_)
                           (_%E116662116668%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e116656116664%_)))
                           (_%E116658116672%_
                            (lambda ()
                              (if (gx#stx-null? _%e116656116664%_)
                                  (if '#t '() (_%E116662116668%_))
                                  (_%E116662116668%_))))
                           (_%E116657116721%_
                            (lambda ()
                              (if (gx#stx-pair? _%e116656116664%_)
                                  (let ((_%e116659116676%_
                                         (gx#syntax-e _%e116656116664%_)))
                                    (let ((_%hd116660116679%_
                                           (##car _%e116659116676%_))
                                          (_%tl116661116681%_
                                           (##cdr _%e116659116676%_)))
                                      (let* ((_%hd116684%_ _%hd116660116679%_)
                                             (_%rest116686%_
                                              _%tl116661116681%_))
                                        (if '#t
                                            (let* ((_%e116687116694%_
                                                    _%hd116684%_)
                                                   (_%E116689116698%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid syntax-case clause"
                                                       _%e116687116694%_)))
                                                   (_%E116688116717%_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _%e116687116694%_)
                                                          (let ((_%e116690116702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%e116687116694%_)))
                    (let ((_%hd116691116705%_ (##car _%e116690116702%_))
                          (_%tl116692116707%_ (##cdr _%e116690116702%_)))
                      (let* ((_%condition116710%_ _%hd116691116705%_)
                             (_%body116712%_ _%tl116692116707%_))
                        (if '#t
                            (if (gx#stx-eq? _%condition116710%_ 'else)
                                (let ()
                                  (if (gx#stx-null? _%rest116686%_)
                                      _%body116712%_
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; clauses after else"
                                       _%stx116622%_
                                       _%hd116684%_)))
                                (if (_%satisfied?116624%_ _%condition116710%_)
                                    (let () _%body116712%_)
                                    (let () (_%loop116625%_ _%rest116686%_))))
                            (_%E116689116698%_)))))
                  (_%E116689116698%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E116688116717%_))
                                            (_%E116658116672%_)))))
                                  (_%E116658116672%_)))))
                      (_%E116657116721%_)))))
          (let* ((_%e116626116633%_ _%stx116622%_)
                 (_%E116628116637%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e116626116633%_)))
                 (_%E116627116651%_
                  (lambda ()
                    (if (gx#stx-pair? _%e116626116633%_)
                        (let ((_%e116629116641%_
                               (gx#syntax-e _%e116626116633%_)))
                          (let ((_%hd116630116644%_ (##car _%e116629116641%_))
                                (_%tl116631116646%_ (##cdr _%e116629116641%_)))
                            (let ((_%clauses116649%_ _%tl116631116646%_))
                              (if (gx#stx-list? _%clauses116649%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop116625%_ _%clauses116649%_))
                                  (_%E116628116637%_)))))
                        (_%E116628116637%_)))))
            (_%E116627116651%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx116565%_ _%rpath116566%_)
        (let* ((_%e116567116577%_ _%stx116565%_)
               (_%E116569116581%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e116567116577%_)))
               (_%E116568116608%_
                (lambda ()
                  (if (gx#stx-pair? _%e116567116577%_)
                      (let ((_%e116570116585%_
                             (gx#syntax-e _%e116567116577%_)))
                        (let ((_%hd116571116588%_ (##car _%e116570116585%_))
                              (_%tl116572116590%_ (##cdr _%e116570116585%_)))
                          (if (gx#stx-pair? _%tl116572116590%_)
                              (let ((_%e116573116593%_
                                     (gx#syntax-e _%tl116572116590%_)))
                                (let ((_%hd116574116596%_
                                       (##car _%e116573116593%_))
                                      (_%tl116575116598%_
                                       (##cdr _%e116573116593%_)))
                                  (let ((_%path116601%_ _%hd116574116596%_))
                                    (if (gx#stx-null? _%tl116575116598%_)
                                        (if (gx#stx-string? _%path116601%_)
                                            (let ((_%rpath116606%_
                                                   (let ((_%$e116603%_
                                                          _%rpath116566%_))
                                                     (if _%$e116603%_
                                                         _%$e116603%_
                                                         (gx#core-resolve-path__%
                                                          _%path116601%_
                                                          (gx#stx-source
                                                           _%stx116565%_))))))
                                              (if (member _%rpath116606%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx116565%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath116606%_))
                                                    (gx#stx-source
                                                     _%stx116565%_)))))
                                            (_%E116569116581%_))
                                        (_%E116569116581%_)))))
                              (_%E116569116581%_))))
                      (_%E116569116581%_)))))
          (_%E116568116608%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx116615%_)
        (let ((_%rpath116617%_ '#f))
          (gx#core-expand-include%__% _%stx116615%_ _%rpath116617%_))))
    (define gx#core-expand-include%
      (lambda _g117734_
        (let ((_g117733_ (##length _g117734_)))
          (cond ((##fx= _g117733_ 1)
                 (apply (lambda (_%stx116615%_)
                          (gx#core-expand-include%__0 _%stx116615%_))
                        _g117734_))
                ((##fx= _g117733_ 2)
                 (apply (lambda (_%stx116619%_ _%rpath116620%_)
                          (gx#core-expand-include%__%
                           _%stx116619%_
                           _%rpath116620%_))
                        _g117734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g117734_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K116531%_ _%stx116532%_ _%method116533%_)
        (if (procedure? _%K116531%_)
            (let ()
              (let ((_%$e116536%_ (gx#stx-source _%stx116532%_)))
                (if _%$e116536%_
                    ((lambda (_%g116538116540%_)
                       (gx#stx-wrap-source
                        (_%K116531%_ _%stx116532%_)
                        _%g116538116540%_))
                     _%$e116536%_)
                    (let () (_%K116531%_ _%stx116532%_)))))
            (let ((_%$e116544%_
                   (bound-method-ref _%K116531%_ _%method116533%_)))
              (if _%$e116544%_
                  ((lambda (_%g116546116548%_)
                     (gx#core-apply-expander__%
                      _%g116546116548%_
                      _%stx116532%_
                      _%method116533%_))
                   _%$e116544%_)
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; no expander method"
                     _%stx116532%_
                     _%method116533%_)))))))
    (define gx#core-apply-expander__0
      (lambda (_%K116555%_ _%stx116556%_)
        (let ((_%method116558%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K116555%_
           _%stx116556%_
           _%method116558%_))))
    (define gx#core-apply-expander
      (lambda _g117736_
        (let ((_g117735_ (##length _g117736_)))
          (cond ((##fx= _g117735_ 2)
                 (apply (lambda (_%K116555%_ _%stx116556%_)
                          (gx#core-apply-expander__0
                           _%K116555%_
                           _%stx116556%_))
                        _g117736_))
                ((##fx= _g117735_ 3)
                 (apply (lambda (_%K116560%_ _%stx116561%_ _%method116562%_)
                          (gx#core-apply-expander__%
                           _%K116560%_
                           _%stx116561%_
                           _%method116562%_))
                        _g117736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g117736_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self116516%_ _%stx116517%_)
        (let ()
          (let ((_%self116520%_ _%self116516%_))
            (let ()
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; bottom method for apply-macro-expander"
               _%stx116517%_))))))
    (__bind-method!
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self116358%_ _%stx116359%_)
        (let ()
          (let ((_%self116362%_ _%self116358%_))
            (let ()
              (let* ((_%self116371116377%_ _%self116362%_)
                     (_%E116373116381%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self116371116377%_
                               '((macro-expander K)))
                        '#!void))
                     (_%K116374116386%_
                      (lambda (_%K116384%_)
                        (gx#core-apply-expander__0
                         _%K116384%_
                         _%stx116359%_))))
                (if '#t
                    (let* ((_%e116375116389%_
                            (##unchecked-structure-ref
                             _%self116371116377%_
                             '1
                             '#f
                             '#f))
                           (_%K116392%_ _%e116375116389%_))
                      (_%K116374116386%_ _%K116392%_))
                    (_%E116373116381%_))))))))
    (__bind-method!
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self116200%_ _%stx116201%_)
        (let ()
          (let ((_%self116204%_ _%self116200%_))
            (let ()
              (if (gx#sealed-syntax? _%stx116201%_)
                  _%stx116201%_
                  (let* ((_%self116213116219%_ _%self116204%_)
                         (_%E116215116223%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%self116213116219%_
                                   '((core-expander K)))
                            '#!void))
                         (_%K116216116228%_
                          (lambda (_%K116226%_)
                            (gx#core-apply-expander__0
                             _%K116226%_
                             _%stx116201%_))))
                    (if '#t
                        (let* ((_%e116217116231%_
                                (##unchecked-structure-ref
                                 _%self116213116219%_
                                 '1
                                 '#f
                                 '#f))
                               (_%K116234%_ _%e116217116231%_))
                          (_%K116216116228%_ _%K116234%_))
                        (_%E116215116223%_)))))))))
    (__bind-method!
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self116051%_ _%stx116052%_ _%top?116053%_)
        (let ()
          (let ((_%self116056%_ _%self116051%_))
            (let ()
              (if (_%top?116053%_ (gx#current-expander-context))
                  (gx#core-expander::apply-macro-expander
                   _%self116056%_
                   _%stx116052%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; illegal context"
                   _%stx116052%_)))))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self116069%_ _%stx116070%_)
        (let ((_%top?116072%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self116069%_
           _%stx116070%_
           _%top?116072%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g117738_
        (let ((_g117737_ (##length _g117738_)))
          (cond ((##fx= _g117737_ 2)
                 (apply (lambda (_%self116069%_ _%stx116070%_)
                          (gx#top-special-form::apply-macro-expander__0
                           _%self116069%_
                           _%stx116070%_))
                        _g117738_))
                ((##fx= _g117737_ 3)
                 (apply (lambda (_%self116074%_ _%stx116075%_ _%top?116076%_)
                          (gx#top-special-form::apply-macro-expander__%
                           _%self116074%_
                           _%stx116075%_
                           _%top?116076%_))
                        _g117738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g117738_))))))
    (__bind-method!
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self115914%_ _%stx115915%_)
        (let ()
          (let ((_%self115918%_ _%self115914%_))
            (let ()
              (gx#top-special-form::apply-macro-expander__%
               _%self115918%_
               _%stx115915%_
               gx#module-context?))))))
    (__bind-method!
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self115728%_ _%stx115729%_)
        (let ()
          (let ((_%self115732%_ _%self115728%_))
            (let ()
              (let* ((_%self115741115747%_ _%self115732%_)
                     (_%E115743115751%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self115741115747%_
                               '((rename-macro-expander id)))
                        '#!void))
                     (_%K115744115784%_
                      (lambda (_%id115754%_)
                        (let* ((_%e115755115762%_ _%stx115729%_)
                               (_%E115757115766%_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e115755115762%_)))
                               (_%E115756115780%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e115755115762%_)
                                      (let ((_%e115758115770%_
                                             (gx#syntax-e _%e115755115762%_)))
                                        (let ((_%hd115759115773%_
                                               (##car _%e115758115770%_))
                                              (_%tl115760115775%_
                                               (##cdr _%e115758115770%_)))
                                          (let ((_%body115778%_
                                                 _%tl115760115775%_))
                                            (if '#t
                                                (gx#core-cons
                                                 _%id115754%_
                                                 _%body115778%_)
                                                (_%E115757115766%_)))))
                                      (_%E115757115766%_)))))
                          (_%E115756115780%_)))))
                (if '#t
                    (let* ((_%e115745115787%_
                            (##unchecked-structure-ref
                             _%self115741115747%_
                             '1
                             '#f
                             '#f))
                           (_%id115790%_ _%e115745115787%_))
                      (_%K115744115784%_ _%id115790%_))
                    (_%E115743115751%_))))))))
    (__bind-method!
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self115554%_ _%stx115555%_ _%method115556%_)
        (let* ((_%self115557115565%_ _%self115554%_)
               (_%E115559115569%_
                (lambda ()
                  (error '"No clause matching"
                         _%self115557115565%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K115560115576%_
                (lambda (_%phi115572%_ _%ctx115573%_ _%K115574%_)
                  (gx#core-apply-user-macro
                   _%K115574%_
                   _%stx115555%_
                   _%ctx115573%_
                   _%phi115572%_
                   _%method115556%_))))
          (if (##structure-instance-of?
               _%self115557115565%_
               'gx#user-expander::t)
              (let* ((_%e115561115579%_
                      (##unchecked-structure-ref
                       _%self115557115565%_
                       '1
                       '#f
                       '#f))
                     (_%K115582%_ _%e115561115579%_)
                     (_%e115562115584%_
                      (##unchecked-structure-ref
                       _%self115557115565%_
                       '2
                       '#f
                       '#f))
                     (_%ctx115587%_ _%e115562115584%_)
                     (_%e115563115589%_
                      (##unchecked-structure-ref
                       _%self115557115565%_
                       '3
                       '#f
                       '#f))
                     (_%phi115592%_ _%e115563115589%_))
                (_%K115560115576%_ _%phi115592%_ _%ctx115587%_ _%K115582%_))
              (_%E115559115569%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self115597%_ _%stx115598%_)
        (let ((_%method115600%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self115597%_
           _%stx115598%_
           _%method115600%_))))
    (define gx#core-apply-user-expander
      (lambda _g117740_
        (let ((_g117739_ (##length _g117740_)))
          (cond ((##fx= _g117739_ 2)
                 (apply (lambda (_%self115597%_ _%stx115598%_)
                          (gx#core-apply-user-expander__0
                           _%self115597%_
                           _%stx115598%_))
                        _g117740_))
                ((##fx= _g117739_ 3)
                 (apply (lambda (_%self115602%_ _%stx115603%_ _%method115604%_)
                          (gx#core-apply-user-expander__%
                           _%self115602%_
                           _%stx115603%_
                           _%method115604%_))
                        _g117740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g117740_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K115544%_
               _%stx115545%_
               _%ctx115546%_
               _%phi115547%_
               _%method115548%_)
        (let ((_%mark115550%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx115546%_
                _%phi115547%_
                _%stx115545%_)))
          (__call-with-parameters
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K115544%_
               (gx#stx-apply-mark _%stx115545%_ _%mark115550%_)
               _%method115548%_)
              _%mark115550%_))
           gx#current-expander-marks
           (cons _%mark115550%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx115392%_ _%phi115393%_ _%ctx115394%_)
        (let _%lp115396%_ ((_%bind115398%_
                            (gx#core-resolve-identifier__%
                             _%stx115392%_
                             _%phi115393%_
                             _%ctx115394%_)))
          (if (##structure-direct-instance-of?
               _%bind115398%_
               'gx#import-binding::t)
              (let ()
                (_%lp115396%_
                 (##unchecked-structure-ref _%bind115398%_ '4 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%bind115398%_
                   'gx#alias-binding::t)
                  (let ()
                    (_%lp115396%_
                     (gx#core-resolve-identifier__%
                      (##unchecked-structure-ref _%bind115398%_ '4 '#f '#f)
                      _%phi115393%_
                      _%ctx115394%_)))
                  (let () _%bind115398%_))))))
    (define gx#resolve-identifier__0
      (lambda (_%stx115406%_)
        (let* ((_%phi115408%_ (gx#current-expander-phi))
               (_%ctx115410%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115406%_
           _%phi115408%_
           _%ctx115410%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx115412%_ _%phi115413%_)
        (let ((_%ctx115415%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx115412%_
           _%phi115413%_
           _%ctx115415%_))))
    (define gx#resolve-identifier
      (lambda _g117742_
        (let ((_g117741_ (##length _g117742_)))
          (cond ((##fx= _g117741_ 1)
                 (apply (lambda (_%stx115406%_)
                          (gx#resolve-identifier__0 _%stx115406%_))
                        _g117742_))
                ((##fx= _g117741_ 2)
                 (apply (lambda (_%stx115412%_ _%phi115413%_)
                          (gx#resolve-identifier__1
                           _%stx115412%_
                           _%phi115413%_))
                        _g117742_))
                ((##fx= _g117741_ 3)
                 (apply (lambda (_%stx115417%_ _%phi115418%_ _%ctx115419%_)
                          (gx#resolve-identifier__%
                           _%stx115417%_
                           _%phi115418%_
                           _%ctx115419%_))
                        _g117742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g117742_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx115347%_
               _%val115348%_
               _%rebind?115349%_
               _%phi115350%_
               _%ctx115351%_)
        (let ((_%rebind?115356%_
               (if (not _%rebind?115349%_)
                   (let () gx#core-context-rebind?)
                   (if (procedure? _%rebind?115349%_)
                       (let () _%rebind?115349%_)
                       (let () true)))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx115347%_)
           _%val115348%_
           _%rebind?115356%_
           _%phi115350%_
           _%ctx115351%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx115361%_ _%val115362%_)
        (let* ((_%rebind?115364%_ '#f)
               (_%phi115366%_ (gx#current-expander-phi))
               (_%ctx115368%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115361%_
           _%val115362%_
           _%rebind?115364%_
           _%phi115366%_
           _%ctx115368%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx115370%_ _%val115371%_ _%rebind?115372%_)
        (let* ((_%phi115374%_ (gx#current-expander-phi))
               (_%ctx115376%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115370%_
           _%val115371%_
           _%rebind?115372%_
           _%phi115374%_
           _%ctx115376%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx115378%_ _%val115379%_ _%rebind?115380%_ _%phi115381%_)
        (let ((_%ctx115383%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx115378%_
           _%val115379%_
           _%rebind?115380%_
           _%phi115381%_
           _%ctx115383%_))))
    (define gx#bind-identifier!
      (lambda _g117744_
        (let ((_g117743_ (##length _g117744_)))
          (cond ((##fx= _g117743_ 2)
                 (apply (lambda (_%stx115361%_ _%val115362%_)
                          (gx#bind-identifier!__0 _%stx115361%_ _%val115362%_))
                        _g117744_))
                ((##fx= _g117743_ 3)
                 (apply (lambda (_%stx115370%_ _%val115371%_ _%rebind?115372%_)
                          (gx#bind-identifier!__1
                           _%stx115370%_
                           _%val115371%_
                           _%rebind?115372%_))
                        _g117744_))
                ((##fx= _g117743_ 4)
                 (apply (lambda (_%stx115378%_
                                 _%val115379%_
                                 _%rebind?115380%_
                                 _%phi115381%_)
                          (gx#bind-identifier!__2
                           _%stx115378%_
                           _%val115379%_
                           _%rebind?115380%_
                           _%phi115381%_))
                        _g117744_))
                ((##fx= _g117743_ 5)
                 (apply (lambda (_%stx115385%_
                                 _%val115386%_
                                 _%rebind?115387%_
                                 _%phi115388%_
                                 _%ctx115389%_)
                          (gx#bind-identifier!__%
                           _%stx115385%_
                           _%val115386%_
                           _%rebind?115387%_
                           _%phi115388%_
                           _%ctx115389%_))
                        _g117744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g117744_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx115313%_ _%phi115314%_ _%ctx115315%_)
        (let _%lp115317%_ ((_%e115319%_ _%stx115313%_)
                           (_%marks115320%_ (gx#current-expander-marks)))
          (if (symbol? _%e115319%_)
              (let ()
                (gx#core-resolve-binding
                 _%e115319%_
                 _%phi115314%_
                 _%phi115314%_
                 _%ctx115315%_
                 (reverse _%marks115320%_)))
              (if (gx#identifier-quote? _%e115319%_)
                  (let ()
                    (gx#core-resolve-binding
                     (##unchecked-structure-ref _%e115319%_ '1 '#f '#f)
                     _%phi115314%_
                     '0
                     (##unchecked-structure-ref _%e115319%_ '3 '#f '#f)
                     (##unchecked-structure-ref _%e115319%_ '4 '#f '#f)))
                  (if (##structure-direct-instance-of?
                       _%e115319%_
                       'gx#identifier-wrap::t)
                      (let ()
                        (gx#core-resolve-binding
                         (##unchecked-structure-ref _%e115319%_ '1 '#f '#f)
                         _%phi115314%_
                         _%phi115314%_
                         _%ctx115315%_
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e115319%_ '3 '#f '#f)
                          _%marks115320%_)))
                      (if (##structure-direct-instance-of?
                           _%e115319%_
                           'gx#syntax-wrap::t)
                          (let ()
                            (_%lp115317%_
                             (##unchecked-structure-ref _%e115319%_ '1 '#f '#f)
                             (gx#apply-mark
                              (##unchecked-structure-ref
                               _%e115319%_
                               '3
                               '#f
                               '#f)
                              _%marks115320%_)))
                          (if (##structure-instance-of?
                               _%e115319%_
                               'gerbil#AST::t)
                              (let ()
                                (_%lp115317%_
                                 (##unchecked-structure-ref
                                  _%e115319%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115320%_))
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad identifier"
                                 _%stx115313%_))))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx115331%_)
        (let* ((_%phi115333%_ (gx#current-expander-phi))
               (_%ctx115335%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115331%_
           _%phi115333%_
           _%ctx115335%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx115337%_ _%phi115338%_)
        (let ((_%ctx115340%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx115337%_
           _%phi115338%_
           _%ctx115340%_))))
    (define gx#core-resolve-identifier
      (lambda _g117746_
        (let ((_g117745_ (##length _g117746_)))
          (cond ((##fx= _g117745_ 1)
                 (apply (lambda (_%stx115331%_)
                          (gx#core-resolve-identifier__0 _%stx115331%_))
                        _g117746_))
                ((##fx= _g117745_ 2)
                 (apply (lambda (_%stx115337%_ _%phi115338%_)
                          (gx#core-resolve-identifier__1
                           _%stx115337%_
                           _%phi115338%_))
                        _g117746_))
                ((##fx= _g117745_ 3)
                 (apply (lambda (_%stx115342%_ _%phi115343%_ _%ctx115344%_)
                          (gx#core-resolve-identifier__%
                           _%stx115342%_
                           _%phi115343%_
                           _%ctx115344%_))
                        _g117746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g117746_))))))
    (define gx#core-resolve-binding
      (lambda (_%id115223%_
               _%phi115224%_
               _%src-phi115225%_
               _%ctx115226%_
               _%marks115227%_)
        (letrec ((_%resolve115229%_
                  (lambda (_%ctx115297%_ _%src-phi115298%_ _%key115299%_)
                    (let _%lp115301%_ ((_%ctx115303%_
                                        (gx#core-context-shift
                                         _%ctx115297%_
                                         _%phi115224%_))
                                       (_%dphi115304%_
                                        (fx- _%phi115224%_ _%src-phi115298%_)))
                      (let ((_%$e115306%_
                             (gx#core-context-resolve
                              _%ctx115303%_
                              _%key115299%_)))
                        (if _%$e115306%_
                            (values _%$e115306%_)
                            (if (fxzero? _%dphi115304%_)
                                (let () '#f)
                                (if (fxpositive? _%dphi115304%_)
                                    (let ()
                                      (_%lp115301%_
                                       (gx#core-context-shift
                                        _%ctx115303%_
                                        '-1)
                                       (##fx- _%dphi115304%_ '1)))
                                    (let ()
                                      (_%lp115301%_
                                       (gx#core-context-shift _%ctx115303%_ '1)
                                       (##fx+ _%dphi115304%_ '1)))))))))))
          (let _%lp115231%_ ((_%ctx115233%_ _%ctx115226%_)
                             (_%src-phi115234%_ _%src-phi115225%_)
                             (_%rest115235%_ _%marks115227%_))
            (let* ((_%rest115236115244%_ _%rest115235%_)
                   (_%else115238115252%_
                    (lambda ()
                      (_%resolve115229%_
                       _%ctx115233%_
                       _%src-phi115234%_
                       _%id115223%_)))
                   (_%K115240115285%_
                    (lambda (_%rest115255%_ _%hd115256%_)
                      (let* ((_%hd115257115263%_ _%hd115256%_)
                             (_%E115259115267%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd115257115263%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K115260115277%_
                              (lambda (_%subst115270%_)
                                (let ((_%$e115274%_
                                       (let ((_%key115272%_
                                              (if _%subst115270%_
                                                  (hash-get
                                                   _%subst115270%_
                                                   _%id115223%_)
                                                  '#f)))
                                         (if _%key115272%_
                                             (_%resolve115229%_
                                              _%ctx115233%_
                                              _%src-phi115234%_
                                              _%key115272%_)
                                             '#f))))
                                  (if _%$e115274%_
                                      _%$e115274%_
                                      (_%lp115231%_
                                       (##unchecked-structure-ref
                                        _%hd115256%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd115256%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest115255%_))))))
                        (if (##structure-instance-of?
                             _%hd115257115263%_
                             'gx#expander-mark::t)
                            (let* ((_%e115261115280%_
                                    (##unchecked-structure-ref
                                     _%hd115257115263%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst115283%_ _%e115261115280%_))
                              (_%K115260115277%_ _%subst115283%_))
                            (_%E115259115267%_))))))
              (if (##pair? _%rest115236115244%_)
                  (let ((_%hd115241115288%_ (##car _%rest115236115244%_))
                        (_%tl115242115290%_ (##cdr _%rest115236115244%_)))
                    (let* ((_%hd115293%_ _%hd115241115288%_)
                           (_%rest115295%_ _%tl115242115290%_))
                      (_%K115240115285%_ _%rest115295%_ _%hd115293%_)))
                  (_%else115238115252%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key115093%_
               _%val115094%_
               _%rebind?115095%_
               _%phi115096%_
               _%ctx115097%_)
        (letrec ((_%update-binding115099%_
                  (lambda (_%xval115172%_)
                    (if (or (_%rebind?115095%_
                             _%ctx115097%_
                             _%xval115172%_
                             _%val115094%_)
                            (and (##structure-direct-instance-of?
                                  _%xval115172%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval115172%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val115094%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val115094%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval115172%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val115094%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val115094%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval115172%_
                                       '1
                                       '#f
                                       '#f))))
                        (let () _%val115094%_)
                        (if (and (##structure-direct-instance-of?
                                  _%val115094%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val115094%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval115172%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val115094%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval115172%_
                                                '1
                                                '#f
                                                '#f)))))
                            (let () _%xval115172%_)
                            (if (and (##structure-direct-instance-of?
                                      _%val115094%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval115172%_
                                      'gx#binding::t))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; import conflict"
                                   _%key115093%_
                                   (cons (##unchecked-structure-ref
                                          _%val115094%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (##structure-ref
                                                (##unchecked-structure-ref
                                                 _%val115094%_
                                                 '5
                                                 '#f
                                                 '#f)
                                                '1
                                                gx#expander-context::t
                                                '#f)
                                               '()))
                                   (cons (##unchecked-structure-ref
                                          _%xval115172%_
                                          '1
                                          '#f
                                          '#f)
                                         (cons (if (##structure-direct-instance-of?
                                                    _%xval115172%_
                                                    'gx#import-binding::t)
                                                   (##structure-ref
                                                    (##unchecked-structure-ref
                                                     _%xval115172%_
                                                     '5
                                                     '#f
                                                     '#f)
                                                    '1
                                                    gx#expander-context::t
                                                    '#f)
                                                   _%xval115172%_)
                                               '()))))
                                (let ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad binding; rebind conflict"
                                   _%key115093%_
                                   _%val115094%_
                                   _%xval115172%_)))))))
                 (_%gensubst115100%_
                  (lambda (_%subst115167%_ _%id115168%_)
                    (let ((_%eid115170%_
                           (gensym (if (uninterned-symbol? _%id115168%_)
                                       '%
                                       _%id115168%_))))
                      (hash-put! _%subst115167%_ _%id115168%_ _%eid115170%_)
                      _%eid115170%_)))
                 (_%subst!115101%_
                  (lambda (_%key115103%_)
                    (let* ((_%key115104115112%_ _%key115103%_)
                           (_%else115106115120%_ (lambda () _%key115103%_))
                           (_%K115108115155%_
                            (lambda (_%mark115123%_ _%id115124%_)
                              (let* ((_%mark115125115131%_ _%mark115123%_)
                                     (_%E115127115135%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark115125115131%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K115128115147%_
                                      (lambda (_%subst115138%_)
                                        (if (not _%subst115138%_)
                                            (let ()
                                              (let ((_%subst115141%_
                                                     (make-hash-table-eq)))
                                                (##unchecked-structure-set!
                                                 _%mark115123%_
                                                 _%subst115141%_
                                                 '1
                                                 '#f
                                                 '#f)
                                                (_%gensubst115100%_
                                                 _%subst115141%_
                                                 _%id115124%_)))
                                            (let ((_%$e115143%_
                                                   (hash-get
                                                    _%subst115138%_
                                                    _%id115124%_)))
                                              (if _%$e115143%_
                                                  (values _%$e115143%_)
                                                  (let ()
                                                    (_%gensubst115100%_
                                                     _%subst115138%_
                                                     _%id115124%_))))))))
                                (if (##structure-instance-of?
                                     _%mark115125115131%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e115129115150%_
                                            (##unchecked-structure-ref
                                             _%mark115125115131%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst115153%_ _%e115129115150%_))
                                      (_%K115128115147%_ _%subst115153%_))
                                    (_%E115127115135%_))))))
                      (if (##pair? _%key115104115112%_)
                          (let ((_%hd115109115158%_
                                 (##car _%key115104115112%_))
                                (_%tl115110115160%_
                                 (##cdr _%key115104115112%_)))
                            (let* ((_%id115163%_ _%hd115109115158%_)
                                   (_%mark115165%_ _%tl115110115160%_))
                              (_%K115108115155%_ _%mark115165%_ _%id115163%_)))
                          (_%else115106115120%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx115097%_ _%phi115096%_)
           (_%subst!115101%_ _%key115093%_)
           _%val115094%_
           _%update-binding115099%_))))
    (define gx#core-bind!__0
      (lambda (_%key115193%_ _%val115194%_)
        (let* ((_%rebind?115196%_ false)
               (_%phi115198%_ (gx#current-expander-phi))
               (_%ctx115200%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115193%_
           _%val115194%_
           _%rebind?115196%_
           _%phi115198%_
           _%ctx115200%_))))
    (define gx#core-bind!__1
      (lambda (_%key115202%_ _%val115203%_ _%rebind?115204%_)
        (let* ((_%phi115206%_ (gx#current-expander-phi))
               (_%ctx115208%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115202%_
           _%val115203%_
           _%rebind?115204%_
           _%phi115206%_
           _%ctx115208%_))))
    (define gx#core-bind!__2
      (lambda (_%key115210%_ _%val115211%_ _%rebind?115212%_ _%phi115213%_)
        (let ((_%ctx115215%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key115210%_
           _%val115211%_
           _%rebind?115212%_
           _%phi115213%_
           _%ctx115215%_))))
    (define gx#core-bind!
      (lambda _g117748_
        (let ((_g117747_ (##length _g117748_)))
          (cond ((##fx= _g117747_ 2)
                 (apply (lambda (_%key115193%_ _%val115194%_)
                          (gx#core-bind!__0 _%key115193%_ _%val115194%_))
                        _g117748_))
                ((##fx= _g117747_ 3)
                 (apply (lambda (_%key115202%_ _%val115203%_ _%rebind?115204%_)
                          (gx#core-bind!__1
                           _%key115202%_
                           _%val115203%_
                           _%rebind?115204%_))
                        _g117748_))
                ((##fx= _g117747_ 4)
                 (apply (lambda (_%key115210%_
                                 _%val115211%_
                                 _%rebind?115212%_
                                 _%phi115213%_)
                          (gx#core-bind!__2
                           _%key115210%_
                           _%val115211%_
                           _%rebind?115212%_
                           _%phi115213%_))
                        _g117748_))
                ((##fx= _g117747_ 5)
                 (apply (lambda (_%key115217%_
                                 _%val115218%_
                                 _%rebind?115219%_
                                 _%phi115220%_
                                 _%ctx115221%_)
                          (gx#core-bind!__%
                           _%key115217%_
                           _%val115218%_
                           _%rebind?115219%_
                           _%phi115220%_
                           _%ctx115221%_))
                        _g117748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g117748_))))))
    (define gx#core-identifier-key
      (lambda (_%stx115024%_)
        (if (symbol? _%stx115024%_)
            (let ()
              (let* ((_%g115026115034%_ (gx#current-expander-marks))
                     (_%else115028115042%_ (lambda () _%stx115024%_))
                     (_%K115030115047%_
                      (lambda (_%hd115045%_)
                        (cons _%stx115024%_ _%hd115045%_))))
                (if (##pair? _%g115026115034%_)
                    (let* ((_%hd115031115050%_ (##car _%g115026115034%_))
                           (_%hd115053%_ _%hd115031115050%_))
                      (_%K115030115047%_ _%hd115053%_))
                    (_%else115028115042%_))))
            (if (gx#identifier? _%stx115024%_)
                (let ()
                  (let* ((_%id115056%_ (gx#syntax-local-unwrap _%stx115024%_))
                         (_%eid115058%_ (gx#stx-e _%id115056%_))
                         (_%marks115060%_
                          (gx#stx-identifier-marks* _%id115056%_)))
                    (let* ((_%marks115062115070%_ _%marks115060%_)
                           (_%else115064115078%_ (lambda () _%eid115058%_))
                           (_%K115066115083%_
                            (lambda (_%hd115081%_)
                              (cons _%eid115058%_ _%hd115081%_))))
                      (if (##pair? _%marks115062115070%_)
                          (let* ((_%hd115067115086%_
                                  (##car _%marks115062115070%_))
                                 (_%hd115089%_ _%hd115067115086%_))
                            (_%K115066115083%_ _%hd115089%_))
                          (_%else115064115078%_)))))
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad identifier"
                   _%stx115024%_))))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx114963%_ _%phi114964%_)
        (letrec ((_%make-phi114966%_
                  (lambda (_%super115022%_)
                    (let ((__obj117720
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!
                       __obj117720
                       (##gensym 'phi)
                       _%super115022%_)
                      __obj117720)))
                 (_%make-phi/up114967%_
                  (lambda (_%ctx115017%_ _%super115018%_)
                    (let ((_%ctx+1115020%_
                           (_%make-phi114966%_ _%super115018%_)))
                      (##unchecked-structure-set!
                       _%ctx115017%_
                       _%ctx+1115020%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1115020%_
                       _%ctx115017%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1115020%_)))
                 (_%make-phi/down114968%_
                  (lambda (_%ctx115012%_ _%super115013%_)
                    (let ((_%ctx-1115015%_
                           (_%make-phi114966%_ _%super115013%_)))
                      (##unchecked-structure-set!
                       _%ctx-1115015%_
                       _%ctx115012%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx115012%_
                       _%ctx-1115015%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1115015%_)))
                 (_%shift114969%_
                  (lambda (_%ctx114995%_
                           _%delta114996%_
                           _%make-delta-context114997%_
                           _%phi114998%_
                           _%K114999%_)
                    (let ((_%$e115001%_
                           (##unchecked-structure-ref
                            _%ctx114995%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e115001%_
                          ((lambda (_%super115004%_)
                             (let* ((_%super115006%_
                                     (_%K114999%_
                                      _%super115004%_
                                      _%delta114996%_))
                                    (_%ctx+d115008%_
                                     (_%make-delta-context114997%_
                                      _%ctx114995%_
                                      _%super115006%_)))
                               (_%K114999%_
                                _%ctx+d115008%_
                                (fx- _%phi114998%_ _%delta114996%_))))
                           _%$e115001%_)
                          (let () (error '"Bad context" _%ctx114995%_)))))))
          (let _%K114971%_ ((_%ctx114973%_ _%ctx114963%_)
                            (_%phi114974%_ _%phi114964%_))
            (if (fxzero? _%phi114974%_)
                (let () _%ctx114973%_)
                (if (##structure-instance-of? _%ctx114973%_ 'gx#phi-context::t)
                    (let ()
                      (if (fxpositive? _%phi114974%_)
                          (let ((_%$e114978%_
                                 (##unchecked-structure-ref
                                  _%ctx114973%_
                                  '4
                                  '#f
                                  '#f)))
                            (if _%$e114978%_
                                ((lambda (_%g114980114982%_)
                                   (_%K114971%_
                                    _%g114980114982%_
                                    (##fx- _%phi114974%_ '1)))
                                 _%$e114978%_)
                                (let ()
                                  (_%shift114969%_
                                   _%ctx114973%_
                                   '1
                                   _%make-phi/up114967%_
                                   _%phi114974%_
                                   _%K114971%_))))
                          (let ((_%$e114986%_
                                 (##unchecked-structure-ref
                                  _%ctx114973%_
                                  '5
                                  '#f
                                  '#f)))
                            (if _%$e114986%_
                                ((lambda (_%g114988114990%_)
                                   (_%K114971%_
                                    _%g114988114990%_
                                    (##fx+ _%phi114974%_ '1)))
                                 _%$e114986%_)
                                (let ()
                                  (_%shift114969%_
                                   _%ctx114973%_
                                   '-1
                                   _%make-phi/down114968%_
                                   _%phi114974%_
                                   _%K114971%_))))))
                    (let () _%ctx114973%_)))))))
    (define gx#core-context-get
      (lambda (_%ctx114960%_ _%key114961%_)
        (hash-get
         (##unchecked-structure-ref _%ctx114960%_ '2 '#f '#f)
         _%key114961%_)))
    (define gx#core-context-put!
      (lambda (_%ctx114956%_ _%key114957%_ _%val114958%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx114956%_ '2 '#f '#f)
         _%key114957%_
         _%val114958%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx114942%_ _%key114943%_)
        (let _%lp114945%_ ((_%ctx114947%_ _%ctx114942%_))
          (let ((_%$e114949%_
                 (gx#core-context-get _%ctx114947%_ _%key114943%_)))
            (if _%$e114949%_
                (values _%$e114949%_)
                (let ((_%$e114952%_
                       (if (##structure-instance-of?
                            _%ctx114947%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx114947%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e114952%_
                      (_%lp114945%_ _%$e114952%_)
                      (let () '#f))))))))
    (define gx#core-context-bind!
      (lambda (_%ctx114931%_ _%key114932%_ _%val114933%_ _%rebind114934%_)
        (let ((_%$e114936%_ (gx#core-context-get _%ctx114931%_ _%key114932%_)))
          (if _%$e114936%_
              ((lambda (_%xval114939%_)
                 (gx#core-context-put!
                  _%ctx114931%_
                  _%key114932%_
                  (_%rebind114934%_ _%xval114939%_)))
               _%$e114936%_)
              (let ()
                (gx#core-context-put!
                 _%ctx114931%_
                 _%key114932%_
                 _%val114933%_))))))
    (define gx#core-context-top__%
      (lambda (_%ctx114906%_ _%stop?114907%_)
        (let _%lp114909%_ ((_%ctx114911%_ _%ctx114906%_))
          (if (_%stop?114907%_ _%ctx114911%_)
              (let () _%ctx114911%_)
              (if (##structure-instance-of? _%ctx114911%_ 'gx#phi-context::t)
                  (let ()
                    (_%lp114909%_
                     (##unchecked-structure-ref _%ctx114911%_ '3 '#f '#f)))
                  (let () '#f))))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx114920%_ (gx#current-expander-context))
               (_%stop?114922%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114920%_ _%stop?114922%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx114924%_)
        (let ((_%stop?114926%_ gx#top-context?))
          (gx#core-context-top__% _%ctx114924%_ _%stop?114926%_))))
    (define gx#core-context-top
      (lambda _g117750_
        (let ((_g117749_ (##length _g117750_)))
          (cond ((##fx= _g117749_ 0)
                 (apply (lambda () (gx#core-context-top__0)) _g117750_))
                ((##fx= _g117749_ 1)
                 (apply (lambda (_%ctx114924%_)
                          (gx#core-context-top__1 _%ctx114924%_))
                        _g117750_))
                ((##fx= _g117749_ 2)
                 (apply (lambda (_%ctx114928%_ _%stop?114929%_)
                          (gx#core-context-top__%
                           _%ctx114928%_
                           _%stop?114929%_))
                        _g117750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g117750_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx114891%_)
        (let _%lp114893%_ ((_%ctx114895%_ _%ctx114891%_))
          (if (##structure-instance-of? _%ctx114895%_ 'gx#phi-context::t)
              (_%lp114893%_
               (##unchecked-structure-ref _%ctx114895%_ '3 '#f '#f))
              _%ctx114895%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx114901%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx114901%_))))
    (define gx#core-context-root
      (lambda _g117752_
        (let ((_g117751_ (##length _g117752_)))
          (cond ((##fx= _g117751_ 0)
                 (apply (lambda () (gx#core-context-root__0)) _g117752_))
                ((##fx= _g117751_ 1)
                 (apply (lambda (_%ctx114903%_)
                          (gx#core-context-root__% _%ctx114903%_))
                        _g117752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g117752_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx114873%_ . _%ignore114874%_)
        (let ((_%$e114876%_ (gx#current-expander-allow-rebind?)))
          (if _%$e114876%_
              _%$e114876%_
              (if (##structure-instance-of? _%ctx114873%_ 'gx#top-context::t)
                  (if (not (##structure-instance-of?
                            _%ctx114873%_
                            'gx#module-context::t))
                      (not (##structure-instance-of?
                            _%ctx114873%_
                            'gx#prelude-context::t))
                      '#f)
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx114883%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx114883%_))))
    (define gx#core-context-rebind?
      (lambda _g117754_
        (let ((_g117753_ (##length _g117754_)))
          (cond ((##fx= _g117753_ 0)
                 (apply (lambda () (gx#core-context-rebind?__0)) _g117754_))
                ((##fx= _g117753_ 1)
                 (apply (lambda (_%ctx114885%_)
                          (gx#core-context-rebind?__% _%ctx114885%_))
                        _g117754_))
                ((##fx>= _g117753_ 1)
                 (apply gx#core-context-rebind?__% _g117754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g117754_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx114856%_)
        (let ((_%$e114858%_ (gx#core-context-top__1 _%ctx114856%_)))
          (if _%$e114858%_
              ((lambda (_%ctx114861%_)
                 (if (##structure-instance-of?
                      _%ctx114861%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx114861%_ '6 '#f '#f)
                     '#f))
               _%$e114858%_)
              (let () '#f)))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx114868%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx114868%_))))
    (define gx#core-context-namespace
      (lambda _g117756_
        (let ((_g117755_ (##length _g117756_)))
          (cond ((##fx= _g117755_ 0)
                 (apply (lambda () (gx#core-context-namespace__0)) _g117756_))
                ((##fx= _g117755_ 1)
                 (apply (lambda (_%ctx114870%_)
                          (gx#core-context-namespace__% _%ctx114870%_))
                        _g117756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g117756_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind114842%_ _%is?114843%_)
        (if (##structure-direct-instance-of?
             _%bind114842%_
             'gx#syntax-binding::t)
            (_%is?114843%_
             (##unchecked-structure-ref _%bind114842%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind114848%_)
        (let ((_%is?114850%_ gx#expander?))
          (gx#expander-binding?__% _%bind114848%_ _%is?114850%_))))
    (define gx#expander-binding?
      (lambda _g117758_
        (let ((_g117757_ (##length _g117758_)))
          (cond ((##fx= _g117757_ 1)
                 (apply (lambda (_%bind114848%_)
                          (gx#expander-binding?__0 _%bind114848%_))
                        _g117758_))
                ((##fx= _g117757_ 2)
                 (apply (lambda (_%bind114852%_ _%is?114853%_)
                          (gx#expander-binding?__%
                           _%bind114852%_
                           _%is?114853%_))
                        _g117758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g117758_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind114839%_)
        (gx#expander-binding?__% _%bind114839%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind114837%_)
        (gx#expander-binding?__% _%bind114837%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind114831%_)
        (letrec ((_%direct-special-form?114833%_
                  (lambda (_%obj114835%_)
                    (##structure-direct-instance-of?
                     _%obj114835%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind114831%_
           _%direct-special-form?114833%_))))
    (define gx#special-form-binding?
      (lambda (_%bind114829%_)
        (gx#expander-binding?__% _%bind114829%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind114820%_)
        (letrec ((_%feature?114822%_
                  (lambda (_%e114824%_)
                    (let ((_%$e114826%_
                           (##structure-instance-of?
                            _%e114824%_
                            'gx#feature-expander::t)))
                      (if _%$e114826%_
                          _%$e114826%_
                          (##structure-instance-of?
                           _%e114824%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind114820%_ _%feature?114822%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind114818%_)
        (gx#expander-binding?__% _%bind114818%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id114805%_ _%bound?114806%_)
        (if (gx#identifier? _%id114805%_)
            (_%bound?114806%_ (gx#resolve-identifier__0 _%id114805%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id114811%_)
        (let ((_%bound?114813%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id114811%_ _%bound?114813%_))))
    (define gx#core-bound-identifier?
      (lambda _g117760_
        (let ((_g117759_ (##length _g117760_)))
          (cond ((##fx= _g117759_ 1)
                 (apply (lambda (_%id114811%_)
                          (gx#core-bound-identifier?__0 _%id114811%_))
                        _g117760_))
                ((##fx= _g117759_ 2)
                 (apply (lambda (_%id114815%_ _%bound?114816%_)
                          (gx#core-bound-identifier?__%
                           _%id114815%_
                           _%bound?114816%_))
                        _g117760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g117760_))))))
    (define gx#core-identifier=?
      (lambda (_%x114795%_ _%y114796%_)
        (letrec ((_%y=?114798%_
                  (lambda (_%xid114802%_)
                    ((if (list? _%y114796%_) memq eq?)
                     _%xid114802%_
                     _%y114796%_))))
          (let ((_%bind114800%_ (gx#resolve-identifier__0 _%x114795%_)))
            (if (##structure-instance-of? _%bind114800%_ 'gx#binding::t)
                (_%y=?114798%_
                 (##unchecked-structure-ref _%bind114800%_ '1 '#f '#f))
                (_%y=?114798%_ (gx#stx-e _%x114795%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e114793%_)
        (if (interned-symbol? _%e114793%_)
            (string-index__0 (symbol->string _%e114793%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx114746%_ _%src114747%_ _%ctx114748%_ _%marks114749%_)
        (if (##structure? _%stx114746%_)
            (let ((_%$e114751%_ (gx#sealed-syntax-unwrap _%stx114746%_)))
              (if _%$e114751%_
                  (values _%$e114751%_)
                  (if (gx#identifier? _%stx114746%_)
                      (let ()
                        (let ((_%id114755%_
                               (gx#stx-unwrap__%
                                _%stx114746%_
                                _%marks114749%_)))
                          (##structure
                           gx#syntax-quote::t
                           (##unchecked-structure-ref _%id114755%_ '1 '#f '#f)
                           (let ((_%$e114757%_
                                  (##unchecked-structure-ref
                                   _%id114755%_
                                   '2
                                   '#f
                                   '#f)))
                             (if _%$e114757%_ _%$e114757%_ _%src114747%_))
                           _%ctx114748%_
                           (##unchecked-structure-ref
                            _%id114755%_
                            '3
                            '#f
                            '#f))))
                      (let ()
                        (##structure
                         gx#syntax-quote::t
                         (gx#stx-e _%stx114746%_)
                         (let ((_%$e114761%_ (gx#stx-source _%stx114746%_)))
                           (if _%$e114761%_ _%$e114761%_ _%src114747%_))
                         _%ctx114748%_
                         (reverse _%marks114749%_))))))
            (##structure
             gx#syntax-quote::t
             _%stx114746%_
             _%src114747%_
             _%ctx114748%_
             (reverse _%marks114749%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx114767%_)
        (let* ((_%src114769%_ '#f)
               (_%ctx114771%_ (gx#current-expander-context))
               (_%marks114773%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114767%_
           _%src114769%_
           _%ctx114771%_
           _%marks114773%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx114775%_ _%src114776%_)
        (let* ((_%ctx114778%_ (gx#current-expander-context))
               (_%marks114780%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114775%_
           _%src114776%_
           _%ctx114778%_
           _%marks114780%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx114782%_ _%src114783%_ _%ctx114784%_)
        (let ((_%marks114786%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx114782%_
           _%src114783%_
           _%ctx114784%_
           _%marks114786%_))))
    (define gx#core-quote-syntax
      (lambda _g117762_
        (let ((_g117761_ (##length _g117762_)))
          (cond ((##fx= _g117761_ 1)
                 (apply (lambda (_%stx114767%_)
                          (gx#core-quote-syntax__0 _%stx114767%_))
                        _g117762_))
                ((##fx= _g117761_ 2)
                 (apply (lambda (_%stx114775%_ _%src114776%_)
                          (gx#core-quote-syntax__1
                           _%stx114775%_
                           _%src114776%_))
                        _g117762_))
                ((##fx= _g117761_ 3)
                 (apply (lambda (_%stx114782%_ _%src114783%_ _%ctx114784%_)
                          (gx#core-quote-syntax__2
                           _%stx114782%_
                           _%src114783%_
                           _%ctx114784%_))
                        _g117762_))
                ((##fx= _g117761_ 4)
                 (apply (lambda (_%stx114788%_
                                 _%src114789%_
                                 _%ctx114790%_
                                 _%marks114791%_)
                          (gx#core-quote-syntax__%
                           _%stx114788%_
                           _%src114789%_
                           _%ctx114790%_
                           _%marks114791%_))
                        _g117762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g117762_))))))
    (define gx#core-cons
      (lambda (_%hd114742%_ _%tl114743%_)
        (cons (gx#core-quote-syntax__0 _%hd114742%_) _%tl114743%_)))
    (define gx#core-list
      (lambda (_%hd114739%_ . _%rest114740%_)
        (cons (gx#core-quote-syntax__0 _%hd114739%_) _%rest114740%_)))
    (define gx#core-cons*
      (lambda (_%hd114736%_ . _%rest114737%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd114736%_) _%rest114737%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path114705%_ _%rel114706%_)
        (let ((_%path114723%_ (gx#stx-e _%stx-path114705%_))
              (_%reldir114724%_
               (let _%lp114708%_ ((_%relsrc114710%_
                                   (let ((_%$e114720%_
                                          (gx#stx-source _%stx-path114705%_)))
                                     (if _%$e114720%_
                                         _%$e114720%_
                                         _%rel114706%_))))
                 (if (##structure-instance-of? _%relsrc114710%_ 'gerbil#AST::t)
                     (let ()
                       (_%lp114708%_
                        (let ((_%$e114713%_ (gx#stx-source _%relsrc114710%_)))
                          (if _%$e114713%_
                              _%$e114713%_
                              (gx#stx-e _%relsrc114710%_)))))
                     (if (source-location-path? _%relsrc114710%_)
                         (let ()
                           (path-directory
                            (source-location-path _%relsrc114710%_)))
                         (if (string? _%relsrc114710%_)
                             (let () (path-directory _%relsrc114710%_))
                             (if (not (null? (gx#current-expander-path)))
                                 (let ()
                                   (path-directory
                                    (car (gx#current-expander-path))))
                                 (let () (current-directory)))))))))
          (path-expand _%path114723%_ (path-normalize _%reldir114724%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path114729%_)
        (let ((_%rel114731%_ '#f))
          (gx#core-resolve-path__% _%stx-path114729%_ _%rel114731%_))))
    (define gx#core-resolve-path
      (lambda _g117764_
        (let ((_g117763_ (##length _g117764_)))
          (cond ((##fx= _g117763_ 1)
                 (apply (lambda (_%stx-path114729%_)
                          (gx#core-resolve-path__0 _%stx-path114729%_))
                        _g117764_))
                ((##fx= _g117763_ 2)
                 (apply (lambda (_%stx-path114733%_ _%rel114734%_)
                          (gx#core-resolve-path__%
                           _%stx-path114733%_
                           _%rel114734%_))
                        _g117764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g117764_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr114661%_ _%ctx114662%_)
        (let* ((_%repr114663114670%_ _%repr114661%_)
               (_%E114665114674%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr114663114670%_
                         '([phi . subs]))
                  '#!void))
               (_%K114666114682%_
                (lambda (_%subs114677%_ _%phi114678%_)
                  (let ((_%subst114680%_
                         (if (not (null? _%subs114677%_))
                             (list->hash-table-eq _%subs114677%_)
                             '#f)))
                    (##structure
                     gx#expander-mark::t
                     _%subst114680%_
                     _%ctx114662%_
                     _%phi114678%_
                     '#f)))))
          (if (##pair? _%repr114663114670%_)
              (let ((_%hd114667114685%_ (##car _%repr114663114670%_))
                    (_%tl114668114687%_ (##cdr _%repr114663114670%_)))
                (let* ((_%phi114690%_ _%hd114667114685%_)
                       (_%subs114692%_ _%tl114668114687%_))
                  (_%K114666114682%_ _%subs114692%_ _%phi114690%_)))
              (_%E114665114674%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr114697%_)
        (let ((_%ctx114699%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr114697%_ _%ctx114699%_))))
    (define gx#core-deserialize-mark
      (lambda _g117766_
        (let ((_g117765_ (##length _g117766_)))
          (cond ((##fx= _g117765_ 1)
                 (apply (lambda (_%repr114697%_)
                          (gx#core-deserialize-mark__0 _%repr114697%_))
                        _g117766_))
                ((##fx= _g117765_ 2)
                 (apply (lambda (_%repr114701%_ _%ctx114702%_)
                          (gx#core-deserialize-mark__%
                           _%repr114701%_
                           _%ctx114702%_))
                        _g117766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g117766_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx114658%_)
        (gx#stx-rewrap _%stx114658%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx114656%_)
        (gx#stx-unwrap__% _%stx114656%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx114626%_)
        (let* ((_%g114627114635%_ (gx#current-expander-marks))
               (_%else114629114643%_ (lambda () _%stx114626%_))
               (_%K114631114648%_
                (lambda (_%hd114646%_)
                  (gx#stx-apply-mark _%stx114626%_ _%hd114646%_))))
          (if (##pair? _%g114627114635%_)
              (let* ((_%hd114632114651%_ (##car _%g114627114635%_))
                     (_%hd114654%_ _%hd114632114651%_))
                (_%K114631114648%_ _%hd114654%_))
              (_%else114629114643%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx114611%_ _%E114612%_)
        (let ((_%bind114614%_ (gx#resolve-identifier__0 _%stx114611%_)))
          (if (##structure-direct-instance-of?
               _%bind114614%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind114614%_ '4 '#f '#f)
              (_%E114612%_ _%stx114611%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx114619%_)
        (let ((_%E114621%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx114619%_ _%E114621%_))))
    (define gx#syntax-local-e
      (lambda _g117768_
        (let ((_g117767_ (##length _g117768_)))
          (cond ((##fx= _g117767_ 1)
                 (apply (lambda (_%stx114619%_)
                          (gx#syntax-local-e__0 _%stx114619%_))
                        _g117768_))
                ((##fx= _g117767_ 2)
                 (apply (lambda (_%stx114623%_ _%E114624%_)
                          (gx#syntax-local-e__% _%stx114623%_ _%E114624%_))
                        _g117768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g117768_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx114595%_ _%E114596%_)
        (let ((_%e114598%_ (gx#syntax-local-e__% _%stx114595%_ _%E114596%_)))
          (if (##structure-instance-of? _%e114598%_ 'gx#expander::t)
              (##structure-ref _%e114598%_ '1 gx#expander::t '#f)
              _%e114598%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx114603%_)
        (let ((_%E114605%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx114603%_ _%E114605%_))))
    (define gx#syntax-local-value
      (lambda _g117770_
        (let ((_g117769_ (##length _g117770_)))
          (cond ((##fx= _g117769_ 1)
                 (apply (lambda (_%stx114603%_)
                          (gx#syntax-local-value__0 _%stx114603%_))
                        _g117770_))
                ((##fx= _g117769_ 2)
                 (apply (lambda (_%stx114607%_ _%E114608%_)
                          (gx#syntax-local-value__% _%stx114607%_ _%E114608%_))
                        _g117770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g117770_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx114592%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx114592%_)))))
