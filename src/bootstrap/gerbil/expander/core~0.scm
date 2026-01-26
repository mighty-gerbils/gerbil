(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1769384628)
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
      (lambda _%$args133735%_
        (apply make-instance gx#expander-context::t _%$args133735%_)))
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
      (lambda _%$args133732%_
        (apply make-instance gx#root-context::t _%$args133732%_)))
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
      (lambda _%$args133729%_
        (apply make-instance gx#phi-context::t _%$args133729%_)))
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
      (lambda _%$args133726%_
        (apply make-instance gx#top-context::t _%$args133726%_)))
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
      (lambda _%$args133723%_
        (apply make-instance gx#module-context::t _%$args133723%_)))
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
      (lambda _%$args133720%_
        (apply make-instance gx#prelude-context::t _%$args133720%_)))
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
      (lambda _%$args133717%_
        (apply make-instance gx#local-context::t _%$args133717%_)))
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
      (lambda (_%self133690%_ _%id133691%_ _%super133692%_)
        (let ((_%self133695%_ _%self133690%_))
          (if (##fx< '3 (##structure-length _%self133695%_))
              (begin
                (##unchecked-structure-set!
                 _%self133695%_
                 _%id133691%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133695%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133695%_
                 _%super133692%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self133695%_
                     '3
                     (##structure-length _%self133695%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self133708%_ _%id133709%_)
        (let ((_%super133711%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self133708%_
           _%id133709%_
           _%super133711%_))))
    (define gx#phi-context:::init!
      (lambda _g133777_
        (let ((_g133778_ (##length _g133777_)))
          (cond ((##fx= _g133778_ 2)
                 (apply gx#phi-context:::init!__0 _g133777_))
                ((##fx= _g133778_ 3)
                 (apply gx#phi-context:::init!__% _g133777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g133777_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self133543%_ _%super133544%_)
        (let ((_%self133547%_ _%self133543%_))
          (if (##fx< '3 (##structure-length _%self133547%_))
              (begin
                (##unchecked-structure-set!
                 _%self133547%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133547%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self133547%_
                 _%super133544%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self133547%_
                     '3
                     (##structure-length _%self133547%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self133560%_)
        (let ((_%super133562%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self133560%_ _%super133562%_))))
    (define gx#local-context:::init!
      (lambda _g133779_
        (let ((_g133780_ (##length _g133779_)))
          (cond ((##fx= _g133780_ 1)
                 (apply gx#local-context:::init!__0 _g133779_))
                ((##fx= _g133780_ 2)
                 (apply gx#local-context:::init!__% _g133779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g133779_))))))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args133417%_
        (apply make-instance gx#binding::t _%$args133417%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args133414%_
        (apply make-instance gx#runtime-binding::t _%$args133414%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args133411%_
        (apply make-instance gx#local-binding::t _%$args133411%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args133408%_
        (apply make-instance gx#top-binding::t _%$args133408%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args133405%_
        (apply make-instance gx#module-binding::t _%$args133405%_)))
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
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args133402%_
        (apply make-instance gx#extern-binding::t _%$args133402%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args133399%_
        (apply make-instance gx#syntax-binding::t _%$args133399%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args133396%_
        (apply make-instance gx#import-binding::t _%$args133396%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args133393%_
        (apply make-instance gx#alias-binding::t _%$args133393%_)))
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
      (lambda _%$args133390%_
        (apply make-instance gx#expander::t _%$args133390%_)))
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
      (lambda _%$args133387%_
        (apply make-instance gx#core-expander::t _%$args133387%_)))
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
      (lambda _%$args133384%_
        (apply make-instance gx#expression-form::t _%$args133384%_)))
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
      (lambda _%$args133381%_
        (apply make-instance gx#special-form::t _%$args133381%_)))
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
      (lambda _%$args133378%_
        (apply make-instance gx#definition-form::t _%$args133378%_)))
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
      (lambda _%$args133375%_
        (apply make-instance gx#top-special-form::t _%$args133375%_)))
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
      (lambda _%$args133372%_
        (apply make-instance gx#module-special-form::t _%$args133372%_)))
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
      (lambda _%$args133369%_
        (apply make-instance gx#feature-expander::t _%$args133369%_)))
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
      (lambda _%$args133366%_
        (apply make-instance gx#private-feature-expander::t _%$args133366%_)))
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
      (lambda _%$args133363%_
        (apply make-instance gx#reserved-expander::t _%$args133363%_)))
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
      (lambda _%$args133360%_
        (apply make-instance gx#macro-expander::t _%$args133360%_)))
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
      (lambda _%$args133357%_
        (apply make-instance gx#rename-macro-expander::t _%$args133357%_)))
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
      (lambda _%$args133354%_
        (apply make-instance gx#user-expander::t _%$args133354%_)))
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
      (lambda _%$args133351%_
        (apply make-instance gx#expander-mark::t _%$args133351%_)))
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
      (lambda (_%ctx133335%_
               _%message133336%_
               _%stx133337%_
               .
               _%details133338%_)
        (let ((_%ctx133349%_
               (let ((_%$e133340%_ _%ctx133335%_))
                 (if _%$e133340%_
                     _%$e133340%_
                     (let ((_%$e133343%_ (gx#core-context-top__0)))
                       (if _%$e133343%_
                           ((lambda (_%ctx133346%_)
                              (cons 'expand
                                    (cons (##structure-ref
                                           _%ctx133346%_
                                           '1
                                           gx#expander-context::t
                                           '#f)
                                          '())))
                            _%$e133343%_)
                           '#f))))))
          (raise (make-syntax-error
                  _%message133336%_
                  (cons _%stx133337%_ _%details133338%_)
                  _%ctx133349%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx133322%_ _%expression?133323%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx133322%_ _%expression?133323%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx133328%_)
        (let ((_%expression?133330%_ '#f))
          (gx#eval-syntax__% _%stx133328%_ _%expression?133330%_))))
    (define gx#eval-syntax
      (lambda _g133781_
        (let ((_g133782_ (##length _g133781_)))
          (cond ((##fx= _g133782_ 1) (apply gx#eval-syntax__0 _g133781_))
                ((##fx= _g133782_ 2) (apply gx#eval-syntax__% _g133781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g133781_))))))
    (define gx#eval-syntax*
      (lambda (_%stx133319%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx133319%_))))
    (define gx#core-expand__%
      (lambda (_%stx133306%_ _%expression?133307%_)
        (if _%expression?133307%_
            (gx#core-expand-expression _%stx133306%_)
            (gx#core-expand-top _%stx133306%_))))
    (define gx#core-expand__0
      (lambda (_%stx133312%_)
        (let ((_%expression?133314%_ '#f))
          (gx#core-expand__% _%stx133312%_ _%expression?133314%_))))
    (define gx#core-expand
      (lambda _g133783_
        (let ((_g133784_ (##length _g133783_)))
          (cond ((##fx= _g133784_ 1) (apply gx#core-expand__0 _g133783_))
                ((##fx= _g133784_ 2) (apply gx#core-expand__% _g133783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g133783_))))))
    (define gx#core-expand-top
      (lambda (_%stx133273%_)
        (let* ((_%stx133275%_ (gx#core-expand*__0 _%stx133273%_))
               (_%e133276133283%_ _%stx133275%_)
               (_%E133278133287%_
                (lambda () (gx#core-expand-expression _%stx133275%_)))
               (_%E133277133301%_
                (lambda ()
                  (if (gx#stx-pair? _%e133276133283%_)
                      (let ((_%e133279133291%_
                             (gx#syntax-e _%e133276133283%_)))
                        (let ((_%hd133280133294%_ (##car _%e133279133291%_))
                              (_%tl133281133296%_ (##cdr _%e133279133291%_)))
                          (let ((_%form133299%_ _%hd133280133294%_))
                            (if (gx#core-bound-identifier?__0 _%form133299%_)
                                _%stx133275%_
                                (_%E133278133287%_)))))
                      (_%E133278133287%_)))))
          (_%E133277133301%_))))
    (define gx#core-expand-expression
      (lambda (_%stx133205%_)
        (letrec ((_%sealed-expression?133207%_
                  (lambda (_%hd133243%_)
                    (if (gx#sealed-syntax? _%hd133243%_)
                        (let* ((_%e133244133251%_ _%hd133243%_)
                               (_%E133246133255%_ (lambda () '#f))
                               (_%E133245133269%_
                                (lambda ()
                                  (if (gx#stx-pair? _%e133244133251%_)
                                      (let ((_%e133247133259%_
                                             (gx#syntax-e _%e133244133251%_)))
                                        (let ((_%hd133248133262%_
                                               (##car _%e133247133259%_))
                                              (_%tl133249133264%_
                                               (##cdr _%e133247133259%_)))
                                          (let ((_%form133267%_
                                                 _%hd133248133262%_))
                                            (gx#core-bound-identifier?__%
                                             _%form133267%_
                                             gx#expression-form-binding?))))
                                      (_%E133246133255%_)))))
                          (_%E133245133269%_))
                        '#f)))
                 (_%illegal-expression133208%_
                  (lambda (_%hd133240%_ . _%_133241%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx133205%_
                     _%hd133240%_)))
                 (_%expand-e133209%_
                  (lambda (_%form133232%_ _%hd133233%_)
                    (let ((_%bind133235%_
                           (if (##structure-instance-of?
                                _%form133232%_
                                'gx#binding::t)
                               _%form133232%_
                               (gx#resolve-identifier__0 _%form133232%_))))
                      (if (gx#core-expander-binding? _%bind133235%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind133235%_
                            '4
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd133233%_
                            (gx#stx-source _%stx133205%_)))
                          (if (##structure-direct-instance-of?
                               _%bind133235%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind133235%_
                                 '4
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd133233%_
                                 (gx#stx-source _%stx133205%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx133205%_
                               _%form133232%_)))))))
          (let ((_%hd133211%_ (gx#core-expand-head _%stx133205%_)))
            (if (_%sealed-expression?133207%_ _%hd133211%_)
                _%hd133211%_
                (if (gx#stx-pair? _%hd133211%_)
                    (let* ((_%form133215%_ (gx#stx-car _%hd133211%_))
                           (_%bind133217%_
                            (if (gx#identifier? _%form133215%_)
                                (gx#resolve-identifier__0 _%form133215%_)
                                '#f)))
                      (if (or (not _%bind133217%_)
                              (not (gx#core-expander-binding? _%bind133217%_)))
                          (_%expand-e133209%_
                           '%%app
                           (cons '%%app _%hd133211%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind133217%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd133211%_
                               _%illegal-expression133208%_)
                              (if (gx#expression-form-binding? _%bind133217%_)
                                  (_%expand-e133209%_
                                   _%bind133217%_
                                   _%hd133211%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind133217%_)
                                      (gx#core-expand-expression
                                       (_%expand-e133209%_
                                        _%bind133217%_
                                        _%hd133211%_))
                                      (_%illegal-expression133208%_
                                       _%hd133211%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd133211%_)
                        (_%illegal-expression133208%_ _%hd133211%_)
                        (if (gx#identifier? _%hd133211%_)
                            (_%expand-e133209%_
                             '%%ref
                             (cons '%%ref (cons _%hd133211%_ '())))
                            (if (gx#stx-datum? _%hd133211%_)
                                (_%expand-e133209%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd133211%_ '())))
                                (_%illegal-expression133208%_
                                 _%hd133211%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx133200%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx133203%_ (gx#core-expand-expression _%stx133200%_)))
             (values _%stx133203%_ (gx#eval-syntax* _%stx133203%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx133181%_ _%stop?133182%_)
        (let _%lp133184%_ ((_%stx133186%_ _%stx133181%_))
          (if (_%stop?133182%_ _%stx133186%_)
              _%stx133186%_
              (let ((_%rstx133188%_ (gx#core-expand1 _%stx133186%_)))
                (if (eq? _%stx133186%_ _%rstx133188%_)
                    _%stx133186%_
                    (_%lp133184%_ _%rstx133188%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx133193%_)
        (let ((_%stop?133195%_ false))
          (gx#core-expand*__% _%stx133193%_ _%stop?133195%_))))
    (define gx#core-expand*
      (lambda _g133785_
        (let ((_g133786_ (##length _g133785_)))
          (cond ((##fx= _g133786_ 1) (apply gx#core-expand*__0 _g133785_))
                ((##fx= _g133786_ 2) (apply gx#core-expand*__% _g133785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g133785_))))))
    (define gx#core-expand1
      (lambda (_%stx133133%_)
        (letrec ((_%step133135%_
                  (lambda (_%hd133172%_)
                    (let ((_%bind133174%_
                           (gx#resolve-identifier__0 _%hd133172%_)))
                      (if (##structure-instance-of?
                           _%bind133174%_
                           'gx#runtime-binding::t)
                          _%stx133133%_
                          (if (##structure-direct-instance-of?
                               _%bind133174%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind133174%_
                                '4
                                '#f
                                '#f)
                               _%stx133133%_)
                              (if (not _%bind133174%_)
                                  _%stx133133%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx133133%_))))))))
          (let* ((_%e133136133144%_ _%stx133133%_)
                 (_%E133142133148%_ (lambda () _%stx133133%_))
                 (_%E133138133154%_
                  (lambda ()
                    (let ((_%hd133152%_ _%e133136133144%_))
                      (if (gx#identifier? _%hd133152%_)
                          (_%step133135%_ _%hd133152%_)
                          (_%E133142133148%_)))))
                 (_%E133137133168%_
                  (lambda ()
                    (if (gx#stx-pair? _%e133136133144%_)
                        (let ((_%e133139133158%_
                               (gx#syntax-e _%e133136133144%_)))
                          (let ((_%hd133140133161%_ (##car _%e133139133158%_))
                                (_%tl133141133163%_ (##cdr _%e133139133158%_)))
                            (let ((_%hd133166%_ _%hd133140133161%_))
                              (if (gx#identifier? _%hd133166%_)
                                  (_%step133135%_ _%hd133166%_)
                                  (_%E133138133154%_)))))
                        (_%E133138133154%_)))))
            (_%E133137133168%_)))))
    (define gx#core-expand-head
      (lambda (_%stx133099%_)
        (letrec ((_%stop?133101%_
                  (lambda (_%stx133103%_)
                    (let* ((_%e133104133111%_ _%stx133103%_)
                           (_%E133106133115%_ (lambda () '#f))
                           (_%E133105133129%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133104133111%_)
                                  (let ((_%e133107133119%_
                                         (gx#syntax-e _%e133104133111%_)))
                                    (let ((_%hd133108133122%_
                                           (##car _%e133107133119%_))
                                          (_%tl133109133124%_
                                           (##cdr _%e133107133119%_)))
                                      (let ((_%hd133127%_ _%hd133108133122%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd133127%_))))
                                  (_%E133106133115%_)))))
                      (_%E133105133129%_)))))
          (gx#core-expand*__% _%stx133099%_ _%stop?133101%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx132905%_
               _%expand-special132906%_
               _%begin-form132907%_
               _%expand-e132908%_)
        (letrec ((_%expand-splice132910%_
                  (lambda (_%hd133073%_
                           _%body133074%_
                           _%rest133075%_
                           _%r133076%_)
                    (if (gx#stx-list? _%body133074%_)
                        (_%K132914%_
                         (gx#stx-foldr cons _%rest133075%_ _%body133074%_)
                         _%r133076%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx132905%_
                         _%hd133073%_))))
                 (_%expand-cond-expand132911%_
                  (lambda (_%hd133069%_ _%rest133070%_ _%r133071%_)
                    (_%K132914%_
                     (cons (gx#core-expand-cond-expand% _%hd133069%_)
                           _%rest133070%_)
                     _%r133071%_)))
                 (_%expand-include132912%_
                  (lambda (_%hd133018%_ _%rest133019%_ _%r133020%_)
                    (let* ((_%e133021133031%_ _%hd133018%_)
                           (_%E133023133035%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e133021133031%_)))
                           (_%E133022133065%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133021133031%_)
                                  (let ((_%e133024133039%_
                                         (gx#syntax-e _%e133021133031%_)))
                                    (let ((_%hd133025133042%_
                                           (##car _%e133024133039%_))
                                          (_%tl133026133044%_
                                           (##cdr _%e133024133039%_)))
                                      (if (gx#stx-pair? _%tl133026133044%_)
                                          (let ((_%e133027133047%_
                                                 (gx#syntax-e
                                                  _%tl133026133044%_)))
                                            (let ((_%hd133028133050%_
                                                   (##car _%e133027133047%_))
                                                  (_%tl133029133052%_
                                                   (##cdr _%e133027133047%_)))
                                              (let ((_%path133055%_
                                                     _%hd133028133050%_))
                                                (if (gx#stx-null?
                                                     _%tl133029133052%_)
                                                    (if (gx#stx-string?
                                                         _%path133055%_)
                                                        (let* ((_%rpath133057%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path133055%_
                         (gx#stx-source _%hd133018%_)))
                       (_%block133059%_
                        (gx#core-expand-include%__%
                         _%hd133018%_
                         _%rpath133057%_))
                       (_%rbody133062%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block133059%_
                            _%expand-special132906%_
                            '#f
                            _%expand-e132908%_))
                         gx#current-expander-path
                         (cons _%rpath133057%_ (gx#current-expander-path)))))
                  (_%K132914%_
                   _%rest133019%_
                   (__foldr1 cons _%r133020%_ _%rbody133062%_)))
                (_%E133023133035%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E133023133035%_)))))
                                          (_%E133023133035%_))))
                                  (_%E133023133035%_)))))
                      (_%E133022133065%_))))
                 (_%expand-expression132913%_
                  (lambda (_%hd133014%_ _%rest133015%_ _%r133016%_)
                    (_%K132914%_
                     _%rest133015%_
                     (cons (_%expand-e132908%_ _%hd133014%_) _%r133016%_))))
                 (_%K132914%_
                  (lambda (_%rest132944%_ _%r132945%_)
                    (let* ((_%e132946132953%_ _%rest132944%_)
                           (_%E132948132957%_
                            (lambda ()
                              (if _%begin-form132907%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form132907%_
                                    (reverse _%r132945%_))
                                   (gx#stx-source _%stx132905%_))
                                  _%r132945%_)))
                           (_%E132947133010%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132946132953%_)
                                  (let ((_%e132949132961%_
                                         (gx#syntax-e _%e132946132953%_)))
                                    (let ((_%hd132950132964%_
                                           (##car _%e132949132961%_))
                                          (_%tl132951132966%_
                                           (##cdr _%e132949132961%_)))
                                      (let* ((_%hd132969%_ _%hd132950132964%_)
                                             (_%rest132971%_
                                              _%tl132951132966%_)
                                             (_%hd132973%_
                                              (gx#core-expand-head
                                               _%hd132969%_))
                                             (_%e132974132981%_ _%hd132973%_)
                                             (_%E132976132985%_
                                              (lambda ()
                                                (_%expand-expression132913%_
                                                 _%hd132973%_
                                                 _%rest132971%_
                                                 _%r132945%_)))
                                             (_%E132975133006%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e132974132981%_)
                                                    (let ((_%e132977132989%_
                                                           (gx#syntax-e
                                                            _%e132974132981%_)))
                                                      (let ((_%hd132978132992%_
                                                             (##car _%e132977132989%_))
                                                            (_%tl132979132994%_
                                                             (##cdr _%e132977132989%_)))
                                                        (let* ((_%form132997%_
                                                                _%hd132978132992%_)
                                                               (_%body132999%_
                                                                _%tl132979132994%_)
                                                               (_%bind133001%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form132997%_)
                            (gx#resolve-identifier__0 _%form132997%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind133001%_)
                      (let ((_%$e133003%_
                             (##unchecked-structure-ref
                              _%bind133001%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e133003%_)
                            (_%expand-splice132910%_
                             _%hd132973%_
                             _%body132999%_
                             _%rest132971%_
                             _%r132945%_)
                            (if (eq? '%#cond-expand _%$e133003%_)
                                (_%expand-cond-expand132911%_
                                 _%hd132973%_
                                 _%rest132971%_
                                 _%r132945%_)
                                (if (eq? '%#include _%$e133003%_)
                                    (_%expand-include132912%_
                                     _%hd132973%_
                                     _%rest132971%_
                                     _%r132945%_)
                                    (_%expand-special132906%_
                                     _%hd132973%_
                                     _%K132914%_
                                     _%rest132971%_
                                     _%r132945%_)))))
                      (_%expand-expression132913%_
                       _%hd132973%_
                       _%rest132971%_
                       _%r132945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132976132985%_)))))
                                        (_%E132975133006%_))))
                                  (_%E132948132957%_)))))
                      (_%E132947133010%_)))))
          (let* ((_%e132915132922%_ _%stx132905%_)
                 (_%E132917132926%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e132915132922%_)))
                 (_%E132916132940%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132915132922%_)
                        (let ((_%e132918132930%_
                               (gx#syntax-e _%e132915132922%_)))
                          (let ((_%hd132919132933%_ (##car _%e132918132930%_))
                                (_%tl132920132935%_ (##cdr _%e132918132930%_)))
                            (let ((_%body132938%_ _%tl132920132935%_))
                              (if (gx#stx-list? _%body132938%_)
                                  (_%K132914%_ _%body132938%_ '())
                                  (_%E132917132926%_)))))
                        (_%E132917132926%_)))))
            (_%E132916132940%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx133081%_ _%expand-special133082%_)
        (let* ((_%begin-form133084%_ '%#begin)
               (_%expand-e133086%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx133081%_
           _%expand-special133082%_
           _%begin-form133084%_
           _%expand-e133086%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx133088%_ _%expand-special133089%_ _%begin-form133090%_)
        (let ((_%expand-e133092%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx133088%_
           _%expand-special133089%_
           _%begin-form133090%_
           _%expand-e133092%_))))
    (define gx#core-expand-block
      (lambda _g133787_
        (let ((_g133788_ (##length _g133787_)))
          (cond ((##fx= _g133788_ 2) (apply gx#core-expand-block__0 _g133787_))
                ((##fx= _g133788_ 3) (apply gx#core-expand-block__1 _g133787_))
                ((##fx= _g133788_ 4) (apply gx#core-expand-block__% _g133787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g133787_))))))
    (define gx#core-expand-block*
      (lambda (_%stx132853%_ _%expand-special132854%_)
        (let* ((_%g132855132866%_
                (gx#core-expand-block__1
                 _%stx132853%_
                 _%expand-special132854%_
                 '#f))
               (_%E132859132870%_
                (lambda ()
                  (error '"No clause matching"
                         _%g132855132866%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%K132864132901%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx132853%_)))
                (_%K132861132887%_ (lambda (_%expr132885%_) _%expr132885%_))
                (_%K132860132876%_
                 (lambda (_%body132874%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body132874%_))
                    (gx#stx-source _%stx132853%_)))))
            (let ((_%try-match132857132897%_
                   (lambda ()
                     (if (pair? _%g132855132866%_)
                         (let ((_%tl132863132892%_ (##cdr _%g132855132866%_))
                               (_%hd132862132890%_ (##car _%g132855132866%_)))
                           (if (null? _%tl132863132892%_)
                               (let ((_%expr132895%_ _%hd132862132890%_))
                                 (_%K132861132887%_ _%expr132895%_))
                               (let ((_%body132879%_ _%g132855132866%_))
                                 (_%K132860132876%_ _%body132879%_))))
                         (let ((_%body132879%_ _%g132855132866%_))
                           (_%K132860132876%_ _%body132879%_))))))
              (if (null? _%g132855132866%_)
                  (_%K132864132901%_)
                  (_%try-match132857132897%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx132678%_)
        (letrec ((_%satisfied?132680%_
                  (lambda (_%condition132781%_)
                    (let* ((_%e132782132797%_ _%condition132781%_)
                           (_%E132792132801%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132782132797%_)))
                           (_%E132785132820%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132782132797%_)
                                  (let ((_%e132793132805%_
                                         (gx#syntax-e _%e132782132797%_)))
                                    (let ((_%hd132794132808%_
                                           (##car _%e132793132805%_))
                                          (_%tl132795132810%_
                                           (##cdr _%e132793132805%_)))
                                      (let* ((_%combinator132813%_
                                              _%hd132794132808%_)
                                             (_%body132815%_
                                              _%tl132795132810%_))
                                        (if (gx#stx-list? _%body132815%_)
                                            (let ((_%$e132817%_
                                                   (gx#stx-e
                                                    _%combinator132813%_)))
                                              (if (eq? 'not _%$e132817%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?132680%_
                                                        _%body132815%_))
                                                  (if (eq? 'and _%$e132817%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?132680%_
                                                       _%body132815%_)
                                                      (if (eq? 'or
                                                               _%$e132817%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?132680%_
                                                           _%body132815%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e132817%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body132815%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx132678%_
                       _%combinator132813%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E132792132801%_)))))
                                  (_%E132792132801%_))))
                           (_%E132784132843%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132782132797%_)
                                  (let ((_%e132786132824%_
                                         (gx#syntax-e _%e132782132797%_)))
                                    (let ((_%hd132787132827%_
                                           (##car _%e132786132824%_))
                                          (_%tl132788132829%_
                                           (##cdr _%e132786132824%_)))
                                      (if (and (gx#identifier?
                                                _%hd132787132827%_)
                                               (gx#core-identifier=?
                                                _%hd132787132827%_
                                                'unquote))
                                          (if (gx#stx-pair? _%tl132788132829%_)
                                              (let ((_%e132789132832%_
                                                     (gx#syntax-e
                                                      _%tl132788132829%_)))
                                                (let ((_%hd132790132835%_
                                                       (##car _%e132789132832%_))
                                                      (_%tl132791132837%_
                                                       (##cdr _%e132789132832%_)))
                                                  (let ((_%expr132840%_
                                                         _%hd132790132835%_))
                                                    (if (gx#stx-null?
                                                         _%tl132791132837%_)
                                                        (call-with-parameters__1
                                                         (lambda ()
                                                           (gx#eval-syntax__0
                                                            _%expr132840%_))
                                                         gx#current-expander-phi
                                                         (##fx+ (gx#current-expander-phi)
                                                                '1))
                                                        (_%E132785132820%_)))))
                                              (_%E132785132820%_))
                                          (_%E132785132820%_))))
                                  (_%E132785132820%_))))
                           (_%E132783132849%_
                            (lambda ()
                              (let ((_%id132847%_ _%e132782132797%_))
                                (if (gx#identifier? _%id132847%_)
                                    (gx#core-bound-identifier?__%
                                     _%id132847%_
                                     gx#feature-binding?)
                                    (_%E132784132843%_))))))
                      (_%E132783132849%_))))
                 (_%loop132681%_
                  (lambda (_%rest132711%_)
                    (let* ((_%e132712132720%_ _%rest132711%_)
                           (_%E132718132724%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132712132720%_)))
                           (_%E132714132728%_
                            (lambda ()
                              (if (gx#stx-null? _%e132712132720%_)
                                  '()
                                  (_%E132718132724%_))))
                           (_%E132713132777%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132712132720%_)
                                  (let ((_%e132715132732%_
                                         (gx#syntax-e _%e132712132720%_)))
                                    (let ((_%hd132716132735%_
                                           (##car _%e132715132732%_))
                                          (_%tl132717132737%_
                                           (##cdr _%e132715132732%_)))
                                      (let* ((_%hd132740%_ _%hd132716132735%_)
                                             (_%rest132742%_
                                              _%tl132717132737%_)
                                             (_%e132743132750%_ _%hd132740%_)
                                             (_%E132745132754%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%e132743132750%_)))
                                             (_%E132744132773%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%e132743132750%_)
                                                    (let ((_%e132746132758%_
                                                           (gx#syntax-e
                                                            _%e132743132750%_)))
                                                      (let ((_%hd132747132761%_
                                                             (##car _%e132746132758%_))
                                                            (_%tl132748132763%_
                                                             (##cdr _%e132746132758%_)))
                                                        (let* ((_%condition132766%_
                                                                _%hd132747132761%_)
                                                               (_%body132768%_
                                                                _%tl132748132763%_))
                                                          (if (gx#stx-eq?
                                                               _%condition132766%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest132742%_)
                          _%body132768%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx132678%_
                           _%hd132740%_))
                      (if (_%satisfied?132680%_ _%condition132766%_)
                          _%body132768%_
                          (_%loop132681%_ _%rest132742%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132745132754%_)))))
                                        (_%E132744132773%_))))
                                  (_%E132714132728%_)))))
                      (_%E132713132777%_)))))
          (let* ((_%e132682132689%_ _%stx132678%_)
                 (_%E132684132693%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e132682132689%_)))
                 (_%E132683132707%_
                  (lambda ()
                    (if (gx#stx-pair? _%e132682132689%_)
                        (let ((_%e132685132697%_
                               (gx#syntax-e _%e132682132689%_)))
                          (let ((_%hd132686132700%_ (##car _%e132685132697%_))
                                (_%tl132687132702%_ (##cdr _%e132685132697%_)))
                            (let ((_%clauses132705%_ _%tl132687132702%_))
                              (if (gx#stx-list? _%clauses132705%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop132681%_ _%clauses132705%_))
                                  (_%E132684132693%_)))))
                        (_%E132684132693%_)))))
            (_%E132683132707%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx132621%_ _%rpath132622%_)
        (let* ((_%e132623132633%_ _%stx132621%_)
               (_%E132625132637%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132623132633%_)))
               (_%E132624132664%_
                (lambda ()
                  (if (gx#stx-pair? _%e132623132633%_)
                      (let ((_%e132626132641%_
                             (gx#syntax-e _%e132623132633%_)))
                        (let ((_%hd132627132644%_ (##car _%e132626132641%_))
                              (_%tl132628132646%_ (##cdr _%e132626132641%_)))
                          (if (gx#stx-pair? _%tl132628132646%_)
                              (let ((_%e132629132649%_
                                     (gx#syntax-e _%tl132628132646%_)))
                                (let ((_%hd132630132652%_
                                       (##car _%e132629132649%_))
                                      (_%tl132631132654%_
                                       (##cdr _%e132629132649%_)))
                                  (let ((_%path132657%_ _%hd132630132652%_))
                                    (if (gx#stx-null? _%tl132631132654%_)
                                        (if (gx#stx-string? _%path132657%_)
                                            (let ((_%rpath132662%_
                                                   (let ((_%$e132659%_
                                                          _%rpath132622%_))
                                                     (if _%$e132659%_
                                                         _%$e132659%_
                                                         (gx#core-resolve-path__%
                                                          _%path132657%_
                                                          (gx#stx-source
                                                           _%stx132621%_))))))
                                              (if (member _%rpath132662%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx132621%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath132662%_))
                                                    (gx#stx-source
                                                     _%stx132621%_)))))
                                            (_%E132625132637%_))
                                        (_%E132625132637%_)))))
                              (_%E132625132637%_))))
                      (_%E132625132637%_)))))
          (_%E132624132664%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx132671%_)
        (let ((_%rpath132673%_ '#f))
          (gx#core-expand-include%__% _%stx132671%_ _%rpath132673%_))))
    (define gx#core-expand-include%
      (lambda _g133789_
        (let ((_g133790_ (##length _g133789_)))
          (cond ((##fx= _g133790_ 1)
                 (apply gx#core-expand-include%__0 _g133789_))
                ((##fx= _g133790_ 2)
                 (apply gx#core-expand-include%__% _g133789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g133789_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K132587%_ _%stx132588%_ _%method132589%_)
        (if (procedure? _%K132587%_)
            (let ((_%$e132592%_ (gx#stx-source _%stx132588%_)))
              (if _%$e132592%_
                  ((lambda (_%g132594132596%_)
                     (gx#stx-wrap-source
                      (_%K132587%_ _%stx132588%_)
                      _%g132594132596%_))
                   _%$e132592%_)
                  (_%K132587%_ _%stx132588%_)))
            (let ((_%$e132600%_
                   (bound-method-ref _%K132587%_ _%method132589%_)))
              (if _%$e132600%_
                  ((lambda (_%g132602132604%_)
                     (gx#core-apply-expander__%
                      _%g132602132604%_
                      _%stx132588%_
                      _%method132589%_))
                   _%$e132600%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx132588%_
                   _%method132589%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K132611%_ _%stx132612%_)
        (let ((_%method132614%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K132611%_
           _%stx132612%_
           _%method132614%_))))
    (define gx#core-apply-expander
      (lambda _g133791_
        (let ((_g133792_ (##length _g133791_)))
          (cond ((##fx= _g133792_ 2)
                 (apply gx#core-apply-expander__0 _g133791_))
                ((##fx= _g133792_ 3)
                 (apply gx#core-apply-expander__% _g133791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g133791_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self132572%_ _%stx132573%_)
        (let ((_%self132576%_ _%self132572%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx132573%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self132415%_ _%stx132416%_)
        (let* ((_%self132419%_ _%self132415%_)
               (_%self132428132434%_ _%self132419%_)
               (_%E132430132437%_
                (lambda ()
                  (error '"No clause matching"
                         _%self132428132434%_
                         '((macro-expander K)))
                  '#!void))
               (_%K132431132442%_
                (lambda (_%K132440%_)
                  (gx#core-apply-expander__0 _%K132440%_ _%stx132416%_)))
               (_%e132432132445%_
                (##unchecked-structure-ref _%self132428132434%_ '1 '#f '#f))
               (_%K132448%_ _%e132432132445%_))
          (_%K132431132442%_ _%K132448%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self132258%_ _%stx132259%_)
        (let ((_%self132262%_ _%self132258%_))
          (if (gx#sealed-syntax? _%stx132259%_)
              _%stx132259%_
              (let* ((_%self132271132277%_ _%self132262%_)
                     (_%E132273132280%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self132271132277%_
                               '((core-expander K)))
                        '#!void))
                     (_%K132274132285%_
                      (lambda (_%K132283%_)
                        (gx#core-apply-expander__0 _%K132283%_ _%stx132259%_)))
                     (_%e132275132288%_
                      (##unchecked-structure-ref
                       _%self132271132277%_
                       '1
                       '#f
                       '#f))
                     (_%K132291%_ _%e132275132288%_))
                (_%K132274132285%_ _%K132291%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self132109%_ _%stx132110%_ _%top?132111%_)
        (let ((_%self132114%_ _%self132109%_))
          (if (_%top?132111%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self132114%_
               _%stx132110%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx132110%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self132127%_ _%stx132128%_)
        (let ((_%top?132130%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self132127%_
           _%stx132128%_
           _%top?132130%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g133793_
        (let ((_g133794_ (##length _g133793_)))
          (cond ((##fx= _g133794_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g133793_))
                ((##fx= _g133794_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g133793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g133793_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self131972%_ _%stx131973%_)
        (let ((_%self131976%_ _%self131972%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self131976%_
           _%stx131973%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self131787%_ _%stx131788%_)
        (let* ((_%self131791%_ _%self131787%_)
               (_%self131800131806%_ _%self131791%_)
               (_%E131802131809%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131800131806%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%K131803131842%_
                (lambda (_%id131812%_)
                  (let* ((_%e131813131820%_ _%stx131788%_)
                         (_%E131815131824%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%e131813131820%_)))
                         (_%E131814131838%_
                          (lambda ()
                            (if (gx#stx-pair? _%e131813131820%_)
                                (let ((_%e131816131828%_
                                       (gx#syntax-e _%e131813131820%_)))
                                  (let ((_%hd131817131831%_
                                         (##car _%e131816131828%_))
                                        (_%tl131818131833%_
                                         (##cdr _%e131816131828%_)))
                                    (let ((_%body131836%_ _%tl131818131833%_))
                                      (gx#core-cons
                                       _%id131812%_
                                       _%body131836%_))))
                                (_%E131815131824%_)))))
                    (_%E131814131838%_))))
               (_%e131804131845%_
                (##unchecked-structure-ref _%self131800131806%_ '1 '#f '#f))
               (_%id131848%_ _%e131804131845%_))
          (_%K131803131842%_ _%id131848%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self131614%_ _%stx131615%_ _%method131616%_)
        (let* ((_%self131617131625%_ _%self131614%_)
               (_%E131619131628%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131617131625%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%K131620131635%_
                (lambda (_%phi131631%_ _%ctx131632%_ _%K131633%_)
                  (gx#core-apply-user-macro
                   _%K131633%_
                   _%stx131615%_
                   _%ctx131632%_
                   _%phi131631%_
                   _%method131616%_))))
          (if (##structure-instance-of?
               _%self131617131625%_
               'gx#user-expander::t)
              (let* ((_%e131621131638%_
                      (##unchecked-structure-ref
                       _%self131617131625%_
                       '1
                       '#f
                       '#f))
                     (_%K131641%_ _%e131621131638%_)
                     (_%e131622131643%_
                      (##unchecked-structure-ref
                       _%self131617131625%_
                       '2
                       '#f
                       '#f))
                     (_%ctx131646%_ _%e131622131643%_)
                     (_%e131623131648%_
                      (##unchecked-structure-ref
                       _%self131617131625%_
                       '3
                       '#f
                       '#f))
                     (_%phi131651%_ _%e131623131648%_))
                (_%K131620131635%_ _%phi131651%_ _%ctx131646%_ _%K131641%_))
              (_%E131619131628%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self131656%_ _%stx131657%_)
        (let ((_%method131659%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self131656%_
           _%stx131657%_
           _%method131659%_))))
    (define gx#core-apply-user-expander
      (lambda _g133795_
        (let ((_g133796_ (##length _g133795_)))
          (cond ((##fx= _g133796_ 2)
                 (apply gx#core-apply-user-expander__0 _g133795_))
                ((##fx= _g133796_ 3)
                 (apply gx#core-apply-user-expander__% _g133795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g133795_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K131604%_
               _%stx131605%_
               _%ctx131606%_
               _%phi131607%_
               _%method131608%_)
        (let ((_%mark131610%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx131606%_
                _%phi131607%_
                _%stx131605%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K131604%_
               (gx#stx-apply-mark _%stx131605%_ _%mark131610%_)
               _%method131608%_)
              _%mark131610%_))
           gx#current-expander-marks
           (cons _%mark131610%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx131452%_ _%phi131453%_ _%ctx131454%_)
        (let _%lp131456%_ ((_%bind131458%_
                            (gx#core-resolve-identifier__%
                             _%stx131452%_
                             _%phi131453%_
                             _%ctx131454%_)))
          (if (##structure-direct-instance-of?
               _%bind131458%_
               'gx#import-binding::t)
              (_%lp131456%_
               (##unchecked-structure-ref _%bind131458%_ '4 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind131458%_
                   'gx#alias-binding::t)
                  (_%lp131456%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind131458%_ '4 '#f '#f)
                    _%phi131453%_
                    _%ctx131454%_))
                  _%bind131458%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx131466%_)
        (let* ((_%phi131468%_ (gx#current-expander-phi))
               (_%ctx131470%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx131466%_
           _%phi131468%_
           _%ctx131470%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx131472%_ _%phi131473%_)
        (let ((_%ctx131475%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx131472%_
           _%phi131473%_
           _%ctx131475%_))))
    (define gx#resolve-identifier
      (lambda _g133797_
        (let ((_g133798_ (##length _g133797_)))
          (cond ((##fx= _g133798_ 1)
                 (apply gx#resolve-identifier__0 _g133797_))
                ((##fx= _g133798_ 2)
                 (apply gx#resolve-identifier__1 _g133797_))
                ((##fx= _g133798_ 3)
                 (apply gx#resolve-identifier__% _g133797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g133797_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx131407%_
               _%val131408%_
               _%rebind?131409%_
               _%phi131410%_
               _%ctx131411%_)
        (let ((_%rebind?131416%_
               (if (not _%rebind?131409%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?131409%_)
                       _%rebind?131409%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx131407%_)
           _%val131408%_
           _%rebind?131416%_
           _%phi131410%_
           _%ctx131411%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx131421%_ _%val131422%_)
        (let* ((_%rebind?131424%_ '#f)
               (_%phi131426%_ (gx#current-expander-phi))
               (_%ctx131428%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx131421%_
           _%val131422%_
           _%rebind?131424%_
           _%phi131426%_
           _%ctx131428%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx131430%_ _%val131431%_ _%rebind?131432%_)
        (let* ((_%phi131434%_ (gx#current-expander-phi))
               (_%ctx131436%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx131430%_
           _%val131431%_
           _%rebind?131432%_
           _%phi131434%_
           _%ctx131436%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx131438%_ _%val131439%_ _%rebind?131440%_ _%phi131441%_)
        (let ((_%ctx131443%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx131438%_
           _%val131439%_
           _%rebind?131440%_
           _%phi131441%_
           _%ctx131443%_))))
    (define gx#bind-identifier!
      (lambda _g133799_
        (let ((_g133800_ (##length _g133799_)))
          (cond ((##fx= _g133800_ 2) (apply gx#bind-identifier!__0 _g133799_))
                ((##fx= _g133800_ 3) (apply gx#bind-identifier!__1 _g133799_))
                ((##fx= _g133800_ 4) (apply gx#bind-identifier!__2 _g133799_))
                ((##fx= _g133800_ 5) (apply gx#bind-identifier!__% _g133799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g133799_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx131373%_ _%phi131374%_ _%ctx131375%_)
        (let _%lp131377%_ ((_%e131379%_ _%stx131373%_)
                           (_%marks131380%_ (gx#current-expander-marks)))
          (if (symbol? _%e131379%_)
              (gx#core-resolve-binding
               _%e131379%_
               _%phi131374%_
               _%phi131374%_
               _%ctx131375%_
               (reverse _%marks131380%_))
              (if (gx#identifier-quote? _%e131379%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e131379%_ '1 '#f '#f)
                   _%phi131374%_
                   '0
                   (##unchecked-structure-ref _%e131379%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e131379%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e131379%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e131379%_ '1 '#f '#f)
                       _%phi131374%_
                       _%phi131374%_
                       _%ctx131375%_
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e131379%_ '3 '#f '#f)
                        _%marks131380%_))
                      (if (##structure-direct-instance-of?
                           _%e131379%_
                           'gx#syntax-wrap::t)
                          (_%lp131377%_
                           (##unchecked-structure-ref _%e131379%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e131379%_ '3 '#f '#f)
                            _%marks131380%_))
                          (if (##structure-instance-of?
                               _%e131379%_
                               'gerbil#AST::t)
                              (_%lp131377%_
                               (##unchecked-structure-ref
                                _%e131379%_
                                '1
                                '#f
                                '#f)
                               _%marks131380%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx131373%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx131391%_)
        (let* ((_%phi131393%_ (gx#current-expander-phi))
               (_%ctx131395%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx131391%_
           _%phi131393%_
           _%ctx131395%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx131397%_ _%phi131398%_)
        (let ((_%ctx131400%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx131397%_
           _%phi131398%_
           _%ctx131400%_))))
    (define gx#core-resolve-identifier
      (lambda _g133801_
        (let ((_g133802_ (##length _g133801_)))
          (cond ((##fx= _g133802_ 1)
                 (apply gx#core-resolve-identifier__0 _g133801_))
                ((##fx= _g133802_ 2)
                 (apply gx#core-resolve-identifier__1 _g133801_))
                ((##fx= _g133802_ 3)
                 (apply gx#core-resolve-identifier__% _g133801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g133801_))))))
    (define gx#core-resolve-binding
      (lambda (_%id131284%_
               _%phi131285%_
               _%src-phi131286%_
               _%ctx131287%_
               _%marks131288%_)
        (letrec ((_%resolve131290%_
                  (lambda (_%ctx131357%_ _%src-phi131358%_ _%key131359%_)
                    (let _%lp131361%_ ((_%ctx131363%_
                                        (gx#core-context-shift
                                         _%ctx131357%_
                                         _%phi131285%_))
                                       (_%dphi131364%_
                                        (fx- _%phi131285%_ _%src-phi131358%_)))
                      (let ((_%$e131366%_
                             (gx#core-context-resolve
                              _%ctx131363%_
                              _%key131359%_)))
                        (if _%$e131366%_
                            _%$e131366%_
                            (if (fxzero? _%dphi131364%_)
                                '#f
                                (if (fxpositive? _%dphi131364%_)
                                    (_%lp131361%_
                                     (gx#core-context-shift _%ctx131363%_ '-1)
                                     (##fx- _%dphi131364%_ '1))
                                    (_%lp131361%_
                                     (gx#core-context-shift _%ctx131363%_ '1)
                                     (##fx+ _%dphi131364%_ '1))))))))))
          (let _%lp131292%_ ((_%ctx131294%_ _%ctx131287%_)
                             (_%src-phi131295%_ _%src-phi131286%_)
                             (_%rest131296%_ _%marks131288%_))
            (let* ((_%rest131297131305%_ _%rest131296%_)
                   (_%else131299131313%_
                    (lambda ()
                      (_%resolve131290%_
                       _%ctx131294%_
                       _%src-phi131295%_
                       _%id131284%_)))
                   (_%K131301131345%_
                    (lambda (_%rest131316%_ _%hd131317%_)
                      (let* ((_%hd131318131324%_ _%hd131317%_)
                             (_%E131320131327%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%hd131318131324%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%K131321131337%_
                              (lambda (_%subst131330%_)
                                (let ((_%$e131334%_
                                       (let ((_%key131332%_
                                              (if _%subst131330%_
                                                  (hash-get
                                                   _%subst131330%_
                                                   _%id131284%_)
                                                  '#f)))
                                         (if _%key131332%_
                                             (_%resolve131290%_
                                              _%ctx131294%_
                                              _%src-phi131295%_
                                              _%key131332%_)
                                             '#f))))
                                  (if _%$e131334%_
                                      _%$e131334%_
                                      (_%lp131292%_
                                       (##unchecked-structure-ref
                                        _%hd131317%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd131317%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest131316%_))))))
                        (if (##structure-instance-of?
                             _%hd131318131324%_
                             'gx#expander-mark::t)
                            (let* ((_%e131322131340%_
                                    (##unchecked-structure-ref
                                     _%hd131318131324%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst131343%_ _%e131322131340%_))
                              (_%K131321131337%_ _%subst131343%_))
                            (_%E131320131327%_))))))
              (if (pair? _%rest131297131305%_)
                  (let ((_%hd131302131348%_ (##car _%rest131297131305%_))
                        (_%tl131303131350%_ (##cdr _%rest131297131305%_)))
                    (let* ((_%hd131353%_ _%hd131302131348%_)
                           (_%rest131355%_ _%tl131303131350%_))
                      (_%K131301131345%_ _%rest131355%_ _%hd131353%_)))
                  (_%else131299131313%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key131155%_
               _%val131156%_
               _%rebind?131157%_
               _%phi131158%_
               _%ctx131159%_)
        (letrec ((_%update-binding131161%_
                  (lambda (_%xval131233%_)
                    (if (or (_%rebind?131157%_
                             _%ctx131159%_
                             _%xval131233%_
                             _%val131156%_)
                            (and (##structure-direct-instance-of?
                                  _%xval131233%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval131233%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val131156%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val131156%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval131233%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val131156%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val131156%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval131233%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val131156%_
                        (if (and (##structure-direct-instance-of?
                                  _%val131156%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val131156%_
                                      '6
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval131233%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val131156%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval131233%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval131233%_
                            (if (and (##structure-direct-instance-of?
                                      _%val131156%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval131233%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key131155%_
                                 (cons (##unchecked-structure-ref
                                        _%val131156%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val131156%_
                                               '5
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval131233%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval131233%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval131233%_
                                                   '5
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval131233%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key131155%_
                                 _%val131156%_
                                 _%xval131233%_))))))
                 (_%gensubst131162%_
                  (lambda (_%subst131228%_ _%id131229%_)
                    (let ((_%eid131231%_
                           (gensym (if (uninterned-symbol? _%id131229%_)
                                       '%
                                       _%id131229%_))))
                      (hash-put! _%subst131228%_ _%id131229%_ _%eid131231%_)
                      _%eid131231%_)))
                 (_%subst!131163%_
                  (lambda (_%key131165%_)
                    (let* ((_%key131166131174%_ _%key131165%_)
                           (_%else131168131182%_ (lambda () _%key131165%_))
                           (_%K131170131216%_
                            (lambda (_%mark131185%_ _%id131186%_)
                              (let* ((_%mark131187131193%_ _%mark131185%_)
                                     (_%E131189131196%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%mark131187131193%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%K131190131208%_
                                      (lambda (_%subst131199%_)
                                        (if (not _%subst131199%_)
                                            (let ((_%subst131202%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark131185%_
                                               _%subst131202%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst131162%_
                                               _%subst131202%_
                                               _%id131186%_))
                                            (let ((_%$e131204%_
                                                   (hash-get
                                                    _%subst131199%_
                                                    _%id131186%_)))
                                              (if _%$e131204%_
                                                  _%$e131204%_
                                                  (_%gensubst131162%_
                                                   _%subst131199%_
                                                   _%id131186%_)))))))
                                (if (##structure-instance-of?
                                     _%mark131187131193%_
                                     'gx#expander-mark::t)
                                    (let* ((_%e131191131211%_
                                            (##unchecked-structure-ref
                                             _%mark131187131193%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst131214%_ _%e131191131211%_))
                                      (_%K131190131208%_ _%subst131214%_))
                                    (_%E131189131196%_))))))
                      (if (pair? _%key131166131174%_)
                          (let ((_%hd131171131219%_
                                 (##car _%key131166131174%_))
                                (_%tl131172131221%_
                                 (##cdr _%key131166131174%_)))
                            (let* ((_%id131224%_ _%hd131171131219%_)
                                   (_%mark131226%_ _%tl131172131221%_))
                              (_%K131170131216%_ _%mark131226%_ _%id131224%_)))
                          (_%else131168131182%_))))))
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx131159%_ _%phi131158%_)
           (_%subst!131163%_ _%key131155%_)
           _%val131156%_
           _%update-binding131161%_))))
    (define gx#core-bind!__0
      (lambda (_%key131254%_ _%val131255%_)
        (let* ((_%rebind?131257%_ false)
               (_%phi131259%_ (gx#current-expander-phi))
               (_%ctx131261%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key131254%_
           _%val131255%_
           _%rebind?131257%_
           _%phi131259%_
           _%ctx131261%_))))
    (define gx#core-bind!__1
      (lambda (_%key131263%_ _%val131264%_ _%rebind?131265%_)
        (let* ((_%phi131267%_ (gx#current-expander-phi))
               (_%ctx131269%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key131263%_
           _%val131264%_
           _%rebind?131265%_
           _%phi131267%_
           _%ctx131269%_))))
    (define gx#core-bind!__2
      (lambda (_%key131271%_ _%val131272%_ _%rebind?131273%_ _%phi131274%_)
        (let ((_%ctx131276%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key131271%_
           _%val131272%_
           _%rebind?131273%_
           _%phi131274%_
           _%ctx131276%_))))
    (define gx#core-bind!
      (lambda _g133803_
        (let ((_g133804_ (##length _g133803_)))
          (cond ((##fx= _g133804_ 2) (apply gx#core-bind!__0 _g133803_))
                ((##fx= _g133804_ 3) (apply gx#core-bind!__1 _g133803_))
                ((##fx= _g133804_ 4) (apply gx#core-bind!__2 _g133803_))
                ((##fx= _g133804_ 5) (apply gx#core-bind!__% _g133803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g133803_))))))
    (define gx#core-identifier-key
      (lambda (_%stx131086%_)
        (if (symbol? _%stx131086%_)
            (let* ((_%g131088131096%_ (gx#current-expander-marks))
                   (_%else131090131104%_ (lambda () _%stx131086%_))
                   (_%K131092131109%_
                    (lambda (_%hd131107%_) (cons _%stx131086%_ _%hd131107%_))))
              (if (pair? _%g131088131096%_)
                  (let* ((_%hd131093131112%_ (##car _%g131088131096%_))
                         (_%hd131115%_ _%hd131093131112%_))
                    (_%K131092131109%_ _%hd131115%_))
                  (_%else131090131104%_)))
            (if (gx#identifier? _%stx131086%_)
                (let* ((_%id131118%_ (gx#syntax-local-unwrap _%stx131086%_))
                       (_%eid131120%_ (gx#stx-e _%id131118%_))
                       (_%marks131122%_
                        (gx#stx-identifier-marks* _%id131118%_))
                       (_%marks131124131132%_ _%marks131122%_)
                       (_%else131126131140%_ (lambda () _%eid131120%_))
                       (_%K131128131145%_
                        (lambda (_%hd131143%_)
                          (cons _%eid131120%_ _%hd131143%_))))
                  (if (pair? _%marks131124131132%_)
                      (let* ((_%hd131129131148%_ (##car _%marks131124131132%_))
                             (_%hd131151%_ _%hd131129131148%_))
                        (_%K131128131145%_ _%hd131151%_))
                      (_%else131126131140%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx131086%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx131025%_ _%phi131026%_)
        (letrec ((_%make-phi131028%_
                  (lambda (_%super131084%_)
                    (let ((__obj133776
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj133776
                       (##gensym 'phi)
                       _%super131084%_)
                      __obj133776)))
                 (_%make-phi/up131029%_
                  (lambda (_%ctx131079%_ _%super131080%_)
                    (let ((_%ctx+1131082%_
                           (_%make-phi131028%_ _%super131080%_)))
                      (##unchecked-structure-set!
                       _%ctx131079%_
                       _%ctx+1131082%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1131082%_
                       _%ctx131079%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1131082%_)))
                 (_%make-phi/down131030%_
                  (lambda (_%ctx131074%_ _%super131075%_)
                    (let ((_%ctx-1131077%_
                           (_%make-phi131028%_ _%super131075%_)))
                      (##unchecked-structure-set!
                       _%ctx-1131077%_
                       _%ctx131074%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx131074%_
                       _%ctx-1131077%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1131077%_)))
                 (_%shift131031%_
                  (lambda (_%ctx131057%_
                           _%delta131058%_
                           _%make-delta-context131059%_
                           _%phi131060%_
                           _%K131061%_)
                    (let ((_%$e131063%_
                           (##unchecked-structure-ref
                            _%ctx131057%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e131063%_
                          ((lambda (_%super131066%_)
                             (let* ((_%super131068%_
                                     (_%K131061%_
                                      _%super131066%_
                                      _%delta131058%_))
                                    (_%ctx+d131070%_
                                     (_%make-delta-context131059%_
                                      _%ctx131057%_
                                      _%super131068%_)))
                               (_%K131061%_
                                _%ctx+d131070%_
                                (fx- _%phi131060%_ _%delta131058%_))))
                           _%$e131063%_)
                          (error '"Bad context" _%ctx131057%_))))))
          (let _%K131033%_ ((_%ctx131035%_ _%ctx131025%_)
                            (_%phi131036%_ _%phi131026%_))
            (if (fxzero? _%phi131036%_)
                _%ctx131035%_
                (if (##structure-instance-of? _%ctx131035%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi131036%_)
                        (let ((_%$e131040%_
                               (##unchecked-structure-ref
                                _%ctx131035%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e131040%_
                              ((lambda (_%g131042131044%_)
                                 (_%K131033%_
                                  _%g131042131044%_
                                  (##fx- _%phi131036%_ '1)))
                               _%$e131040%_)
                              (_%shift131031%_
                               _%ctx131035%_
                               '1
                               _%make-phi/up131029%_
                               _%phi131036%_
                               _%K131033%_)))
                        (let ((_%$e131048%_
                               (##unchecked-structure-ref
                                _%ctx131035%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e131048%_
                              ((lambda (_%g131050131052%_)
                                 (_%K131033%_
                                  _%g131050131052%_
                                  (##fx+ _%phi131036%_ '1)))
                               _%$e131048%_)
                              (_%shift131031%_
                               _%ctx131035%_
                               '-1
                               _%make-phi/down131030%_
                               _%phi131036%_
                               _%K131033%_))))
                    _%ctx131035%_))))))
    (define gx#core-context-get
      (lambda (_%ctx131022%_ _%key131023%_)
        (hash-get
         (##unchecked-structure-ref _%ctx131022%_ '2 '#f '#f)
         _%key131023%_)))
    (define gx#core-context-put!
      (lambda (_%ctx131018%_ _%key131019%_ _%val131020%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx131018%_ '2 '#f '#f)
         _%key131019%_
         _%val131020%_)))
    (define gx#core-context-resolve
      (lambda (_%ctx131004%_ _%key131005%_)
        (let _%lp131007%_ ((_%ctx131009%_ _%ctx131004%_))
          (let ((_%$e131011%_
                 (gx#core-context-get _%ctx131009%_ _%key131005%_)))
            (if _%$e131011%_
                _%$e131011%_
                (let ((_%$e131014%_
                       (if (##structure-instance-of?
                            _%ctx131009%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx131009%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e131014%_ (_%lp131007%_ _%$e131014%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx130993%_ _%key130994%_ _%val130995%_ _%rebind130996%_)
        (let ((_%$e130998%_ (gx#core-context-get _%ctx130993%_ _%key130994%_)))
          (if _%$e130998%_
              ((lambda (_%xval131001%_)
                 (gx#core-context-put!
                  _%ctx130993%_
                  _%key130994%_
                  (_%rebind130996%_ _%xval131001%_)))
               _%$e130998%_)
              (gx#core-context-put!
               _%ctx130993%_
               _%key130994%_
               _%val130995%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx130968%_ _%stop?130969%_)
        (let _%lp130971%_ ((_%ctx130973%_ _%ctx130968%_))
          (if (_%stop?130969%_ _%ctx130973%_)
              _%ctx130973%_
              (if (##structure-instance-of? _%ctx130973%_ 'gx#phi-context::t)
                  (_%lp130971%_
                   (##unchecked-structure-ref _%ctx130973%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx130982%_ (gx#current-expander-context))
               (_%stop?130984%_ gx#top-context?))
          (gx#core-context-top__% _%ctx130982%_ _%stop?130984%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx130986%_)
        (let ((_%stop?130988%_ gx#top-context?))
          (gx#core-context-top__% _%ctx130986%_ _%stop?130988%_))))
    (define gx#core-context-top
      (lambda _g133805_
        (let ((_g133806_ (##length _g133805_)))
          (cond ((##fx= _g133806_ 0) (apply gx#core-context-top__0 _g133805_))
                ((##fx= _g133806_ 1) (apply gx#core-context-top__1 _g133805_))
                ((##fx= _g133806_ 2) (apply gx#core-context-top__% _g133805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g133805_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx130953%_)
        (let _%lp130955%_ ((_%ctx130957%_ _%ctx130953%_))
          (if (##structure-instance-of? _%ctx130957%_ 'gx#phi-context::t)
              (_%lp130955%_
               (##unchecked-structure-ref _%ctx130957%_ '3 '#f '#f))
              _%ctx130957%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx130963%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx130963%_))))
    (define gx#core-context-root
      (lambda _g133807_
        (let ((_g133808_ (##length _g133807_)))
          (cond ((##fx= _g133808_ 0) (apply gx#core-context-root__0 _g133807_))
                ((##fx= _g133808_ 1) (apply gx#core-context-root__% _g133807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g133807_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx130935%_ . _%ignore130936%_)
        (let ((_%$e130938%_ (gx#current-expander-allow-rebind?)))
          (if _%$e130938%_
              _%$e130938%_
              (if (##structure-instance-of? _%ctx130935%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx130935%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx130935%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx130945%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx130945%_))))
    (define gx#core-context-rebind?
      (lambda _g133809_
        (let ((_g133810_ (##length _g133809_)))
          (cond ((##fx= _g133810_ 0)
                 (apply gx#core-context-rebind?__0 _g133809_))
                ((##fx= _g133810_ 1)
                 (apply gx#core-context-rebind?__% _g133809_))
                ((##fx>= _g133810_ 1)
                 (apply gx#core-context-rebind?__% _g133809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g133809_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx130918%_)
        (let ((_%$e130920%_ (gx#core-context-top__1 _%ctx130918%_)))
          (if _%$e130920%_
              ((lambda (_%ctx130923%_)
                 (if (##structure-instance-of?
                      _%ctx130923%_
                      'gx#module-context::t)
                     (##unchecked-structure-ref _%ctx130923%_ '6 '#f '#f)
                     '#f))
               _%$e130920%_)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx130930%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx130930%_))))
    (define gx#core-context-namespace
      (lambda _g133811_
        (let ((_g133812_ (##length _g133811_)))
          (cond ((##fx= _g133812_ 0)
                 (apply gx#core-context-namespace__0 _g133811_))
                ((##fx= _g133812_ 1)
                 (apply gx#core-context-namespace__% _g133811_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g133811_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind130904%_ _%is?130905%_)
        (if (##structure-direct-instance-of?
             _%bind130904%_
             'gx#syntax-binding::t)
            (_%is?130905%_
             (##unchecked-structure-ref _%bind130904%_ '4 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind130910%_)
        (let ((_%is?130912%_ gx#expander?))
          (gx#expander-binding?__% _%bind130910%_ _%is?130912%_))))
    (define gx#expander-binding?
      (lambda _g133813_
        (let ((_g133814_ (##length _g133813_)))
          (cond ((##fx= _g133814_ 1) (apply gx#expander-binding?__0 _g133813_))
                ((##fx= _g133814_ 2) (apply gx#expander-binding?__% _g133813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g133813_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind130901%_)
        (gx#expander-binding?__% _%bind130901%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind130899%_)
        (gx#expander-binding?__% _%bind130899%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind130893%_)
        (letrec ((_%direct-special-form?130895%_
                  (lambda (_%obj130897%_)
                    (##structure-direct-instance-of?
                     _%obj130897%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind130893%_
           _%direct-special-form?130895%_))))
    (define gx#special-form-binding?
      (lambda (_%bind130891%_)
        (gx#expander-binding?__% _%bind130891%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind130882%_)
        (letrec ((_%feature?130884%_
                  (lambda (_%e130886%_)
                    (let ((_%$e130888%_
                           (##structure-instance-of?
                            _%e130886%_
                            'gx#feature-expander::t)))
                      (if _%$e130888%_
                          _%$e130888%_
                          (##structure-instance-of?
                           _%e130886%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind130882%_ _%feature?130884%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind130880%_)
        (gx#expander-binding?__% _%bind130880%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id130867%_ _%bound?130868%_)
        (if (gx#identifier? _%id130867%_)
            (_%bound?130868%_ (gx#resolve-identifier__0 _%id130867%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id130873%_)
        (let ((_%bound?130875%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id130873%_ _%bound?130875%_))))
    (define gx#core-bound-identifier?
      (lambda _g133815_
        (let ((_g133816_ (##length _g133815_)))
          (cond ((##fx= _g133816_ 1)
                 (apply gx#core-bound-identifier?__0 _g133815_))
                ((##fx= _g133816_ 2)
                 (apply gx#core-bound-identifier?__% _g133815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g133815_))))))
    (define gx#core-identifier=?
      (lambda (_%x130857%_ _%y130858%_)
        (letrec ((_%y=?130860%_
                  (lambda (_%xid130864%_)
                    ((if (list? _%y130858%_) memq eq?)
                     _%xid130864%_
                     _%y130858%_))))
          (let ((_%bind130862%_ (gx#resolve-identifier__0 _%x130857%_)))
            (if (##structure-instance-of? _%bind130862%_ 'gx#binding::t)
                (_%y=?130860%_
                 (##unchecked-structure-ref _%bind130862%_ '1 '#f '#f))
                (_%y=?130860%_ (gx#stx-e _%x130857%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e130855%_)
        (if (interned-symbol? _%e130855%_)
            (string-index__0 (symbol->string _%e130855%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx130808%_ _%src130809%_ _%ctx130810%_ _%marks130811%_)
        (if (##structure? _%stx130808%_)
            (let ((_%$e130813%_ (gx#sealed-syntax-unwrap _%stx130808%_)))
              (if _%$e130813%_
                  _%$e130813%_
                  (if (gx#identifier? _%stx130808%_)
                      (let ((_%id130817%_
                             (gx#stx-unwrap__% _%stx130808%_ _%marks130811%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id130817%_ '1 '#f '#f)
                         (let ((_%$e130819%_
                                (##unchecked-structure-ref
                                 _%id130817%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e130819%_ _%$e130819%_ _%src130809%_))
                         _%ctx130810%_
                         (##unchecked-structure-ref _%id130817%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx130808%_)
                       (let ((_%$e130823%_ (gx#stx-source _%stx130808%_)))
                         (if _%$e130823%_ _%$e130823%_ _%src130809%_))
                       _%ctx130810%_
                       (reverse _%marks130811%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx130808%_
             _%src130809%_
             _%ctx130810%_
             (reverse _%marks130811%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx130829%_)
        (let* ((_%src130831%_ '#f)
               (_%ctx130833%_ (gx#current-expander-context))
               (_%marks130835%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130829%_
           _%src130831%_
           _%ctx130833%_
           _%marks130835%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx130837%_ _%src130838%_)
        (let* ((_%ctx130840%_ (gx#current-expander-context))
               (_%marks130842%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130837%_
           _%src130838%_
           _%ctx130840%_
           _%marks130842%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx130844%_ _%src130845%_ _%ctx130846%_)
        (let ((_%marks130848%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx130844%_
           _%src130845%_
           _%ctx130846%_
           _%marks130848%_))))
    (define gx#core-quote-syntax
      (lambda _g133817_
        (let ((_g133818_ (##length _g133817_)))
          (cond ((##fx= _g133818_ 1) (apply gx#core-quote-syntax__0 _g133817_))
                ((##fx= _g133818_ 2) (apply gx#core-quote-syntax__1 _g133817_))
                ((##fx= _g133818_ 3) (apply gx#core-quote-syntax__2 _g133817_))
                ((##fx= _g133818_ 4) (apply gx#core-quote-syntax__% _g133817_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g133817_))))))
    (define gx#core-cons
      (lambda (_%hd130804%_ _%tl130805%_)
        (cons (gx#core-quote-syntax__0 _%hd130804%_) _%tl130805%_)))
    (define gx#core-list
      (lambda (_%hd130801%_ . _%rest130802%_)
        (cons (gx#core-quote-syntax__0 _%hd130801%_) _%rest130802%_)))
    (define gx#core-cons*
      (lambda (_%hd130798%_ . _%rest130799%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd130798%_) _%rest130799%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path130767%_ _%rel130768%_)
        (let ((_%path130785%_ (gx#stx-e _%stx-path130767%_))
              (_%reldir130786%_
               (let _%lp130770%_ ((_%relsrc130772%_
                                   (let ((_%$e130782%_
                                          (gx#stx-source _%stx-path130767%_)))
                                     (if _%$e130782%_
                                         _%$e130782%_
                                         _%rel130768%_))))
                 (if (##structure-instance-of? _%relsrc130772%_ 'gerbil#AST::t)
                     (_%lp130770%_
                      (let ((_%$e130775%_ (gx#stx-source _%relsrc130772%_)))
                        (if _%$e130775%_
                            _%$e130775%_
                            (gx#stx-e _%relsrc130772%_))))
                     (if (source-location-path? _%relsrc130772%_)
                         (path-directory
                          (source-location-path _%relsrc130772%_))
                         (if (string? _%relsrc130772%_)
                             (path-directory _%relsrc130772%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path130785%_ (path-normalize _%reldir130786%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path130791%_)
        (let ((_%rel130793%_ '#f))
          (gx#core-resolve-path__% _%stx-path130791%_ _%rel130793%_))))
    (define gx#core-resolve-path
      (lambda _g133819_
        (let ((_g133820_ (##length _g133819_)))
          (cond ((##fx= _g133820_ 1) (apply gx#core-resolve-path__0 _g133819_))
                ((##fx= _g133820_ 2) (apply gx#core-resolve-path__% _g133819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g133819_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr130723%_ _%ctx130724%_)
        (let* ((_%repr130725130732%_ _%repr130723%_)
               (_%E130727130736%_
                (lambda ()
                  (error '"No clause matching"
                         _%repr130725130732%_
                         '([phi . subs]))
                  '#!void))
               (_%K130728130744%_
                (lambda (_%subs130739%_ _%phi130740%_)
                  (let ((_%subst130742%_
                         (if (null? _%subs130739%_)
                             '#f
                             (list->hash-table-eq _%subs130739%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst130742%_
                     _%ctx130724%_
                     _%phi130740%_
                     '#f)))))
          (if (pair? _%repr130725130732%_)
              (let ((_%hd130729130747%_ (##car _%repr130725130732%_))
                    (_%tl130730130749%_ (##cdr _%repr130725130732%_)))
                (let* ((_%phi130752%_ _%hd130729130747%_)
                       (_%subs130754%_ _%tl130730130749%_))
                  (_%K130728130744%_ _%subs130754%_ _%phi130752%_)))
              (_%E130727130736%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr130759%_)
        (let ((_%ctx130761%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr130759%_ _%ctx130761%_))))
    (define gx#core-deserialize-mark
      (lambda _g133821_
        (let ((_g133822_ (##length _g133821_)))
          (cond ((##fx= _g133822_ 1)
                 (apply gx#core-deserialize-mark__0 _g133821_))
                ((##fx= _g133822_ 2)
                 (apply gx#core-deserialize-mark__% _g133821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g133821_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx130720%_)
        (gx#stx-rewrap _%stx130720%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx130718%_)
        (gx#stx-unwrap__% _%stx130718%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx130688%_)
        (let* ((_%g130689130697%_ (gx#current-expander-marks))
               (_%else130691130705%_ (lambda () _%stx130688%_))
               (_%K130693130710%_
                (lambda (_%hd130708%_)
                  (gx#stx-apply-mark _%stx130688%_ _%hd130708%_))))
          (if (pair? _%g130689130697%_)
              (let* ((_%hd130694130713%_ (##car _%g130689130697%_))
                     (_%hd130716%_ _%hd130694130713%_))
                (_%K130693130710%_ _%hd130716%_))
              (_%else130691130705%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym130686%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym130686%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx130671%_ _%E130672%_)
        (let ((_%bind130674%_ (gx#resolve-identifier__0 _%stx130671%_)))
          (if (##structure-direct-instance-of?
               _%bind130674%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind130674%_ '4 '#f '#f)
              (_%E130672%_ _%stx130671%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx130679%_)
        (let ((_%E130681%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx130679%_ _%E130681%_))))
    (define gx#syntax-local-e
      (lambda _g133823_
        (let ((_g133824_ (##length _g133823_)))
          (cond ((##fx= _g133824_ 1) (apply gx#syntax-local-e__0 _g133823_))
                ((##fx= _g133824_ 2) (apply gx#syntax-local-e__% _g133823_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g133823_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx130655%_ _%E130656%_)
        (let ((_%e130658%_ (gx#syntax-local-e__% _%stx130655%_ _%E130656%_)))
          (if (##structure-instance-of? _%e130658%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e130658%_ '1 '#f '#f)
              _%e130658%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx130663%_)
        (let ((_%E130665%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx130663%_ _%E130665%_))))
    (define gx#syntax-local-value
      (lambda _g133825_
        (let ((_g133826_ (##length _g133825_)))
          (cond ((##fx= _g133826_ 1)
                 (apply gx#syntax-local-value__0 _g133825_))
                ((##fx= _g133826_ 2)
                 (apply gx#syntax-local-value__% _g133825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g133825_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx130652%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx130652%_)))))
