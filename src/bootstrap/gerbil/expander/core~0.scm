(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1770513296)
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
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#expander-context?
      (__make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _%$args174752%_
        (apply make-instance gx#expander-context::t _%$args174752%_)))
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
      (lambda _%$args174749%_
        (apply make-instance gx#root-context::t _%$args174749%_)))
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
      (lambda _%$args174746%_
        (apply make-instance gx#phi-context::t _%$args174746%_)))
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
      (lambda _%$args174743%_
        (apply make-instance gx#top-context::t _%$args174743%_)))
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
      (lambda _%$args174740%_
        (apply make-instance gx#module-context::t _%$args174740%_)))
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
      (lambda _%$args174737%_
        (apply make-instance gx#prelude-context::t _%$args174737%_)))
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
      (lambda _%$args174734%_
        (apply make-instance gx#local-context::t _%$args174734%_)))
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
      (lambda (_%self174707%_ _%id174708%_ _%super174709%_)
        (let ((_%self174712%_ _%self174707%_))
          (if (##fx< '3 (##structure-length _%self174712%_))
              (begin
                (##unchecked-structure-set!
                 _%self174712%_
                 _%id174708%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174712%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174712%_
                 _%super174709%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self174712%_
                     '3
                     (##structure-length _%self174712%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self174725%_ _%id174726%_)
        (let ((_%super174728%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self174725%_
           _%id174726%_
           _%super174728%_))))
    (define gx#phi-context:::init!
      (lambda _g174794_
        (let ((_g174795_ (##length _g174794_)))
          (cond ((##fx= _g174795_ 2)
                 (apply gx#phi-context:::init!__0 _g174794_))
                ((##fx= _g174795_ 3)
                 (apply gx#phi-context:::init!__% _g174794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g174794_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self174560%_ _%super174561%_)
        (let ((_%self174564%_ _%self174560%_))
          (if (##fx< '3 (##structure-length _%self174564%_))
              (begin
                (##unchecked-structure-set!
                 _%self174564%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174564%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self174564%_
                 _%super174561%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self174564%_
                     '3
                     (##structure-length _%self174564%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self174577%_)
        (let ((_%super174579%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self174577%_ _%super174579%_))))
    (define gx#local-context:::init!
      (lambda _g174796_
        (let ((_g174797_ (##length _g174796_)))
          (cond ((##fx= _g174797_ 1)
                 (apply gx#local-context:::init!__0 _g174796_))
                ((##fx= _g174797_ 2)
                 (apply gx#local-context:::init!__% _g174796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g174796_))))))
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
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args174434%_
        (apply make-instance gx#binding::t _%$args174434%_)))
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
      (lambda (_%self174417%_ _%id174418%_ _%key174419%_ _%phi174420%_)
        (let ((_%self174423%_ _%self174417%_))
          (##unchecked-structure-set! _%self174423%_ _%id174418%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self174423%_ _%key174419%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self174423%_
           _%phi174420%_
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args174292%_
        (apply make-instance gx#runtime-binding::t _%$args174292%_)))
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
      (lambda _%$args174289%_
        (apply make-instance gx#local-binding::t _%$args174289%_)))
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
      (lambda _%$args174286%_
        (apply make-instance gx#top-binding::t _%$args174286%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args174283%_
        (apply make-instance gx#module-binding::t _%$args174283%_)))
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
      (lambda _%$args174280%_
        (apply make-instance gx#extern-binding::t _%$args174280%_)))
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
      (lambda (_%self173896%_
               _%id173897%_
               _%key173898%_
               _%phi173899%_
               _%ctx173900%_)
        (let ((_%self173903%_ _%self173896%_))
          (gx#binding:::init!
           _%self173903%_
           _%id173897%_
           _%key173898%_
           _%phi173899%_)
          (##unchecked-structure-set!
           _%self173903%_
           _%ctx173900%_
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args173649%_
        (apply make-instance gx#syntax-binding::t _%$args173649%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args173646%_
        (apply make-instance gx#import-binding::t _%$args173646%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args173643%_
        (apply make-instance gx#alias-binding::t _%$args173643%_)))
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
      (lambda (_%self173625%_
               _%id173626%_
               _%key173627%_
               _%phi173628%_
               _%e173629%_)
        (let ((_%self173632%_ _%self173625%_))
          (gx#binding:::init!
           _%self173632%_
           _%id173626%_
           _%key173627%_
           _%phi173628%_)
          (##unchecked-structure-set! _%self173632%_ _%e173629%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self173483%_
               _%id173484%_
               _%key173485%_
               _%phi173486%_
               _%e173487%_
               _%ctx173488%_
               _%weak?173489%_)
        (let ((_%self173492%_ _%self173483%_))
          (gx#binding:::init!
           _%self173492%_
           _%id173484%_
           _%key173485%_
           _%phi173486%_)
          (##unchecked-structure-set! _%self173492%_ _%e173487%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self173492%_ _%ctx173488%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self173492%_
           _%weak?173489%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self173343%_
               _%id173344%_
               _%key173345%_
               _%phi173346%_
               _%e173347%_)
        (let ((_%self173350%_ _%self173343%_))
          (gx#binding:::init!
           _%self173350%_
           _%id173344%_
           _%key173345%_
           _%phi173346%_)
          (##unchecked-structure-set! _%self173350%_ _%e173347%_ '5 '#f '#f))))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args173218%_
        (apply make-instance gx#expander::t _%$args173218%_)))
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
      (lambda _%$args173215%_
        (apply make-instance gx#core-expander::t _%$args173215%_)))
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
      (lambda _%$args173212%_
        (apply make-instance gx#expression-form::t _%$args173212%_)))
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
      (lambda _%$args173209%_
        (apply make-instance gx#special-form::t _%$args173209%_)))
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
      (lambda _%$args173206%_
        (apply make-instance gx#definition-form::t _%$args173206%_)))
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
      (lambda _%$args173203%_
        (apply make-instance gx#top-special-form::t _%$args173203%_)))
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
      (lambda _%$args173200%_
        (apply make-instance gx#module-special-form::t _%$args173200%_)))
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
      (lambda _%$args173197%_
        (apply make-instance gx#feature-expander::t _%$args173197%_)))
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
      (lambda _%$args173194%_
        (apply make-instance gx#private-feature-expander::t _%$args173194%_)))
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
      (lambda _%$args173191%_
        (apply make-instance gx#reserved-expander::t _%$args173191%_)))
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
      (lambda _%$args173188%_
        (apply make-instance gx#macro-expander::t _%$args173188%_)))
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
      (lambda _%$args173185%_
        (apply make-instance gx#rename-macro-expander::t _%$args173185%_)))
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
      (lambda _%$args173182%_
        (apply make-instance gx#user-expander::t _%$args173182%_)))
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
      (lambda _%$args173179%_
        (apply make-instance gx#expander-mark::t _%$args173179%_)))
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
      (lambda (_%ctx173163%_
               _%message173164%_
               _%stx173165%_
               .
               _%details173166%_)
        (let ((_%ctx173177%_
               (let ((_%$e173168%_ _%ctx173163%_))
                 (if _%$e173168%_
                     _%$e173168%_
                     (let ((_%$e173171%_ (gx#core-context-top__0)))
                       (if _%$e173171%_
                           ((lambda (_%ctx173174%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx173174%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e173171%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message173164%_
                  (cons _%stx173165%_ _%details173166%_)
                  _%ctx173177%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx173150%_ _%expression?173151%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx173150%_ _%expression?173151%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx173156%_)
        (let ((_%expression?173158%_ '#f))
          (gx#eval-syntax__% _%stx173156%_ _%expression?173158%_))))
    (define gx#eval-syntax
      (lambda _g174798_
        (let ((_g174799_ (##length _g174798_)))
          (cond ((##fx= _g174799_ 1) (apply gx#eval-syntax__0 _g174798_))
                ((##fx= _g174799_ 2) (apply gx#eval-syntax__% _g174798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g174798_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx173135%_ _%expression?173136%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx173135%_ _%expression?173136%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx173142%_)
        (let ((_%expression?173144%_ '#f))
          (gx#eval-syntax+1__% _%stx173142%_ _%expression?173144%_))))
    (define gx#eval-syntax+1
      (lambda _g174800_
        (let ((_g174801_ (##length _g174800_)))
          (cond ((##fx= _g174801_ 1) (apply gx#eval-syntax+1__0 _g174800_))
                ((##fx= _g174801_ 2) (apply gx#eval-syntax+1__% _g174800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g174800_))))))
    (define gx#eval-expression+1
      (lambda (_%stx173132%_) (gx#eval-syntax+1__% _%stx173132%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx173130%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx173130%_))))
    (define gx#core-expand__%
      (lambda (_%stx173117%_ _%expression?173118%_)
        (if _%expression?173118%_
            (gx#core-expand-expression _%stx173117%_)
            (gx#core-expand-top _%stx173117%_))))
    (define gx#core-expand__0
      (lambda (_%stx173123%_)
        (let ((_%expression?173125%_ '#f))
          (gx#core-expand__% _%stx173123%_ _%expression?173125%_))))
    (define gx#core-expand
      (lambda _g174802_
        (let ((_g174803_ (##length _g174802_)))
          (cond ((##fx= _g174803_ 1) (apply gx#core-expand__0 _g174802_))
                ((##fx= _g174803_ 2) (apply gx#core-expand__% _g174802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g174802_))))))
    (define gx#core-expand-top
      (lambda (_%stx173084%_)
        (let* ((_%stx173086%_ (gx#core-expand*__0 _%stx173084%_))
               (_%e173087173094%_ _%stx173086%_)
               (_%E173089173098%_
                (lambda () (gx#core-expand-expression _%stx173086%_)))
               (_%E173088173112%_
                (lambda ()
                  (if (gx#stx-pair? _%e173087173094%_)
                      (let ((_%e173090173102%_
                             (gx#syntax-e _%e173087173094%_)))
                        (let ((_%hd173091173105%_ (##car _%e173090173102%_))
                              (_%tl173092173107%_ (##cdr _%e173090173102%_)))
                          (let ((_%form173110%_ _%hd173091173105%_))
                            (if (gx#core-bound-identifier?__0 _%form173110%_)
                                _%stx173086%_
                                (_%E173089173098%_)))))
                      (_%E173089173098%_)))))
          (_%E173088173112%_))))
    (define gx#core-expand-expression
      (lambda (_%stx173016%_)
        (letrec ((_%sealed-expression?173018%_
                  (lambda (_%hd173054%_)
                    (if (gx#sealed-syntax? _%hd173054%_)
                        (let* ((_%e173055173062%_ _%hd173054%_)
                               (_%E173057173066%_ (lambda () '#f))
                               (_%E173056173080%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e173055173062%_)
                                      (let ((_%e173058173070%_
                                             (gx#syntax-e _%e173055173062%_)))
                                        (let ((_%hd173059173073%_
                                               (##car _%e173058173070%_))
                                              (_%tl173060173075%_
                                               (##cdr _%e173058173070%_)))
                                          (let ((_%form173078%_
                                                 _%hd173059173073%_))
                                            (gx#core-bound-identifier?__%
                                             _%form173078%_
                                             gx#expression-form-binding?))))
                                      (_%E173057173066%_)))))
                          (_%E173056173080%_))
                        '#f)))
                 (_%illegal-expression173019%_
                  (lambda (_%hd173051%_ . _%_173052%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx173016%_
                     _%hd173051%_)))
                 (_%expand-e173020%_
                  (lambda (_%form173043%_ _%hd173044%_)
                    (let ((_%bind173046%_
                           (if (##structure-instance-of?
                                _%form173043%_
                                'gx#binding::t)
                               _%form173043%_
                               (gx#resolve-identifier__0 _%form173043%_))))
                      (if (gx#core-expander-binding? _%bind173046%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind173046%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd173044%_
                            (gx#stx-source _%stx173016%_)))
                          (if (##structure-direct-instance-of?
                               _%bind173046%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind173046%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd173044%_
                                 (gx#stx-source _%stx173016%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx173016%_
                               _%form173043%_)))))))
          (let ((_%hd173022%_ (gx#core-expand-head _%stx173016%_)))
            (if (_%sealed-expression?173018%_ _%hd173022%_)
                _%hd173022%_
                (if (gx#stx-pair? _%hd173022%_)
                    (let* ((_%form173026%_ (gx#stx-car _%hd173022%_))
                           (_%bind173028%_
                            (if (gx#identifier? _%form173026%_)
                                (gx#resolve-identifier__0 _%form173026%_)
                                '#f)))
                      (if (or (not _%bind173028%_)
                              (not (gx#core-expander-binding? _%bind173028%_)))
                          (_%expand-e173020%_
                           '%%app
                           (cons '%%app _%hd173022%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind173028%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd173022%_
                               _%illegal-expression173019%_)
                              (if (gx#expression-form-binding? _%bind173028%_)
                                  (_%expand-e173020%_
                                   _%bind173028%_
                                   _%hd173022%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind173028%_)
                                      (gx#core-expand-expression
                                       (_%expand-e173020%_
                                        _%bind173028%_
                                        _%hd173022%_))
                                      (_%illegal-expression173019%_
                                       _%hd173022%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd173022%_)
                        (_%illegal-expression173019%_ _%hd173022%_)
                        (if (gx#identifier? _%hd173022%_)
                            (_%expand-e173020%_
                             '%%ref
                             (cons '%%ref (cons _%hd173022%_ '())))
                            (if (gx#stx-datum? _%hd173022%_)
                                (_%expand-e173020%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd173022%_ '())))
                                (_%illegal-expression173019%_
                                 _%hd173022%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx173011%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx173014%_ (gx#core-expand-expression _%stx173011%_)))
             (values _%stx173014%_ (gx#eval-syntax* _%stx173014%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx172992%_ _%stop?172993%_)
        (let _%lp172995%_ ((_%stx172997%_ _%stx172992%_))
          (if (_%stop?172993%_ _%stx172997%_)
              _%stx172997%_
              (let ((_%rstx172999%_ (gx#core-expand1 _%stx172997%_)))
                (if (eq? _%stx172997%_ _%rstx172999%_)
                    _%stx172997%_
                    (_%lp172995%_ _%rstx172999%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx173004%_)
        (let ((_%stop?173006%_ false))
          (gx#core-expand*__% _%stx173004%_ _%stop?173006%_))))
    (define gx#core-expand*
      (lambda _g174804_
        (let ((_g174805_ (##length _g174804_)))
          (cond ((##fx= _g174805_ 1) (apply gx#core-expand*__0 _g174804_))
                ((##fx= _g174805_ 2) (apply gx#core-expand*__% _g174804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g174804_))))))
    (define gx#core-expand1
      (lambda (_%stx172944%_)
        (letrec ((_%step172946%_
                  (lambda (_%hd172983%_)
                    (let ((_%bind172985%_
                           (gx#resolve-identifier__0 _%hd172983%_)))
                      (if (##structure-instance-of?
                           _%bind172985%_
                           'gx#runtime-binding::t)
                          _%stx172944%_
                          (if (##structure-direct-instance-of?
                               _%bind172985%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind172985%_
                                '5
                                '#f
                                '#f)
                               _%stx172944%_)
                              (if (not _%bind172985%_)
                                  _%stx172944%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx172944%_))))))))
          (let* ((_%e172947172955%_ _%stx172944%_)
                 (_%E172953172959%_ (lambda () _%stx172944%_))
                 (_%E172949172965%_
                  (lambda ()
                    (let ((_%hd172963%_ _%e172947172955%_))
                      (if (gx#identifier? _%hd172963%_)
                          (_%step172946%_ _%hd172963%_)
                          (_%E172953172959%_)))))
                 (_%E172948172979%_
                  (lambda ()
                    (if (gx#stx-pair? _%e172947172955%_)
                        (let ((_%e172950172969%_
                               (gx#syntax-e _%e172947172955%_)))
                          (let ((_%hd172951172972%_ (##car _%e172950172969%_))
                                (_%tl172952172974%_ (##cdr _%e172950172969%_)))
                            (let ((_%hd172977%_ _%hd172951172972%_))
                              (if (gx#identifier? _%hd172977%_)
                                  (_%step172946%_ _%hd172977%_)
                                  (_%E172949172965%_)))))
                        (_%E172949172965%_)))))
            (_%E172948172979%_)))))
    (define gx#core-expand-head
      (lambda (_%stx172910%_)
        (letrec ((_%stop?172912%_
                  (lambda (_%stx172914%_)
                    (let* ((_%e172915172922%_ _%stx172914%_)
                           (_%E172917172926%_ (lambda () '#f))
                           (_%E172916172940%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172915172922%_)
                                  (let ((_%e172918172930%_
                                         (gx#syntax-e _%e172915172922%_)))
                                    (let ((_%hd172919172933%_
                                           (##car _%e172918172930%_))
                                          (_%tl172920172935%_
                                           (##cdr _%e172918172930%_)))
                                      (let ((_%hd172938%_ _%hd172919172933%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd172938%_))))
                                  (_%E172917172926%_)))))
                      (_%E172916172940%_)))))
          (gx#core-expand*__% _%stx172910%_ _%stop?172912%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx172716%_
               _%expand-special172717%_
               _%begin-form172718%_
               _%expand-e172719%_)
        (letrec ((_%expand-splice172721%_
                  (lambda (_%hd172884%_
                           _%body172885%_
                           _%rest172886%_
                           _%r172887%_)
                    (if (gx#stx-list? _%body172885%_)
                        (_%K172725%_
                         (gx#stx-foldr cons _%rest172886%_ _%body172885%_)
                         _%r172887%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx172716%_
                         _%hd172884%_))))
                 (_%expand-cond-expand172722%_
                  (lambda (_%hd172880%_ _%rest172881%_ _%r172882%_)
                    (_%K172725%_
                     (cons (gx#core-expand-cond-expand% _%hd172880%_)
                           _%rest172881%_)
                     _%r172882%_)))
                 (_%expand-include172723%_
                  (lambda (_%hd172829%_ _%rest172830%_ _%r172831%_)
                    (let* ((_%e172832172842%_ _%hd172829%_)
                           (_%E172834172846%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e172832172842%_)))
                           (_%E172833172876%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172832172842%_)
                                  (let ((_%e172835172850%_
                                         (gx#syntax-e _%e172832172842%_)))
                                    (let ((_%hd172836172853%_
                                           (##car _%e172835172850%_))
                                          (_%tl172837172855%_
                                           (##cdr _%e172835172850%_)))
                                      (if (gx#stx-pair? _%tl172837172855%_)
                                          (let ((_%e172838172858%_
                                                 (gx#syntax-e
                                                  _%tl172837172855%_)))
                                            (let ((_%hd172839172861%_
                                                   (##car _%e172838172858%_))
                                                  (_%tl172840172863%_
                                                   (##cdr _%e172838172858%_)))
                                              (let ((_%path172866%_
                                                     _%hd172839172861%_))
                                                (if (gx#stx-null?
                                                     _%tl172840172863%_)
                                                    (if (gx#stx-string?
                                                         _%path172866%_)
                                                        (let* ((_%rpath172868%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path172866%_
                         (gx#stx-source _%hd172829%_)))
                       (_%block172870%_
                        (gx#core-expand-include%__%
                         _%hd172829%_
                         _%rpath172868%_))
                       (_%rbody172873%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block172870%_
                            _%expand-special172717%_
                            '#f
                            _%expand-e172719%_))
                         gx#current-expander-path
                         (cons _%rpath172868%_ (gx#current-expander-path)))))
                  (_%K172725%_
                   _%rest172830%_
                   (foldr__0 cons _%r172831%_ _%rbody172873%_)))
                (_%E172834172846%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E172834172846%_)))))
                                          (_%E172834172846%_))))
                                  (_%E172834172846%_)))))
                      (_%E172833172876%_))))
                 (_%expand-expression172724%_
                  (lambda (_%hd172825%_ _%rest172826%_ _%r172827%_)
                    (_%K172725%_
                     _%rest172826%_
                     (cons (_%expand-e172719%_ _%hd172825%_) _%r172827%_))))
                 (_%K172725%_
                  (lambda (_%rest172755%_ _%r172756%_)
                    (let* ((_%e172757172764%_ _%rest172755%_)
                           (_%E172759172768%_
                            (lambda ()
                              (if _%begin-form172718%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form172718%_
                                    (reverse _%r172756%_))
                                   (gx#stx-source _%stx172716%_))
                                  _%r172756%_)))
                           (_%E172758172821%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172757172764%_)
                                  (let ((_%e172760172772%_
                                         (gx#syntax-e _%e172757172764%_)))
                                    (let ((_%hd172761172775%_
                                           (##car _%e172760172772%_))
                                          (_%tl172762172777%_
                                           (##cdr _%e172760172772%_)))
                                      (let* ((_%hd172780%_ _%hd172761172775%_)
                                             (_%rest172782%_
                                              _%tl172762172777%_)
                                             (_%hd172784%_
                                              (gx#core-expand-head
                                               _%hd172780%_))
                                             (_%e172785172792%_ _%hd172784%_)
                                             (_%E172787172796%_
                                              (lambda ()
                                                (_%expand-expression172724%_
                                                 _%hd172784%_
                                                 _%rest172782%_
                                                 _%r172756%_)))
                                             (_%E172786172817%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e172785172792%_)
                                                    (let ((_%e172788172800%_
                                                           (gx#syntax-e
                                                            _%e172785172792%_)))
                                                      (let ((_%hd172789172803%_
                                                             (##car _%e172788172800%_))
                                                            (_%tl172790172805%_
                                                             (##cdr _%e172788172800%_)))
                                                        (let* ((_%form172808%_
                                                                _%hd172789172803%_)
                                                               (_%body172810%_
                                                                _%tl172790172805%_)
                                                               (_%bind172812%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form172808%_)
                            (gx#resolve-identifier__0 _%form172808%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind172812%_)
                      (let ((_%$e172814%_
                             (##unchecked-structure-ref
                              _%bind172812%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e172814%_)
                            (_%expand-splice172721%_
                             _%hd172784%_
                             _%body172810%_
                             _%rest172782%_
                             _%r172756%_)
                            (if (eq? '%#cond-expand _%$e172814%_)
                                (_%expand-cond-expand172722%_
                                 _%hd172784%_
                                 _%rest172782%_
                                 _%r172756%_)
                                (if (eq? '%#include _%$e172814%_)
                                    (_%expand-include172723%_
                                     _%hd172784%_
                                     _%rest172782%_
                                     _%r172756%_)
                                    (_%expand-special172717%_
                                     _%hd172784%_
                                     _%K172725%_
                                     _%rest172782%_
                                     _%r172756%_)))))
                      (_%expand-expression172724%_
                       _%hd172784%_
                       _%rest172782%_
                       _%r172756%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E172787172796%_)))))
                                        (_%E172786172817%_))))
                                  (_%E172759172768%_)))))
                      (_%E172758172821%_)))))
          (let* ((_%e172726172733%_ _%stx172716%_)
                 (_%E172728172737%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e172726172733%_)))
                 (_%E172727172751%_
                  (lambda ()
                    (if (gx#stx-pair? _%e172726172733%_)
                        (let ((_%e172729172741%_
                               (gx#syntax-e _%e172726172733%_)))
                          (let ((_%hd172730172744%_ (##car _%e172729172741%_))
                                (_%tl172731172746%_ (##cdr _%e172729172741%_)))
                            (let ((_%body172749%_ _%tl172731172746%_))
                              (if (gx#stx-list? _%body172749%_)
                                  (_%K172725%_ _%body172749%_ '())
                                  (_%E172728172737%_)))))
                        (_%E172728172737%_)))))
            (_%E172727172751%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx172892%_ _%expand-special172893%_)
        (let* ((_%begin-form172895%_ '%#begin)
               (_%expand-e172897%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx172892%_
           _%expand-special172893%_
           _%begin-form172895%_
           _%expand-e172897%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx172899%_ _%expand-special172900%_ _%begin-form172901%_)
        (let ((_%expand-e172903%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx172899%_
           _%expand-special172900%_
           _%begin-form172901%_
           _%expand-e172903%_))))
    (define gx#core-expand-block
      (lambda _g174806_
        (let ((_g174807_ (##length _g174806_)))
          (cond ((##fx= _g174807_ 2) (apply gx#core-expand-block__0 _g174806_))
                ((##fx= _g174807_ 3) (apply gx#core-expand-block__1 _g174806_))
                ((##fx= _g174807_ 4) (apply gx#core-expand-block__% _g174806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g174806_))))))
    (define gx#core-expand-block*
      (lambda (_%stx172664%_ _%expand-special172665%_)
        (let* ((_%g172666172677%_
                (gx#core-expand-block__1
                 _%stx172664%_
                 _%expand-special172665%_
                 '#f))
               (_%E172670172681%_
                (lambda ()
                  (error '"No clause matching"
                         _%g172666172677%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K172675172712%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx172664%_)))
                (_%K172672172698%_ (lambda (_%expr172696%_) _%expr172696%_))
                (_%K172671172687%_
                 (lambda (_%body172685%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body172685%_))
                    (gx#stx-source _%stx172664%_)))))
            (let ((_%try-match172668172708%_
                   (lambda ()
                     (if (pair? _%g172666172677%_)
                         (let ((_%tl172674172703%_ (##cdr _%g172666172677%_))
                               (_%hd172673172701%_ (##car _%g172666172677%_)))
                           (if (null? _%tl172674172703%_)
                               (let ((_%expr172706%_ _%hd172673172701%_))
                                 (_%K172672172698%_ _%expr172706%_))
                               (let ((_%body172690%_ _%g172666172677%_))
                                 (_%K172671172687%_ _%body172690%_))))
                         (let ((_%body172690%_ _%g172666172677%_))
                           (_%K172671172687%_ _%body172690%_))))))
              (if (null? _%g172666172677%_)
                  (_%K172675172712%_)
                  (_%try-match172668172708%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx172490%_)
        (letrec ((_%satisfied?172492%_
                  (lambda (_%condition172593%_)
                    (let* ((_%e172594172609%_ _%condition172593%_)
                           (_%E172604172613%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e172594172609%_)))
                           (_%E172597172632%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172594172609%_)
                                  (let ((_%e172605172617%_
                                         (gx#syntax-e _%e172594172609%_)))
                                    (let ((_%hd172606172620%_
                                           (##car _%e172605172617%_))
                                          (_%tl172607172622%_
                                           (##cdr _%e172605172617%_)))
                                      (let* ((_%combinator172625%_
                                              _%hd172606172620%_)
                                             (_%body172627%_
                                              _%tl172607172622%_))
                                        (if (gx#stx-list? _%body172627%_)
                                            (let ((_%$e172629%_
                                                   (gx#stx-e
                                                    _%combinator172625%_)))
                                              (if (eq? 'not _%$e172629%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?172492%_
                                                        _%body172627%_))
                                                  (if (eq? 'and _%$e172629%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?172492%_
                                                       _%body172627%_)
                                                      (if (eq? 'or
                                                               _%$e172629%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?172492%_
                                                           _%body172627%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e172629%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body172627%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx172490%_
                       _%combinator172625%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E172604172613%_)))))
                                  (_%E172604172613%_))))
                           (_%E172596172654%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172594172609%_)
                                  (let ((_%e172598172636%_
                                         (gx#syntax-e _%e172594172609%_)))
                                    (let ((_%hd172599172639%_
                                           (##car _%e172598172636%_))
                                          (_%tl172600172641%_
                                           (##cdr _%e172598172636%_)))
                                      (if (and (gx#identifier?
                                                _%hd172599172639%_)
                                               (gx#core-identifier=?
                                                _%hd172599172639%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl172600172641%_)
                                              (let ((_%e172601172644%_
                                                     (gx#syntax-e
                                                      _%tl172600172641%_)))
                                                (let ((_%hd172602172647%_
                                                       (##car _%e172601172644%_))
                                                      (_%tl172603172649%_
                                                       (##cdr _%e172601172644%_)))
                                                  (let ((_%expr172652%_
                                                         _%hd172602172647%_))
                                                    (if (gx#stx-null?
                                                         _%tl172603172649%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr172652%_)
                                                        (_%E172597172632%_)))))
                                              (_%E172597172632%_))
                                          (_%E172597172632%_))))
                                  (_%E172597172632%_))))
                           (_%E172595172660%_
                            (lambda ()
                              (let ((_%id172658%_ _%e172594172609%_))
                                (if (gx#identifier? _%id172658%_)
                                    (gx#core-bound-identifier?__%
                                     _%id172658%_
                                     gx#feature-binding?)
                                    (_%E172596172654%_))))))
                      (_%E172595172660%_))))
                 (_%loop172493%_
                  (lambda (_%rest172523%_)
                    (let* ((_%e172524172532%_ _%rest172523%_)
                           (_%E172530172536%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e172524172532%_)))
                           (_%E172526172540%_
                            (lambda ()
                              (if (gx#stx-null? _%e172524172532%_)
                                  '()
                                  (_%E172530172536%_))))
                           (_%E172525172589%_
                            (lambda ()
                              (if (gx#stx-pair? _%e172524172532%_)
                                  (let ((_%e172527172544%_
                                         (gx#syntax-e _%e172524172532%_)))
                                    (let ((_%hd172528172547%_
                                           (##car _%e172527172544%_))
                                          (_%tl172529172549%_
                                           (##cdr _%e172527172544%_)))
                                      (let* ((_%hd172552%_ _%hd172528172547%_)
                                             (_%rest172554%_
                                              _%tl172529172549%_)
                                             (_%e172555172562%_ _%hd172552%_)
                                             (_%E172557172566%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e172555172562%_)))
                                             (_%E172556172585%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e172555172562%_)
                                                    (let ((_%e172558172570%_
                                                           (gx#syntax-e
                                                            _%e172555172562%_)))
                                                      (let ((_%hd172559172573%_
                                                             (##car _%e172558172570%_))
                                                            (_%tl172560172575%_
                                                             (##cdr _%e172558172570%_)))
                                                        (let* ((_%condition172578%_
                                                                _%hd172559172573%_)
                                                               (_%body172580%_
                                                                _%tl172560172575%_))
                                                          (if (gx#stx-eq?
                                                               _%condition172578%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest172554%_)
                          _%body172580%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx172490%_
                           _%hd172552%_))
                      (if (_%satisfied?172492%_ _%condition172578%_)
                          _%body172580%_
                          (_%loop172493%_ _%rest172554%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E172557172566%_)))))
                                        (_%E172556172585%_))))
                                  (_%E172526172540%_)))))
                      (_%E172525172589%_)))))
          (let* ((_%e172494172501%_ _%stx172490%_)
                 (_%E172496172505%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e172494172501%_)))
                 (_%E172495172519%_
                  (lambda ()
                    (if (gx#stx-pair? _%e172494172501%_)
                        (let ((_%e172497172509%_
                               (gx#syntax-e _%e172494172501%_)))
                          (let ((_%hd172498172512%_ (##car _%e172497172509%_))
                                (_%tl172499172514%_ (##cdr _%e172497172509%_)))
                            (let ((_%clauses172517%_ _%tl172499172514%_))
                              (if (gx#stx-list? _%clauses172517%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop172493%_ _%clauses172517%_))
                                  (_%E172496172505%_)))))
                        (_%E172496172505%_)))))
            (_%E172495172519%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx172433%_ _%rpath172434%_)
        (let* ((_%e172435172445%_ _%stx172433%_)
               (_%E172437172449%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e172435172445%_)))
               (_%E172436172476%_
                (lambda ()
                  (if (gx#stx-pair? _%e172435172445%_)
                      (let ((_%e172438172453%_
                             (gx#syntax-e _%e172435172445%_)))
                        (let ((_%hd172439172456%_ (##car _%e172438172453%_))
                              (_%tl172440172458%_ (##cdr _%e172438172453%_)))
                          (if (gx#stx-pair? _%tl172440172458%_)
                              (let ((_%e172441172461%_
                                     (gx#syntax-e _%tl172440172458%_)))
                                (let ((_%hd172442172464%_
                                       (##car _%e172441172461%_))
                                      (_%tl172443172466%_
                                       (##cdr _%e172441172461%_)))
                                  (let ((_%path172469%_ _%hd172442172464%_))
                                    (if (gx#stx-null? _%tl172443172466%_)
                                        (if (gx#stx-string? _%path172469%_)
                                            (let ((_%rpath172474%_
                                                   (let ((_%$e172471%_
                                                          _%rpath172434%_))
                                                     (if _%$e172471%_
                                                         _%$e172471%_
                                                         (gx#core-resolve-path__%
                                                          _%path172469%_
                                                          (gx#stx-source
                                                           _%stx172433%_))))))
                                              (if (member _%rpath172474%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx172433%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath172474%_))
                                                    (gx#stx-source
                                                     _%stx172433%_)))))
                                            (_%E172437172449%_))
                                        (_%E172437172449%_)))))
                              (_%E172437172449%_))))
                      (_%E172437172449%_)))))
          (_%E172436172476%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx172483%_)
        (let ((_%rpath172485%_ '#f))
          (gx#core-expand-include%__% _%stx172483%_ _%rpath172485%_))))
    (define gx#core-expand-include%
      (lambda _g174808_
        (let ((_g174809_ (##length _g174808_)))
          (cond ((##fx= _g174809_ 1)
                 (apply gx#core-expand-include%__0 _g174808_))
                ((##fx= _g174809_ 2)
                 (apply gx#core-expand-include%__% _g174808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g174808_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K172399%_ _%stx172400%_ _%method172401%_)
        (if (procedure? _%K172399%_)
            (let ((_%$e172404%_ (gx#stx-source _%stx172400%_)))
              (if _%$e172404%_
                  ((lambda (_%g172406172408%_)
                     (gx#stx-wrap-source
                      (_%K172399%_ _%stx172400%_)
                      _%g172406172408%_))
                   _%$e172404%_)
                  (_%K172399%_ _%stx172400%_)))
            (let ((_%$e172412%_
                   (bound-method-ref _%K172399%_ _%method172401%_)))
              (if _%$e172412%_
                  ((lambda (_%g172414172416%_)
                     (gx#core-apply-expander__%
                      _%g172414172416%_
                      _%stx172400%_
                      _%method172401%_))
                   _%$e172412%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx172400%_
                   _%method172401%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K172423%_ _%stx172424%_)
        (let ((_%method172426%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K172423%_
           _%stx172424%_
           _%method172426%_))))
    (define gx#core-apply-expander
      (lambda _g174810_
        (let ((_g174811_ (##length _g174810_)))
          (cond ((##fx= _g174811_ 2)
                 (apply gx#core-apply-expander__0 _g174810_))
                ((##fx= _g174811_ 3)
                 (apply gx#core-apply-expander__% _g174810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g174810_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self172384%_ _%stx172385%_)
        (let ((_%self172388%_ _%self172384%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx172385%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self172227%_ _%stx172228%_)
        (let* ((_%self172231%_ _%self172227%_)
               (_%self172240172246%_ _%self172231%_)
               (_%E172242172249%_
                (lambda ()
                  (error '"No clause matching"
                         _%self172240172246%_
                         '((macro-expander K)))
                  '#!void))
               (_%K172243172254%_
                (lambda (_%K172252%_)
                  (gx#core-apply-expander__0 _%K172252%_ _%stx172228%_)))
               (_%e172244172257%_
                (##unchecked-structure-ref _%self172240172246%_ '1 '#f '#f))
               (_%K172260%_ _%e172244172257%_))
          (_%K172243172254%_ _%K172260%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self172070%_ _%stx172071%_)
        (let ((_%self172074%_ _%self172070%_))
          (if (gx#sealed-syntax? _%stx172071%_)
              _%stx172071%_
              (let* ((_%self172083172089%_ _%self172074%_)
                     (_%E172085172092%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self172083172089%_
                               '((core-expander K)))
                        '#!void))
                     (_%K172086172097%_
                      (lambda (_%K172095%_)
                        (gx#core-apply-expander__0 _%K172095%_ _%stx172071%_)))
                     (_%e172087172100%_
                      (##unchecked-structure-ref
                       _%self172083172089%_
                       '1
                       '#f
                       '#f))
                     (_%K172103%_ _%e172087172100%_))
                (_%K172086172097%_ _%K172103%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self171921%_ _%stx171922%_ _%top?171923%_)
        (let ((_%self171926%_ _%self171921%_))
          (if (_%top?171923%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self171926%_
               _%stx171922%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx171922%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self171939%_ _%stx171940%_)
        (let ((_%top?171942%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self171939%_
           _%stx171940%_
           _%top?171942%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g174812_
        (let ((_g174813_ (##length _g174812_)))
          (cond ((##fx= _g174813_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g174812_))
                ((##fx= _g174813_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g174812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g174812_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self171784%_ _%stx171785%_)
        (let ((_%self171788%_ _%self171784%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self171788%_
           _%stx171785%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self171599%_ _%stx171600%_)
        (let* ((_%self171603%_ _%self171599%_)
               (_%self171612171618%_ _%self171603%_)
               (_%E171614171621%_
                (lambda ()
                  (error '"No clause matching"
                         _%self171612171618%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K171615171654%_
                (lambda (_%id171624%_)
                  (let* ((_%e171625171632%_ _%stx171600%_)
                         (_%E171627171636%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e171625171632%_)))
                         (_%E171626171650%_
                          (lambda ()
                            (if (gx#stx-pair? _%e171625171632%_)
                                (let ((_%e171628171640%_
                                       (gx#syntax-e _%e171625171632%_)))
                                  (let ((_%hd171629171643%_
                                         (##car _%e171628171640%_))
                                        (_%tl171630171645%_
                                         (##cdr _%e171628171640%_)))
                                    (let ((_%body171648%_ _%tl171630171645%_))
                                      (gx#core-cons
                                       _%id171624%_
                                       _%body171648%_))))
                                (_%E171627171636%_)))))
                    (_%E171626171650%_))))
               (_%e171616171657%_
                (##unchecked-structure-ref _%self171612171618%_ '1 '#f '#f))
               (_%id171660%_ _%e171616171657%_))
          (_%K171615171654%_ _%id171660%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self171426%_ _%stx171427%_ _%method171428%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx171427%_))
              (force-output))
            '#!void)
        (let* ((_%self171429171437%_ _%self171426%_)
               (_%E171431171440%_
                (lambda ()
                  (error '"No clause matching"
                         _%self171429171437%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K171432171447%_
                (lambda (_%phi171443%_ _%ctx171444%_ _%K171445%_)
                  (gx#core-apply-user-macro
                   _%K171445%_
                   _%stx171427%_
                   _%ctx171444%_
                   _%phi171443%_
                   _%method171428%_))))
          (if (##structure-instance-of?
               _%self171429171437%_
               'gx#user-expander::t)
              (let* ((_%e171433171450%_
                      (##unchecked-structure-ref
                       _%self171429171437%_
                       '1
                       '#f
                       '#f))
                     (_%K171453%_ _%e171433171450%_)
                     (_%e171434171455%_
                      (##unchecked-structure-ref
                       _%self171429171437%_
                       '2
                       '#f
                       '#f))
                     (_%ctx171458%_ _%e171434171455%_)
                     (_%e171435171460%_
                      (##unchecked-structure-ref
                       _%self171429171437%_
                       '3
                       '#f
                       '#f))
                     (_%phi171463%_ _%e171435171460%_))
                (_%K171432171447%_ _%phi171463%_ _%ctx171458%_ _%K171453%_))
              (_%E171431171440%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self171468%_ _%stx171469%_)
        (let ((_%method171471%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self171468%_
           _%stx171469%_
           _%method171471%_))))
    (define gx#core-apply-user-expander
      (lambda _g174814_
        (let ((_g174815_ (##length _g174814_)))
          (cond ((##fx= _g174815_ 2)
                 (apply gx#core-apply-user-expander__0 _g174814_))
                ((##fx= _g174815_ 3)
                 (apply gx#core-apply-user-expander__% _g174814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g174814_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K171416%_
               _%stx171417%_
               _%ctx171418%_
               _%phi171419%_
               _%method171420%_)
        (let ((_%mark171422%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx171418%_
                _%phi171419%_
                _%stx171417%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K171416%_
               (gx#stx-apply-mark _%stx171417%_ _%mark171422%_)
               _%method171420%_)
              _%mark171422%_))
           gx#current-expander-marks
           (cons _%mark171422%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx171264%_ _%phi171265%_ _%ctx171266%_)
        (let _%lp171268%_ ((_%bind171270%_
                            (gx#core-resolve-identifier__%
                             _%stx171264%_
                             _%phi171265%_
                             _%ctx171266%_)))
          (if (##structure-direct-instance-of?
               _%bind171270%_
               'gx#import-binding::t)
              (_%lp171268%_
               (##unchecked-structure-ref _%bind171270%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind171270%_
                   'gx#alias-binding::t)
                  (_%lp171268%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind171270%_ '5 '#f '#f)
                    _%phi171265%_
                    _%ctx171266%_))
                  _%bind171270%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx171278%_)
        (let* ((_%phi171280%_ (gx#current-expander-phi))
               (_%ctx171282%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx171278%_
           _%phi171280%_
           _%ctx171282%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx171284%_ _%phi171285%_)
        (let ((_%ctx171287%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx171284%_
           _%phi171285%_
           _%ctx171287%_))))
    (define gx#resolve-identifier
      (lambda _g174816_
        (let ((_g174817_ (##length _g174816_)))
          (cond ((##fx= _g174817_ 1)
                 (apply gx#resolve-identifier__0 _g174816_))
                ((##fx= _g174817_ 2)
                 (apply gx#resolve-identifier__1 _g174816_))
                ((##fx= _g174817_ 3)
                 (apply gx#resolve-identifier__% _g174816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g174816_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx171219%_
               _%val171220%_
               _%rebind?171221%_
               _%phi171222%_
               _%ctx171223%_)
        (let ((_%rebind?171228%_
               (if (not _%rebind?171221%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?171221%_)
                       _%rebind?171221%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx171219%_)
           _%val171220%_
           _%rebind?171228%_
           _%phi171222%_
           _%ctx171223%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx171233%_ _%val171234%_)
        (let* ((_%rebind?171236%_ '#f)
               (_%phi171238%_ (gx#current-expander-phi))
               (_%ctx171240%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx171233%_
           _%val171234%_
           _%rebind?171236%_
           _%phi171238%_
           _%ctx171240%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx171242%_ _%val171243%_ _%rebind?171244%_)
        (let* ((_%phi171246%_ (gx#current-expander-phi))
               (_%ctx171248%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx171242%_
           _%val171243%_
           _%rebind?171244%_
           _%phi171246%_
           _%ctx171248%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx171250%_ _%val171251%_ _%rebind?171252%_ _%phi171253%_)
        (let ((_%ctx171255%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx171250%_
           _%val171251%_
           _%rebind?171252%_
           _%phi171253%_
           _%ctx171255%_))))
    (define gx#bind-identifier!
      (lambda _g174818_
        (let ((_g174819_ (##length _g174818_)))
          (cond ((##fx= _g174819_ 2) (apply gx#bind-identifier!__0 _g174818_))
                ((##fx= _g174819_ 3) (apply gx#bind-identifier!__1 _g174818_))
                ((##fx= _g174819_ 4) (apply gx#bind-identifier!__2 _g174818_))
                ((##fx= _g174819_ 5) (apply gx#bind-identifier!__% _g174818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g174818_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx171185%_ _%phi171186%_ _%ctx171187%_)
        (let _%lp171189%_ ((_%e171191%_ _%stx171185%_)
                           (_%marks171192%_ (gx#current-expander-marks)))
          (if (symbol? _%e171191%_)
              (gx#core-resolve-binding
               _%e171191%_
               _%phi171186%_
               _%phi171186%_
               _%ctx171187%_
               (reverse _%marks171192%_))
              (if (gx#identifier-quote? _%e171191%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e171191%_ '1 '#f '#f)
                   _%phi171186%_
                   '0
                   (##unchecked-structure-ref _%e171191%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e171191%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e171191%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e171191%_ '1 '#f '#f)
                       _%phi171186%_
                       _%phi171186%_
                       _%ctx171187%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e171191%_ '3 '#f '#f)
                        _%marks171192%_))
                      (if (##structure-direct-instance-of?
                           _%e171191%_
                           'gx#syntax-wrap::t)
                          (_%lp171189%_
                           (##unchecked-structure-ref _%e171191%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e171191%_ '3 '#f '#f)
                            _%marks171192%_))
                          (if (##structure-instance-of?
                               _%e171191%_
                               'gerbil#AST::t)
                              (_%lp171189%_
                               (##unchecked-structure-ref
                                _%e171191%_
                                '1
                                '#f
                                '#f)
                               _%marks171192%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx171185%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx171203%_)
        (let* ((_%phi171205%_ (gx#current-expander-phi))
               (_%ctx171207%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx171203%_
           _%phi171205%_
           _%ctx171207%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx171209%_ _%phi171210%_)
        (let ((_%ctx171212%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx171209%_
           _%phi171210%_
           _%ctx171212%_))))
    (define gx#core-resolve-identifier
      (lambda _g174820_
        (let ((_g174821_ (##length _g174820_)))
          (cond ((##fx= _g174821_ 1)
                 (apply gx#core-resolve-identifier__0 _g174820_))
                ((##fx= _g174821_ 2)
                 (apply gx#core-resolve-identifier__1 _g174820_))
                ((##fx= _g174821_ 3)
                 (apply gx#core-resolve-identifier__% _g174820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g174820_))))))
    (define gx#core-resolve-binding
      (lambda (_%id171096%_
               _%phi171097%_
               _%src-phi171098%_
               _%ctx171099%_
               _%marks171100%_)
        (letrec ((_%resolve171102%_
                  (lambda (_%ctx171169%_ _%src-phi171170%_ _%key171171%_)
                    (let _%lp171173%_ ((_%ctx171175%_
                                        (gx#core-context-shift
                                         _%ctx171169%_
                                         _%phi171097%_))
                                       (_%dphi171176%_
                                        (fx- _%phi171097%_ _%src-phi171170%_)))
                      (let ((_%$e171178%_
                             (gx#core-context-resolve
                              _%ctx171175%_
                              _%key171171%_)))
                        (if _%$e171178%_
                            _%$e171178%_
                            (if (fxzero? _%dphi171176%_)
                                '#f
                                (if (fxpositive? _%dphi171176%_)
                                    (_%lp171173%_
                                     (gx#core-context-shift _%ctx171175%_ '-1)
                                     (##fx- _%dphi171176%_ '1))
                                    (_%lp171173%_
                                     (gx#core-context-shift _%ctx171175%_ '1)
                                     (##fx+ _%dphi171176%_ '1))))))))))
          (let _%lp171104%_ ((_%ctx171106%_ _%ctx171099%_)
                             (_%src-phi171107%_ _%src-phi171098%_)
                             (_%rest171108%_ _%marks171100%_))
            (let* ((_%rest171109171117%_ _%rest171108%_)
                   (_%else171111171125%_
                    (lambda ()
                      (_%resolve171102%_
                       _%ctx171106%_
                       _%src-phi171107%_
                       _%id171096%_)))
                   (_%K171113171157%_
                    (lambda (_%rest171128%_ _%hd171129%_)
                      (let* ((_%hd171130171136%_ _%hd171129%_)
                             (_%E171132171139%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd171130171136%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K171133171149%_
                              (lambda (_%subst171142%_)
                                (let ((_%$e171146%_
                                       (let ((_%key171144%_
                                              (if _%subst171142%_
                                                  (hash-get
                                                   _%subst171142%_
                                                   _%id171096%_)
                                                  '#f)))
                                         (if _%key171144%_
                                             (_%resolve171102%_
                                              _%ctx171106%_
                                              _%src-phi171107%_
                                              _%key171144%_)
                                             '#f))))
                                  (if _%$e171146%_
                                      _%$e171146%_
                                      (_%lp171104%_
                                       (##unchecked-structure-ref
                                        _%hd171129%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd171129%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest171128%_))))))
                        (if (##structure-instance-of?
                             _%hd171130171136%_
                             'gx#expander-mark::t)
                            (let* ((_%e171134171152%_
                                    (##unchecked-structure-ref
                                     _%hd171130171136%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst171155%_ _%e171134171152%_))
                              (_%K171133171149%_ _%subst171155%_))
                            (_%E171132171139%_))))))
              (if (pair? _%rest171109171117%_)
                  (let ((_%hd171114171160%_ (##car _%rest171109171117%_))
                        (_%tl171115171162%_ (##cdr _%rest171109171117%_)))
                    (let* ((_%hd171165%_ _%hd171114171160%_)
                           (_%rest171167%_ _%tl171115171162%_))
                      (_%K171113171157%_ _%rest171167%_ _%hd171165%_)))
                  (_%else171111171125%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key170967%_
               _%val170968%_
               _%rebind?170969%_
               _%phi170970%_
               _%ctx170971%_)
        (letrec ((_%update-binding170973%_
                  (lambda (_%xval171045%_)
                    (if (or (_%rebind?170969%_
                             _%ctx170971%_
                             _%xval171045%_
                             _%val170968%_)
                            (and (##structure-direct-instance-of?
                                  _%xval171045%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval171045%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val170968%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val170968%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval171045%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val170968%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val170968%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval171045%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val170968%_
                        (if (and (##structure-direct-instance-of?
                                  _%val170968%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val170968%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval171045%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val170968%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval171045%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval171045%_
                            (if (and (##structure-direct-instance-of?
                                      _%val170968%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval171045%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key170967%_
                                 (cons (##unchecked-structure-ref
                                        _%val170968%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val170968%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval171045%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval171045%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval171045%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval171045%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key170967%_
                                 _%val170968%_
                                 _%xval171045%_))))))
                 (_%gensubst170974%_
                  (lambda (_%subst171040%_ _%id171041%_)
                    (let ((_%eid171043%_
                           (gensym (if (uninterned-symbol? _%id171041%_)
                                       '%
                                       _%id171041%_))))
                      (hash-put! _%subst171040%_ _%id171041%_ _%eid171043%_)
                      _%eid171043%_)))
                 (_%subst!170975%_
                  (lambda (_%key170977%_)
                    (let* ((_%key170978170986%_ _%key170977%_)
                           (_%else170980170994%_ (lambda () _%key170977%_))
                           (_%K170982171028%_
                            (lambda (_%mark170997%_ _%id170998%_)
                              (let* ((_%mark170999171005%_ _%mark170997%_)
                                     (_%E171001171008%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark170999171005%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K171002171020%_
                                      (lambda (_%subst171011%_)
                                        (if (not _%subst171011%_)
                                            (let ((_%subst171014%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark170997%_
                                               _%subst171014%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst170974%_
                                               _%subst171014%_
                                               _%id170998%_))
                                            (let ((_%$e171016%_
                                                   (hash-get
                                                    _%subst171011%_
                                                    _%id170998%_)))
                                              (if _%$e171016%_
                                                  _%$e171016%_
                                                  (_%gensubst170974%_
                                                   _%subst171011%_
                                                   _%id170998%_)))))))
                                (if (##structure-instance-of?
                                     _%mark170999171005%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e171003171023%_
                                            (##unchecked-structure-ref
                                             _%mark170999171005%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst171026%_ _%e171003171023%_))
                                      (_%K171002171020%_ _%subst171026%_))
                                    (_%E171001171008%_))))))
                      (if (pair? _%key170978170986%_)
                          (let ((_%hd170983171031%_
                                 (##car _%key170978170986%_))
                                (_%tl170984171033%_
                                 (##cdr _%key170978170986%_)))
                            (let* ((_%id171036%_ _%hd170983171031%_)
                                   (_%mark171038%_ _%tl170984171033%_))
                              (_%K170982171028%_ _%mark171038%_ _%id171036%_)))
                          (_%else170980170994%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx170971%_ _%phi170970%_)
           (_%subst!170975%_ _%key170967%_)
           _%val170968%_
           _%update-binding170973%_))))
    (define gx#core-bind!__0
      (lambda (_%key171066%_ _%val171067%_)
        (let* ((_%rebind?171069%_ false)
               (_%phi171071%_ (gx#current-expander-phi))
               (_%ctx171073%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key171066%_
           _%val171067%_
           _%rebind?171069%_
           _%phi171071%_
           _%ctx171073%_))))
    (define gx#core-bind!__1
      (lambda (_%key171075%_ _%val171076%_ _%rebind?171077%_)
        (let* ((_%phi171079%_ (gx#current-expander-phi))
               (_%ctx171081%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key171075%_
           _%val171076%_
           _%rebind?171077%_
           _%phi171079%_
           _%ctx171081%_))))
    (define gx#core-bind!__2
      (lambda (_%key171083%_ _%val171084%_ _%rebind?171085%_ _%phi171086%_)
        (let ((_%ctx171088%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key171083%_
           _%val171084%_
           _%rebind?171085%_
           _%phi171086%_
           _%ctx171088%_))))
    (define gx#core-bind!
      (lambda _g174822_
        (let ((_g174823_ (##length _g174822_)))
          (cond ((##fx= _g174823_ 2) (apply gx#core-bind!__0 _g174822_))
                ((##fx= _g174823_ 3) (apply gx#core-bind!__1 _g174822_))
                ((##fx= _g174823_ 4) (apply gx#core-bind!__2 _g174822_))
                ((##fx= _g174823_ 5) (apply gx#core-bind!__% _g174822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g174822_))))))
    (define gx#core-identifier-key
      (lambda (_%stx170898%_)
        (if (symbol? _%stx170898%_)
            (let* ((_%g170900170908%_ (gx#current-expander-marks))
                   (_%else170902170916%_ (lambda () _%stx170898%_))
                   (_%K170904170921%_
                    (lambda (_%hd170919%_) (cons _%stx170898%_ _%hd170919%_))))
              (if (pair? _%g170900170908%_)
                  (let* ((_%hd170905170924%_ (##car _%g170900170908%_))
                         (_%hd170927%_ _%hd170905170924%_))
                    (_%K170904170921%_ _%hd170927%_))
                  (_%else170902170916%_)))
            (if (gx#identifier? _%stx170898%_)
                (let* ((_%id170930%_ (gx#syntax-local-unwrap _%stx170898%_))
                       (_%eid170932%_ (gx#stx-e _%id170930%_))
                       (_%marks170934%_
                        (gx#stx-identifier-marks* _%id170930%_))
                       (_%marks170936170944%_ _%marks170934%_)
                       (_%else170938170952%_ (lambda () _%eid170932%_))
                       (_%K170940170957%_
                        (lambda (_%hd170955%_)
                          (cons _%eid170932%_ _%hd170955%_))))
                  (if (pair? _%marks170936170944%_)
                      (let* ((_%hd170941170960%_ (##car _%marks170936170944%_))
                             (_%hd170963%_ _%hd170941170960%_))
                        (_%K170940170957%_ _%hd170963%_))
                      (_%else170938170952%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx170898%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx170837%_ _%phi170838%_)
        (letrec ((_%make-phi170840%_
                  (lambda (_%super170896%_)
                    (let ((__obj174793
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj174793
                       (##gensym 'phi)
                       _%super170896%_)
                      __obj174793)))
                 (_%make-phi/up170841%_
                  (lambda (_%ctx170891%_ _%super170892%_)
                    (let ((_%ctx+1170894%_
                           (_%make-phi170840%_ _%super170892%_)))
                      (##unchecked-structure-set!
                       _%ctx170891%_
                       _%ctx+1170894%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1170894%_
                       _%ctx170891%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1170894%_)))
                 (_%make-phi/down170842%_
                  (lambda (_%ctx170886%_ _%super170887%_)
                    (let ((_%ctx-1170889%_
                           (_%make-phi170840%_ _%super170887%_)))
                      (##unchecked-structure-set!
                       _%ctx-1170889%_
                       _%ctx170886%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx170886%_
                       _%ctx-1170889%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1170889%_)))
                 (_%shift170843%_
                  (lambda (_%ctx170869%_
                           _%delta170870%_
                           _%make-delta-context170871%_
                           _%phi170872%_
                           _%K170873%_)
                    (let ((_%$e170875%_
                           (##unchecked-structure-ref
                            _%ctx170869%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e170875%_
                          ((lambda (_%super170878%_)
                             (let* ((_%super170880%_
                                     (_%K170873%_
                                      _%super170878%_
                                      _%delta170870%_))
                                    (_%ctx+d170882%_
                                     (_%make-delta-context170871%_
                                      _%ctx170869%_
                                      _%super170880%_)))
                               (_%K170873%_
                                _%ctx+d170882%_
                                (fx- _%phi170872%_ _%delta170870%_))))
                           _%$e170875%_)
                          (error '"Bad context" _%ctx170869%_))))))
          (let _%K170845%_ ((_%ctx170847%_ _%ctx170837%_)
                            (_%phi170848%_ _%phi170838%_))
            (if (fxzero? _%phi170848%_)
                _%ctx170847%_
                (if (##structure-instance-of? _%ctx170847%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi170848%_)
                        (let ((_%$e170852%_
                               (##unchecked-structure-ref
                                _%ctx170847%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e170852%_
                              ((lambda (_%g170854170856%_)
                                 (_%K170845%_
                                  _%g170854170856%_
                                  (##fx- _%phi170848%_ '1)))
                               _%$e170852%_)
                              (_%shift170843%_
                               _%ctx170847%_
                               '1
                               _%make-phi/up170841%_
                               _%phi170848%_
                               _%K170845%_)))
                        (let ((_%$e170860%_
                               (##unchecked-structure-ref
                                _%ctx170847%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e170860%_
                              ((lambda (_%g170862170864%_)
                                 (_%K170845%_
                                  _%g170862170864%_
                                  (##fx+ _%phi170848%_ '1)))
                               _%$e170860%_)
                              (_%shift170843%_
                               _%ctx170847%_
                               '-1
                               _%make-phi/down170842%_
                               _%phi170848%_
                               _%K170845%_))))
                    _%ctx170847%_))))))
    (define gx#core-context-get
      (lambda (_%ctx170834%_ _%key170835%_)
        (hash-get
         (##unchecked-structure-ref _%ctx170834%_ '2 '#f '#f)
         _%key170835%_)))
    (define gx#core-context-put!
      (lambda (_%ctx170830%_ _%key170831%_ _%val170832%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx170830%_ '2 '#f '#f)
         _%key170831%_
         _%val170832%_)
        _%val170832%_))
    (define gx#core-context-resolve
      (lambda (_%ctx170816%_ _%key170817%_)
        (let _%lp170819%_ ((_%ctx170821%_ _%ctx170816%_))
          (let ((_%$e170823%_
                 (gx#core-context-get _%ctx170821%_ _%key170817%_)))
            (if _%$e170823%_
                _%$e170823%_
                (let ((_%$e170826%_
                       (if (##structure-instance-of?
                            _%ctx170821%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx170821%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e170826%_ (_%lp170819%_ _%$e170826%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx170805%_ _%key170806%_ _%val170807%_ _%rebind170808%_)
        (let ((_%$e170810%_ (gx#core-context-get _%ctx170805%_ _%key170806%_)))
          (if _%$e170810%_
              ((lambda (_%xval170813%_)
                 (gx#core-context-put!
                  _%ctx170805%_
                  _%key170806%_
                  (_%rebind170808%_ _%xval170813%_)))
               _%$e170810%_)
              (gx#core-context-put!
               _%ctx170805%_
               _%key170806%_
               _%val170807%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx170780%_ _%stop?170781%_)
        (let _%lp170783%_ ((_%ctx170785%_ _%ctx170780%_))
          (if (_%stop?170781%_ _%ctx170785%_)
              _%ctx170785%_
              (if (##structure-instance-of? _%ctx170785%_ 'gx#phi-context::t)
                  (_%lp170783%_
                   (##unchecked-structure-ref _%ctx170785%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx170794%_ (gx#current-expander-context))
               (_%stop?170796%_ gx#top-context?))
          (gx#core-context-top__% _%ctx170794%_ _%stop?170796%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx170798%_)
        (let ((_%stop?170800%_ gx#top-context?))
          (gx#core-context-top__% _%ctx170798%_ _%stop?170800%_))))
    (define gx#core-context-top
      (lambda _g174824_
        (let ((_g174825_ (##length _g174824_)))
          (cond ((##fx= _g174825_ 0) (apply gx#core-context-top__0 _g174824_))
                ((##fx= _g174825_ 1) (apply gx#core-context-top__1 _g174824_))
                ((##fx= _g174825_ 2) (apply gx#core-context-top__% _g174824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g174824_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx170765%_)
        (let _%lp170767%_ ((_%ctx170769%_ _%ctx170765%_))
          (if (##structure-instance-of? _%ctx170769%_ 'gx#phi-context::t)
              (_%lp170767%_
               (##unchecked-structure-ref _%ctx170769%_ '3 '#f '#f))
              _%ctx170769%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx170775%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx170775%_))))
    (define gx#core-context-root
      (lambda _g174826_
        (let ((_g174827_ (##length _g174826_)))
          (cond ((##fx= _g174827_ 0) (apply gx#core-context-root__0 _g174826_))
                ((##fx= _g174827_ 1) (apply gx#core-context-root__% _g174826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g174826_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx170747%_ . _%ignore170748%_)
        (let ((_%$e170750%_ (gx#current-expander-allow-rebind?)))
          (if _%$e170750%_
              _%$e170750%_
              (if (##structure-instance-of? _%ctx170747%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx170747%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx170747%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx170757%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx170757%_))))
    (define gx#core-context-rebind?
      (lambda _g174828_
        (let ((_g174829_ (##length _g174828_)))
          (cond ((##fx= _g174829_ 0)
                 (apply gx#core-context-rebind?__0 _g174828_))
                ((##fx= _g174829_ 1)
                 (apply gx#core-context-rebind?__% _g174828_))
                ((##fx>= _g174829_ 1)
                 (apply gx#core-context-rebind?__% _g174828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g174828_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx170730%_)
        (let ((_%$e170732%_ (gx#core-context-top__1 _%ctx170730%_)))
          (if _%$e170732%_
              ((lambda (_%ctx170735%_)
                 (if (##structure-instance-of?
                      _%ctx170735%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx170735%_ '6 '#f '#f)
                     '#f))
               _%$e170732%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx170742%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx170742%_))))
    (define gx#core-context-namespace
      (lambda _g174830_
        (let ((_g174831_ (##length _g174830_)))
          (cond ((##fx= _g174831_ 0)
                 (apply gx#core-context-namespace__0 _g174830_))
                ((##fx= _g174831_ 1)
                 (apply gx#core-context-namespace__% _g174830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g174830_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind170716%_ _%is?170717%_)
        (if (##structure-direct-instance-of?
             _%bind170716%_
             'gx#syntax-binding::t)
            (_%is?170717%_
             (##unchecked-structure-ref _%bind170716%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind170722%_)
        (let ((_%is?170724%_ gx#expander?))
          (gx#expander-binding?__% _%bind170722%_ _%is?170724%_))))
    (define gx#expander-binding?
      (lambda _g174832_
        (let ((_g174833_ (##length _g174832_)))
          (cond ((##fx= _g174833_ 1) (apply gx#expander-binding?__0 _g174832_))
                ((##fx= _g174833_ 2) (apply gx#expander-binding?__% _g174832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g174832_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind170713%_)
        (gx#expander-binding?__% _%bind170713%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind170711%_)
        (gx#expander-binding?__% _%bind170711%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind170705%_)
        (letrec ((_%direct-special-form?170707%_
                  (lambda (_%obj170709%_)
                    (##structure-direct-instance-of?
                     _%obj170709%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind170705%_
           _%direct-special-form?170707%_))))
    (define gx#special-form-binding?
      (lambda (_%bind170703%_)
        (gx#expander-binding?__% _%bind170703%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind170694%_)
        (letrec ((_%feature?170696%_
                  (lambda (_%e170698%_)
                    (let ((_%$e170700%_
                           (##structure-instance-of?
                            _%e170698%_
                            'gx#feature-expander::t)))
                      (if _%$e170700%_
                          _%$e170700%_
                          (##structure-instance-of?
                           _%e170698%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind170694%_ _%feature?170696%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind170692%_)
        (gx#expander-binding?__% _%bind170692%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id170679%_ _%bound?170680%_)
        (if (gx#identifier? _%id170679%_)
            (_%bound?170680%_ (gx#resolve-identifier__0 _%id170679%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id170685%_)
        (let ((_%bound?170687%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id170685%_ _%bound?170687%_))))
    (define gx#core-bound-identifier?
      (lambda _g174834_
        (let ((_g174835_ (##length _g174834_)))
          (cond ((##fx= _g174835_ 1)
                 (apply gx#core-bound-identifier?__0 _g174834_))
                ((##fx= _g174835_ 2)
                 (apply gx#core-bound-identifier?__% _g174834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g174834_))))))
    (define gx#core-identifier=?
      (lambda (_%x170669%_ _%y170670%_)
        (letrec ((_%y=?170672%_
                  (lambda (_%xid170676%_)
                    ((if (list? _%y170670%_) memq eq?)
                     _%xid170676%_
                     _%y170670%_))))
          (let ((_%bind170674%_ (gx#resolve-identifier__0 _%x170669%_)))
            (if (##structure-instance-of? _%bind170674%_ 'gx#binding::t)
                (_%y=?170672%_
                 (##unchecked-structure-ref _%bind170674%_ '1 '#f '#f))
                (_%y=?170672%_ (gx#stx-e _%x170669%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e170667%_)
        (if (interned-symbol? _%e170667%_)
            (string-index__0 (symbol->string _%e170667%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx170620%_ _%src170621%_ _%ctx170622%_ _%marks170623%_)
        (if (##structure? _%stx170620%_)
            (let ((_%$e170625%_ (gx#sealed-syntax-unwrap _%stx170620%_)))
              (if _%$e170625%_
                  _%$e170625%_
                  (if (gx#identifier? _%stx170620%_)
                      (let ((_%id170629%_
                             (gx#stx-unwrap__% _%stx170620%_ _%marks170623%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id170629%_ '1 '#f '#f)
                         (let ((_%$e170631%_
                                (##unchecked-structure-ref
                                 _%id170629%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e170631%_ _%$e170631%_ _%src170621%_))
                         _%ctx170622%_
                         (##unchecked-structure-ref _%id170629%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx170620%_)
                       (let ((_%$e170635%_ (gx#stx-source _%stx170620%_)))
                         (if _%$e170635%_ _%$e170635%_ _%src170621%_))
                       _%ctx170622%_
                       (reverse _%marks170623%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx170620%_
             _%src170621%_
             _%ctx170622%_
             (reverse _%marks170623%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx170641%_)
        (let* ((_%src170643%_ '#f)
               (_%ctx170645%_ (gx#current-expander-context))
               (_%marks170647%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx170641%_
           _%src170643%_
           _%ctx170645%_
           _%marks170647%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx170649%_ _%src170650%_)
        (let* ((_%ctx170652%_ (gx#current-expander-context))
               (_%marks170654%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx170649%_
           _%src170650%_
           _%ctx170652%_
           _%marks170654%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx170656%_ _%src170657%_ _%ctx170658%_)
        (let ((_%marks170660%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx170656%_
           _%src170657%_
           _%ctx170658%_
           _%marks170660%_))))
    (define gx#core-quote-syntax
      (lambda _g174836_
        (let ((_g174837_ (##length _g174836_)))
          (cond ((##fx= _g174837_ 1) (apply gx#core-quote-syntax__0 _g174836_))
                ((##fx= _g174837_ 2) (apply gx#core-quote-syntax__1 _g174836_))
                ((##fx= _g174837_ 3) (apply gx#core-quote-syntax__2 _g174836_))
                ((##fx= _g174837_ 4) (apply gx#core-quote-syntax__% _g174836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g174836_))))))
    (define gx#core-cons
      (lambda (_%hd170616%_ _%tl170617%_)
        (cons (gx#core-quote-syntax__0 _%hd170616%_) _%tl170617%_)))
    (define gx#core-list
      (lambda (_%hd170613%_ . _%rest170614%_)
        (cons (gx#core-quote-syntax__0 _%hd170613%_) _%rest170614%_)))
    (define gx#core-cons*
      (lambda (_%hd170610%_ . _%rest170611%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd170610%_) _%rest170611%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path170579%_ _%rel170580%_)
        (let ((_%path170597%_ (gx#stx-e _%stx-path170579%_))
              (_%reldir170598%_
               (let _%lp170582%_ ((_%relsrc170584%_
                                   (let ((_%$e170594%_
                                          (gx#stx-source _%stx-path170579%_)))
                                     (if _%$e170594%_
                                         _%$e170594%_
                                         _%rel170580%_))))
                 (if (##structure-instance-of? _%relsrc170584%_ 'gerbil#AST::t)
                     (_%lp170582%_
                      (let ((_%$e170587%_ (gx#stx-source _%relsrc170584%_)))
                        (if _%$e170587%_
                            _%$e170587%_
                            (gx#stx-e _%relsrc170584%_))))
                     (if (source-location-path? _%relsrc170584%_)
                         (path-directory
                          (source-location-path _%relsrc170584%_))
                         (if (string? _%relsrc170584%_)
                             (path-directory _%relsrc170584%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path170597%_ (path-normalize _%reldir170598%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path170603%_)
        (let ((_%rel170605%_ '#f))
          (gx#core-resolve-path__% _%stx-path170603%_ _%rel170605%_))))
    (define gx#core-resolve-path
      (lambda _g174838_
        (let ((_g174839_ (##length _g174838_)))
          (cond ((##fx= _g174839_ 1) (apply gx#core-resolve-path__0 _g174838_))
                ((##fx= _g174839_ 2) (apply gx#core-resolve-path__% _g174838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g174838_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr170535%_ _%ctx170536%_)
        (let* ((_%repr170537170544%_ _%repr170535%_)
               (_%E170539170548%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr170537170544%_
                         '([phi . subs]))
                  '#!void))
               (_%K170540170556%_
                (lambda (_%subs170551%_ _%phi170552%_)
                  (let ((_%subst170554%_
                         (if (null? _%subs170551%_)
                             '#f
                             (list->hash-table-eq _%subs170551%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst170554%_
                     _%ctx170536%_
                     _%phi170552%_
                     '#f)))))
          (if (pair? _%repr170537170544%_)
              (let ((_%hd170541170559%_ (##car _%repr170537170544%_))
                    (_%tl170542170561%_ (##cdr _%repr170537170544%_)))
                (let* ((_%phi170564%_ _%hd170541170559%_)
                       (_%subs170566%_ _%tl170542170561%_))
                  (_%K170540170556%_ _%subs170566%_ _%phi170564%_)))
              (_%E170539170548%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr170571%_)
        (let ((_%ctx170573%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr170571%_ _%ctx170573%_))))
    (define gx#core-deserialize-mark
      (lambda _g174840_
        (let ((_g174841_ (##length _g174840_)))
          (cond ((##fx= _g174841_ 1)
                 (apply gx#core-deserialize-mark__0 _g174840_))
                ((##fx= _g174841_ 2)
                 (apply gx#core-deserialize-mark__% _g174840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g174840_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx170532%_)
        (gx#stx-rewrap _%stx170532%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx170530%_)
        (gx#stx-unwrap__% _%stx170530%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx170500%_)
        (let* ((_%g170501170509%_ (gx#current-expander-marks))
               (_%else170503170517%_ (lambda () _%stx170500%_))
               (_%K170505170522%_
                (lambda (_%hd170520%_)
                  (gx#stx-apply-mark _%stx170500%_ _%hd170520%_))))
          (if (pair? _%g170501170509%_)
              (let* ((_%hd170506170525%_ (##car _%g170501170509%_))
                     (_%hd170528%_ _%hd170506170525%_))
                (_%K170505170522%_ _%hd170528%_))
              (_%else170503170517%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym170498%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym170498%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx170483%_ _%E170484%_)
        (let ((_%bind170486%_ (gx#resolve-identifier__0 _%stx170483%_)))
          (if (##structure-direct-instance-of?
               _%bind170486%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind170486%_ '5 '#f '#f)
              (_%E170484%_ _%stx170483%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx170491%_)
        (let ((_%E170493%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx170491%_ _%E170493%_))))
    (define gx#syntax-local-e
      (lambda _g174842_
        (let ((_g174843_ (##length _g174842_)))
          (cond ((##fx= _g174843_ 1) (apply gx#syntax-local-e__0 _g174842_))
                ((##fx= _g174843_ 2) (apply gx#syntax-local-e__% _g174842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g174842_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx170467%_ _%E170468%_)
        (let ((_%e170470%_ (gx#syntax-local-e__% _%stx170467%_ _%E170468%_)))
          (if (##structure-instance-of? _%e170470%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e170470%_ '1 '#f '#f)
              _%e170470%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx170475%_)
        (let ((_%E170477%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx170475%_ _%E170477%_))))
    (define gx#syntax-local-value
      (lambda _g174844_
        (let ((_g174845_ (##length _g174844_)))
          (cond ((##fx= _g174845_ 1)
                 (apply gx#syntax-local-value__0 _g174844_))
                ((##fx= _g174845_ 2)
                 (apply gx#syntax-local-value__% _g174844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g174844_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx170464%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx170464%_)))))
